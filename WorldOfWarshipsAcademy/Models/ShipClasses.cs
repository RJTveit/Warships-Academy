using System;
using System.Collections.Generic;

namespace WorldOfWarshipsAcademy.Models
{
    public partial class ShipClasses
    {
        public string ShipClass { get; set; }
        public string Abbreviation { get; set; }

        public virtual AircraftCarriers AircraftCarriers { get; set; }
        public virtual Battleships Battleships { get; set; }
        public virtual Destroyers Destroyers { get; set; }
        public virtual HeavyCruisers HeavyCruisers { get; set; }
        public virtual LightCruisers LightCruisers { get; set; }
    }
}
