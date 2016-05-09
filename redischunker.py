import sys

def chunker(stream):
    op = []
    for l in stream:
        op.append("\"" + l.strip() + "\"")
        if len(op) >= 10:
            yield op
            op = []
    yield op

for chunk in chunker( sys.stdin ):
    print( "SADD stopforumspam_ip_7 %s\n" % ( " ".join(chunk), ) )
