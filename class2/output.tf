output id {
    value = aws_instance.web.id
}

output arn {
    value = aws_instance.web.arn
}

output outpost_arn {
    value = aws_instance.web.outpost_arn
}

output public_ip {
    value = aws_instance.web.public_ip
}

output private_ip {
    value = aws_instance.web.private_ip
}

output sec_group_arn {
    value = aws_security_group.class2.arn
}

output web2_id {
    value = aws_instance.web2.id
}