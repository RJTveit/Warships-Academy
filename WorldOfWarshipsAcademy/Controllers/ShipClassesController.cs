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
    public class ShipClassesController : Controller
    {
        private readonly WorldOfWarshipsDbContext _context;

        public ShipClassesController(WorldOfWarshipsDbContext context)
        {
            _context = context;
        }

        // GET: ShipClasses
        public async Task<IActionResult> Index()
        {
            return View(await _context.ShipClasses.ToListAsync());
        }

        // GET: ShipClasses/Details/5
        public async Task<IActionResult> Details(string id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var shipClasses = await _context.ShipClasses
                .FirstOrDefaultAsync(m => m.Abbreviation == id);
            if (shipClasses == null)
            {
                return NotFound();
            }

            return View(shipClasses);
        }

        // GET: ShipClasses/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: ShipClasses/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("ShipClass,Abbreviation")] ShipClasses shipClasses)
        {
            if (ModelState.IsValid)
            {
                _context.Add(shipClasses);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(shipClasses);
        }

        // GET: ShipClasses/Edit/5
        public async Task<IActionResult> Edit(string id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var shipClasses = await _context.ShipClasses.FindAsync(id);
            if (shipClasses == null)
            {
                return NotFound();
            }
            return View(shipClasses);
        }

        // POST: ShipClasses/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(string id, [Bind("ShipClass,Abbreviation")] ShipClasses shipClasses)
        {
            if (id != shipClasses.Abbreviation)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(shipClasses);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!ShipClassesExists(shipClasses.Abbreviation))
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
            return View(shipClasses);
        }

        // GET: ShipClasses/Delete/5
        public async Task<IActionResult> Delete(string id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var shipClasses = await _context.ShipClasses
                .FirstOrDefaultAsync(m => m.Abbreviation == id);
            if (shipClasses == null)
            {
                return NotFound();
            }

            return View(shipClasses);
        }

        // POST: ShipClasses/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(string id)
        {
            var shipClasses = await _context.ShipClasses.FindAsync(id);
            _context.ShipClasses.Remove(shipClasses);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool ShipClassesExists(string id)
        {
            return _context.ShipClasses.Any(e => e.Abbreviation == id);
        }
    }
}
