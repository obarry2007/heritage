//------------------------------------------------------------------------------
// <auto-generated>
//     Ce code a été généré à partir d'un modèle.
//
//     Des modifications manuelles apportées à ce fichier peuvent conduire à un comportement inattendu de votre application.
//     Les modifications manuelles apportées à ce fichier sont remplacées si le code est régénéré.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CalculPartsHeritage.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class REGLE
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public REGLE()
        {
            this.ECOLEs1 = new HashSet<ECOLE>();
        }
    
        public int REGLEID { get; set; }
        public int SOURCEID { get; set; }
        public string DESCRIPTION { get; set; }
        public string ECOLES { get; set; }
        public string COMMENTAIRE { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ECOLE> ECOLEs1 { get; set; }
        public virtual SOURCE SOURCE { get; set; }
    }
}
