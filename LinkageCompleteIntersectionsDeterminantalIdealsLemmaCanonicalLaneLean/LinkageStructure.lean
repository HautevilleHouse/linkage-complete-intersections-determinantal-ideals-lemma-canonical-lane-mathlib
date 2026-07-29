import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinkageCompleteIntersectionsDeterminantalIdealsLemmaCanonicalLaneLean

structure LinkagePackage where
  firstIdeal : Type u
  secondIdeal : Type v
  linkageRelation : Prop
  linkageIsSymmetric : Prop
  linkageIsTransitive : Prop
  linkageRelationTerm : linkageRelation
  linkageIsSymmetricTerm : linkageIsSymmetric
  linkageIsTransitiveTerm : linkageIsTransitive

structure LinkageEvidence (L : LinkagePackage) where
  linkageRelationClosed : L.linkageRelation
  linkageIsSymmetricClosed : L.linkageIsSymmetric
  linkageIsTransitiveClosed : L.linkageIsTransitive

def LinkageClosed (L : LinkagePackage) : Prop :=
  L.linkageRelation ∧ L.linkageIsSymmetric ∧ L.linkageIsTransitive

theorem linkage_closed_from_evidence (L : LinkagePackage) (E : LinkageEvidence L) :
    LinkageClosed L := by
  exact And.intro E.linkageRelationClosed
    (And.intro E.linkageIsSymmetricClosed E.linkageIsTransitiveClosed)

end LinkageCompleteIntersectionsDeterminantalIdealsLemmaCanonicalLaneLean
end HautevilleHouse
