import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinkageCompleteIntersectionsDeterminantalIdealsLemmaCanonicalLaneLean

structure LinkageAdmittedObject where
  ideal : Type u
  ring : Type v
  codimensionTwo : Prop
  gorenstein : Prop
  linkedIdeal : Type w
  linkageClass : Prop
  conclusion : linkageClass

def LinkageWitnessClosed (O : LinkageAdmittedObject) : Prop :=
  O.linkageClass

end LinkageCompleteIntersectionsDeterminantalIdealsLemmaCanonicalLaneLean
end HautevilleHouse