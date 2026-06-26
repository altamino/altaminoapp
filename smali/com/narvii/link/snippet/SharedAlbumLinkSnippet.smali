.class public Lcom/narvii/link/snippet/SharedAlbumLinkSnippet;
.super Lcom/narvii/link/snippet/NVBaseLinkSnippet;
.source "SharedAlbumLinkSnippet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/link/snippet/NVBaseLinkSnippet<",
        "Lcom/narvii/model/SharedAlbum;",
        "Lcom/narvii/sharedfolder/SharedAlbumResponse;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/share/LinkInfo;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/narvii/link/snippet/NVBaseLinkSnippet;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/share/LinkInfo;)V

    return-void
.end method


# virtual methods
.method protected getHeightMeasureSpec()I
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/narvii/link/snippet/LinkSnippet;->context:Landroid/content/Context;

    const/high16 v1, 0x432a0000    # 170.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method protected getSnippetView()Lcom/narvii/link/view/NVLinkSnippetView;
    .locals 2

    .line 27
    new-instance v0, Lcom/narvii/link/view/SharedAlbumSnippetView;

    iget-object v1, p0, Lcom/narvii/link/snippet/LinkSnippet;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/narvii/link/view/SharedAlbumSnippetView;-><init>(Landroid/content/Context;)V

    .line 28
    iget-object v1, p0, Lcom/narvii/link/snippet/NVLinkSnippet;->otherCommunity:Lcom/narvii/model/Community;

    invoke-virtual {v0, v1}, Lcom/narvii/link/view/SharedAlbumSnippetView;->setOtherCommunity(Lcom/narvii/model/Community;)V

    return-object v0
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1

    .line 22
    const-class v0, Lcom/narvii/sharedfolder/SharedAlbumResponse;

    return-object v0
.end method

.method protected useOtherCommunityFrame()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected widthDp()I
    .locals 1

    const/16 v0, 0xaa

    return v0
.end method
