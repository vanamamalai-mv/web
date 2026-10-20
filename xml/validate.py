from lxml import etree

dtd = etree.DTD(open("course.dtd"))
xml = etree.parse("course.xml")

if dtd.validate(xml):
    print("Valid")
else:
    print("Invalid")
    for e in dtd.error_log.filter_from_errors():
        print(e)