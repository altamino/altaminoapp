.class public Lcom/narvii/sharedfolder/SharedAlbumView;
.super Landroid/widget/FrameLayout;
.source "SharedAlbumView.java"


# instance fields
.field cover:Lcom/narvii/widget/NVImageView;

.field gradient:Landroid/view/View;

.field locked:Landroid/view/View;

.field photosCount:Landroid/widget/TextView;

.field snippetMode:Z

.field title:Landroid/widget/TextView;

.field voteIcon:Landroid/view/View;

.field votesCount:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 43
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f090b9a

    .line 44
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumView;->title:Landroid/widget/TextView;

    const v0, 0x7f09082d

    .line 45
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumView;->photosCount:Landroid/widget/TextView;

    const v0, 0x7f090cd7

    .line 46
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumView;->votesCount:Landroid/widget/TextView;

    const v0, 0x7f0902fc

    .line 47
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumView;->cover:Lcom/narvii/widget/NVImageView;

    const v0, 0x7f0904dd

    .line 48
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumView;->gradient:Landroid/view/View;

    const v0, 0x7f0906a1

    .line 49
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumView;->locked:Landroid/view/View;

    const v0, 0x7f090cdc

    .line 50
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumView;->voteIcon:Landroid/view/View;

    return-void
.end method

.method public setSharedAlbum(Lcom/narvii/model/SharedAlbum;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumView;->title:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 62
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/narvii/model/SharedAlbum;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumView;->cover:Lcom/narvii/widget/NVImageView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 65
    iget-object v3, p0, Lcom/narvii/sharedfolder/SharedAlbumView;->gradient:Landroid/view/View;

    invoke-virtual {v0}, Lcom/narvii/widget/NVImageView;->getStatus()I

    move-result v0

    const/4 v4, 0x4

    if-ne v0, v4, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-static {v3, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 66
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumView;->cover:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1}, Lcom/narvii/model/SharedAlbum;->getCoverImage()Lcom/narvii/model/Media;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 67
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumView;->cover:Lcom/narvii/widget/NVImageView;

    new-instance v3, Lcom/narvii/sharedfolder/SharedAlbumView$1;

    invoke-direct {v3, p0}, Lcom/narvii/sharedfolder/SharedAlbumView$1;-><init>(Lcom/narvii/sharedfolder/SharedAlbumView;)V

    invoke-virtual {v0, v3}, Lcom/narvii/widget/NVImageView;->setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    .line 74
    :cond_3
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumView;->photosCount:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 75
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p1, Lcom/narvii/model/SharedAlbum;->filesCount:I

    const v5, 0x7f0f0cd5

    const v6, 0x7f0f0c01

    invoke-static {v3, v4, v5, v6}, Lcom/narvii/util/text/TextUtils;->getCountText(Landroid/content/Context;III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    :cond_4
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumView;->votesCount:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 78
    sget-object v3, Lcom/narvii/util/text/TextUtils;->numberFormat:Ljava/text/NumberFormat;

    iget v4, p1, Lcom/narvii/model/SharedAlbum;->votesCount:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :cond_5
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumView;->votesCount:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/narvii/sharedfolder/SharedAlbumView;->snippetMode:Z

    xor-int/2addr v3, v2

    invoke-static {v0, v3}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 81
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumView;->voteIcon:Landroid/view/View;

    iget-boolean v3, p0, Lcom/narvii/sharedfolder/SharedAlbumView;->snippetMode:Z

    xor-int/2addr v2, v3

    invoke-static {v0, v2}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 82
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumView;->locked:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 83
    invoke-virtual {p1}, Lcom/narvii/model/SharedAlbum;->isLocked()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/narvii/sharedfolder/SharedAlbumView;->snippetMode:Z

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    return-void
.end method

.method public setSnippetMode(Z)V
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/narvii/sharedfolder/SharedAlbumView;->snippetMode:Z

    return-void
.end method

.method public setUpImageLoadTracker(Lcom/narvii/image/ImageLoadTracker;)V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumView;->cover:Lcom/narvii/widget/NVImageView;

    new-instance v1, Lcom/narvii/sharedfolder/SharedAlbumView$2;

    invoke-direct {v1, p0, p1}, Lcom/narvii/sharedfolder/SharedAlbumView$2;-><init>(Lcom/narvii/sharedfolder/SharedAlbumView;Lcom/narvii/image/ImageLoadTracker;)V

    invoke-virtual {p1, v0, v1}, Lcom/narvii/image/ImageLoadTracker;->addImageView(Lcom/narvii/widget/NVImageView;Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    return-void
.end method
