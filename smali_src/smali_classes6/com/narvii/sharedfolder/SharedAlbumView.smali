.class public Lcom/narvii/sharedfolder/SharedAlbumView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a0e9e

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Landroid/widget/TextView;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumView;->title:Landroid/widget/TextView;

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a0ae4

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Landroid/widget/TextView;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumView;->photosCount:Landroid/widget/TextView;

    .line 26
    .line 27
    .line 28
    const v0, 0x7f0a0ffd

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    check-cast v0, Landroid/widget/TextView;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumView;->votesCount:Landroid/widget/TextView;

    .line 37
    .line 38
    .line 39
    const v0, 0x7f0a03cf

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 46
    .line 47
    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumView;->cover:Lcom/narvii/widget/NVImageView;

    .line 48
    .line 49
    .line 50
    const v0, 0x7f0a062a

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumView;->gradient:Landroid/view/View;

    .line 57
    .line 58
    .line 59
    const v0, 0x7f0a082c

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumView;->locked:Landroid/view/View;

    .line 66
    .line 67
    .line 68
    const v0, 0x7f0a1002

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumView;->voteIcon:Landroid/view/View;

    .line 75
    return-void
.end method

.method public setSharedAlbum(Lcom/narvii/model/SharedAlbum;)V
    .locals 7

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumView;->title:Landroid/widget/TextView;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v1}, Lcom/narvii/model/SharedAlbum;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumView;->cover:Lcom/narvii/widget/NVImageView;

    .line 21
    const/4 v1, 0x0

    .line 22
    const/4 v2, 0x1

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    iget-object v3, p0, Lcom/narvii/sharedfolder/SharedAlbumView;->gradient:Landroid/view/View;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/narvii/widget/NVImageView;->getStatus()I

    .line 30
    move-result v0

    .line 31
    const/4 v4, 0x4

    .line 32
    .line 33
    if-ne v0, v4, :cond_2

    .line 34
    move v0, v2

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    move v0, v1

    .line 37
    .line 38
    .line 39
    :goto_0
    invoke-static {v3, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 40
    .line 41
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumView;->cover:Lcom/narvii/widget/NVImageView;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/narvii/model/SharedAlbum;->getCoverImage()Lcom/narvii/model/Media;

    .line 45
    move-result-object v3

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v3}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 49
    .line 50
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumView;->cover:Lcom/narvii/widget/NVImageView;

    .line 51
    .line 52
    new-instance v3, Lcom/narvii/sharedfolder/SharedAlbumView$1;

    .line 53
    .line 54
    .line 55
    invoke-direct {v3, p0}, Lcom/narvii/sharedfolder/SharedAlbumView$1;-><init>(Lcom/narvii/sharedfolder/SharedAlbumView;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v3}, Lcom/narvii/widget/NVImageView;->setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    .line 59
    .line 60
    :cond_3
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumView;->photosCount:Landroid/widget/TextView;

    .line 61
    .line 62
    if-eqz v0, :cond_4

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 66
    move-result-object v3

    .line 67
    .line 68
    iget v4, p1, Lcom/narvii/model/SharedAlbum;->filesCount:I

    .line 69
    .line 70
    .line 71
    const v5, 0x7f120dfd

    .line 72
    .line 73
    .line 74
    const v6, 0x7f120d2c

    .line 75
    .line 76
    .line 77
    invoke-static {v3, v4, v5, v6}, Lcom/narvii/util/text/TextUtils;->getCountText(Landroid/content/Context;III)Ljava/lang/String;

    .line 78
    move-result-object v3

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    .line 83
    :cond_4
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumView;->votesCount:Landroid/widget/TextView;

    .line 84
    .line 85
    if-eqz v0, :cond_5

    .line 86
    .line 87
    sget-object v3, Lcom/narvii/util/text/TextUtils;->numberFormat:Ljava/text/NumberFormat;

    .line 88
    .line 89
    iget v4, p1, Lcom/narvii/model/SharedAlbum;->votesCount:I

    .line 90
    int-to-long v4, v4

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    .line 94
    move-result-object v3

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    .line 99
    :cond_5
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumView;->votesCount:Landroid/widget/TextView;

    .line 100
    .line 101
    iget-boolean v3, p0, Lcom/narvii/sharedfolder/SharedAlbumView;->snippetMode:Z

    .line 102
    xor-int/2addr v3, v2

    .line 103
    .line 104
    .line 105
    invoke-static {v0, v3}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 106
    .line 107
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumView;->voteIcon:Landroid/view/View;

    .line 108
    .line 109
    iget-boolean v3, p0, Lcom/narvii/sharedfolder/SharedAlbumView;->snippetMode:Z

    .line 110
    xor-int/2addr v2, v3

    .line 111
    .line 112
    .line 113
    invoke-static {v0, v2}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 114
    .line 115
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumView;->locked:Landroid/view/View;

    .line 116
    .line 117
    if-eqz v0, :cond_7

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Lcom/narvii/model/SharedAlbum;->isLocked()Z

    .line 121
    move-result p1

    .line 122
    .line 123
    if-eqz p1, :cond_6

    .line 124
    .line 125
    iget-boolean p1, p0, Lcom/narvii/sharedfolder/SharedAlbumView;->snippetMode:Z

    .line 126
    .line 127
    if-nez p1, :cond_6

    .line 128
    goto :goto_1

    .line 129
    .line 130
    :cond_6
    const/16 v1, 0x8

    .line 131
    .line 132
    .line 133
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 134
    :cond_7
    return-void
.end method

.method public setSnippetMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/sharedfolder/SharedAlbumView;->snippetMode:Z

    return-void
.end method

.method public setUpImageLoadTracker(Lcom/narvii/image/ImageLoadTracker;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumView;->cover:Lcom/narvii/widget/NVImageView;

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/sharedfolder/SharedAlbumView$2;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/narvii/sharedfolder/SharedAlbumView$2;-><init>(Lcom/narvii/sharedfolder/SharedAlbumView;Lcom/narvii/image/ImageLoadTracker;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Lcom/narvii/image/ImageLoadTracker;->addImageView(Lcom/narvii/widget/NVImageView;Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    .line 11
    return-void
.end method
