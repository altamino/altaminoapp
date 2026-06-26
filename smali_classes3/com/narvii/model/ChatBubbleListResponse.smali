.class public Lcom/narvii/model/ChatBubbleListResponse;
.super Lcom/narvii/model/api/ListResponse;
.source "ChatBubbleListResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/model/api/ListResponse<",
        "Lcom/narvii/model/ChatBubble;",
        ">;"
    }
.end annotation


# instance fields
.field public allChatsBubbleId:Ljava/lang/String;

.field public chatBubbleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/ChatBubble;",
            ">;"
        }
    .end annotation
.end field

.field public currentSelectedBubbleId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/narvii/model/api/ListResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/ChatBubble;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/narvii/model/ChatBubbleListResponse;->chatBubbleList:Ljava/util/List;

    return-object v0
.end method
