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
    public class LightCruisersController : Controller
    {
        private readonly WorldOfWarshipsDbContext _context;

        public LightCruisersController(WorldOfWarshipsDbContext context)
        {
            _context = context;
        }

        // GET: LightCruisers
        public async Task<IActionResult> Index()
        {
            var worldOfWarshipsDbContext = _context.LightCruisers.Include(l => l.AbbrevNavigation).Include(l => l.NationNavigation);
            return View(await worldOfWarshipsDbContext.ToListAsync());
        }

        // GET: LightCruisers/Details/5
        public async Task<IActionResult> Details(string id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var lightCruisers = await _context.LightCruisers
                .Include(l => l.AbbrevNavigation)
                .Include(l => l.NationNavigation)
                .FirstOrDefaultAsync(m => m.Abbrev == id);
            if (lightCruisers == null)
            {
                return NotFound();
            }

            return View(lightCruisers);
        }

        // GET: LightCruisers/Create
        public IActionResult Create()
        {
            ViewData["Abbrev"] = new SelectList(_context.ShipClasses, "Abbreviation", "Abbreviation");
            ViewData["Nation"] = new SelectList(_context.ShipNations, "NationAbbrev", "NationAbbrev");
            return View();
        }

        // POST: LightCruisers/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Abbrev,Nation,Tier,ShipName,Survivability,Artillery,Torpedoes,AaDefense,Maneuverability,Concealment")] LightCruisers lightCruisers)
        {
            if (ModelState.IsValid)
            {
                _context.Add(lightCruisers);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewData["Abbrev"] = new SelectList(_context.ShipClasses, "Abbreviation", "Abbreviation", lightCruisers.Abbrev);
            ViewData["Nation"] = new SelectList(_context.ShipNations, "NationAbbrev", "NationAbbrev", lightCruisers.Nation);
            return View(lightCruisers);
        }

        // GET: LightCruisers/Edit/5
        public async Task<IActionResult> Edit(string id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var lightCruisers = await _context.LightCruisers.FindAsync(id);
            if (lightCruisers == null)
            {
                return NotFound();
            }
            ViewData["Abbrev"] = new SelectList(_context.ShipClasses, "Abbreviation", "Abbreviation", lightCruisers.Abbrev);
            ViewData["Nation"] = new SelectList(_context.ShipNations, "NationAbbrev", "NationAbbrev", lightCruisers.Nation);
            return View(lightCruisers);
        }

        // POST: LightCruisers/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(string id, [Bind("Abbrev,Nation,Tier,ShipName,Survivability,Artillery,Torpedoes,AaDefense,Maneuverability,Concealment")] LightCruisers lightCruisers)
        {
            if (id != lightCruisers.Abbrev)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(lightCruisers);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!LightCruisersExists(lightCruisers.Abbrev))
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
            ViewData["Abbrev"] = new SelectList(_context.ShipClasses, "Abbreviation", "Abbreviation", lightCruisers.Abbrev);
            ViewData["Nation"] = new SelectList(_context.ShipNations, "NationAbbrev", "NationAbbrev", lightCruisers.Nation);
            return View(lightCruisers);
        }

        // GET: LightCruisers/Delete/5
        public async Task<IActionResult> Delete(string id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var lightCruisers = await _context.LightCruisers
                .Include(l => l.AbbrevNavigation)
                .Include(l => l.NationNavigation)
                .FirstOrDefaultAsync(m => m.Abbrev == id);
            if (lightCruisers == null)
            {
                return NotFound();
            }

            return View(lightCruisers);
        }

        // POST: LightCruisers/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(string id)
        {
            var lightCruisers = await _context.LightCruisers.FindAsync(id);
            _context.LightCruisers.Remove(lightCruisers);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool LightCruisersExists(string id)
        {
            return _context.LightCruisers.Any(e => e.Abbrev == id);
        }
    }
}
