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
    public class AircraftCarriersController : Controller
    {
        private readonly WorldOfWarshipsDbContext _context;

        public AircraftCarriersController(WorldOfWarshipsDbContext context)
        {
            _context = context;
        }

        // GET: AircraftCarriers
        public async Task<IActionResult> Index()
        {
            var worldOfWarshipsDbContext = _context.AircraftCarriers.Include(a => a.AbbrevNavigation).Include(a => a.NationNavigation);
            return View(await worldOfWarshipsDbContext.ToListAsync());
        }

        // GET: AircraftCarriers/Details/5
        public async Task<IActionResult> Details(string id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var aircraftCarriers = await _context.AircraftCarriers
                .Include(a => a.AbbrevNavigation)
                .Include(a => a.NationNavigation)
                .FirstOrDefaultAsync(m => m.Abbrev == id);
            if (aircraftCarriers == null)
            {
                return NotFound();
            }

            return View(aircraftCarriers);
        }

        // GET: AircraftCarriers/Create
        public IActionResult Create()
        {
            ViewData["Abbrev"] = new SelectList(_context.ShipClasses, "Abbreviation", "Abbreviation");
            ViewData["Nation"] = new SelectList(_context.ShipNations, "NationAbbrev", "NationAbbrev");
            return View();
        }

        // POST: AircraftCarriers/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Abbrev,Nation,Tier,ShipName,Survivability,Aircraft,Artillery,AaDefense,Maneuverability,Concealment")] AircraftCarriers aircraftCarriers)
        {
            if (ModelState.IsValid)
            {
                _context.Add(aircraftCarriers);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewData["Abbrev"] = new SelectList(_context.ShipClasses, "Abbreviation", "Abbreviation", aircraftCarriers.Abbrev);
            ViewData["Nation"] = new SelectList(_context.ShipNations, "NationAbbrev", "NationAbbrev", aircraftCarriers.Nation);
            return View(aircraftCarriers);
        }

        // GET: AircraftCarriers/Edit/5
        public async Task<IActionResult> Edit(string id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var aircraftCarriers = await _context.AircraftCarriers.FindAsync(id);
            if (aircraftCarriers == null)
            {
                return NotFound();
            }
            ViewData["Abbrev"] = new SelectList(_context.ShipClasses, "Abbreviation", "Abbreviation", aircraftCarriers.Abbrev);
            ViewData["Nation"] = new SelectList(_context.ShipNations, "NationAbbrev", "NationAbbrev", aircraftCarriers.Nation);
            return View(aircraftCarriers);
        }

        // POST: AircraftCarriers/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(string id, [Bind("Abbrev,Nation,Tier,ShipName,Survivability,Aircraft,Artillery,AaDefense,Maneuverability,Concealment")] AircraftCarriers aircraftCarriers)
        {
            if (id != aircraftCarriers.Abbrev)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(aircraftCarriers);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!AircraftCarriersExists(aircraftCarriers.Abbrev))
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
            ViewData["Abbrev"] = new SelectList(_context.ShipClasses, "Abbreviation", "Abbreviation", aircraftCarriers.Abbrev);
            ViewData["Nation"] = new SelectList(_context.ShipNations, "NationAbbrev", "NationAbbrev", aircraftCarriers.Nation);
            return View(aircraftCarriers);
        }

        // GET: AircraftCarriers/Delete/5
        public async Task<IActionResult> Delete(string id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var aircraftCarriers = await _context.AircraftCarriers
                .Include(a => a.AbbrevNavigation)
                .Include(a => a.NationNavigation)
                .FirstOrDefaultAsync(m => m.Abbrev == id);
            if (aircraftCarriers == null)
            {
                return NotFound();
            }

            return View(aircraftCarriers);
        }

        // POST: AircraftCarriers/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(string id)
        {
            var aircraftCarriers = await _context.AircraftCarriers.FindAsync(id);
            _context.AircraftCarriers.Remove(aircraftCarriers);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool AircraftCarriersExists(string id)
        {
            return _context.AircraftCarriers.Any(e => e.Abbrev == id);
        }
    }
}
