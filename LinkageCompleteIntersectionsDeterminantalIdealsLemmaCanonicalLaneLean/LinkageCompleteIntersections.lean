import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinkageCompleteIntersectionsDeterminantalIdealsLemmaCanonicalLaneLean

structure LinkageCompleteIntersectionPackage where
  baseIdeal : Type u
  linkIdeal : Type v
  grade : Nat
  completeIntersection : Prop
  linkagePreservesCI : Prop
  determinantalPresentation : Prop

structure LinkageCITEvidence (L : LinkageCompleteIntersectionPackage) where
  completeIntersectionClosed : L.completeIntersection
  linkagePreservesCIClosed : L.linkagePreservesCI
  determinantalPresentationClosed : L.determinantalPresentation

def LinkageCIClosed (L : LinkageCompleteIntersectionPackage) : Prop :=
  L.completeIntersection ∧ L.linkagePreservesCI ∧ L.determinantalPresentation

theorem linkage_ci_closed_from_evidence (L : LinkageCompleteIntersectionPackage)
    (E : LinkageCITEvidence L) : LinkageCIClosed L := by
  exact And.intro E.completeIntersectionClosed
    (And.intro E.linkagePreservesCIClosed E.determinantalPresentationClosed)

end LinkageCompleteIntersectionsDeterminantalIdealsLemmaCanonicalLaneLean
end HautevilleHouse