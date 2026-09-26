.class abstract Landroidx/datastore/preferences/protobuf/ByteString$LeafByteString;
.super Landroidx/datastore/preferences/protobuf/ByteString;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "LeafByteString"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/ByteString;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method N(Landroidx/datastore/preferences/protobuf/ByteOutput;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/ByteString;->M(Landroidx/datastore/preferences/protobuf/ByteOutput;)V

    .line 4
    return-void
.end method

.method abstract O(Landroidx/datastore/preferences/protobuf/ByteString;II)Z
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroidx/datastore/preferences/protobuf/ByteString;->w()Landroidx/datastore/preferences/protobuf/ByteString$ByteIterator;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected final t()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method
