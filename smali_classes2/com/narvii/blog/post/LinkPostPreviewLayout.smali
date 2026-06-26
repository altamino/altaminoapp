.class public Lcom/narvii/blog/post/LinkPostPreviewLayout;
.super Landroid/widget/FrameLayout;
.source "LinkPostPreviewLayout.java"


# instance fields
.field contentLayout:Landroid/view/View;

.field failLayout:Landroid/view/View;

.field faviconImg:Lcom/narvii/widget/ThumbImageView;

.field imgLinkIcon:Lcom/narvii/widget/ThumbImageView;

.field linkSummary:Lcom/narvii/model/LinkSummary;

.field loadingLayout:Landroid/view/View;

.field tvSource:Landroid/widget/TextView;

.field txtLinkDescription:Landroid/widget/TextView;

.field txtLinkTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private updateView()V
    .locals 5

    .line 60
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->linkSummary:Lcom/narvii/model/LinkSummary;

    const/4 v1, 0x4

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->imgLinkIcon:Lcom/narvii/widget/ThumbImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 62
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->txtLinkTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->txtLinkDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->faviconImg:Lcom/narvii/widget/ThumbImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->tvSource:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 68
    :cond_0
    iget-object v2, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->imgLinkIcon:Lcom/narvii/widget/ThumbImageView;

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 69
    invoke-virtual {v0}, Lcom/narvii/model/LinkSummary;->getFirstMedia()Lcom/narvii/model/Media;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/narvii/widget/ThumbImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 70
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->imgLinkIcon:Lcom/narvii/widget/ThumbImageView;

    iget-object v2, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->linkSummary:Lcom/narvii/model/LinkSummary;

    invoke-virtual {v2}, Lcom/narvii/model/LinkSummary;->getFirstMediaUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->txtLinkTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 73
    iget-object v2, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->linkSummary:Lcom/narvii/model/LinkSummary;

    invoke-virtual {v2}, Lcom/narvii/model/LinkSummary;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->txtLinkTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->linkSummary:Lcom/narvii/model/LinkSummary;

    invoke-virtual {v2}, Lcom/narvii/model/LinkSummary;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    :cond_4
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->txtLinkDescription:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 77
    iget-object v1, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->linkSummary:Lcom/narvii/model/LinkSummary;

    invoke-virtual {v1}, Lcom/narvii/model/LinkSummary;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->linkSummary:Lcom/narvii/model/LinkSummary;

    invoke-virtual {v1}, Lcom/narvii/model/LinkSummary;->getLink()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->linkSummary:Lcom/narvii/model/LinkSummary;

    invoke-virtual {v1}, Lcom/narvii/model/LinkSummary;->getBody()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->txtLinkDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    :cond_6
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->failLayout:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 81
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 83
    :cond_7
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->loadingLayout:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 84
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 86
    :cond_8
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->faviconImg:Lcom/narvii/widget/ThumbImageView;

    if-eqz v0, :cond_9

    .line 87
    iget-object v1, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->linkSummary:Lcom/narvii/model/LinkSummary;

    invoke-virtual {v1}, Lcom/narvii/model/LinkSummary;->getShowFavIcon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 88
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->faviconImg:Lcom/narvii/widget/ThumbImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    :cond_9
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->tvSource:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    .line 91
    iget-object v1, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->linkSummary:Lcom/narvii/model/LinkSummary;

    invoke-virtual {v1}, Lcom/narvii/model/LinkSummary;->getShowSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .line 41
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f09066a

    .line 42
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->contentLayout:Landroid/view/View;

    const v0, 0x7f09066d

    .line 43
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->loadingLayout:Landroid/view/View;

    const v0, 0x7f09066b

    .line 44
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->failLayout:Landroid/view/View;

    .line 46
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->contentLayout:Landroid/view/View;

    const v1, 0x7f090666

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/ThumbImageView;

    iput-object v0, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->imgLinkIcon:Lcom/narvii/widget/ThumbImageView;

    .line 47
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->contentLayout:Landroid/view/View;

    const v1, 0x7f090670

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->txtLinkTitle:Landroid/widget/TextView;

    .line 48
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->contentLayout:Landroid/view/View;

    const v1, 0x7f090664

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->txtLinkDescription:Landroid/widget/TextView;

    .line 49
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->contentLayout:Landroid/view/View;

    const v1, 0x7f090a5b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/ThumbImageView;

    iput-object v0, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->faviconImg:Lcom/narvii/widget/ThumbImageView;

    .line 50
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->contentLayout:Landroid/view/View;

    const v1, 0x7f090a5f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->tvSource:Landroid/widget/TextView;

    return-void
.end method

.method public setLinkSummary(Lcom/narvii/model/LinkSummary;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->linkSummary:Lcom/narvii/model/LinkSummary;

    .line 56
    invoke-direct {p0}, Lcom/narvii/blog/post/LinkPostPreviewLayout;->updateView()V

    return-void
.end method

.method public showFail(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 106
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->failLayout:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 107
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->loadingLayout:Landroid/view/View;

    if-eqz p1, :cond_3

    const/16 v0, 0x8

    .line 108
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 111
    :cond_0
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->imgLinkIcon:Lcom/narvii/widget/ThumbImageView;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 112
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 114
    :cond_1
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->txtLinkTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    .line 115
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :cond_2
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->txtLinkDescription:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    .line 118
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public showLoading(Z)V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->loadingLayout:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 97
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 99
    :cond_1
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->failLayout:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 100
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method
