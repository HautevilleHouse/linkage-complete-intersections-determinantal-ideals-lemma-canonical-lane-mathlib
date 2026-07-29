import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LinkageCompleteIntersectionsDeterminantalIdealsLemmaCanonicalLaneLean.DeterminantalIdeals

namespace HautevilleHouse
namespace LinkageCompleteIntersectionsDeterminantalIdealsLemmaCanonicalLaneLean

structure LinkageAlgebraicStructurePackage {G : DeterminantalIdealsPackage}
    (D : DeterminantalIdealsPackage) where
  algebraType : Type u
  chainConditions : Prop
  linkDepth : ℕ
  linkageRelation : Prop

structure LinkageAlgebraicStructureEvidence {G : DeterminantalIdealsPackage}
    {D : DeterminantalIdealsPackage} (L : LinkageAlgebraicStructurePackage D) where
  chainConditionsClosed : L.chainConditions
  linkageRelationClosed : L.linkageRelation

def LinkageAlgebraicStructureClosed {G : DeterminantalIdealsPackage}
    {D : DeterminantalIdealsPackage} (L : LinkageAlgebraicStructurePackage D) : Prop :=
  L.chainConditions ∧ L.linkageRelation

theorem linkage_algebraic_structure_closed_from_evidence
    {G : DeterminantalIdealsPackage} {D : DeterminantalIdealsPackage}
    (L : LinkageAlgebraicStructurePackage D) (E : LinkageAlgebraicStructureEvidence L) :
    LinkageAlgebraicStructureClosed L := by
  exact And.intro E.chainConditionsClosed E.linkageRelationClosed

end LinkageCompleteIntersectionsDeterminantalIdealsLemmaCanonicalLaneLean
end HautevilleHouse
