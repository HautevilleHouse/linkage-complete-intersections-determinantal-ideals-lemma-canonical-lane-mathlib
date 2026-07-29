import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinkageCompleteIntersectionsDeterminantalIdealsLemmaCanonicalLaneLean

structure DeterminantalIdealsPackage where
  matrix : Type u
  minors : Type v
  idealGenerated : Prop
  rankCondition : Prop
  genericallyCompleteIntersection : Prop

structure DeterminantalIdealsEvidence (D : DeterminantalIdealsPackage) where
  idealGeneratedClosed : D.idealGenerated
  rankConditionClosed : D.rankCondition
  genericallyCompleteIntersectionClosed : D.genericallyCompleteIntersection

def DeterminantalIdealsClosed (D : DeterminantalIdealsPackage) : Prop :=
  D.idealGenerated ∧ D.rankCondition ∧ D.genericallyCompleteIntersection

theorem determinantal_ideals_closed_from_evidence
    (D : DeterminantalIdealsPackage) (E : DeterminantalIdealsEvidence D) :
    DeterminantalIdealsClosed D :=
  And.intro E.idealGeneratedClosed (And.intro E.rankConditionClosed E.genericallyCompleteIntersectionClosed)

end LinkageCompleteIntersectionsDeterminantalIdealsLemmaCanonicalLaneLean
end HautevilleHouse