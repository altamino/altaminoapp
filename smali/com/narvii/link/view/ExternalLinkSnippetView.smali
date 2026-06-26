.class public Lcom/narvii/link/view/ExternalLinkSnippetView;
.super Lcom/narvii/link/view/LoadTrackView;
.source "ExternalLinkSnippetView.java"


# instance fields
.field faviconImg:Lcom/narvii/widget/NVImageView;

.field imgLinkIcon:Lcom/narvii/widget/ThumbImageView;

.field tvSource:Landroid/widget/TextView;

.field txtLinkDescription:Landroid/widget/TextView;

.field txtLinkTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 26
    invoke-direct {p0, p1}, Lcom/narvii/link/view/LoadTrackView;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0b043f

    .line 27
    invoke-static {p1, v0, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f090666

    .line 28
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/ThumbImageView;

    iput-object p1, p0, Lcom/narvii/link/view/ExternalLinkSnippetView;->imgLinkIcon:Lcom/narvii/widget/ThumbImageView;

    const p1, 0x7f090670

    .line 29
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/link/view/ExternalLinkSnippetView;->txtLinkTitle:Landroid/widget/TextView;

    const p1, 0x7f090664

    .line 30
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/link/view/ExternalLinkSnippetView;->txtLinkDescription:Landroid/widget/TextView;

    const p1, 0x7f090a5b

    .line 31
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVImageView;

    iput-object p1, p0, Lcom/narvii/link/view/ExternalLinkSnippetView;->faviconImg:Lcom/narvii/widget/NVImageView;

    const p1, 0x7f090a5f

    .line 32
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/link/view/ExternalLinkSnippetView;->tvSource:Landroid/widget/TextView;

    .line 33
    iget-object p1, p0, Lcom/narvii/link/view/LoadTrackView;->imageLoadTracker:Lcom/narvii/image/ImageLoadTracker;

    iget-object v0, p0, Lcom/narvii/link/view/ExternalLinkSnippetView;->imgLinkIcon:Lcom/narvii/widget/ThumbImageView;

    invoke-virtual {p1, v0}, Lcom/narvii/image/ImageLoadTracker;->addImageView(Lcom/narvii/widget/NVImageView;)V

    .line 34
    iget-object p1, p0, Lcom/narvii/link/view/LoadTrackView;->imageLoadTracker:Lcom/narvii/image/ImageLoadTracker;

    iget-object v0, p0, Lcom/narvii/link/view/ExternalLinkSnippetView;->faviconImg:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1, v0}, Lcom/narvii/image/ImageLoadTracker;->addImageView(Lcom/narvii/widget/NVImageView;)V

    return-void
.end method


# virtual methods
.method public setExternalFeed(Lcom/narvii/model/Feed;)V
    .locals 2

    .line 38
    instance-of v0, p1, Lcom/narvii/model/Blog;

    if-eqz v0, :cond_1

    .line 39
    check-cast p1, Lcom/narvii/model/Blog;

    .line 40
    new-instance v0, Lcom/narvii/model/LinkSummary;

    invoke-direct {v0}, Lcom/narvii/model/LinkSummary;-><init>()V

    .line 41
    iget-object v1, p1, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    iput-object v1, v0, Lcom/narvii/model/LinkSummary;->mediaList:Ljava/util/List;

    .line 42
    invoke-virtual {p1}, Lcom/narvii/model/Blog;->title()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/model/LinkSummary;->title:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Lcom/narvii/model/Blog;->content()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/model/LinkSummary;->body:Ljava/lang/String;

    .line 44
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/narvii/model/Blog;->getDisplayNickname(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/model/LinkSummary;->source:Ljava/lang/String;

    .line 45
    invoke-virtual {p0, v0}, Lcom/narvii/link/view/ExternalLinkSnippetView;->setLinkSummary(Lcom/narvii/model/LinkSummary;)V

    .line 46
    iget-object v0, p0, Lcom/narvii/link/view/ExternalLinkSnippetView;->faviconImg:Lcom/narvii/widget/NVImageView;

    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/model/Blog;->getExternalOriginDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 48
    iget-object v0, p0, Lcom/narvii/link/view/ExternalLinkSnippetView;->faviconImg:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    iget-object v0, p0, Lcom/narvii/link/view/ExternalLinkSnippetView;->faviconImg:Lcom/narvii/widget/NVImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, p1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    :cond_1
    return-void
.end method

.method public setLinkSummary(Lcom/narvii/model/LinkSummary;)V
    .locals 4

    .line 55
    iget-object v0, p0, Lcom/narvii/link/view/ExternalLinkSnippetView;->imgLinkIcon:Lcom/narvii/widget/ThumbImageView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 56
    invoke-virtual {p1}, Lcom/narvii/model/LinkSummary;->getFirstMedia()Lcom/narvii/model/Media;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/narvii/widget/ThumbImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 57
    iget-object v0, p0, Lcom/narvii/link/view/ExternalLinkSnippetView;->imgLinkIcon:Lcom/narvii/widget/ThumbImageView;

    invoke-virtual {p1}, Lcom/narvii/model/LinkSummary;->getFirstMediaUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/narvii/link/view/ExternalLinkSnippetView;->txtLinkTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 60
    invoke-virtual {p1}, Lcom/narvii/model/LinkSummary;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v0, p0, Lcom/narvii/link/view/ExternalLinkSnippetView;->txtLinkTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/narvii/model/LinkSummary;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    :cond_3
    iget-object v0, p0, Lcom/narvii/link/view/ExternalLinkSnippetView;->txtLinkDescription:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 64
    invoke-virtual {p1}, Lcom/narvii/model/LinkSummary;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/narvii/model/LinkSummary;->getLink()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lcom/narvii/model/LinkSummary;->getBody()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v0, p0, Lcom/narvii/link/view/ExternalLinkSnippetView;->txtLinkDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    :cond_5
    iget-object v0, p0, Lcom/narvii/link/view/ExternalLinkSnippetView;->faviconImg:Lcom/narvii/widget/NVImageView;

    if-eqz v0, :cond_7

    .line 68
    invoke-virtual {p1}, Lcom/narvii/model/LinkSummary;->getShowFavIcon()Ljava/lang/String;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/narvii/link/view/ExternalLinkSnippetView;->faviconImg:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v1, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 70
    iget-object v1, p0, Lcom/narvii/link/view/ExternalLinkSnippetView;->faviconImg:Lcom/narvii/widget/NVImageView;

    if-eqz v0, :cond_6

    const/4 v2, 0x1

    :cond_6
    invoke-static {v1, v2}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 72
    :cond_7
    iget-object v0, p0, Lcom/narvii/link/view/ExternalLinkSnippetView;->tvSource:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    .line 73
    invoke-virtual {p1}, Lcom/narvii/model/LinkSummary;->getShowSource()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    return-void
.end method
