.class public Lcom/narvii/link/snippet/StoreItemLinkSnippet;
.super Lcom/narvii/link/snippet/NVBaseLinkSnippet;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/link/snippet/NVBaseLinkSnippet;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/share/LinkInfo;)V

    .line 4
    return-void
.end method


# virtual methods
.method protected getSnippetView()Lcom/narvii/link/view/NVLinkSnippetView;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/link/view/StoreItemSnippetView;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/link/snippet/LinkSnippet;->nvContext:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/narvii/link/view/StoreItemSnippetView;-><init>(Landroid/content/Context;)V

    .line 12
    return-object v0
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/link/snippet/NVLinkSnippet;->linkInfo:Lcom/narvii/share/LinkInfo;

    .line 3
    .line 4
    iget v0, v0, Lcom/narvii/share/LinkInfo;->objectType:I

    .line 5
    .line 6
    const/16 v1, 0x72

    .line 7
    .line 8
    if-eq v0, v1, :cond_2

    .line 9
    .line 10
    const/16 v1, 0x74

    .line 11
    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    const/16 v1, 0x7a

    .line 15
    .line 16
    if-eq v0, v1, :cond_0

    .line 17
    const/4 v0, 0x0

    .line 18
    return-object v0

    .line 19
    .line 20
    :cond_0
    const-class v0, Lcom/narvii/monetization/avatarframe/AvatarFrameResponse;

    .line 21
    return-object v0

    .line 22
    .line 23
    :cond_1
    const-class v0, Lcom/narvii/monetization/bubble/ChatBubbleResponse;

    .line 24
    return-object v0

    .line 25
    .line 26
    :cond_2
    const-class v0, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;

    .line 27
    return-object v0
.end method
