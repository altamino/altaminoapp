.class public Lcom/narvii/link/snippet/StoreItemLinkSnippet;
.super Lcom/narvii/link/snippet/NVBaseLinkSnippet;
.source "StoreItemLinkSnippet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/link/snippet/NVBaseLinkSnippet<",
        "Lcom/narvii/model/StoreItemBaseObject;",
        "Lcom/narvii/model/api/ObjectResponse<",
        "Lcom/narvii/model/StoreItemBaseObject;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/share/LinkInfo;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/narvii/link/snippet/NVBaseLinkSnippet;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/share/LinkInfo;)V

    return-void
.end method


# virtual methods
.method protected getSnippetView()Lcom/narvii/link/view/NVLinkSnippetView;
    .locals 2

    .line 24
    new-instance v0, Lcom/narvii/link/view/StoreItemSnippetView;

    iget-object v1, p0, Lcom/narvii/link/snippet/LinkSnippet;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/link/view/StoreItemSnippetView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/narvii/link/snippet/NVLinkSnippet;->linkInfo:Lcom/narvii/share/LinkInfo;

    iget v0, v0, Lcom/narvii/share/LinkInfo;->objectType:I

    const/16 v1, 0x72

    if-eq v0, v1, :cond_2

    const/16 v1, 0x74

    if-eq v0, v1, :cond_1

    const/16 v1, 0x7a

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 35
    :cond_0
    const-class v0, Lcom/narvii/monetization/avatarframe/AvatarFrameResponse;

    return-object v0

    .line 33
    :cond_1
    const-class v0, Lcom/narvii/monetization/bubble/ChatBubbleResponse;

    return-object v0

    .line 31
    :cond_2
    const-class v0, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;

    return-object v0
.end method
