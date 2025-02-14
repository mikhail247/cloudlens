(define (domain attackPath)
    (:requirements :conditional-effects :equality :strips :typing)
    (:types count datastore identity permission resource)
    (:constants five four one three two zero - count any_datastore dummy_ds s3_ds_dummy_0 - datastore adminPol any_device any_group any_key any_role any_service any_user dummy_user iam_identity_dummy_0 user__aws_assume_role_arn user__privesc3_createec2withexistinginstanceprofile_role - identity belongs ec2_associateiaminstanceprofile ec2_createkeypair ec2_describeinstances ec2_modifyinstanceattribute ec2_runinstances full_control haspolicy iam_addusertogroup iam_attachgrouppolicy iam_attachrolepolicy iam_attachuserpolicy iam_changepassword iam_createaccesskey iam_createloginprofile iam_createpolicyversion iam_createuser iam_deactivatemfadevice iam_deleteaccesskey iam_deletegroup iam_deletepolicy iam_deleterole iam_deleterolepolicy iam_deleteuser iam_deleteuserpolicy iam_detachgrouppolicy iam_detachrolepolicy iam_detachuserpolicy iam_passrole iam_putgrouppolicy iam_putrolepolicy iam_putuserpolicy iam_removeuserfromgroup iam_updateaccesskey iam_updateassumerolepolicy iam_updateloginprofile kms_createkey lambda_createfunction lambda_updatefunctioncode no_permissions s3_createbucket s3_deletebucket s3_deleteobject s3_getobject s3_listbucket s3_putbucketacl s3_putobject ssm_sendcommand ssm_startsession sts_assumerole unk_permission - permission)
    (:predicates (at_least_five) (at_least_four) (at_least_one) (at_least_three) (at_least_two) (compromised_identity_pred ?identity_var - identity)  (dataResource_4tuple_pred ?identity_var - identity ?identity_var_1 - identity ?permission_var - permission ?ds_var - datastore)  (data_copy_in_predicate ?ds_var - datastore)  (data_copy_out_predicate ?ds_var - datastore)  (data_store_mfa_delete ?ds_var - datastore)  (datastore_has_sensitive_data ?ds_var - datastore)  (datastore_versioning_enabled ?ds_var - datastore)  (doIncrement) (excluded_identity_pred ?identity_var - identity)  (identity_4tuple_pred ?identity_var - identity ?identity_var_1 - identity ?permission_var - permission ?identity_var_2 - identity)  (identity_tuple_pred ?identity_var_1 - identity ?permission_var - permission ?identity_var_2 - identity)  (impact_attack) (isGroup ?identity_var - identity)  (isPolicy ?identity_var - identity)  (isRole ?identity_var - identity)  (isUser ?identity_var - identity)  (is_dummy_datastore ?ds_var - datastore)  (is_dummy_identity ?identity_var - identity)  (is_non_existent_datastore ?ds_var - datastore)  (is_non_existent_identity ?identity_var - identity)  (is_public_datastore ?ds_var - datastore)  (is_special_permission_pred ?special_permission - permission)  (lateral_movement_attack) (lock_compromised_user_once_pred) (pathLength ?length_var - count)  (persistence_attack) (privilege_escalation_attack) (procnone) (ransomware_attack) (resource_tuple_pred ?identity_var - identity ?permission_var - permission ?ds_var - datastore)  (sensitive_data_exfiltration) (special_permission_dataResourceTpl ?identity_var - identity ?special_permission - permission ?identity_var_1 - identity ?permission_var - permission ?ds_var - datastore)  (special_permission_idResourceTpl ?identity_var - identity ?special_permission - permission ?identity_var_1 - identity ?permission_var - permission ?identity_var_2 - identity))
    (:action DeactivateMFADevice
        :parameters (?identity_var - identity ?identity_var_1 - identity)
        :precondition (and (lock_compromised_user_once_pred) (compromised_identity_pred ?identity_var) (procnone) (identity_tuple_pred ?identity_var iam_deactivatemfadevice any_device))
        :effect (impact_attack)
    )
     (:action DeleteAccessKey
        :parameters (?identity_var - identity ?identity_var_1 - identity)
        :precondition (and (lock_compromised_user_once_pred) (compromised_identity_pred ?identity_var) (procnone) (identity_tuple_pred ?identity_var iam_deleteaccesskey ?identity_var_1) (not (is_non_existent_identity ?identity_var_1)) (not (is_dummy_identity ?identity_var_1)))
        :effect (and (is_non_existent_identity ?identity_var_1) (impact_attack))
    )
     (:action DeleteGroup
        :parameters (?identity_var - identity ?identity_var_1 - identity)
        :precondition (and (lock_compromised_user_once_pred) (compromised_identity_pred ?identity_var) (procnone) (identity_tuple_pred ?identity_var iam_deletegroup ?identity_var_1) (not (is_non_existent_identity ?identity_var_1)) (not (is_dummy_identity ?identity_var_1)))
        :effect (and (is_non_existent_identity ?identity_var_1) (impact_attack))
    )
     (:action DeletePolicy
        :parameters (?identity_var - identity ?identity_var_1 - identity)
        :precondition (and (lock_compromised_user_once_pred) (compromised_identity_pred ?identity_var) (procnone) (identity_tuple_pred ?identity_var iam_deletepolicy ?identity_var_1) (not (is_non_existent_identity ?identity_var_1)) (not (is_dummy_identity ?identity_var_1)))
        :effect (and (is_non_existent_identity ?identity_var_1) (impact_attack))
    )
     (:action DeleteRole
        :parameters (?identity_var - identity ?identity_var_1 - identity)
        :precondition (and (lock_compromised_user_once_pred) (compromised_identity_pred ?identity_var) (procnone) (identity_tuple_pred ?identity_var iam_deleterole ?identity_var_1) (not (is_non_existent_identity ?identity_var_1)) (not (is_dummy_identity ?identity_var_1)))
        :effect (and (is_non_existent_identity ?identity_var_1) (impact_attack))
    )
     (:action DeleteRolePolicy
        :parameters (?identity_var - identity ?identity_var_1 - identity)
        :precondition (and (lock_compromised_user_once_pred) (compromised_identity_pred ?identity_var) (procnone) (identity_tuple_pred ?identity_var iam_deleterolepolicy ?identity_var_1) (not (is_non_existent_identity ?identity_var_1)) (not (is_dummy_identity ?identity_var_1)))
        :effect (and (is_non_existent_identity ?identity_var_1) (impact_attack))
    )
     (:action DeleteUser
        :parameters (?identity_var - identity ?identity_var_1 - identity)
        :precondition (and (lock_compromised_user_once_pred) (compromised_identity_pred ?identity_var) (procnone) (identity_tuple_pred ?identity_var iam_deleteuser ?identity_var_1) (not (is_non_existent_identity ?identity_var_1)) (not (is_dummy_identity ?identity_var_1)))
        :effect (and (is_non_existent_identity ?identity_var_1) (impact_attack))
    )
     (:action DeleteUserPolicy
        :parameters (?identity_var - identity ?identity_var_1 - identity)
        :precondition (and (lock_compromised_user_once_pred) (compromised_identity_pred ?identity_var) (procnone) (identity_tuple_pred ?identity_var iam_deleteuserpolicy ?identity_var_1) (not (is_non_existent_identity ?identity_var_1)) (not (is_dummy_identity ?identity_var_1)))
        :effect (and (is_non_existent_identity ?identity_var_1) (impact_attack))
    )
     (:action DetachRolePolicy
        :parameters (?identity_var - identity ?identity_var_1 - identity)
        :precondition (and (lock_compromised_user_once_pred) (compromised_identity_pred ?identity_var) (procnone) (identity_tuple_pred ?identity_var iam_detachrolepolicy ?identity_var_1) (not (is_non_existent_identity ?identity_var_1)) (not (is_dummy_identity ?identity_var_1)))
        :effect (and (is_non_existent_identity ?identity_var_1) (impact_attack))
    )
     (:action DetachUserPolicy
        :parameters (?identity_var - identity ?identity_var_1 - identity)
        :precondition (and (lock_compromised_user_once_pred) (compromised_identity_pred ?identity_var) (procnone) (identity_tuple_pred ?identity_var iam_detachuserpolicy ?identity_var_1) (not (is_non_existent_identity ?identity_var_1)) (not (is_dummy_identity ?identity_var_1)))
        :effect (and (is_non_existent_identity ?identity_var_1) (impact_attack))
    )
     (:action RemoveUserFromGroup
        :parameters (?identity_var - identity ?identity_var_1 - identity)
        :precondition (and (lock_compromised_user_once_pred) (compromised_identity_pred ?identity_var) (procnone) (identity_tuple_pred ?identity_var iam_removeuserfromgroup ?identity_var_1) (not (is_non_existent_identity ?identity_var_1)) (not (is_dummy_identity ?identity_var_1)))
        :effect (and (is_non_existent_identity ?identity_var_1) (impact_attack))
    )
     (:action UpdateAccessKey
        :parameters (?identity_var - identity ?identity_var_1 - identity)
        :precondition (and (lock_compromised_user_once_pred) (compromised_identity_pred ?identity_var) (procnone) (identity_tuple_pred ?identity_var iam_updateaccesskey ?identity_var_1) (not (is_non_existent_identity ?identity_var_1)) (not (is_dummy_identity ?identity_var_1)))
        :effect (and (is_non_existent_identity ?identity_var_1) (impact_attack))
    )
     (:action activate_ds_3tpl
        :parameters (?identity_var - identity ?permission_var - permission ?ds_var - datastore)
        :precondition (and (lock_compromised_user_once_pred) (procnone) (not (resource_tuple_pred ?identity_var ?permission_var ?ds_var)) (or (resource_tuple_pred ?identity_var full_control ?ds_var) (resource_tuple_pred ?identity_var full_control any_datastore)))
        :effect (resource_tuple_pred ?identity_var ?permission_var ?ds_var)
    )
     (:action activate_id_3tpl
        :parameters (?identity_var_1 - identity ?permission_var - permission ?identity_var_2 - identity)
        :precondition (and (lock_compromised_user_once_pred) (procnone) (not (identity_tuple_pred ?identity_var_1 ?permission_var ?identity_var_2)) (or (identity_tuple_pred ?identity_var_1 full_control ?identity_var_2) (identity_tuple_pred ?identity_var_1 full_control any_user)))
        :effect (identity_tuple_pred ?identity_var_1 ?permission_var ?identity_var_2)
    )
     (:action add_ds_3tpl
        :parameters (?identity_var_1 - identity ?identity_var_2 - identity ?permission_var - permission ?ds_var - datastore)
        :precondition (and (lock_compromised_user_once_pred) (procnone) (not (resource_tuple_pred ?identity_var_2 ?permission_var ?ds_var)) (isUser ?identity_var_1) (compromised_identity_pred ?identity_var_1) (dataResource_4tuple_pred ?identity_var_1 ?identity_var_2 ?permission_var ?ds_var))
        :effect (and (when (dataResource_4tuple_pred ?identity_var_1 any_user ?permission_var ?ds_var) (resource_tuple_pred ?identity_var_1 ?permission_var ?ds_var)) (when (not (dataResource_4tuple_pred ?identity_var_1 any_user ?permission_var ?ds_var)) (resource_tuple_pred ?identity_var_2 ?permission_var ?ds_var)))
    )
     (:action add_id_3tpl
        :parameters (?identity_var_1 - identity ?identity_var_2 - identity ?permission_var - permission ?identity_var_3 - identity)
        :precondition (and (lock_compromised_user_once_pred) (procnone) (not (identity_tuple_pred ?identity_var_2 ?permission_var ?identity_var_3)) (isUser ?identity_var_1) (compromised_identity_pred ?identity_var_1) (identity_4tuple_pred ?identity_var_1 ?identity_var_2 ?permission_var ?identity_var_3))
        :effect (and (when (identity_4tuple_pred ?identity_var_1 any_user ?permission_var ?identity_var_3) (identity_tuple_pred ?identity_var_1 ?permission_var ?identity_var_3)) (when (not (identity_4tuple_pred ?identity_var_1 any_user ?permission_var ?identity_var_3)) (identity_tuple_pred ?identity_var_2 ?permission_var ?identity_var_3)))
    )
     (:action changeUserLogin
        :parameters (?identity_var - identity ?identity_var_1 - identity)
        :precondition (and (lock_compromised_user_once_pred) (compromised_identity_pred ?identity_var) (procnone) (isUser ?identity_var_1) (or (identity_tuple_pred ?identity_var iam_changepassword ?identity_var_1) (identity_tuple_pred ?identity_var iam_updateaccesskey ?identity_var_1) (identity_tuple_pred ?identity_var iam_updateloginprofile ?identity_var_1) (identity_tuple_pred ?identity_var iam_createloginprofile ?identity_var_1)))
        :effect (and (compromised_identity_pred ?identity_var_1) (lateral_movement_attack))
    )
     (:action copyObject
        :parameters (?identity_var - identity ?datastore_var_1 - datastore ?datastore_var_2 - datastore)
        :precondition (and (lock_compromised_user_once_pred) (compromised_identity_pred ?identity_var) (procnone) (datastore_has_sensitive_data ?datastore_var_1) (not (is_dummy_datastore ?datastore_var_1)) (not (is_dummy_datastore ?datastore_var_2)) (resource_tuple_pred ?identity_var s3_getobject ?datastore_var_1) (resource_tuple_pred ?identity_var s3_putobject ?datastore_var_2))
        :effect (and (datastore_has_sensitive_data ?datastore_var_2) (when (is_public_datastore ?datastore_var_2) (sensitive_data_exfiltration)) (data_copy_in_predicate ?datastore_var_2) (data_copy_out_predicate ?datastore_var_1))
    )
     (:action createPublicBucket
        :parameters (?identity_var - identity ?datastore_var_1 - datastore)
        :precondition (and (lock_compromised_user_once_pred) (compromised_identity_pred ?identity_var) (procnone) (is_dummy_datastore ?datastore_var_1) (is_non_existent_datastore ?datastore_var_1) (resource_tuple_pred ?identity_var s3_createbucket ?datastore_var_1) (resource_tuple_pred ?identity_var s3_putbucketacl ?datastore_var_1))
        :effect (and (resource_tuple_pred ?identity_var s3_getobject ?datastore_var_1) (resource_tuple_pred ?identity_var s3_putobject ?datastore_var_1) (not (is_non_existent_datastore ?datastore_var_1)) (not (datastore_has_sensitive_data ?datastore_var_1)) (not (is_dummy_datastore ?datastore_var_1)) (is_public_datastore ?datastore_var_1) (datastore_versioning_enabled ?datastore_var_1) (data_store_mfa_delete ?datastore_var_1))
    )
     (:action deleteBucket
        :parameters (?identity_var - identity ?datastore_var_1 - datastore)
        :precondition (and (lock_compromised_user_once_pred) (compromised_identity_pred ?identity_var) (procnone) (resource_tuple_pred ?identity_var s3_deletebucket ?datastore_var_1) (not (is_non_existent_datastore ?datastore_var_1)) (not (is_dummy_datastore ?datastore_var_1)))
        :effect (and (is_non_existent_datastore ?datastore_var_1) (not (resource_tuple_pred ?identity_var s3_getobject ?datastore_var_1)) (not (resource_tuple_pred ?identity_var s3_putobject ?datastore_var_1)) (impact_attack))
    )
     (:action encryptSensitiveData
        :parameters (?identity_var - identity ?datastore_var_1 - datastore)
        :precondition (and (lock_compromised_user_once_pred) (compromised_identity_pred ?identity_var) (procnone) (datastore_has_sensitive_data ?datastore_var_1) (not (data_copy_in_predicate ?datastore_var_1)) (not (data_copy_out_predicate ?datastore_var_1)) (or (not (data_store_mfa_delete ?datastore_var_1)) (not (datastore_versioning_enabled ?datastore_var_1))) (resource_tuple_pred ?identity_var s3_putobject ?datastore_var_1) (resource_tuple_pred ?identity_var kms_createkey ?datastore_var_1))
        :effect (ransomware_attack)
    )
     (:action gainPersistenceAction_1
        :parameters (?identity_var - identity ?identity_var_1 - identity)
        :precondition (and (lock_compromised_user_once_pred) (compromised_identity_pred ?identity_var) (procnone) (is_dummy_identity ?identity_var_1) (is_non_existent_identity ?identity_var_1) (identity_tuple_pred ?identity_var iam_createuser any_user))
        :effect (and (compromised_identity_pred ?identity_var_1) (not (is_non_existent_identity ?identity_var_1)) (not (is_dummy_identity ?identity_var_1)) (isUser ?identity_var_1) (persistence_attack))
    )
     (:action gainPersistenceAction_2
        :parameters (?identity_var - identity ?identity_var_1 - identity)
        :precondition (and (lock_compromised_user_once_pred) (compromised_identity_pred ?identity_var) (isUser ?identity_var_1) (procnone) (not (is_dummy_identity ?identity_var_1)) (not (is_non_existent_identity ?identity_var_1)) (or (identity_tuple_pred ?identity_var iam_createaccesskey ?identity_var_1) (identity_tuple_pred ?identity_var iam_createloginprofile ?identity_var_1) (identity_tuple_pred ?identity_var iam_updateloginprofile ?identity_var_1)))
        :effect (and (compromised_identity_pred ?identity_var_1) (persistence_attack) (lateral_movement_attack))
    )
     (:action gainPersistenceAction_3
        :parameters (?identity_var - identity)
        :precondition (and (lock_compromised_user_once_pred) (compromised_identity_pred ?identity_var) (procnone) (or (identity_tuple_pred ?identity_var ec2_runinstances any_service) (identity_tuple_pred ?identity_var ec2_modifyinstanceattribute any_service) (identity_tuple_pred ?identity_var lambda_createfunction any_service) (identity_tuple_pred ?identity_var lambda_updatefunctioncode any_service) (identity_tuple_pred ?identity_var ssm_sendcommand any_service) (identity_tuple_pred ?identity_var ssm_startsession any_service)))
        :effect (and (persistence_attack) (lateral_movement_attack))
    )
     (:action moveObject
        :parameters (?identity_var - identity ?datastore_var_1 - datastore ?datastore_var_2 - datastore)
        :precondition (and (lock_compromised_user_once_pred) (compromised_identity_pred ?identity_var) (procnone) (datastore_has_sensitive_data ?datastore_var_1) (not (is_dummy_datastore ?datastore_var_1)) (not (is_dummy_datastore ?datastore_var_2)) (resource_tuple_pred ?identity_var s3_getobject ?datastore_var_1) (resource_tuple_pred ?identity_var s3_deleteobject ?datastore_var_1) (resource_tuple_pred ?identity_var s3_putobject ?datastore_var_2))
        :effect (and (datastore_has_sensitive_data ?datastore_var_2) (not (datastore_has_sensitive_data ?datastore_var_1)) (when (is_public_datastore ?datastore_var_2) (sensitive_data_exfiltration)))
    )
     (:action permissionFlow_ds_3tpl
        :parameters (?identity_var_2 - identity ?permission_var - permission ?ds_var - datastore ?identity_var_1 - identity)
        :precondition (and (lock_compromised_user_once_pred) (procnone) (or (identity_tuple_pred ?identity_var_1 sts_assumerole ?identity_var_2) (identity_tuple_pred ?identity_var_1 belongs ?identity_var_2) (identity_tuple_pred ?identity_var_1 haspolicy ?identity_var_2)) (resource_tuple_pred ?identity_var_2 ?permission_var ?ds_var) (not (resource_tuple_pred ?identity_var_1 ?permission_var ?ds_var)))
        :effect (and (resource_tuple_pred ?identity_var_1 ?permission_var ?ds_var) (procnone) (when (and (compromised_identity_pred ?identity_var_1) (is_special_permission_pred ?permission_var)) (privilege_escalation_attack)))
    )
     (:action permissionFlow_ds_4tpl
        :parameters (?identity_var_1 - identity ?identity_var_2 - identity ?identity_var - identity ?permission_var - permission ?ds_var - datastore)
        :precondition (and (lock_compromised_user_once_pred) (procnone) (dataResource_4tuple_pred ?identity_var_2 ?identity_var ?permission_var ?ds_var) (or (identity_tuple_pred ?identity_var_1 sts_assumerole ?identity_var_2) (identity_tuple_pred ?identity_var_1 belongs ?identity_var_2) (identity_tuple_pred ?identity_var_1 haspolicy ?identity_var_2)))
        :effect (and (dataResource_4tuple_pred ?identity_var_1 ?identity_var ?permission_var ?ds_var) (procnone))
    )
     (:action permissionFlow_id_3tpl
        :parameters (?identity_var_2 - identity ?permission_var - permission ?identity_var - identity ?identity_var_1 - identity)
        :precondition (and (lock_compromised_user_once_pred) (procnone) (or (identity_tuple_pred ?identity_var_1 sts_assumerole ?identity_var_2) (identity_tuple_pred ?identity_var_1 belongs ?identity_var_2) (identity_tuple_pred ?identity_var_1 haspolicy ?identity_var_2)) (identity_tuple_pred ?identity_var_2 ?permission_var ?identity_var) (not (identity_tuple_pred ?identity_var_1 ?permission_var ?identity_var)))
        :effect (and (identity_tuple_pred ?identity_var_1 ?permission_var ?identity_var) (procnone) (when (and (compromised_identity_pred ?identity_var_1) (is_special_permission_pred ?permission_var)) (privilege_escalation_attack)))
    )
     (:action permissionFlow_id_4tpl
        :parameters (?identity_var_1 - identity ?identity_var_2 - identity ?identity_var - identity ?permission_var - permission ?identity_var_3 - identity)
        :precondition (and (lock_compromised_user_once_pred) (procnone) (identity_4tuple_pred ?identity_var_2 ?identity_var ?permission_var ?identity_var_3) (or (identity_tuple_pred ?identity_var_1 sts_assumerole ?identity_var_2) (identity_tuple_pred ?identity_var_1 belongs ?identity_var_2) (identity_tuple_pred ?identity_var_1 haspolicy ?identity_var_2)))
        :effect (and (identity_4tuple_pred ?identity_var_1 ?identity_var ?permission_var ?identity_var_3) (procnone))
    )
     (:action reachAdminPolicy
        :parameters (?identity_var - identity)
        :precondition (and (lock_compromised_user_once_pred) (compromised_identity_pred ?identity_var) (procnone) (or (identity_tuple_pred ?identity_var haspolicy adminPol) (identity_tuple_pred ?identity_var belongs adminPol)))
        :effect (and (sensitive_data_exfiltration) (ransomware_attack) (impact_attack) (persistence_attack) (privilege_escalation_attack) (lateral_movement_attack))
    )
     (:action selectCompromisedUser
        :parameters (?identity_var - identity)
        :precondition (and (isUser ?identity_var) (not (excluded_identity_pred ?identity_var)) (not (lock_compromised_user_once_pred)))
        :effect (and (lock_compromised_user_once_pred) (compromised_identity_pred ?identity_var))
    )
)