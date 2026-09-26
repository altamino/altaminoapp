.class public abstract Landroidx/datastore/preferences/protobuf/AbstractParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/Parser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType::",
        "Landroidx/datastore/preferences/protobuf/MessageLite;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/datastore/preferences/protobuf/Parser<",
        "TMessageType;>;"
    }
.end annotation


# static fields
.field private static final EMPTY_REGISTRY:Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;->b()Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sput-object v0, Landroidx/datastore/preferences/protobuf/AbstractParser;->EMPTY_REGISTRY:Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private c(Landroidx/datastore/preferences/protobuf/MessageLite;)Landroidx/datastore/preferences/protobuf/MessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/MessageLiteOrBuilder;->isInitialized()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/AbstractParser;->d(Landroidx/datastore/preferences/protobuf/MessageLite;)Landroidx/datastore/preferences/protobuf/UninitializedMessageException;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/UninitializedMessageException;->a()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->i(Landroidx/datastore/preferences/protobuf/MessageLite;)Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    .line 21
    move-result-object p1

    .line 22
    throw p1

    .line 23
    :cond_1
    :goto_0
    return-object p1
.end method

.method private d(Landroidx/datastore/preferences/protobuf/MessageLite;)Landroidx/datastore/preferences/protobuf/UninitializedMessageException;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)",
            "Landroidx/datastore/preferences/protobuf/UninitializedMessageException;"
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;->g()Landroidx/datastore/preferences/protobuf/UninitializedMessageException;

    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    .line 13
    :cond_0
    new-instance v0, Landroidx/datastore/preferences/protobuf/UninitializedMessageException;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, p1}, Landroidx/datastore/preferences/protobuf/UninitializedMessageException;-><init>(Landroidx/datastore/preferences/protobuf/MessageLite;)V

    .line 17
    return-object v0
.end method


# virtual methods
.method public bridge synthetic b(Landroidx/datastore/preferences/protobuf/ByteString;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/AbstractParser;->e(Landroidx/datastore/preferences/protobuf/ByteString;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/MessageLite;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public e(Landroidx/datastore/preferences/protobuf/ByteString;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/MessageLite;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/preferences/protobuf/ByteString;",
            "Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/AbstractParser;->f(Landroidx/datastore/preferences/protobuf/ByteString;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/MessageLite;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/AbstractParser;->c(Landroidx/datastore/preferences/protobuf/MessageLite;)Landroidx/datastore/preferences/protobuf/MessageLite;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public f(Landroidx/datastore/preferences/protobuf/ByteString;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/MessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/preferences/protobuf/ByteString;",
            "Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/ByteString;->y()Landroidx/datastore/preferences/protobuf/CodedInputStream;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-interface {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/Parser;->a(Landroidx/datastore/preferences/protobuf/CodedInputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    .line 8
    move-result-object p2

    .line 9
    .line 10
    check-cast p2, Landroidx/datastore/preferences/protobuf/MessageLite;

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    .line 14
    :try_start_0
    invoke-virtual {p1, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->a(I)V
    :try_end_0
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return-object p2

    .line 16
    :catch_0
    move-exception p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->i(Landroidx/datastore/preferences/protobuf/MessageLite;)Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    .line 20
    move-result-object p1

    .line 21
    throw p1
.end method
