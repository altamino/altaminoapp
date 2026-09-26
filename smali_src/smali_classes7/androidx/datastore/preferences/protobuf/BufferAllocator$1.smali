.class final Landroidx/datastore/preferences/protobuf/BufferAllocator$1;
.super Landroidx/datastore/preferences/protobuf/BufferAllocator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/BufferAllocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/BufferAllocator;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public a(I)Landroidx/datastore/preferences/protobuf/AllocatedBuffer;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/AllocatedBuffer;->i(Ljava/nio/ByteBuffer;)Landroidx/datastore/preferences/protobuf/AllocatedBuffer;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public b(I)Landroidx/datastore/preferences/protobuf/AllocatedBuffer;
    .locals 0

    .line 1
    .line 2
    new-array p1, p1, [B

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/AllocatedBuffer;->j([B)Landroidx/datastore/preferences/protobuf/AllocatedBuffer;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
