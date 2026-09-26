.class public Lcom/narvii/link/view/SharedAlbumSnippetView;
.super Lcom/narvii/link/view/NVLinkSnippetView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/link/view/NVLinkSnippetView<",
        "Lcom/narvii/model/SharedAlbum;",
        ">;"
    }
.end annotation


# instance fields
.field communityInfoItem:Lcom/narvii/link/view/CommunityInfoItem;

.field otherCommunity:Lcom/narvii/model/Community;

.field sharedAlbumView:Lcom/narvii/sharedfolder/SharedAlbumView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/link/view/NVLinkSnippetView;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0d0478

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    const p1, 0x7f0a0d08

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    check-cast p1, Lcom/narvii/sharedfolder/SharedAlbumView;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/narvii/link/view/SharedAlbumSnippetView;->sharedAlbumView:Lcom/narvii/sharedfolder/SharedAlbumView;

    .line 21
    .line 22
    .line 23
    const p1, 0x7f0a0378

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    check-cast p1, Lcom/narvii/link/view/CommunityInfoItem;

    .line 30
    .line 31
    iput-object p1, p0, Lcom/narvii/link/view/SharedAlbumSnippetView;->communityInfoItem:Lcom/narvii/link/view/CommunityInfoItem;

    .line 32
    return-void
.end method


# virtual methods
.method public bridge synthetic setObject(Lcom/narvii/model/NVObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/model/SharedAlbum;

    invoke-virtual {p0, p1}, Lcom/narvii/link/view/SharedAlbumSnippetView;->setObject(Lcom/narvii/model/SharedAlbum;)V

    return-void
.end method

.method public setObject(Lcom/narvii/model/SharedAlbum;)V
    .locals 2

    iget-object v0, p0, Lcom/narvii/link/view/SharedAlbumSnippetView;->sharedAlbumView:Lcom/narvii/sharedfolder/SharedAlbumView;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/narvii/sharedfolder/SharedAlbumView;->setSnippetMode(Z)V

    iget-object v0, p0, Lcom/narvii/link/view/SharedAlbumSnippetView;->sharedAlbumView:Lcom/narvii/sharedfolder/SharedAlbumView;

    .line 3
    invoke-virtual {v0, p1}, Lcom/narvii/sharedfolder/SharedAlbumView;->setSharedAlbum(Lcom/narvii/model/SharedAlbum;)V

    iget-object p1, p0, Lcom/narvii/link/view/SharedAlbumSnippetView;->otherCommunity:Lcom/narvii/model/Community;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/link/view/SharedAlbumSnippetView;->communityInfoItem:Lcom/narvii/link/view/CommunityInfoItem;

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/narvii/link/view/SharedAlbumSnippetView;->communityInfoItem:Lcom/narvii/link/view/CommunityInfoItem;

    .line 5
    invoke-virtual {p1, v1}, Lcom/narvii/link/view/CommunityInfoItem;->setDarkTheme(Z)V

    iget-object p1, p0, Lcom/narvii/link/view/SharedAlbumSnippetView;->communityInfoItem:Lcom/narvii/link/view/CommunityInfoItem;

    iget-object v0, p0, Lcom/narvii/link/view/SharedAlbumSnippetView;->otherCommunity:Lcom/narvii/model/Community;

    .line 6
    invoke-virtual {p1, v0}, Lcom/narvii/link/view/CommunityInfoItem;->setCommunity(Lcom/narvii/model/Community;)V

    iget-object p1, p0, Lcom/narvii/link/view/LoadTrackView;->imageLoadTracker:Lcom/narvii/image/ImageLoadTracker;

    iget-object v0, p0, Lcom/narvii/link/view/SharedAlbumSnippetView;->communityInfoItem:Lcom/narvii/link/view/CommunityInfoItem;

    .line 7
    iget-object v0, v0, Lcom/narvii/link/view/CommunityInfoItem;->icon:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1, v0}, Lcom/narvii/image/ImageLoadTracker;->addImageView(Lcom/narvii/widget/NVImageView;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/narvii/link/view/SharedAlbumSnippetView;->communityInfoItem:Lcom/narvii/link/view/CommunityInfoItem;

    const/16 v0, 0x8

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object p1, p0, Lcom/narvii/link/view/SharedAlbumSnippetView;->sharedAlbumView:Lcom/narvii/sharedfolder/SharedAlbumView;

    iget-object v0, p0, Lcom/narvii/link/view/LoadTrackView;->imageLoadTracker:Lcom/narvii/image/ImageLoadTracker;

    .line 9
    invoke-virtual {p1, v0}, Lcom/narvii/sharedfolder/SharedAlbumView;->setUpImageLoadTracker(Lcom/narvii/image/ImageLoadTracker;)V

    return-void
.end method

.method public setOtherCommunity(Lcom/narvii/model/Community;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/link/view/SharedAlbumSnippetView;->otherCommunity:Lcom/narvii/model/Community;

    return-void
.end method
