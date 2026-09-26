.class public Lcom/narvii/blog/post/LinkPostPreviewLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


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

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private updateView()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->linkSummary:Lcom/narvii/model/LinkSummary;

    .line 3
    const/4 v1, 0x4

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->imgLinkIcon:Lcom/narvii/widget/ThumbImageView;

    .line 8
    const/4 v2, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->txtLinkTitle:Landroid/widget/TextView;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->txtLinkDescription:Landroid/widget/TextView;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->faviconImg:Lcom/narvii/widget/ThumbImageView;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->tvSource:Landroid/widget/TextView;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    return-void

    .line 33
    .line 34
    :cond_0
    iget-object v2, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->imgLinkIcon:Lcom/narvii/widget/ThumbImageView;

    .line 35
    .line 36
    const/16 v3, 0x8

    .line 37
    const/4 v4, 0x0

    .line 38
    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/narvii/model/LinkSummary;->getFirstMedia()Lcom/narvii/model/Media;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v0}, Lcom/narvii/widget/ThumbImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 47
    .line 48
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->imgLinkIcon:Lcom/narvii/widget/ThumbImageView;

    .line 49
    .line 50
    iget-object v2, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->linkSummary:Lcom/narvii/model/LinkSummary;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/narvii/model/LinkSummary;->getFirstMediaUrl()Ljava/lang/String;

    .line 54
    move-result-object v2

    .line 55
    .line 56
    .line 57
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    move-result v2

    .line 59
    .line 60
    if-eqz v2, :cond_1

    .line 61
    move v2, v3

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    move v2, v4

    .line 64
    .line 65
    .line 66
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    :cond_2
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->txtLinkTitle:Landroid/widget/TextView;

    .line 69
    .line 70
    if-eqz v0, :cond_4

    .line 71
    .line 72
    iget-object v2, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->linkSummary:Lcom/narvii/model/LinkSummary;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Lcom/narvii/model/LinkSummary;->getTitle()Ljava/lang/String;

    .line 76
    move-result-object v2

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->txtLinkTitle:Landroid/widget/TextView;

    .line 82
    .line 83
    iget-object v2, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->linkSummary:Lcom/narvii/model/LinkSummary;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Lcom/narvii/model/LinkSummary;->getTitle()Ljava/lang/String;

    .line 87
    move-result-object v2

    .line 88
    .line 89
    .line 90
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 91
    move-result v2

    .line 92
    .line 93
    if-eqz v2, :cond_3

    .line 94
    goto :goto_1

    .line 95
    :cond_3
    move v1, v4

    .line 96
    .line 97
    .line 98
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 99
    .line 100
    :cond_4
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->txtLinkDescription:Landroid/widget/TextView;

    .line 101
    .line 102
    if-eqz v0, :cond_6

    .line 103
    .line 104
    iget-object v1, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->linkSummary:Lcom/narvii/model/LinkSummary;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Lcom/narvii/model/LinkSummary;->getBody()Ljava/lang/String;

    .line 108
    move-result-object v1

    .line 109
    .line 110
    .line 111
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 112
    move-result v1

    .line 113
    .line 114
    if-eqz v1, :cond_5

    .line 115
    .line 116
    iget-object v1, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->linkSummary:Lcom/narvii/model/LinkSummary;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1}, Lcom/narvii/model/LinkSummary;->getLink()Ljava/lang/String;

    .line 120
    move-result-object v1

    .line 121
    goto :goto_2

    .line 122
    .line 123
    :cond_5
    iget-object v1, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->linkSummary:Lcom/narvii/model/LinkSummary;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1}, Lcom/narvii/model/LinkSummary;->getBody()Ljava/lang/String;

    .line 127
    move-result-object v1

    .line 128
    .line 129
    .line 130
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    .line 132
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->txtLinkDescription:Landroid/widget/TextView;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 136
    .line 137
    :cond_6
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->failLayout:Landroid/view/View;

    .line 138
    .line 139
    if-eqz v0, :cond_7

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 143
    .line 144
    :cond_7
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->loadingLayout:Landroid/view/View;

    .line 145
    .line 146
    if-eqz v0, :cond_8

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 150
    .line 151
    :cond_8
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->faviconImg:Lcom/narvii/widget/ThumbImageView;

    .line 152
    .line 153
    if-eqz v0, :cond_9

    .line 154
    .line 155
    iget-object v1, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->linkSummary:Lcom/narvii/model/LinkSummary;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1}, Lcom/narvii/model/LinkSummary;->getShowFavIcon()Ljava/lang/String;

    .line 159
    move-result-object v1

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 163
    .line 164
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->faviconImg:Lcom/narvii/widget/ThumbImageView;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 168
    .line 169
    :cond_9
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->tvSource:Landroid/widget/TextView;

    .line 170
    .line 171
    if-eqz v0, :cond_a

    .line 172
    .line 173
    iget-object v1, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->linkSummary:Lcom/narvii/model/LinkSummary;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1}, Lcom/narvii/model/LinkSummary;->getShowSource()Ljava/lang/String;

    .line 177
    move-result-object v1

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    :cond_a
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a07ef

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->contentLayout:Landroid/view/View;

    .line 13
    .line 14
    .line 15
    const v0, 0x7f0a07f2

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    iput-object v0, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->loadingLayout:Landroid/view/View;

    .line 22
    .line 23
    .line 24
    const v0, 0x7f0a07f0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    iput-object v0, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->failLayout:Landroid/view/View;

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->contentLayout:Landroid/view/View;

    .line 33
    .line 34
    .line 35
    const v1, 0x7f0a07eb

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    check-cast v0, Lcom/narvii/widget/ThumbImageView;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->imgLinkIcon:Lcom/narvii/widget/ThumbImageView;

    .line 44
    .line 45
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->contentLayout:Landroid/view/View;

    .line 46
    .line 47
    .line 48
    const v1, 0x7f0a07f5

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    check-cast v0, Landroid/widget/TextView;

    .line 55
    .line 56
    iput-object v0, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->txtLinkTitle:Landroid/widget/TextView;

    .line 57
    .line 58
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->contentLayout:Landroid/view/View;

    .line 59
    .line 60
    .line 61
    const v1, 0x7f0a07e9

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    check-cast v0, Landroid/widget/TextView;

    .line 68
    .line 69
    iput-object v0, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->txtLinkDescription:Landroid/widget/TextView;

    .line 70
    .line 71
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->contentLayout:Landroid/view/View;

    .line 72
    .line 73
    .line 74
    const v1, 0x7f0a0d44

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 78
    move-result-object v0

    .line 79
    .line 80
    check-cast v0, Lcom/narvii/widget/ThumbImageView;

    .line 81
    .line 82
    iput-object v0, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->faviconImg:Lcom/narvii/widget/ThumbImageView;

    .line 83
    .line 84
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->contentLayout:Landroid/view/View;

    .line 85
    .line 86
    .line 87
    const v1, 0x7f0a0d48

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 91
    move-result-object v0

    .line 92
    .line 93
    check-cast v0, Landroid/widget/TextView;

    .line 94
    .line 95
    iput-object v0, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->tvSource:Landroid/widget/TextView;

    .line 96
    return-void
.end method

.method public setLinkSummary(Lcom/narvii/model/LinkSummary;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->linkSummary:Lcom/narvii/model/LinkSummary;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/blog/post/LinkPostPreviewLayout;->updateView()V

    .line 6
    return-void
.end method

.method public showFail(Z)V
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->failLayout:Landroid/view/View;

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->loadingLayout:Landroid/view/View;

    .line 11
    .line 12
    if-eqz p1, :cond_3

    .line 13
    .line 14
    const/16 v0, 0x8

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->imgLinkIcon:Lcom/narvii/widget/ThumbImageView;

    .line 21
    const/4 v0, 0x0

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 27
    .line 28
    :cond_1
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->txtLinkTitle:Landroid/widget/TextView;

    .line 29
    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    :cond_2
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->txtLinkDescription:Landroid/widget/TextView;

    .line 36
    .line 37
    if-eqz p1, :cond_3

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    :cond_3
    :goto_0
    return-void
.end method

.method public showLoading(Z)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->loadingLayout:Landroid/view/View;

    .line 3
    .line 4
    const/16 v1, 0x8

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    const/4 p1, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move p1, v1

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    :cond_1
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostPreviewLayout;->failLayout:Landroid/view/View;

    .line 17
    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    :cond_2
    return-void
.end method
