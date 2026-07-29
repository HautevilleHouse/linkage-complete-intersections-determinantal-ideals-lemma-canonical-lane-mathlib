import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LinkageCompleteIntersectionsDeterminantalIdealsLemmaCanonicalLaneLean.DeterminantalVariety

namespace HautevilleHouse
namespace LinkageCompleteIntersectionsDeterminantalIdealsLemmaCanonicalLaneLean

structure LinkagePackage {D : DeterminantalVarietyPackage} where
  linkedIdeal : Type u
  linkageClass : Prop
  linkageClosedUnderDuality : Prop
  linkageEquivalence : Prop
  linkageClassTerm : linkageClass
  linkageClosedUnderDualityTerm : linkageClosedUnderDuality
  linkageEquivalenceTerm : linkageEquivalence

structure LinkageEvidence {D : DeterminantalVarietyPackage} (L : LinkagePackage D) where
  linkageClassClosed : L.linkageClass
  linkageClosedUnderDualityClosed : L.linkageClosedUnderDuality
  linkageEquivalenceClosed : L.linkageEquivalence

def LinkageClosed {D : DeterminantalVarietyPackage} (L : LinkagePackage D) : Prop :=
  L.linkageClass ∧ L.linkageClosedUnderDuality ∧ L.linkageEquivalence

theorem linkage_closed_from_evidence {D : DeterminantalVarietyPackage}
    (L : LinkagePackage D) (E : LinkageEvidence L) : LinkageClosed L := by
  exact And.intro E.linkageClassClosed
    (And.intro E.linkageClosedUnderDualityClosed E.linkageEquivalenceClosed)

end LinkageCompleteIntersectionsDeterminantalIdealsLemmaCanonicalLaneLean
end HautevilleHouse