import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinkageCompleteIntersectionsDeterminantalIdealsLemmaCanonicalLaneLean

structure LinkageLemmaPackage where
  linkedIdeals : Type u
  linkageClass : Type v
  linkageInvariant : Prop
  linkagePreservesCompleteIntersection : Prop
  
structure LinkageLemmaEvidence (L : LinkageLemmaPackage) where
  linkageInvariantClosed : L.linkageInvariant
  linkagePreservesCompleteIntersectionClosed : L.linkagePreservesCompleteIntersection

def LinkageLemmaClosed (L : LinkageLemmaPackage) : Prop :=
  L.linkageInvariant ∧ L.linkagePreservesCompleteIntersection

theorem linkage_lemma_closed_from_evidence
    (L : LinkageLemmaPackage) (E : LinkageLemmaEvidence L) :
    LinkageLemmaClosed L :=
  And.intro E.linkageInvariantClosed E.linkagePreservesCompleteIntersectionClosed

end LinkageCompleteIntersectionsDeterminantalIdealsLemmaCanonicalLaneLean
end HautevilleHouse