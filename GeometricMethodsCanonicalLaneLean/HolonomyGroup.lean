import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMethodsCanonicalLaneLean

structure HolonomyGroupPackage where
  manifold : Type u
  connection : Type v
  loopSpace : Type w
  groupStructure : Prop
  amboSubgroup : Prop
  curyatureCommuter : Prop

structure HolonomyGroupEvidence (H : HolonomyGroupPackage) where
  groupStructureClosed : H.groupStructure
  amboSubgroupClosed : H.amboSubgroup
  curyatureCommuterClosed : H.curyatureCommuter

def HolonomyGroupClosed (H : HolonomyGroupPackage) : Prop :=
  H.groupStructure ∧ H.amboSubgroup ∧ H.curyatureCommuter

theorem holonomy_group_closed_from_evidence (H : HolonomyGroupPackage)
    (E : HolonomyGroupEvidence H) : HolonomyGroupClosed H := by
  exact And.intro E.groupStructureClosed
    (And.intro E.amboSubgroupClosed E.curyatureCommuterClosed)

end GeometricMethodsCanonicalLaneLean
end HautevilleHouse