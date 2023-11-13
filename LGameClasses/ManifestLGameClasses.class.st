"
I store metadata for this package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestLGameClasses,
	#superclass : #PackageManifest,
	#category : #'LGameClasses-Manifest'
}

{ #category : #'code-critics' }
ManifestLGameClasses class >> ruleGRIvarNeitherReadNorWrittenRuleV1FalsePositive [
	^ #(#(#(#RGPackage #(#LGameClasses)) #'2023-11-13T16:16:10.81566-03:00') )
]

{ #category : #'code-critics' }
ManifestLGameClasses class >> ruleGRTemporaryNeitherReadNorWrittenRuleV1FalsePositive [
	^ #(#(#(#RGPackage #(#LGameClasses)) #'2023-11-13T15:40:27.265934-03:00') )
]

{ #category : #'code-critics' }
ManifestLGameClasses class >> ruleRBClassNotReferencedRuleV1FalsePositive [
	^ #(#(#(#RGPackage #(#LGameClasses)) #'2023-11-13T16:16:19.6752-03:00') )
]

{ #category : #'code-critics' }
ManifestLGameClasses class >> ruleRBNoClassCommentRuleV1FalsePositive [
	^ #(#(#(#RGPackage #(#LGameClasses)) #'2023-11-13T16:16:02.14592-03:00') )
]

{ #category : #'code-critics' }
ManifestLGameClasses class >> ruleRBUnclassifiedMethodsRuleV1FalsePositive [
	^ #(#(#(#RGPackage #(#LGameClasses)) #'2023-11-13T15:40:53.289772-03:00') )
]
