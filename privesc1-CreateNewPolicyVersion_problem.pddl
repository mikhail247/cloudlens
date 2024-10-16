(define (problem attackPathProblem)
    (:domain attackPath)
    (:init (data_store_mfa_delete any_datastore) (datastore_versioning_enabled any_datastore) (excluded_identity_pred adminPol) (identity_tuple_pred adminPol no_permissions any_user) (identity_tuple_pred role__privesc1_createnewpolicyversion_role iam_createpolicyversion any_group) (identity_tuple_pred role__privesc1_createnewpolicyversion_role iam_createpolicyversion any_role) (identity_tuple_pred role__privesc1_createnewpolicyversion_role iam_createpolicyversion any_service) (identity_tuple_pred role__privesc1_createnewpolicyversion_role iam_createpolicyversion any_user) (identity_tuple_pred role__privesc1_createnewpolicyversion_role iam_createpolicyversion role__privesc1_createnewpolicyversion_role) (identity_tuple_pred role__privesc1_createnewpolicyversion_role iam_createpolicyversion user__aws_assume_role_arn) (identity_tuple_pred user__aws_assume_role_arn sts_assumerole role__privesc1_createnewpolicyversion_role) (isGroup any_group) (isPolicy adminPol) (isRole any_role) (isRole role__privesc1_createnewpolicyversion_role) (isUser adminPol) (isUser any_device) (isUser any_key) (isUser any_service) (isUser any_user) (isUser dummy_user) (isUser user__aws_assume_role_arn) (is_dummy_datastore s3_ds_dummy_0) (is_dummy_identity iam_identity_dummy_0) (is_non_existent_datastore s3_ds_dummy_0) (is_non_existent_identity iam_identity_dummy_0) (is_special_permission_pred iam_addusertogroup) (is_special_permission_pred iam_attachgrouppolicy) (is_special_permission_pred iam_attachrolepolicy) (is_special_permission_pred iam_attachuserpolicy) (is_special_permission_pred iam_createaccesskey) (is_special_permission_pred iam_createpolicyversion) (is_special_permission_pred iam_putgrouppolicy) (is_special_permission_pred iam_putrolepolicy) (is_special_permission_pred iam_putuserpolicy) (is_special_permission_pred iam_updateassumerolepolicy) (is_special_permission_pred iam_updateloginprofile) (pathLength zero) (procnone) (resource_tuple_pred adminPol no_permissions any_datastore))
    (:goal (or (ransomware_attack) (privilege_escalation_attack) (sensitive_data_exfiltration) (impact_attack) (persistence_attack) (lateral_movement_attack)))
)