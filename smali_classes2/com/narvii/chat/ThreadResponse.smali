.class public Lcom/narvii/chat/ThreadResponse;
.super Lcom/narvii/model/api/ObjectResponse;
.source "ThreadResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/model/api/ObjectResponse<",
        "Lcom/narvii/model/ChatThread;",
        ">;"
    }
.end annotation


# instance fields
.field public thread:Lcom/narvii/model/ChatThread;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/narvii/model/api/ObjectResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public object()Lcom/narvii/model/ChatThread;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/narvii/chat/ThreadResponse;->thread:Lcom/narvii/model/ChatThread;

    return-object v0
.end method

.method public bridge synthetic object()Lcom/narvii/model/NVObject;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/narvii/chat/ThreadResponse;->object()Lcom/narvii/model/ChatThread;

    move-result-object v0

    return-object v0
.end method
