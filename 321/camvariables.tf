{
  "input_datatypes": [
    {
      "name": "advanced_content_runtime_chef",
      "label": "Advanced Content Runtime"
    }
  ],
  "template_input_params": [
    {
      "name": "ibm_stack_id",
      "type": "string",
      "description": "A unique stack id.",
      "hidden": true,
      "label": "A unique stack id.",
      "secured": false,
      "required": true,
      "immutable": false,
      "group_name": "environment"
    },
    {
      "name": "allow_unverified_ssl",
      "type": "string",
      "description": "Communication with vsphere server with self signed certificate",
      "default": true,
      "hidden": true,
      "label": "Communication with vsphere server with self signed certificate",
      "secured": false,
      "required": true,
      "immutable": false,
      "group_name": "cloud"
    },
    {
      "name": "ibm_pm_access_token",
      "type": "string",
      "description": "IBM Pattern Manager Access Token",
      "hidden": true,
      "label": "IBM Pattern Manager Access Token",
      "secured": true,
      "required": true,
      "immutable": true,
      "group_name": "environment",
      "default": "${advanced_content_runtime_chef.ibm_pm_access_token}"
    },
    {
      "name": "ibm_pm_service",
      "type": "string",
      "description": "IBM Pattern Manager Service",
      "hidden": true,
      "label": "IBM Pattern Manager Service",
      "secured": false,
      "required": true,
      "immutable": true,
      "group_name": "environment",
      "default": "${advanced_content_runtime_chef.ibm_pm_service}"
    },
    {
      "name": "ibm_sw_repo_password",
      "type": "password",
      "description": "IBM Software Repo Password",
      "hidden": true,
      "label": "IBM Software Repo Password",
      "secured": true,
      "required": true,
      "immutable": true,
      "immutable_after_create": true,
      "group_name": "environment",
      "default": "${advanced_content_runtime_chef.ibm_sw_repo_password}"
    },
    {
      "name": "ibm_sw_repo",
      "type": "string",
      "description": "IBM Software Repo Root (https://<hostname>:<port>)",
      "hidden": true,
      "label": "IBM Software Repo Root",
      "secured": false,
      "required": true,
      "immutable": true,
      "immutable_after_create": true,
      "group_name": "environment",
      "default": "${advanced_content_runtime_chef.ibm_sw_repo}"
    },
    {
      "name": "ibm_sw_repo_user",
      "type": "string",
      "description": "IBM Software Repo Username",
      "default": "${advanced_content_runtime_chef.ibm_sw_repo_user}",
      "hidden": true,
      "label": "IBM Software Repo Username",
      "secured": false,
      "required": true,
      "immutable": true,
      "immutable_after_create": true,
      "group_name": "environment"
    },
    {
      "name": "ibm_pm_public_ssh_key",
      "type": "string",
      "description": "Public CAMC SSH key value which is used to connect to a guest, used on VMware only.",
      "hidden": true,
      "label": "Public CAMC SSH key value which is used to connect to a guest, used on VMware only.",
      "secured": false,
      "required": true,
      "immutable": false,
      "group_name": "environment",
      "default": "${advanced_content_runtime_chef.ibm_pm_public_ssh_key}"
    }
  ]
}