.class public final Lcom/narvii/chat/core/MarkAsReadResponse;
.super Lcom/narvii/model/api/ApiResponse;
.source "MarkAsReadResponse.kt"


# instance fields
.field private final lastReadTime:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/util/JacksonUtils$DateDeserializer;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/narvii/util/JacksonUtils$DateSerializer;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/narvii/model/api/ApiResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLastReadTime()Ljava/util/Date;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/narvii/chat/core/MarkAsReadResponse;->lastReadTime:Ljava/util/Date;

    return-object v0
.end method
