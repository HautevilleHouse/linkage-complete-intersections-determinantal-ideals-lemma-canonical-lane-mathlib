import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinkageCompleteIntersectionsDeterminantalIdealsLemmaCanonicalLaneLean

structure LinkageCompleteIntersectionPackage where
  sourceIdeal : Type u
  linkage : Type v
  completeIntersectionProperty : Prop
  determinantalStructure : Prop
  residueClass : Type w
  linkageClass : Type z
  
structure LinkageCompleteIntersectionEvidence (L : LinkageCompleteIntersectionPackage) where
  completeIntersectionPropertyClosed : L.completeIntersectionProperty
  determinantalStructureClosed : L.determinantalStructure

def LinkageCompleteIntersectionClosed (L : LinkageCompleteIntersectionPackage) : Prop :=
  L.completeIntersectionProperty ∧ L.determinantalStructure

theorem linkage_complete_intersection_closed_from_evidence
    (L : LinkageCompleteIntersectionPackage) (E : LinkageCompleteIntersectionEvidence L) :
    LinkageCompleteIntersectionClosed L :=
  And.intro E.completeIntersectionPropertyClosed E.determinantalStructureClosed

end LinkageCompleteIntersectionsDeterminantalIdealsLemmaCanonicalLaneLean
end HautevilleHouse