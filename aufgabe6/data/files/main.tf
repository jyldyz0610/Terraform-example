provider "archive" {}

resource "archive_file" "data_files_zip" {
  type        = "zip"
  source_dir  = "data/files"
  output_path = "data_files.zip"
}
