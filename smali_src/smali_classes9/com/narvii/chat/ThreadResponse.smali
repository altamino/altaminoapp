.class public Lcom/narvii/chat/ThreadResponse;
.super Lcom/narvii/model/api/ObjectResponse;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/model/api/ObjectResponse;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public object()Lcom/narvii/model/ChatThread;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/ThreadResponse;->thread:Lcom/narvii/model/ChatThread;

    return-object v0
.end method

.method public bridge synthetic object()Lcom/narvii/model/NVObject;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/narvii/chat/ThreadResponse;->object()Lcom/narvii/model/ChatThread;

    move-result-object v0

    return-object v0
.end method
