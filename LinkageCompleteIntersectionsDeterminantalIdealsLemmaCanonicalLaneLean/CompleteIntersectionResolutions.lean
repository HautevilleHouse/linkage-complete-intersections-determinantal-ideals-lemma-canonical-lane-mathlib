import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LinkageCompleteIntersectionsDeterminantalIdealsLemmaCanonicalLaneLean.DeterminantalIdeals

namespace HautevilleHouse
namespace LinkageCompleteIntersectionsDeterminantalIdealsLemmaCanonicalLaneLean

structure CompleteIntersectionResolutionsPackage {G : DeterminantalIdealsPackage}
    (D : DeterminantalIdealsPackage) where
  resolutionType : Type u
  length : ℕ
  freeModules : List (ℕ → Type u)
  exactnessProof : Prop

structure CompleteIntersectionResolutionsEvidence {G : DeterminantalIdealsPackage}
    {D : DeterminantalIdealsPackage} (C : CompleteIntersectionResolutionsPackage D) where
  exactnessProofClosed : C.exactnessProof

def CompleteIntersectionResolutionsClosed {G : DeterminantalIdealsPackage}
    {D : DeterminantalIdealsPackage} (C : CompleteIntersectionResolutionsPackage D) : Prop :=
  C.exactnessProof

theorem complete_intersection_resolutions_closed_from_evidence
    {G : DeterminantalIdealsPackage} {D : DeterminantalIdealsPackage}
    (C : CompleteIntersectionResolutionsPackage D) (E : CompleteIntersectionResolutionsEvidence C) :
    CompleteIntersectionResolutionsClosed C := by
  exact E.exactnessProofClosed

end LinkageCompleteIntersectionsDeterminantalIdealsLemmaCanonicalLaneLean
end HautevilleHouse
