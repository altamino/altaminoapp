.class public Landroidx/datastore/preferences/protobuf/LazyField;
.super Landroidx/datastore/preferences/protobuf/LazyFieldLite;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/protobuf/LazyField$LazyIterator;,
        Landroidx/datastore/preferences/protobuf/LazyField$LazyEntry;
    }
.end annotation


# instance fields
.field private final defaultInstance:Landroidx/datastore/preferences/protobuf/MessageLite;


# direct methods
.method public constructor <init>(Landroidx/datastore/preferences/protobuf/MessageLite;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;Landroidx/datastore/preferences/protobuf/ByteString;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/LazyFieldLite;-><init>(Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;Landroidx/datastore/preferences/protobuf/ByteString;)V

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/LazyField;->defaultInstance:Landroidx/datastore/preferences/protobuf/MessageLite;

    .line 6
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/LazyField;->g()Landroidx/datastore/preferences/protobuf/MessageLite;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public g()Landroidx/datastore/preferences/protobuf/MessageLite;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyField;->defaultInstance:Landroidx/datastore/preferences/protobuf/MessageLite;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->d(Landroidx/datastore/preferences/protobuf/MessageLite;)Landroidx/datastore/preferences/protobuf/MessageLite;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/LazyField;->g()Landroidx/datastore/preferences/protobuf/MessageLite;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/LazyField;->g()Landroidx/datastore/preferences/protobuf/MessageLite;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
