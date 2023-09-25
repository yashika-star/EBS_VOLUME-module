terraform {
    backend "s3" {
        bucket = "yashika-batch-9"
        key = "25-09-2023.tfstate"
        region = "ap-south-1"
        
    }
}