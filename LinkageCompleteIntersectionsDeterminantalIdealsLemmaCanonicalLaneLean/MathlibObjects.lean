import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinkageCompleteIntersectionsDeterminantalIdealsLemmaCanonicalLaneLean

structure AdmittedObject where
  ideal : Type u
  ring : Type v
  closedUnderLinkage : Prop
  conclusion : closedUnderLinkage

def LinkageCompleteIntersectionWitnessClosed (O : AdmittedObject) : Prop :=
  O.closedUnderLinkage

end LinkageCompleteIntersectionsDeterminantalIdealsLemmaCanonicalLaneLean
end HautevilleHouse