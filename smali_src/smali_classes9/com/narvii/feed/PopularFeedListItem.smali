.class public Lcom/narvii/feed/PopularFeedListItem;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field static BOLD_SPAN:Landroid/text/style/StyleSpan;

.field static CF_LINK:Landroid/graphics/ColorFilter;

.field static CF_POLL:Landroid/graphics/ColorFilter;

.field static CF_POLL_ENDED:Landroid/graphics/ColorFilter;

.field static CF_QUESTION:Landroid/graphics/ColorFilter;

.field static CF_QUIZ:Landroid/graphics/ColorFilter;


# instance fields
.field cornerIcon:Landroid/widget/TextView;

.field private darkTheme:Ljava/lang/Boolean;

.field dividerView:Landroid/view/View;

.field private fansOnlyIndicator:Landroid/view/View;

.field feed:Lcom/narvii/model/Feed;

.field image:Lcom/narvii/widget/NVImageView;

.field pollQuizExtraText:Landroid/widget/TextView;

.field toolbar:Lcom/narvii/feed/FeedToolbarLayout;

.field tvContent:Landroid/widget/TextView;

.field tvReadMore:Landroid/widget/TextView;

.field tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    return-void
.end method

.method private getTypeIcon(Lcom/narvii/model/Feed;Z)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/model/Blog;

    .line 3
    .line 4
    if-eqz v0, :cond_a

    .line 5
    .line 6
    if-eqz p2, :cond_a

    .line 7
    .line 8
    check-cast p1, Lcom/narvii/model/Blog;

    .line 9
    .line 10
    iget p2, p1, Lcom/narvii/model/Blog;->type:I

    .line 11
    const/4 v0, 0x3

    .line 12
    .line 13
    if-eq p2, v0, :cond_8

    .line 14
    const/4 v0, 0x4

    .line 15
    .line 16
    if-eq p2, v0, :cond_4

    .line 17
    const/4 p1, 0x5

    .line 18
    .line 19
    if-eq p2, p1, :cond_2

    .line 20
    const/4 p1, 0x6

    .line 21
    .line 22
    if-eq p2, p1, :cond_0

    .line 23
    .line 24
    goto/16 :goto_1

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    const p2, 0x7f080a01

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    sget-object p2, Lcom/narvii/feed/PopularFeedListItem;->CF_QUIZ:Landroid/graphics/ColorFilter;

    .line 38
    .line 39
    if-nez p2, :cond_1

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 43
    move-result-object p2

    .line 44
    .line 45
    .line 46
    const v0, 0x7f0603d0

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 50
    move-result p2

    .line 51
    .line 52
    .line 53
    invoke-static {p2}, Lcom/narvii/widget/TintButton;->tintColorFilter(I)Landroid/graphics/ColorFilter;

    .line 54
    move-result-object p2

    .line 55
    .line 56
    sput-object p2, Lcom/narvii/feed/PopularFeedListItem;->CF_QUIZ:Landroid/graphics/ColorFilter;

    .line 57
    .line 58
    :cond_1
    sget-object p2, Lcom/narvii/feed/PopularFeedListItem;->CF_QUIZ:Landroid/graphics/ColorFilter;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 62
    .line 63
    goto/16 :goto_2

    .line 64
    .line 65
    .line 66
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    .line 70
    const p2, 0x7f0802f2

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 74
    move-result-object p1

    .line 75
    .line 76
    sget-object p2, Lcom/narvii/feed/PopularFeedListItem;->CF_LINK:Landroid/graphics/ColorFilter;

    .line 77
    .line 78
    if-nez p2, :cond_3

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 82
    move-result-object p2

    .line 83
    .line 84
    .line 85
    const v0, 0x7f0603ca

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 89
    move-result p2

    .line 90
    .line 91
    .line 92
    invoke-static {p2}, Lcom/narvii/widget/TintButton;->tintColorFilter(I)Landroid/graphics/ColorFilter;

    .line 93
    move-result-object p2

    .line 94
    .line 95
    sput-object p2, Lcom/narvii/feed/PopularFeedListItem;->CF_LINK:Landroid/graphics/ColorFilter;

    .line 96
    .line 97
    :cond_3
    sget-object p2, Lcom/narvii/feed/PopularFeedListItem;->CF_LINK:Landroid/graphics/ColorFilter;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 101
    .line 102
    goto/16 :goto_2

    .line 103
    .line 104
    .line 105
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 106
    move-result-object p2

    .line 107
    .line 108
    .line 109
    const v0, 0x7f0809ff

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 113
    move-result-object p2

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 117
    move-result-object p2

    .line 118
    .line 119
    iget-object p1, p1, Lcom/narvii/model/Blog;->endTime:Ljava/util/Date;

    .line 120
    .line 121
    if-nez p1, :cond_6

    .line 122
    .line 123
    sget-object p1, Lcom/narvii/feed/PopularFeedListItem;->CF_POLL_ENDED:Landroid/graphics/ColorFilter;

    .line 124
    .line 125
    if-nez p1, :cond_5

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 129
    move-result-object p1

    .line 130
    .line 131
    .line 132
    const v0, 0x7f06049c

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 136
    move-result p1

    .line 137
    .line 138
    .line 139
    invoke-static {p1}, Lcom/narvii/widget/TintButton;->tintColorFilter(I)Landroid/graphics/ColorFilter;

    .line 140
    move-result-object p1

    .line 141
    .line 142
    sput-object p1, Lcom/narvii/feed/PopularFeedListItem;->CF_POLL_ENDED:Landroid/graphics/ColorFilter;

    .line 143
    .line 144
    :cond_5
    sget-object p1, Lcom/narvii/feed/PopularFeedListItem;->CF_POLL_ENDED:Landroid/graphics/ColorFilter;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 148
    goto :goto_0

    .line 149
    .line 150
    :cond_6
    sget-object p1, Lcom/narvii/feed/PopularFeedListItem;->CF_POLL:Landroid/graphics/ColorFilter;

    .line 151
    .line 152
    if-nez p1, :cond_7

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 156
    move-result-object p1

    .line 157
    .line 158
    .line 159
    const v0, 0x7f06049b

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 163
    move-result p1

    .line 164
    .line 165
    .line 166
    invoke-static {p1}, Lcom/narvii/widget/TintButton;->tintColorFilter(I)Landroid/graphics/ColorFilter;

    .line 167
    move-result-object p1

    .line 168
    .line 169
    sput-object p1, Lcom/narvii/feed/PopularFeedListItem;->CF_POLL:Landroid/graphics/ColorFilter;

    .line 170
    .line 171
    :cond_7
    sget-object p1, Lcom/narvii/feed/PopularFeedListItem;->CF_POLL:Landroid/graphics/ColorFilter;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 175
    :goto_0
    move-object p1, p2

    .line 176
    goto :goto_2

    .line 177
    .line 178
    .line 179
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 180
    move-result-object p1

    .line 181
    .line 182
    .line 183
    const p2, 0x7f080a00

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 187
    move-result-object p1

    .line 188
    .line 189
    sget-object p2, Lcom/narvii/feed/PopularFeedListItem;->CF_QUESTION:Landroid/graphics/ColorFilter;

    .line 190
    .line 191
    if-nez p2, :cond_9

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 195
    move-result-object p2

    .line 196
    .line 197
    .line 198
    const v0, 0x7f0603cf

    .line 199
    .line 200
    .line 201
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 202
    move-result p2

    .line 203
    .line 204
    .line 205
    invoke-static {p2}, Lcom/narvii/widget/TintButton;->tintColorFilter(I)Landroid/graphics/ColorFilter;

    .line 206
    move-result-object p2

    .line 207
    .line 208
    sput-object p2, Lcom/narvii/feed/PopularFeedListItem;->CF_QUESTION:Landroid/graphics/ColorFilter;

    .line 209
    .line 210
    :cond_9
    sget-object p2, Lcom/narvii/feed/PopularFeedListItem;->CF_QUESTION:Landroid/graphics/ColorFilter;

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 214
    goto :goto_2

    .line 215
    :cond_a
    :goto_1
    const/4 p1, 0x0

    .line 216
    :goto_2
    return-object p1
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a06eb

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/feed/PopularFeedListItem;->image:Lcom/narvii/widget/NVImageView;

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a0e51

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
    iput-object v0, p0, Lcom/narvii/feed/PopularFeedListItem;->tvTitle:Landroid/widget/TextView;

    .line 26
    .line 27
    .line 28
    const v0, 0x7f0a039d

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
    iput-object v0, p0, Lcom/narvii/feed/PopularFeedListItem;->tvContent:Landroid/widget/TextView;

    .line 37
    .line 38
    .line 39
    const v0, 0x7f0a0588

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    check-cast v0, Lcom/narvii/feed/FeedToolbarLayout;

    .line 46
    .line 47
    iput-object v0, p0, Lcom/narvii/feed/PopularFeedListItem;->toolbar:Lcom/narvii/feed/FeedToolbarLayout;

    .line 48
    .line 49
    .line 50
    const v0, 0x7f0a0bdf

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    check-cast v0, Landroid/widget/TextView;

    .line 57
    .line 58
    iput-object v0, p0, Lcom/narvii/feed/PopularFeedListItem;->tvReadMore:Landroid/widget/TextView;

    .line 59
    .line 60
    .line 61
    const v0, 0x7f0a03bb

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    check-cast v0, Landroid/widget/TextView;

    .line 68
    .line 69
    iput-object v0, p0, Lcom/narvii/feed/PopularFeedListItem;->cornerIcon:Landroid/widget/TextView;

    .line 70
    .line 71
    .line 72
    const v0, 0x7f0a044f

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    iput-object v0, p0, Lcom/narvii/feed/PopularFeedListItem;->dividerView:Landroid/view/View;

    .line 79
    .line 80
    .line 81
    const v0, 0x7f0a055e

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    iput-object v0, p0, Lcom/narvii/feed/PopularFeedListItem;->fansOnlyIndicator:Landroid/view/View;

    .line 88
    .line 89
    .line 90
    const v0, 0x7f0a0b1b

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 94
    move-result-object v0

    .line 95
    .line 96
    check-cast v0, Landroid/widget/TextView;

    .line 97
    .line 98
    iput-object v0, p0, Lcom/narvii/feed/PopularFeedListItem;->pollQuizExtraText:Landroid/widget/TextView;

    .line 99
    return-void
.end method

.method public setDarkTheme(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/PopularFeedListItem;->darkTheme:Ljava/lang/Boolean;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-ne v0, p1, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/feed/PopularFeedListItem;->feed:Lcom/narvii/model/Feed;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    return-void

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    iput-object v0, p0, Lcom/narvii/feed/PopularFeedListItem;->darkTheme:Ljava/lang/Boolean;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/feed/PopularFeedListItem;->toolbar:Lcom/narvii/feed/FeedToolbarLayout;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1}, Lcom/narvii/feed/FeedToolbarLayout;->setDarkTheme(Z)V

    .line 30
    .line 31
    :cond_2
    iget-object v0, p0, Lcom/narvii/feed/PopularFeedListItem;->tvContent:Landroid/widget/TextView;

    .line 32
    .line 33
    if-eqz v0, :cond_4

    .line 34
    .line 35
    if-eqz p1, :cond_3

    .line 36
    const/4 p1, -0x1

    .line 37
    goto :goto_0

    .line 38
    .line 39
    .line 40
    :cond_3
    const p1, -0xaaaaab

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44
    :cond_4
    return-void
.end method

.method public setFeed(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;ZZZZZFZZII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p11

    .line 1
    invoke-virtual/range {p2 .. p2}, Lcom/narvii/model/Feed;->getRealFeed()Lcom/narvii/model/Feed;

    move-result-object v3

    iput-object v3, v0, Lcom/narvii/feed/PopularFeedListItem;->feed:Lcom/narvii/model/Feed;

    if-nez v3, :cond_0

    return-void

    :cond_0
    if-eqz v1, :cond_1

    const-string v3, "account"

    .line 2
    invoke-interface {v1, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/AccountService;

    .line 3
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v3, v0, Lcom/narvii/feed/PopularFeedListItem;->feed:Lcom/narvii/model/Feed;

    .line 4
    invoke-virtual {v3, v1}, Lcom/narvii/model/Feed;->isiModeDisableForUser(Lcom/narvii/model/User;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    move-object/from16 v1, p2

    .line 5
    iget-boolean v1, v1, Lcom/narvii/model/Feed;->needHidden:Z

    iget-object v3, v0, Lcom/narvii/feed/PopularFeedListItem;->fansOnlyIndicator:Landroid/view/View;

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    iget-object v6, v0, Lcom/narvii/feed/PopularFeedListItem;->feed:Lcom/narvii/model/Feed;

    .line 6
    invoke-virtual {v6}, Lcom/narvii/model/Feed;->isFansOnly()Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v5

    goto :goto_0

    :cond_2
    move v6, v4

    :goto_0
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v3, v0, Lcom/narvii/feed/PopularFeedListItem;->feed:Lcom/narvii/model/Feed;

    .line 7
    invoke-virtual {v3}, Lcom/narvii/model/Feed;->title()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/narvii/feed/PopularFeedListItem;->feed:Lcom/narvii/model/Feed;

    invoke-virtual {v3}, Lcom/narvii/model/Feed;->title()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_4
    iget-object v3, v0, Lcom/narvii/feed/PopularFeedListItem;->feed:Lcom/narvii/model/Feed;

    invoke-virtual {v3}, Lcom/narvii/model/Feed;->title()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    :goto_1
    iget-object v6, v0, Lcom/narvii/feed/PopularFeedListItem;->feed:Lcom/narvii/model/Feed;

    .line 8
    invoke-virtual {v6}, Lcom/narvii/model/Feed;->compactContent()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_5

    iget-object v6, v0, Lcom/narvii/feed/PopularFeedListItem;->feed:Lcom/narvii/model/Feed;

    invoke-virtual {v6}, Lcom/narvii/model/Feed;->compactContent()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_5
    iget-object v6, v0, Lcom/narvii/feed/PopularFeedListItem;->feed:Lcom/narvii/model/Feed;

    invoke-virtual {v6}, Lcom/narvii/model/Feed;->compactContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    :goto_2
    iget-object v7, v0, Lcom/narvii/feed/PopularFeedListItem;->feed:Lcom/narvii/model/Feed;

    .line 9
    invoke-virtual {v7}, Lcom/narvii/model/Feed;->firstMedia()Lcom/narvii/model/Media;

    move-result-object v7

    iget-object v8, v0, Lcom/narvii/feed/PopularFeedListItem;->cornerIcon:Landroid/widget/TextView;

    const/4 v9, 0x6

    const/16 v10, 0x20

    const/16 v11, 0x21

    const/4 v12, 0x4

    if-eqz v8, :cond_9

    .line 10
    invoke-virtual {v8, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v8, v0, Lcom/narvii/feed/PopularFeedListItem;->feed:Lcom/narvii/model/Feed;

    .line 11
    instance-of v13, v8, Lcom/narvii/model/Blog;

    if-eqz v13, :cond_9

    .line 12
    check-cast v8, Lcom/narvii/model/Blog;

    invoke-virtual {v8}, Lcom/narvii/model/Blog;->getShowTitle()Ljava/lang/String;

    move-result-object v3

    iget-object v6, v0, Lcom/narvii/feed/PopularFeedListItem;->feed:Lcom/narvii/model/Feed;

    .line 13
    check-cast v6, Lcom/narvii/model/Blog;

    invoke-virtual {v6}, Lcom/narvii/model/Blog;->getShowContent()Ljava/lang/String;

    move-result-object v6

    iget-object v8, v0, Lcom/narvii/feed/PopularFeedListItem;->feed:Lcom/narvii/model/Feed;

    .line 14
    check-cast v8, Lcom/narvii/model/Blog;

    iget v8, v8, Lcom/narvii/model/Blog;->type:I

    if-eq v8, v12, :cond_6

    if-ne v8, v9, :cond_9

    :cond_6
    iget-object v13, v0, Lcom/narvii/feed/PopularFeedListItem;->cornerIcon:Landroid/widget/TextView;

    .line 15
    invoke-virtual {v13, v5}, Landroid/view/View;->setVisibility(I)V

    .line 16
    new-instance v13, Landroid/text/SpannableStringBuilder;

    invoke-direct {v13}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 17
    invoke-virtual {v13}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v14

    .line 18
    invoke-virtual {v13, v10}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 19
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    if-ne v8, v12, :cond_7

    const v16, 0x7f0806a2

    :goto_3
    move/from16 v9, v16

    goto :goto_4

    :cond_7
    const v16, 0x7f0806a3

    goto :goto_3

    :goto_4
    invoke-virtual {v15, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 20
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    const/high16 v4, 0x41300000    # 11.0f

    invoke-static {v15, v4}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v15

    float-to-int v15, v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12, v4}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v9, v5, v5, v15, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 21
    new-instance v4, Landroid/text/style/ImageSpan;

    invoke-direct {v4, v9}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 22
    invoke-virtual {v13}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    invoke-virtual {v13, v4, v14, v9, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 23
    invoke-virtual {v13, v10}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 24
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v9, 0x4

    if-ne v8, v9, :cond_8

    const v8, 0x7f120758

    goto :goto_5

    :cond_8
    const v8, 0x7f12075b

    :goto_5
    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v4, v0, Lcom/narvii/feed/PopularFeedListItem;->cornerIcon:Landroid/widget/TextView;

    .line 25
    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    iget-object v4, v0, Lcom/narvii/feed/PopularFeedListItem;->pollQuizExtraText:Landroid/widget/TextView;

    const/16 v8, 0x8

    if-eqz v4, :cond_c

    .line 26
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v0, Lcom/narvii/feed/PopularFeedListItem;->feed:Lcom/narvii/model/Feed;

    .line 27
    instance-of v9, v4, Lcom/narvii/model/Blog;

    if-eqz v9, :cond_c

    .line 28
    check-cast v4, Lcom/narvii/model/Blog;

    iget v4, v4, Lcom/narvii/model/Blog;->type:I

    const/4 v9, 0x4

    if-eq v4, v9, :cond_a

    const/4 v12, 0x6

    if-ne v4, v12, :cond_d

    :cond_a
    iget-object v12, v0, Lcom/narvii/feed/PopularFeedListItem;->pollQuizExtraText:Landroid/widget/TextView;

    .line 29
    invoke-virtual {v12, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v12, v0, Lcom/narvii/feed/PopularFeedListItem;->pollQuizExtraText:Landroid/widget/TextView;

    if-ne v4, v9, :cond_b

    iget-object v4, v0, Lcom/narvii/feed/PopularFeedListItem;->feed:Lcom/narvii/model/Feed;

    .line 30
    check-cast v4, Lcom/narvii/model/Blog;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v4, v13}, Lcom/narvii/util/BlogUtils;->getPollDurationText(Lcom/narvii/model/Blog;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_b
    iget-object v4, v0, Lcom/narvii/feed/PopularFeedListItem;->feed:Lcom/narvii/model/Feed;

    check-cast v4, Lcom/narvii/model/Blog;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v4, v13}, Lcom/narvii/util/BlogUtils;->getQuizRecordText(Lcom/narvii/model/Blog;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 31
    :goto_6
    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_c
    const/4 v9, 0x4

    :cond_d
    :goto_7
    iget-object v4, v0, Lcom/narvii/feed/PopularFeedListItem;->image:Lcom/narvii/widget/NVImageView;

    if-eqz v4, :cond_10

    .line 32
    instance-of v12, v4, Lcom/narvii/widget/SecretImageView;

    if-eqz v12, :cond_e

    .line 33
    check-cast v4, Lcom/narvii/widget/SecretImageView;

    invoke-virtual {v4, v7, v1}, Lcom/narvii/widget/SecretImageView;->setImageMedia(Lcom/narvii/model/Media;Z)Z

    goto :goto_8

    .line 34
    :cond_e
    invoke-virtual {v4, v7}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    :goto_8
    iget-object v1, v0, Lcom/narvii/feed/PopularFeedListItem;->image:Lcom/narvii/widget/NVImageView;

    if-nez v7, :cond_f

    move v4, v8

    goto :goto_9

    :cond_f
    move v4, v5

    .line 35
    :goto_9
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 36
    :cond_10
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v4, 0x1

    if-eqz p5, :cond_15

    iget-object v7, v0, Lcom/narvii/feed/PopularFeedListItem;->tvTitle:Landroid/widget/TextView;

    if-eqz v7, :cond_1d

    move/from16 v12, p12

    .line 37
    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v7, v0, Lcom/narvii/feed/PopularFeedListItem;->tvTitle:Landroid/widget/TextView;

    .line 38
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_11

    move v8, v5

    :cond_11
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    if-eqz p3, :cond_12

    .line 39
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_12

    iget-object v7, v0, Lcom/narvii/feed/PopularFeedListItem;->tvTitle:Landroid/widget/TextView;

    int-to-float v2, v2

    .line 40
    invoke-virtual {v7, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 41
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 42
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 43
    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v1, v3, v2, v4, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_12
    if-eqz p9, :cond_13

    if-eqz p4, :cond_13

    .line 44
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 45
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const-string v3, "\n"

    .line 46
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 47
    new-instance v3, Landroid/text/style/RelativeSizeSpan;

    const v4, 0x3ecccccd    # 0.4f

    invoke-direct {v3, v4}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v1, v3, v2, v4, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_a

    .line 48
    :cond_13
    invoke-virtual {v1, v10}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 49
    :goto_a
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-eqz p4, :cond_14

    .line 50
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 51
    invoke-virtual {v1, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 52
    :cond_14
    new-instance v3, Landroid/text/style/RelativeSizeSpan;

    move/from16 v4, p8

    invoke-direct {v3, v4}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v1, v3, v2, v4, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 53
    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v1, v3, v2, v4, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v2, v0, Lcom/narvii/feed/PopularFeedListItem;->tvTitle:Landroid/widget/TextView;

    .line 54
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e

    .line 55
    :cond_15
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_16

    .line 56
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_16
    iget-object v3, v0, Lcom/narvii/feed/PopularFeedListItem;->tvTitle:Landroid/widget/TextView;

    if-eqz v3, :cond_18

    .line 57
    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v1, v3, v5, v4, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v3, v0, Lcom/narvii/feed/PopularFeedListItem;->tvTitle:Landroid/widget/TextView;

    .line 58
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/narvii/feed/PopularFeedListItem;->tvTitle:Landroid/widget/TextView;

    if-eqz p3, :cond_17

    move v3, v5

    goto :goto_b

    :cond_17
    move v3, v9

    .line 59
    :goto_b
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_18
    iget-object v1, v0, Lcom/narvii/feed/PopularFeedListItem;->tvTitle:Landroid/widget/TextView;

    int-to-float v2, v2

    .line 60
    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 61
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 62
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 63
    invoke-virtual {v1, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_19
    iget-object v2, v0, Lcom/narvii/feed/PopularFeedListItem;->tvContent:Landroid/widget/TextView;

    if-eqz v2, :cond_1b

    .line 64
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/narvii/feed/PopularFeedListItem;->tvTitle:Landroid/widget/TextView;

    if-eqz p4, :cond_1a

    move v2, v5

    goto :goto_c

    :cond_1a
    move v2, v9

    .line 65
    :goto_c
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1b
    iget-object v1, v0, Lcom/narvii/feed/PopularFeedListItem;->tvReadMore:Landroid/widget/TextView;

    if-eqz v1, :cond_1d

    if-eqz p6, :cond_1c

    move v4, v5

    goto :goto_d

    :cond_1c
    move v4, v8

    .line 66
    :goto_d
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1d
    :goto_e
    iget-object v1, v0, Lcom/narvii/feed/PopularFeedListItem;->dividerView:Landroid/view/View;

    if-eqz v1, :cond_1f

    if-eqz p10, :cond_1e

    goto :goto_f

    :cond_1e
    move v5, v9

    .line 67
    :goto_f
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_1f
    iget-object v1, v0, Lcom/narvii/feed/PopularFeedListItem;->toolbar:Lcom/narvii/feed/FeedToolbarLayout;

    if-eqz v1, :cond_20

    iget-object v2, v0, Lcom/narvii/feed/PopularFeedListItem;->feed:Lcom/narvii/model/Feed;

    .line 68
    invoke-virtual {v1, v2}, Lcom/narvii/feed/FeedToolbarLayout;->setFeed(Lcom/narvii/model/Feed;)V

    :cond_20
    return-void
.end method

.method public setProgress(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/PopularFeedListItem;->toolbar:Lcom/narvii/feed/FeedToolbarLayout;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/feed/FeedToolbarLayout;->setProgress(Z)V

    .line 8
    :cond_0
    return-void
.end method
