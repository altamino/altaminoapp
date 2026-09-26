.class final Landroidx/datastore/preferences/protobuf/TextFormatEscaper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/TextFormatEscaper$ByteSequence;


# instance fields
.field final synthetic val$input:[B


# virtual methods
.method public byteAt(I)B
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/TextFormatEscaper$2;->val$input:[B

    .line 3
    .line 4
    aget-byte p1, v0, p1

    .line 5
    return p1
.end method

.method public size()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/TextFormatEscaper$2;->val$input:[B

    .line 3
    array-length v0, v0

    .line 4
    return v0
.end method
