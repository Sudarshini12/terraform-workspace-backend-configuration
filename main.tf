terraform {
  backend "gcs" {
    bucket = "terraform-backend-workspace"  # The GCS bucket name
    prefix = "terraform/state"          # Directory inside the bucket to store the state files

    # workspace-specific state storage
    # Using workspace name as the directory or object in GCS
    workspace_key_prefix = "workspaces/${terraform.workspace}"
  }
}

