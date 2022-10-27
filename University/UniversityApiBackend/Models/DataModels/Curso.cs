using System.ComponentModel.DataAnnotations;

namespace UniversityApiBackend.Models.DataModels
{
    public class Curso : BaseEntity
    {
        [Required, StringLength(100)]
        public string Name { get; set; } = string.Empty ;
        [Required, StringLength(280)]
        public string ShortDescription { get; set; } = string.Empty ;
        [Required, StringLength(500)]
        public string LargeDescription { get; set; } = string.Empty ;
        [Required]
        public string TargetPublic { get; set; } = string.Empty ;
        [Required]
        public string Objectives { get; set; } = string.Empty ;
        [Required]
        public string Requirements { get; set; } = string.Empty ;
        [Required]
        public Level CourseLevel { get; set; } = Level.Basic;
    }

    public enum Level
    {
        Basic,
        Middle,
        Advanced
    }


}
