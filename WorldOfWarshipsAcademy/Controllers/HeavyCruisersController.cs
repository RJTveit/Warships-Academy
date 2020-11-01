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
    public class HeavyCruisersController : Controller
    {
        private readonly WorldOfWarshipsDbContext _context;

        public HeavyCruisersController(WorldOfWarshipsDbContext context)
        {
            _context = context;
        }

        // GET: HeavyCruisers
        public async Task<IActionResult> Index(string searchString)
        {
            //var worldOfWarshipsDbContext = _context.HeavyCruisers.Include(h => h.AbbrevNavigation).Include(h => h.NationNavigation);
            //return View(await worldOfWarshipsDbContext.ToListAsync());

            var hCruisers = from ca in _context.HeavyCruisers
                            select ca;

            if (!String.IsNullOrEmpty(searchString))
            {
                hCruisers = hCruisers.Where(s => s.ShipName.Contains(searchString));
            }

            return View(await hCruisers.ToListAsync());
        }

        // GET: HeavyCruisers/Details/5
        public async Task<IActionResult> Details(string id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var heavyCruisers = await _context.HeavyCruisers
                .Include(h => h.AbbrevNavigation)
                .Include(h => h.NationNavigation)
                .FirstOrDefaultAsync(m => m.Abbrev == id);
            if (heavyCruisers == null)
            {
                return NotFound();
            }

            return View(heavyCruisers);
        }

        // GET: HeavyCruisers/Create
        public IActionResult Create()
        {
            ViewData["Abbrev"] = new SelectList(_context.ShipClasses, "Abbreviation", "Abbreviation");
            ViewData["Nation"] = new SelectList(_context.ShipNations, "NationAbbrev", "NationAbbrev");
            return View();
        }

        // POST: HeavyCruisers/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Abbrev,Nation,Tier,ShipName,Survivability,Artillery,Torpedoes,AaDefense,Maneuverability,Concealment")] HeavyCruisers heavyCruisers)
        {
            if (ModelState.IsValid)
            {
                _context.Add(heavyCruisers);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewData["Abbrev"] = new SelectList(_context.ShipClasses, "Abbreviation", "Abbreviation", heavyCruisers.Abbrev);
            ViewData["Nation"] = new SelectList(_context.ShipNations, "NationAbbrev", "NationAbbrev", heavyCruisers.Nation);
            return View(heavyCruisers);
        }

        // GET: HeavyCruisers/Edit/5
        public async Task<IActionResult> Edit(string id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var heavyCruisers = await _context.HeavyCruisers.FindAsync(id);
            if (heavyCruisers == null)
            {
                return NotFound();
            }
            ViewData["Abbrev"] = new SelectList(_context.ShipClasses, "Abbreviation", "Abbreviation", heavyCruisers.Abbrev);
            ViewData["Nation"] = new SelectList(_context.ShipNations, "NationAbbrev", "NationAbbrev", heavyCruisers.Nation);
            return View(heavyCruisers);
        }

        // POST: HeavyCruisers/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(string id, [Bind("Abbrev,Nation,Tier,ShipName,Survivability,Artillery,Torpedoes,AaDefense,Maneuverability,Concealment")] HeavyCruisers heavyCruisers)
        {
            if (id != heavyCruisers.Abbrev)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(heavyCruisers);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!HeavyCruisersExists(heavyCruisers.Abbrev))
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
            ViewData["Abbrev"] = new SelectList(_context.ShipClasses, "Abbreviation", "Abbreviation", heavyCruisers.Abbrev);
            ViewData["Nation"] = new SelectList(_context.ShipNations, "NationAbbrev", "NationAbbrev", heavyCruisers.Nation);
            return View(heavyCruisers);
        }

        // GET: HeavyCruisers/Delete/5
        public async Task<IActionResult> Delete(string id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var heavyCruisers = await _context.HeavyCruisers
                .Include(h => h.AbbrevNavigation)
                .Include(h => h.NationNavigation)
                .FirstOrDefaultAsync(m => m.Abbrev == id);
            if (heavyCruisers == null)
            {
                return NotFound();
            }

            return View(heavyCruisers);
        }

        // POST: HeavyCruisers/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(string id)
        {
            var heavyCruisers = await _context.HeavyCruisers.FindAsync(id);
            _context.HeavyCruisers.Remove(heavyCruisers);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool HeavyCruisersExists(string id)
        {
            return _context.HeavyCruisers.Any(e => e.Abbrev == id);
        }
    }
}
