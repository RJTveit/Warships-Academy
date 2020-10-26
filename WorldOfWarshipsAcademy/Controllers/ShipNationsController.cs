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
    public class ShipNationsController : Controller
    {
        private readonly WorldOfWarshipsDbContext _context;

        public ShipNationsController(WorldOfWarshipsDbContext context)
        {
            _context = context;
        }

        // GET: ShipNations
        public async Task<IActionResult> Index()
        {
            return View(await _context.ShipNations.ToListAsync());
        }

        // GET: ShipNations/Details/5
        public async Task<IActionResult> Details(string id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var shipNations = await _context.ShipNations
                .FirstOrDefaultAsync(m => m.NationAbbrev == id);
            if (shipNations == null)
            {
                return NotFound();
            }

            return View(shipNations);
        }

        // GET: ShipNations/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: ShipNations/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("ShipNation,NationAbbrev")] ShipNations shipNations)
        {
            if (ModelState.IsValid)
            {
                _context.Add(shipNations);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(shipNations);
        }

        // GET: ShipNations/Edit/5
        public async Task<IActionResult> Edit(string id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var shipNations = await _context.ShipNations.FindAsync(id);
            if (shipNations == null)
            {
                return NotFound();
            }
            return View(shipNations);
        }

        // POST: ShipNations/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(string id, [Bind("ShipNation,NationAbbrev")] ShipNations shipNations)
        {
            if (id != shipNations.NationAbbrev)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(shipNations);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!ShipNationsExists(shipNations.NationAbbrev))
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
            return View(shipNations);
        }

        // GET: ShipNations/Delete/5
        public async Task<IActionResult> Delete(string id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var shipNations = await _context.ShipNations
                .FirstOrDefaultAsync(m => m.NationAbbrev == id);
            if (shipNations == null)
            {
                return NotFound();
            }

            return View(shipNations);
        }

        // POST: ShipNations/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(string id)
        {
            var shipNations = await _context.ShipNations.FindAsync(id);
            _context.ShipNations.Remove(shipNations);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool ShipNationsExists(string id)
        {
            return _context.ShipNations.Any(e => e.NationAbbrev == id);
        }
    }
}
