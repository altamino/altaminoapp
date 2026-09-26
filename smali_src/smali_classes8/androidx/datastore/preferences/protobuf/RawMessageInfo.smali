.class final Landroidx/datastore/preferences/protobuf/RawMessageInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/MessageInfo;


# instance fields
.field private final defaultInstance:Landroidx/datastore/preferences/protobuf/MessageLite;

.field private final flags:I

.field private final info:Ljava/lang/String;

.field private final objects:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroidx/datastore/preferences/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/RawMessageInfo;->defaultInstance:Landroidx/datastore/preferences/protobuf/MessageLite;

    .line 6
    .line 7
    iput-object p2, p0, Landroidx/datastore/preferences/protobuf/RawMessageInfo;->info:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p3, p0, Landroidx/datastore/preferences/protobuf/RawMessageInfo;->objects:[Ljava/lang/Object;

    .line 10
    const/4 p1, 0x0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    .line 14
    move-result p1

    .line 15
    .line 16
    .line 17
    const p3, 0xd800

    .line 18
    .line 19
    if-ge p1, p3, :cond_0

    .line 20
    .line 21
    iput p1, p0, Landroidx/datastore/preferences/protobuf/RawMessageInfo;->flags:I

    .line 22
    goto :goto_1

    .line 23
    .line 24
    :cond_0
    and-int/lit16 p1, p1, 0x1fff

    .line 25
    .line 26
    const/16 v0, 0xd

    .line 27
    const/4 v1, 0x1

    .line 28
    .line 29
    :goto_0
    add-int/lit8 v2, v1, 0x1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    .line 33
    move-result v1

    .line 34
    .line 35
    if-lt v1, p3, :cond_1

    .line 36
    .line 37
    and-int/lit16 v1, v1, 0x1fff

    .line 38
    shl-int/2addr v1, v0

    .line 39
    or-int/2addr p1, v1

    .line 40
    .line 41
    add-int/lit8 v0, v0, 0xd

    .line 42
    move v1, v2

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_1
    shl-int p2, v1, v0

    .line 46
    or-int/2addr p1, p2

    .line 47
    .line 48
    iput p1, p0, Landroidx/datastore/preferences/protobuf/RawMessageInfo;->flags:I

    .line 49
    :goto_1
    return-void
.end method


# virtual methods
.method a()[Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/RawMessageInfo;->objects:[Ljava/lang/Object;

    return-object v0
.end method

.method b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/RawMessageInfo;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultInstance()Landroidx/datastore/preferences/protobuf/MessageLite;
    .locals 1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/RawMessageInfo;->defaultInstance:Landroidx/datastore/preferences/protobuf/MessageLite;

    return-object v0
.end method

.method public getSyntax()Landroidx/datastore/preferences/protobuf/ProtoSyntax;
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/datastore/preferences/protobuf/RawMessageInfo;->flags:I

    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    sget-object v0, Landroidx/datastore/preferences/protobuf/ProtoSyntax;->PROTO2:Landroidx/datastore/preferences/protobuf/ProtoSyntax;

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    sget-object v0, Landroidx/datastore/preferences/protobuf/ProtoSyntax;->PROTO3:Landroidx/datastore/preferences/protobuf/ProtoSyntax;

    .line 12
    :goto_0
    return-object v0
.end method

.method public isMessageSetWireFormat()Z
    .locals 2

    iget v0, p0, Landroidx/datastore/preferences/protobuf/RawMessageInfo;->flags:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
