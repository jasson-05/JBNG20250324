using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace JBNG20250324.AppWebMVC.Models;

public partial class Product
{
    public int Id { get; set; }

    [Required(ErrorMessage = "El Nombre es obligatorio.")]
    [Display(Name = "Nombre")]
    public string ProductName { get; set; } = null!;

    [Required(ErrorMessage = "La descripcion es obligatorio.")]
    [Display(Name = "Descripcion")]
    public string? Description { get; set; }

    [Required(ErrorMessage = "El precio es obligatorio.")]
    [Display(Name = "precio")]
    public decimal Price { get; set; }

    [Required(ErrorMessage = "El precio venta es obligatorio.")]
    [Display(Name = "precio venta")]
    public decimal PurchasePrice { get; set; }

    [Required(ErrorMessage = "La bodega es obligatoria.")]
    [Display(Name = "Bodega")]
    public int? WarehouseId { get; set; }

    [Required(ErrorMessage = "La marca es obligatoria.")]
    [Display(Name = "Marca")]
    public int? BrandId { get; set; }

   // [Required(ErrorMessage = "La Nota es obligatoria.")]
    [Display(Name = "Nota")]
    public string? Notes { get; set; }

    public virtual Brand? Brand { get; set; }

    public virtual Warehouse? Warehouse { get; set; }
}
