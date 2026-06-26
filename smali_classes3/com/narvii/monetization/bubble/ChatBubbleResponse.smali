.class public Lcom/narvii/monetization/bubble/ChatBubbleResponse;
.super Lcom/narvii/model/api/ObjectResponse;
.source "ChatBubbleResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/model/api/ObjectResponse<",
        "Lcom/narvii/model/ChatBubble;",
        ">;"
    }
.end annotation


# instance fields
.field public allChatsBubbleId:Ljava/lang/String;

.field public chatBubble:Lcom/narvii/model/ChatBubble;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/narvii/model/api/ObjectResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public object()Lcom/narvii/model/ChatBubble;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/narvii/monetization/bubble/ChatBubbleResponse;->chatBubble:Lcom/narvii/model/ChatBubble;

    return-object v0
.end method

.method public bridge synthetic object()Lcom/narvii/model/NVObject;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/narvii/monetization/bubble/ChatBubbleResponse;->object()Lcom/narvii/model/ChatBubble;

    move-result-object v0

    return-object v0
.end method
