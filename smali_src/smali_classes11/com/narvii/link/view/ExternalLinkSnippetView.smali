.class public Lcom/narvii/link/view/ExternalLinkSnippetView;
.super Lcom/narvii/link/view/LoadTrackView;
.source "SourceFile"


# instance fields
.field faviconImg:Lcom/narvii/widget/NVImageView;

.field imgLinkIcon:Lcom/narvii/widget/ThumbImageView;

.field tvSource:Landroid/widget/TextView;

.field txtLinkDescription:Landroid/widget/TextView;

.field txtLinkTitle:Landroid/widget/TextView;


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
    invoke-direct {p0, p1}, Lcom/narvii/link/view/LoadTrackView;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0d0474

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    const p1, 0x7f0a07eb

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    check-cast p1, Lcom/narvii/widget/ThumbImageView;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/narvii/link/view/ExternalLinkSnippetView;->imgLinkIcon:Lcom/narvii/widget/ThumbImageView;

    .line 21
    .line 22
    .line 23
    const p1, 0x7f0a07f5

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    check-cast p1, Landroid/widget/TextView;

    .line 30
    .line 31
    iput-object p1, p0, Lcom/narvii/link/view/ExternalLinkSnippetView;->txtLinkTitle:Landroid/widget/TextView;

    .line 32
    .line 33
    .line 34
    const p1, 0x7f0a07e9

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    check-cast p1, Landroid/widget/TextView;

    .line 41
    .line 42
    iput-object p1, p0, Lcom/narvii/link/view/ExternalLinkSnippetView;->txtLinkDescription:Landroid/widget/TextView;

    .line 43
    .line 44
    .line 45
    const p1, 0x7f0a0d44

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    check-cast p1, Lcom/narvii/widget/NVImageView;

    .line 52
    .line 53
    iput-object p1, p0, Lcom/narvii/link/view/ExternalLinkSnippetView;->faviconImg:Lcom/narvii/widget/NVImageView;

    .line 54
    .line 55
    .line 56
    const p1, 0x7f0a0d48

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    check-cast p1, Landroid/widget/TextView;

    .line 63
    .line 64
    iput-object p1, p0, Lcom/narvii/link/view/ExternalLinkSnippetView;->tvSource:Landroid/widget/TextView;

    .line 65
    .line 66
    iget-object p1, p0, Lcom/narvii/link/view/LoadTrackView;->imageLoadTracker:Lcom/narvii/image/ImageLoadTracker;

    .line 67
    .line 68
    iget-object v0, p0, Lcom/narvii/link/view/ExternalLinkSnippetView;->imgLinkIcon:Lcom/narvii/widget/ThumbImageView;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0}, Lcom/narvii/image/ImageLoadTracker;->addImageView(Lcom/narvii/widget/NVImageView;)V

    .line 72
    .line 73
    iget-object p1, p0, Lcom/narvii/link/view/LoadTrackView;->imageLoadTracker:Lcom/narvii/image/ImageLoadTracker;

    .line 74
    .line 75
    iget-object v0, p0, Lcom/narvii/link/view/ExternalLinkSnippetView;->faviconImg:Lcom/narvii/widget/NVImageView;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v0}, Lcom/narvii/image/ImageLoadTracker;->addImageView(Lcom/narvii/widget/NVImageView;)V

    .line 79
    return-void
.end method


# virtual methods
.method public setExternalFeed(Lcom/narvii/model/Feed;)V
    .locals 2

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/model/Blog;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/model/Blog;

    .line 7
    .line 8
    new-instance v0, Lcom/narvii/model/LinkSummary;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Lcom/narvii/model/LinkSummary;-><init>()V

    .line 12
    .line 13
    iget-object v1, p1, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    .line 14
    .line 15
    iput-object v1, v0, Lcom/narvii/model/LinkSummary;->mediaList:Ljava/util/List;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/narvii/model/Blog;->title()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    iput-object v1, v0, Lcom/narvii/model/LinkSummary;->title:Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/narvii/model/Blog;->content()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    iput-object v1, v0, Lcom/narvii/model/LinkSummary;->body:Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v1}, Lcom/narvii/model/Blog;->getDisplayNickname(Landroid/content/Context;)Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    iput-object v1, v0, Lcom/narvii/model/LinkSummary;->source:Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0}, Lcom/narvii/link/view/ExternalLinkSnippetView;->setLinkSummary(Lcom/narvii/model/LinkSummary;)V

    .line 41
    .line 42
    iget-object v0, p0, Lcom/narvii/link/view/ExternalLinkSnippetView;->faviconImg:Lcom/narvii/widget/NVImageView;

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0}, Lcom/narvii/model/Blog;->getExternalOriginDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    iget-object v0, p0, Lcom/narvii/link/view/ExternalLinkSnippetView;->faviconImg:Lcom/narvii/widget/NVImageView;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 58
    .line 59
    iget-object v0, p0, Lcom/narvii/link/view/ExternalLinkSnippetView;->faviconImg:Lcom/narvii/widget/NVImageView;

    .line 60
    .line 61
    if-eqz p1, :cond_0

    .line 62
    const/4 p1, 0x1

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    const/4 p1, 0x0

    .line 65
    .line 66
    .line 67
    :goto_0
    invoke-static {v0, p1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 68
    :cond_1
    return-void
.end method

.method public setLinkSummary(Lcom/narvii/model/LinkSummary;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/link/view/ExternalLinkSnippetView;->imgLinkIcon:Lcom/narvii/widget/ThumbImageView;

    .line 3
    .line 4
    const/16 v1, 0x8

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/narvii/model/LinkSummary;->getFirstMedia()Lcom/narvii/model/Media;

    .line 11
    move-result-object v3

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v3}, Lcom/narvii/widget/ThumbImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/link/view/ExternalLinkSnippetView;->imgLinkIcon:Lcom/narvii/widget/ThumbImageView;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/model/LinkSummary;->getFirstMediaUrl()Ljava/lang/String;

    .line 20
    move-result-object v3

    .line 21
    .line 22
    .line 23
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    move-result v3

    .line 25
    .line 26
    if-eqz v3, :cond_0

    .line 27
    move v3, v1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v3, v2

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Lcom/narvii/link/view/ExternalLinkSnippetView;->txtLinkTitle:Landroid/widget/TextView;

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/narvii/model/LinkSummary;->getTitle()Ljava/lang/String;

    .line 40
    move-result-object v3

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    iget-object v0, p0, Lcom/narvii/link/view/ExternalLinkSnippetView;->txtLinkTitle:Landroid/widget/TextView;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/narvii/model/LinkSummary;->getTitle()Ljava/lang/String;

    .line 49
    move-result-object v3

    .line 50
    .line 51
    .line 52
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 53
    move-result v3

    .line 54
    .line 55
    if-eqz v3, :cond_2

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    move v1, v2

    .line 58
    .line 59
    .line 60
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    .line 62
    :cond_3
    iget-object v0, p0, Lcom/narvii/link/view/ExternalLinkSnippetView;->txtLinkDescription:Landroid/widget/TextView;

    .line 63
    .line 64
    if-eqz v0, :cond_5

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/narvii/model/LinkSummary;->getBody()Ljava/lang/String;

    .line 68
    move-result-object v1

    .line 69
    .line 70
    .line 71
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 72
    move-result v1

    .line 73
    .line 74
    if-eqz v1, :cond_4

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/narvii/model/LinkSummary;->getLink()Ljava/lang/String;

    .line 78
    move-result-object v1

    .line 79
    goto :goto_2

    .line 80
    .line 81
    .line 82
    :cond_4
    invoke-virtual {p1}, Lcom/narvii/model/LinkSummary;->getBody()Ljava/lang/String;

    .line 83
    move-result-object v1

    .line 84
    .line 85
    .line 86
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    iget-object v0, p0, Lcom/narvii/link/view/ExternalLinkSnippetView;->txtLinkDescription:Landroid/widget/TextView;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 92
    .line 93
    :cond_5
    iget-object v0, p0, Lcom/narvii/link/view/ExternalLinkSnippetView;->faviconImg:Lcom/narvii/widget/NVImageView;

    .line 94
    .line 95
    if-eqz v0, :cond_7

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/narvii/model/LinkSummary;->getShowFavIcon()Ljava/lang/String;

    .line 99
    move-result-object v0

    .line 100
    .line 101
    iget-object v1, p0, Lcom/narvii/link/view/ExternalLinkSnippetView;->faviconImg:Lcom/narvii/widget/NVImageView;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 105
    .line 106
    iget-object v1, p0, Lcom/narvii/link/view/ExternalLinkSnippetView;->faviconImg:Lcom/narvii/widget/NVImageView;

    .line 107
    .line 108
    if-eqz v0, :cond_6

    .line 109
    const/4 v2, 0x1

    .line 110
    .line 111
    .line 112
    :cond_6
    invoke-static {v1, v2}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 113
    .line 114
    :cond_7
    iget-object v0, p0, Lcom/narvii/link/view/ExternalLinkSnippetView;->tvSource:Landroid/widget/TextView;

    .line 115
    .line 116
    if-eqz v0, :cond_8

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1}, Lcom/narvii/model/LinkSummary;->getShowSource()Ljava/lang/String;

    .line 120
    move-result-object p1

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :cond_8
    return-void
.end method
