.class public Lcom/narvii/link/view/SharedAlbumSnippetView;
.super Lcom/narvii/link/view/NVLinkSnippetView;
.source "SharedAlbumSnippetView.java"


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

    .line 19
    invoke-direct {p0, p1}, Lcom/narvii/link/view/NVLinkSnippetView;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0b0443

    .line 20
    invoke-static {p1, v0, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f090a3f

    .line 21
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/sharedfolder/SharedAlbumView;

    iput-object p1, p0, Lcom/narvii/link/view/SharedAlbumSnippetView;->sharedAlbumView:Lcom/narvii/sharedfolder/SharedAlbumView;

    const p1, 0x7f0902b2

    .line 22
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/link/view/CommunityInfoItem;

    iput-object p1, p0, Lcom/narvii/link/view/SharedAlbumSnippetView;->communityInfoItem:Lcom/narvii/link/view/CommunityInfoItem;

    return-void
.end method


# virtual methods
.method public bridge synthetic setObject(Lcom/narvii/model/NVObject;)V
    .locals 0

    .line 11
    check-cast p1, Lcom/narvii/model/SharedAlbum;

    invoke-virtual {p0, p1}, Lcom/narvii/link/view/SharedAlbumSnippetView;->setObject(Lcom/narvii/model/SharedAlbum;)V

    return-void
.end method

.method public setObject(Lcom/narvii/model/SharedAlbum;)V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/narvii/link/view/SharedAlbumSnippetView;->sharedAlbumView:Lcom/narvii/sharedfolder/SharedAlbumView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/narvii/sharedfolder/SharedAlbumView;->setSnippetMode(Z)V

    .line 32
    iget-object v0, p0, Lcom/narvii/link/view/SharedAlbumSnippetView;->sharedAlbumView:Lcom/narvii/sharedfolder/SharedAlbumView;

    invoke-virtual {v0, p1}, Lcom/narvii/sharedfolder/SharedAlbumView;->setSharedAlbum(Lcom/narvii/model/SharedAlbum;)V

    .line 34
    iget-object p1, p0, Lcom/narvii/link/view/SharedAlbumSnippetView;->otherCommunity:Lcom/narvii/model/Community;

    if-eqz p1, :cond_0

    .line 35
    iget-object p1, p0, Lcom/narvii/link/view/SharedAlbumSnippetView;->communityInfoItem:Lcom/narvii/link/view/CommunityInfoItem;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 36
    iget-object p1, p0, Lcom/narvii/link/view/SharedAlbumSnippetView;->communityInfoItem:Lcom/narvii/link/view/CommunityInfoItem;

    invoke-virtual {p1, v1}, Lcom/narvii/link/view/CommunityInfoItem;->setDarkTheme(Z)V

    .line 37
    iget-object p1, p0, Lcom/narvii/link/view/SharedAlbumSnippetView;->communityInfoItem:Lcom/narvii/link/view/CommunityInfoItem;

    iget-object v0, p0, Lcom/narvii/link/view/SharedAlbumSnippetView;->otherCommunity:Lcom/narvii/model/Community;

    invoke-virtual {p1, v0}, Lcom/narvii/link/view/CommunityInfoItem;->setCommunity(Lcom/narvii/model/Community;)V

    .line 38
    iget-object p1, p0, Lcom/narvii/link/view/LoadTrackView;->imageLoadTracker:Lcom/narvii/image/ImageLoadTracker;

    iget-object v0, p0, Lcom/narvii/link/view/SharedAlbumSnippetView;->communityInfoItem:Lcom/narvii/link/view/CommunityInfoItem;

    iget-object v0, v0, Lcom/narvii/link/view/CommunityInfoItem;->icon:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1, v0}, Lcom/narvii/image/ImageLoadTracker;->addImageView(Lcom/narvii/widget/NVImageView;)V

    goto :goto_0

    .line 40
    :cond_0
    iget-object p1, p0, Lcom/narvii/link/view/SharedAlbumSnippetView;->communityInfoItem:Lcom/narvii/link/view/CommunityInfoItem;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 42
    :goto_0
    iget-object p1, p0, Lcom/narvii/link/view/SharedAlbumSnippetView;->sharedAlbumView:Lcom/narvii/sharedfolder/SharedAlbumView;

    iget-object v0, p0, Lcom/narvii/link/view/LoadTrackView;->imageLoadTracker:Lcom/narvii/image/ImageLoadTracker;

    invoke-virtual {p1, v0}, Lcom/narvii/sharedfolder/SharedAlbumView;->setUpImageLoadTracker(Lcom/narvii/image/ImageLoadTracker;)V

    return-void
.end method

.method public setOtherCommunity(Lcom/narvii/model/Community;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/narvii/link/view/SharedAlbumSnippetView;->otherCommunity:Lcom/narvii/model/Community;

    return-void
.end method
