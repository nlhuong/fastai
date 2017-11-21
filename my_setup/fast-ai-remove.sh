#!/bin/bash
aws ec2 disassociate-address --association-id eipassoc-18015627
aws ec2 release-address --allocation-id eipalloc-e7413dda
aws ec2 terminate-instances --instance-ids i-0028f8cde378ef4d4
aws ec2 wait instance-terminated --instance-ids i-0028f8cde378ef4d4
aws ec2 delete-security-group --group-id sg-1e9e8863
aws ec2 disassociate-route-table --association-id rtbassoc-e632c49d
aws ec2 delete-route-table --route-table-id rtb-67d8a21e
aws ec2 detach-internet-gateway --internet-gateway-id igw-15e8e172 --vpc-id vpc-c45651a2
aws ec2 delete-internet-gateway --internet-gateway-id igw-15e8e172
aws ec2 delete-subnet --subnet-id subnet-7977381f
aws ec2 delete-vpc --vpc-id vpc-c45651a2
echo If you want to delete the key-pair, please do it manually.
