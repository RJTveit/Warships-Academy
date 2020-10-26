using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using WorldOfWarshipsAcademy.Models;

namespace WorldOfWarshipsAcademy.Controllers
{
    public class DestroyersController : Controller
    {
        private readonly WorldOfWarshipsDbContext _context;

        public DestroyersController(WorldOfWarshipsDbContext context)
        {
            _context = context;
        }

        // GET: Destroyers
        public async Task<IActionResult> Index()
        {
            var worldOfWarshipsDbContext = _context.Destroyers.Include(d => d.AbbrevNavigation).Include(d => d.NationNavigation);
            return View(await worldOfWarshipsDbContext.ToListAsync());
        }

        // GET: Destroyers/Details/5
        public async Task<IActionResult> Details(string id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var destroyers = await _context.Destroyers
                .Include(d => d.AbbrevNavigation)
                .Include(d => d.NationNavigation)
                .FirstOrDefaultAsync(m => m.Abbrev == id);
            if (destroyers == null)
            {
                return NotFound();
            }

            return View(destroyers);
        }

        // GET: Destroyers/Create
        public IActionResult Create()
        {
            ViewData["Abbrev"] = new SelectList(_context.ShipClasses, "Abbreviation", "Abbreviation");
            ViewData["Nation"] = new SelectList(_context.ShipNations, "NationAbbrev", "NationAbbrev");
            return View();
        }

        // POST: Destroyers/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Abbrev,Nation,Tier,ShipName,Survivability,Artillery,Torpedoes,AaDefense,Maneuverability,Concealment")] Destroyers destroyers)
        {
            if (ModelState.IsValid)
            {
                _context.Add(destroyers);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewData["Abbrev"] = new SelectList(_context.ShipClasses, "Abbreviation", "Abbreviation", destroyers.Abbrev);
            ViewData["Nation"] = new SelectList(_context.ShipNations, "NationAbbrev", "NationAbbrev", destroyers.Nation);
            return View(destroyers);
        }

        // GET: Destroyers/Edit/5
        public async Task<IActionResult> Edit(string id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var destroyers = await _context.Destroyers.FindAsync(id);
            if (destroyers == null)
            {
                return NotFound();
            }
            ViewData["Abbrev"] = new SelectList(_context.ShipClasses, "Abbreviation", "Abbreviation", destroyers.Abbrev);
            ViewData["Nation"] = new SelectList(_context.ShipNations, "NationAbbrev", "NationAbbrev", destroyers.Nation);
            return View(destroyers);
        }

        // POST: Destroyers/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(string id, [Bind("Abbrev,Nation,Tier,ShipName,Survivability,Artillery,Torpedoes,AaDefense,Maneuverability,Concealment")] Destroyers destroyers)
        {
            if (id != destroyers.Abbrev)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(destroyers);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!DestroyersExists(destroyers.Abbrev))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            ViewData["Abbrev"] = new SelectList(_context.ShipClasses, "Abbreviation", "Abbreviation", destroyers.Abbrev);
            ViewData["Nation"] = new SelectList(_context.ShipNations, "NationAbbrev", "NationAbbrev", destroyers.Nation);
            return View(destroyers);
        }

        // GET: Destroyers/Delete/5
        public async Task<IActionResult> Delete(string id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var destroyers = await _context.Destroyers
                .Include(d => d.AbbrevNavigation)
                .Include(d => d.NationNavigation)
                .FirstOrDefaultAsync(m => m.Abbrev == id);
            if (destroyers == null)
            {
                return NotFound();
            }

            return View(destroyers);
        }

        // POST: Destroyers/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(string id)
        {
            var destroyers = await _context.Destroyers.FindAsync(id);
            _context.Destroyers.Remove(destroyers);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool DestroyersExists(string id)
        {
            return _context.Destroyers.Any(e => e.Abbrev == id);
        }
    }
}
