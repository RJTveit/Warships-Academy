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
    public class BattleshipsController : Controller
    {
        private readonly WorldOfWarshipsDbContext _context;

        public BattleshipsController(WorldOfWarshipsDbContext context)
        {
            _context = context;
        }

        // GET: Battleships
        public async Task<IActionResult> Index(string searchString)
        {
            //var worldOfWarshipsDbContext = _context.Battleships.Include(b => b.AbbrevNavigation).Include(b => b.NationNavigation);
            //return View(await worldOfWarshipsDbContext.ToListAsync());

            var battleship = from bb in _context.Battleships
                           select bb;

            if (!String.IsNullOrEmpty(searchString))
            {
                battleship = battleship.Where(s => s.ShipName.Contains(searchString));
            }

            return View(await battleship.ToListAsync());
        }

        // GET: Battleships/Details/5
        public async Task<IActionResult> Details(string id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var battleships = await _context.Battleships
                .Include(b => b.AbbrevNavigation)
                .Include(b => b.NationNavigation)
                .FirstOrDefaultAsync(m => m.Abbrev == id);
            if (battleships == null)
            {
                return NotFound();
            }

            return View(battleships);
        }

        // GET: Battleships/Create
        public IActionResult Create()
        {
            ViewData["Abbrev"] = new SelectList(_context.ShipClasses, "Abbreviation", "Abbreviation");
            ViewData["Nation"] = new SelectList(_context.ShipNations, "NationAbbrev", "NationAbbrev");
            return View();
        }

        // POST: Battleships/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Abbrev,Nation,Tier,ShipName,Survivability,Artillery,Torpedoes,AaDefense,Maneuverability,Concealment")] Battleships battleships)
        {
            if (ModelState.IsValid)
            {
                _context.Add(battleships);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewData["Abbrev"] = new SelectList(_context.ShipClasses, "Abbreviation", "Abbreviation", battleships.Abbrev);
            ViewData["Nation"] = new SelectList(_context.ShipNations, "NationAbbrev", "NationAbbrev", battleships.Nation);
            return View(battleships);
        }

        // GET: Battleships/Edit/5
        public async Task<IActionResult> Edit(string id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var battleships = await _context.Battleships.FindAsync(id);
            if (battleships == null)
            {
                return NotFound();
            }
            ViewData["Abbrev"] = new SelectList(_context.ShipClasses, "Abbreviation", "Abbreviation", battleships.Abbrev);
            ViewData["Nation"] = new SelectList(_context.ShipNations, "NationAbbrev", "NationAbbrev", battleships.Nation);
            return View(battleships);
        }

        // POST: Battleships/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(string id, [Bind("Abbrev,Nation,Tier,ShipName,Survivability,Artillery,Torpedoes,AaDefense,Maneuverability,Concealment")] Battleships battleships)
        {
            if (id != battleships.Abbrev)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(battleships);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!BattleshipsExists(battleships.Abbrev))
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
            ViewData["Abbrev"] = new SelectList(_context.ShipClasses, "Abbreviation", "Abbreviation", battleships.Abbrev);
            ViewData["Nation"] = new SelectList(_context.ShipNations, "NationAbbrev", "NationAbbrev", battleships.Nation);
            return View(battleships);
        }

        // GET: Battleships/Delete/5
        public async Task<IActionResult> Delete(string id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var battleships = await _context.Battleships
                .Include(b => b.AbbrevNavigation)
                .Include(b => b.NationNavigation)
                .FirstOrDefaultAsync(m => m.Abbrev == id);
            if (battleships == null)
            {
                return NotFound();
            }

            return View(battleships);
        }

        // POST: Battleships/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(string id)
        {
            var battleships = await _context.Battleships.FindAsync(id);
            _context.Battleships.Remove(battleships);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool BattleshipsExists(string id)
        {
            return _context.Battleships.Any(e => e.Abbrev == id);
        }
    }
}
