
Начальные сводные схемы интеграции.

На начальном этапе внедрения 44ФЗ схемы включают в себя как XML-документы, относящиеся к 44ФЗ и так и XML-документы, относящиеся к подсистеме размещения заказа (ПРЗ) 94ФЗ.

Описание типов всех XML-документов 44ФЗ и 94ФЗ  приведено в IntegrationTypes.xsd.

Имена XML-документов и типов данных ПРЗ 94ФЗ в схемах интеграции оставлено то же, что было на ООС до внедрения 44ФЗ.
Имена XML-документов ПРИЗ 44ФЗ в схемах интеграции составлены с префиксом fcs, чтобы явно отличать их от XML-документов ПРЗ 94ФЗ. 
Имена типов, используемых в описании XML-документов 44ФЗ, в IntegrationTypes.xsd составлены с префиксом  zfcs_.

Файлы схем:
	fcsExport.xsd				- XML-документы, выгружаемые на FTP (только 44ФЗ)
	fcsExtegration.xsd			- XML-документы (проекты), загружаемые по "альтернативной" интеграции т.е. через WEB-сервис (44ФЗ + ПРЗ 94ФЗ)
	fcsIntegration.xsd			- XML-документы, принимаемые/передаваемые в "базовой" интеграции, т.е. AS2  (44ФЗ + ПРЗ 94ФЗ)
	fcsInternal.xsd				- XML-документы, передаваемые между подсистемами ООС (44ФЗ + ПРЗ 94ФЗ)
	fcsPrintForm.xsd			- XML-документы, для которых делаются принтформы (только 44ФЗ)
	IntegrationTypes.xsd		- описание XML-документов, используемых в других схемах (44ФЗ и ПРЗ 94ФЗ)
	oosExport.xsd				- XML-документы, выгружаемые на FTP (только ПРЗ 94ФЗ)


В схемах есть следующие объекты 44ФЗ:

	masterData
	
	fcsNotificationEF
	fcsNotificationEP
	fcsNotificationISM
	fcsNotificationISO
	fcsNotificationOK
	fcsNotificationOKD
	fcsNotificationOKOU
	fcsNotificationPO
	fcsNotificationZakA
	fcsNotificationZakKD
	fcsNotificationZakKOU
	fcsNotificationZakK
	fcsNotificationZKBI
	fcsNotificationZK
	fcsNotificationZP
	fcsNotificationCancel
	fcsNotificationLotCancel
	fcsNotificationLotChange
	fcsPurchaseDocument
	fcsPurchaseDocumentCancel
	fcsPurchaseProlongationOK
	fcsPurchaseProlongationZK
	fcsClarificationRequest
	fcsClarification
	fcsTimeEF
		
	contract
	contractCancel
	contractProcedure
	contractProcedureCancel
	
	tenderPlan
	tenderPlanChange
	tenderPlanUnstructured
	
	sketchPlan
	sketchPlanExecution
	
	bankGuarantee
	bankGuaranteeRefusal
	
	complaint
	complaintGroup
	complaintCancel
	tenderSuspension
	checkResult
	checkResultCancel
	checkPlan
	unplannedCheck
	unplannedCheckCancel

	confirmation (общий для обмена 44ФЗ и 94ФЗ)

В схемах есть следующие объекты ПРЗ 94ФЗ:

	notificationOK
	notificationEF
	notificationZK
	notificationPO
	notificationSZ
	notificationCancel
	clarification
	protocolOK1
	protocolOK2
	protocolOK3
	protocolPO1
	protocolZK1
	protocolEvasion
	protocolZK5
	placementResult