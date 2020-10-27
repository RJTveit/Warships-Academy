using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

namespace WorldOfWarshipsAcademy.Models
{
    public partial class WorldOfWarshipsDbContext : DbContext
    {
        public WorldOfWarshipsDbContext()
        {
        }

        public WorldOfWarshipsDbContext(DbContextOptions<WorldOfWarshipsDbContext> options)
            : base(options)
        {
        }

        public virtual DbSet<AircraftCarriers> AircraftCarriers { get; set; }
        public virtual DbSet<Battleships> Battleships { get; set; }
        public virtual DbSet<Destroyers> Destroyers { get; set; }
        public virtual DbSet<HeavyCruisers> HeavyCruisers { get; set; }
        public virtual DbSet<LightCruisers> LightCruisers { get; set; }
        public virtual DbSet<ShipClasses> ShipClasses { get; set; }
        public virtual DbSet<ShipNations> ShipNations { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {

            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<AircraftCarriers>(entity =>
            {
                

                entity.ToTable("Aircraft Carriers");

                entity.Property(e => e.Abbrev)
                    .HasMaxLength(4)
                    .IsUnicode(false);

                entity.Property(e => e.AaDefense).HasColumnName("AA Defense");

                entity.Property(e => e.Nation)
                    .HasMaxLength(4)
                    .IsUnicode(false);

                entity.Property(e => e.ShipName)
                    .HasColumnName("Ship Name")
                    .HasMaxLength(60)
                    .IsUnicode(false);

                entity.Property(e => e.Tier)
                    .HasMaxLength(4)
                    .IsUnicode(false);

                entity.HasOne(d => d.AbbrevNavigation)
                    .WithOne(p => p.AircraftCarriers)
                    .HasForeignKey<AircraftCarriers>(d => d.Abbrev)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Aircraft Carriers_ShipClasses");

                entity.HasOne(d => d.NationNavigation)
                    .WithMany(p => p.AircraftCarriers)
                    .HasForeignKey(d => d.Nation)
                    .HasConstraintName("FK_Aircraft Carriers_ShipNations");
            });

            modelBuilder.Entity<Battleships>(entity =>
            {
                

                entity.Property(e => e.Abbrev)
                    .HasMaxLength(4)
                    .IsUnicode(false);

                entity.Property(e => e.AaDefense)
                    .HasColumnName("AA Defense")
                    .HasMaxLength(4)
                    .IsUnicode(false);

                entity.Property(e => e.Nation)
                    .HasMaxLength(4)
                    .IsUnicode(false);

                entity.Property(e => e.ShipName)
                    .HasColumnName("Ship Name")
                    .HasMaxLength(60)
                    .IsUnicode(false);

                entity.Property(e => e.Tier)
                    .HasMaxLength(4)
                    .IsUnicode(false);

                entity.Property(e => e.Torpedoes)
                    .HasMaxLength(4)
                    .IsUnicode(false);

                entity.HasOne(d => d.AbbrevNavigation)
                    .WithOne(p => p.Battleships)
                    .HasForeignKey<Battleships>(d => d.Abbrev)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Battleships_ShipClasses");

                entity.HasOne(d => d.NationNavigation)
                    .WithMany(p => p.Battleships)
                    .HasForeignKey(d => d.Nation)
                    .HasConstraintName("FK_Battleships_ShipNations");
            });

            modelBuilder.Entity<Destroyers>(entity =>
            {
                entity.HasKey(e => e.Abbrev);

                entity.HasIndex(e => e.Abbrev)
                    .HasName("IX_Destroyers");

                entity.Property(e => e.Abbrev)
                    .HasMaxLength(4)
                    .IsUnicode(false);

                entity.Property(e => e.AaDefense)
                    .HasColumnName("AA Defense")
                    .HasMaxLength(4)
                    .IsUnicode(false);

                entity.Property(e => e.Nation)
                    .HasMaxLength(4)
                    .IsUnicode(false);

                entity.Property(e => e.ShipName)
                    .HasMaxLength(60)
                    .IsUnicode(false);

                entity.Property(e => e.Tier)
                    .HasMaxLength(4)
                    .IsUnicode(false);

                entity.Property(e => e.Torpedoes)
                    .HasMaxLength(4)
                    .IsUnicode(false);

                entity.HasOne(d => d.AbbrevNavigation)
                    .WithOne(p => p.Destroyers)
                    .HasForeignKey<Destroyers>(d => d.Abbrev)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Destroyers_ShipClasses");

                entity.HasOne(d => d.NationNavigation)
                    .WithMany(p => p.Destroyers)
                    .HasForeignKey(d => d.Nation)
                    .HasConstraintName("FK_Destroyers_ShipNations");
            });

            modelBuilder.Entity<HeavyCruisers>(entity =>
            {
                entity.HasKey(e => e.Abbrev);

                entity.ToTable("Heavy Cruisers");

                entity.Property(e => e.Abbrev)
                    .HasMaxLength(4)
                    .IsUnicode(false);

                entity.Property(e => e.AaDefense)
                    .HasColumnName("AA Defense")
                    .HasMaxLength(4)
                    .IsUnicode(false);

                entity.Property(e => e.Nation)
                    .HasMaxLength(4)
                    .IsUnicode(false);

                entity.Property(e => e.ShipName)
                    .HasColumnName("Ship Name")
                    .HasMaxLength(60)
                    .IsUnicode(false);

                entity.Property(e => e.Tier)
                    .HasMaxLength(4)
                    .IsUnicode(false);

                entity.Property(e => e.Torpedoes)
                    .HasMaxLength(4)
                    .IsUnicode(false);

                entity.HasOne(d => d.AbbrevNavigation)
                    .WithOne(p => p.HeavyCruisers)
                    .HasForeignKey<HeavyCruisers>(d => d.Abbrev)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Heavy Cruisers_ShipClasses");

                entity.HasOne(d => d.NationNavigation)
                    .WithMany(p => p.HeavyCruisers)
                    .HasForeignKey(d => d.Nation)
                    .HasConstraintName("FK_Heavy Cruisers_ShipNations");
            });

            modelBuilder.Entity<LightCruisers>(entity =>
            {
                entity.HasKey(e => e.Abbrev);

                entity.ToTable("Light Cruisers");

                entity.Property(e => e.Abbrev)
                    .HasMaxLength(4)
                    .IsUnicode(false);

                entity.Property(e => e.AaDefense)
                    .HasColumnName("AA Defense")
                    .HasMaxLength(4)
                    .IsUnicode(false);

                entity.Property(e => e.Nation)
                    .HasMaxLength(4)
                    .IsUnicode(false);

                entity.Property(e => e.ShipName)
                    .HasColumnName("Ship Name")
                    .HasMaxLength(60)
                    .IsUnicode(false);

                entity.Property(e => e.Tier)
                    .HasMaxLength(4)
                    .IsUnicode(false);

                entity.Property(e => e.Torpedoes)
                    .HasMaxLength(4)
                    .IsUnicode(false);

                entity.HasOne(d => d.AbbrevNavigation)
                    .WithOne(p => p.LightCruisers)
                    .HasForeignKey<LightCruisers>(d => d.Abbrev)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Light Cruisers_ShipClasses");

                entity.HasOne(d => d.NationNavigation)
                    .WithMany(p => p.LightCruisers)
                    .HasForeignKey(d => d.Nation)
                    .HasConstraintName("FK_Light Cruisers_ShipNations");
            });

            modelBuilder.Entity<ShipClasses>(entity =>
            {
                entity.HasKey(e => e.Abbreviation);

                entity.HasIndex(e => e.ShipClass)
                    .HasName("IX_ShipClasses");

                entity.Property(e => e.Abbreviation)
                    .HasMaxLength(4)
                    .IsUnicode(false);

                entity.Property(e => e.ShipClass)
                    .HasMaxLength(60)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<ShipNations>(entity =>
            {
                entity.HasKey(e => e.NationAbbrev);

                entity.Property(e => e.NationAbbrev)
                    .HasMaxLength(4)
                    .IsUnicode(false);

                entity.Property(e => e.ShipNation)
                    .HasMaxLength(60)
                    .IsUnicode(false);
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
