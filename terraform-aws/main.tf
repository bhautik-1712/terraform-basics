terraform {
required_providers {
        aws = {
        source  = "hashicorp/aws"
        version = "~> 4.16"
}
}
        required_version = ">= 1.2.0"
}

#variable "key_pair_name" {
 # type    = string
 # default = "reactproject"
#}
#Variable Declaration
#variable "public_key" {
 # type    = string
#  default = "MIIEpAIBAAKCAQEA4KZXNW7O7S2OwCPBPY7Hafvp3ap8wL+MM9abBy3d5wE1RaJ6yoz/mFKYsJyVrxxig5z+Fg+qTF4mObu69GVncs7AXFkSw5yZqghjGWPDjGhSObvcpjNoxfaHArYSNnnmnzrf87+cZWzMn8mD4LoXYBuDJdyNvKhQ50yKtFoUAeXVv1XgVs8uS4DF/RqFZcPy6O8VCxhs8EX25P3Yrq6aXrtHWnB9bQz6y42KfGSwT6+st+Nc44QNY4n8xN2Yn1g9PsUICNt6LcNlWPeA2jkE5dNS+rumaXNA5MlTAlpx9ypf/Hh7SInyGZNCGQFafQaExwIM0lyYr6NiA+2DshcTDQIDAQABAoIBADmKIXgsI5AYRSHthodP1L/OqD4AduefqDd21kpmcxnB83UcgrryllzbewRxdt1dNdZkFahs5r+ctcm/zcjfWDnNvvNoVSgJKkqkz00ngmSqK7Vh6sgfDsz1ser923hcjLdoCwiRoWtRDLA4mzCqOWaCZXsDHMKfkelMb5J2J/27971ZVxQlekleVWq3li0lMOrJNKiqyzj0IyhrrYwqWCpqEUhr1M51Mm6t7pgnC36nQP9R5j5E9wpsuuu+x7scJQdoyfbR/GV+cLgCGQwZdCEFGANXF6+qxebY5SScmGL4KNa5su6n3PG6AwPlnL5wOZHbW5blJko1/ItgtysBWTkCgYEA9OXhbU8HMNkT+SAc3z/6513ZlvWw8MdebAca8ntNVQQfkJ2riIWM4Rcndprj/lr89lB436LHMpAI5r6pOZWeTGauSP+eGJJjMvgGI+/Ua9j74Qx/cBucu/X2q+TLOzkT5SIdQjK9NbGxA/rUXkhub6HD/g5Om9GMzATb7393ZssCgYEA6tV5I9smHIPkmT0OOm9tBVJB8Rtr4QB/5XKw4IeghrUSjX3jeFTRb0N56i8S5Qz3SRPT8KNM7KX/1IewPwshnRfudpH6r6sh4PaKbzareuhIMZiZrxQu0/fmctAPD7UFP9lu3wn7xong46bIaV6zt4joU3trRiwy2XHy8mvl2ocCgYEAxHFp5F7SK9LVfK7Puhz+TH0xvzAR4PJrwUfpy7wwihOmpkBzii1mlmAWXcNdQ3kFFSfz7aALHXoASeeCoxhrRGnRP+kbjiZOwGHHuyf0QxZo5Vs7Flhv3y4r0jLS+wyL8u7sfV9p+xowHjskAwUi4RTnvHEJiWAMCtOTAIhE5QUCgYEA37NnaK60iWli9E7jJOtMMUuAoYt7oqT1ML+mmtzYIDqRZ9PKQrCZqaHfmyQonaVSU3zd4lfNSYmAQRbY39Vcuec4NB8vbPRam5B/ox2zEKwBSa2SiONzEF0QW8Ky9kV8sKwSH8nE3AYwAuy38RhTnrx+hDgHopsr/VO9GQ2LsjUCgYBPZ5BPnNpUwKgv1Ex86uTtdqcp0BBXj+Q2KjEn28kiez7dc1izi5AdtV4d1uWsuIbpZrVsyiRpbJKWrbaPjLvRoT0dhqCsTffUnWVAezhrfyIZeGVYtrGRd1SK/MCgrVqyZQa3aYmjybDjeEebQkmyw5S3mVSewfggSC5kvncT0w=="
#}

#Resource to Create Key Pair
#resource "aws_key_pair" "demo_key_pair" {
#  key_name   = var.key_pair_name
#  public_key = var.public_key
#}

provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "aws_ec2_test" {

        ami = "ami-0f5ee92e2d63afc18"
        instance_type = "t2.micro"
	key_name = "reactproject"
        tags = {
     Name = "first-terraform"
  }
}
