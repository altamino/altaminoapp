.class public Lcom/narvii/feed/PopularFeedListItem;
.super Landroid/widget/LinearLayout;
.source "PopularFeedListItem.java"


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

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getTypeIcon(Lcom/narvii/model/Feed;Z)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 254
    instance-of v0, p1, Lcom/narvii/model/Blog;

    if-eqz v0, :cond_b

    if-eqz p2, :cond_b

    .line 255
    check-cast p1, Lcom/narvii/model/Blog;

    .line 256
    iget p2, p1, Lcom/narvii/model/Blog;->type:I

    const/4 v0, 0x3

    if-eq p2, v0, :cond_9

    const/4 v0, 0x4

    if-eq p2, v0, :cond_4

    const/4 p1, 0x5

    if-eq p2, p1, :cond_2

    const/4 p1, 0x6

    if-eq p2, p1, :cond_0

    goto/16 :goto_2

    .line 287
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0807df

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 288
    sget-object p2, Lcom/narvii/feed/PopularFeedListItem;->CF_QUIZ:Landroid/graphics/ColorFilter;

    if-nez p2, :cond_1

    .line 289
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f060167

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-static {p2}, Lcom/narvii/widget/TintButton;->tintColorFilter(I)Landroid/graphics/ColorFilter;

    move-result-object p2

    sput-object p2, Lcom/narvii/feed/PopularFeedListItem;->CF_QUIZ:Landroid/graphics/ColorFilter;

    .line 291
    :cond_1
    sget-object p2, Lcom/narvii/feed/PopularFeedListItem;->CF_QUIZ:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_3

    .line 280
    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f080208

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 281
    sget-object p2, Lcom/narvii/feed/PopularFeedListItem;->CF_LINK:Landroid/graphics/ColorFilter;

    if-nez p2, :cond_3

    .line 282
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f060161

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-static {p2}, Lcom/narvii/widget/TintButton;->tintColorFilter(I)Landroid/graphics/ColorFilter;

    move-result-object p2

    sput-object p2, Lcom/narvii/feed/PopularFeedListItem;->CF_LINK:Landroid/graphics/ColorFilter;

    .line 284
    :cond_3
    sget-object p2, Lcom/narvii/feed/PopularFeedListItem;->CF_LINK:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_3

    .line 258
    :cond_4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0807dd

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 259
    iget-object p1, p1, Lcom/narvii/model/Blog;->endTime:Ljava/util/Date;

    if-nez p1, :cond_5

    const/4 p1, 0x1

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_7

    .line 261
    sget-object p1, Lcom/narvii/feed/PopularFeedListItem;->CF_POLL_ENDED:Landroid/graphics/ColorFilter;

    if-nez p1, :cond_6

    .line 262
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060211

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-static {p1}, Lcom/narvii/widget/TintButton;->tintColorFilter(I)Landroid/graphics/ColorFilter;

    move-result-object p1

    sput-object p1, Lcom/narvii/feed/PopularFeedListItem;->CF_POLL_ENDED:Landroid/graphics/ColorFilter;

    .line 264
    :cond_6
    sget-object p1, Lcom/narvii/feed/PopularFeedListItem;->CF_POLL_ENDED:Landroid/graphics/ColorFilter;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1

    .line 266
    :cond_7
    sget-object p1, Lcom/narvii/feed/PopularFeedListItem;->CF_POLL:Landroid/graphics/ColorFilter;

    if-nez p1, :cond_8

    .line 267
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060210

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-static {p1}, Lcom/narvii/widget/TintButton;->tintColorFilter(I)Landroid/graphics/ColorFilter;

    move-result-object p1

    sput-object p1, Lcom/narvii/feed/PopularFeedListItem;->CF_POLL:Landroid/graphics/ColorFilter;

    .line 269
    :cond_8
    sget-object p1, Lcom/narvii/feed/PopularFeedListItem;->CF_POLL:Landroid/graphics/ColorFilter;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_1
    move-object p1, p2

    goto :goto_3

    .line 273
    :cond_9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0807de

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 274
    sget-object p2, Lcom/narvii/feed/PopularFeedListItem;->CF_QUESTION:Landroid/graphics/ColorFilter;

    if-nez p2, :cond_a

    .line 275
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f060166

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-static {p2}, Lcom/narvii/widget/TintButton;->tintColorFilter(I)Landroid/graphics/ColorFilter;

    move-result-object p2

    sput-object p2, Lcom/narvii/feed/PopularFeedListItem;->CF_QUESTION:Landroid/graphics/ColorFilter;

    .line 277
    :cond_a
    sget-object p2, Lcom/narvii/feed/PopularFeedListItem;->CF_QUESTION:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_3

    :cond_b
    :goto_2
    const/4 p1, 0x0

    :goto_3
    return-object p1
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 66
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f090571

    .line 67
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    iput-object v0, p0, Lcom/narvii/feed/PopularFeedListItem;->image:Lcom/narvii/widget/NVImageView;

    const v0, 0x7f090b5b

    .line 68
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/feed/PopularFeedListItem;->tvTitle:Landroid/widget/TextView;

    const v0, 0x7f0902d0

    .line 69
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/feed/PopularFeedListItem;->tvContent:Landroid/widget/TextView;

    const v0, 0x7f090451

    .line 70
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/feed/FeedToolbarLayout;

    iput-object v0, p0, Lcom/narvii/feed/PopularFeedListItem;->toolbar:Lcom/narvii/feed/FeedToolbarLayout;

    const v0, 0x7f090922

    .line 71
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/feed/PopularFeedListItem;->tvReadMore:Landroid/widget/TextView;

    const v0, 0x7f0902eb

    .line 72
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/feed/PopularFeedListItem;->cornerIcon:Landroid/widget/TextView;

    const v0, 0x7f090366

    .line 73
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/feed/PopularFeedListItem;->dividerView:Landroid/view/View;

    const v0, 0x7f090425

    .line 74
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/feed/PopularFeedListItem;->fansOnlyIndicator:Landroid/view/View;

    const v0, 0x7f090862

    .line 75
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/feed/PopularFeedListItem;->pollQuizExtraText:Landroid/widget/TextView;

    return-void
.end method

.method public setDarkTheme(Z)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/narvii/feed/PopularFeedListItem;->darkTheme:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/narvii/feed/PopularFeedListItem;->feed:Lcom/narvii/model/Feed;

    if-nez v0, :cond_1

    return-void

    .line 85
    :cond_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/feed/PopularFeedListItem;->darkTheme:Ljava/lang/Boolean;

    .line 87
    iget-object v0, p0, Lcom/narvii/feed/PopularFeedListItem;->toolbar:Lcom/narvii/feed/FeedToolbarLayout;

    if-eqz v0, :cond_2

    .line 88
    invoke-virtual {v0, p1}, Lcom/narvii/feed/FeedToolbarLayout;->setDarkTheme(Z)V

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/narvii/feed/PopularFeedListItem;->tvContent:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    const/4 p1, -0x1

    goto :goto_0

    :cond_3
    const p1, -0xaaaaab

    .line 92
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    return-void
.end method

.method public setFeed(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;ZZZZZFZZII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p11

    .line 118
    invoke-virtual/range {p2 .. p2}, Lcom/narvii/model/Feed;->getRealFeed()Lcom/narvii/model/Feed;

    move-result-object v3

    iput-object v3, v0, Lcom/narvii/feed/PopularFeedListItem;->feed:Lcom/narvii/model/Feed;

    .line 119
    iget-object v3, v0, Lcom/narvii/feed/PopularFeedListItem;->feed:Lcom/narvii/model/Feed;

    if-nez v3, :cond_0

    return-void

    :cond_0
    const/4 v4, 0x0

    if-eqz v1, :cond_1

    const-string v5, "account"

    .line 122
    invoke-interface {v1, v5}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/AccountService;

    .line 123
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 124
    iget-object v5, v0, Lcom/narvii/feed/PopularFeedListItem;->feed:Lcom/narvii/model/Feed;

    invoke-virtual {v5, v1}, Lcom/narvii/model/Feed;->isiModeDisableForUser(Lcom/narvii/model/User;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    return-void

    :cond_2
    move-object/from16 v1, p2

    .line 129
    iget-boolean v1, v1, Lcom/narvii/model/Feed;->needHidden:Z

    .line 131
    iget-object v5, v0, Lcom/narvii/feed/PopularFeedListItem;->fansOnlyIndicator:Landroid/view/View;

    const/16 v6, 0x8

    if-eqz v5, :cond_4

    .line 132
    iget-object v7, v0, Lcom/narvii/feed/PopularFeedListItem;->feed:Lcom/narvii/model/Feed;

    invoke-virtual {v7}, Lcom/narvii/model/Feed;->isFansOnly()Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x0

    goto :goto_1

    :cond_3
    const/16 v7, 0x8

    :goto_1
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 134
    :cond_4
    iget-object v5, v0, Lcom/narvii/feed/PopularFeedListItem;->feed:Lcom/narvii/model/Feed;

    invoke-virtual {v5}, Lcom/narvii/model/Feed;->title()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5

    iget-object v5, v0, Lcom/narvii/feed/PopularFeedListItem;->feed:Lcom/narvii/model/Feed;

    invoke-virtual {v5}, Lcom/narvii/model/Feed;->title()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_5
    iget-object v5, v0, Lcom/narvii/feed/PopularFeedListItem;->feed:Lcom/narvii/model/Feed;

    invoke-virtual {v5}, Lcom/narvii/model/Feed;->title()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 135
    :goto_2
    iget-object v7, v0, Lcom/narvii/feed/PopularFeedListItem;->feed:Lcom/narvii/model/Feed;

    invoke-virtual {v7}, Lcom/narvii/model/Feed;->compactContent()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_6

    iget-object v7, v0, Lcom/narvii/feed/PopularFeedListItem;->feed:Lcom/narvii/model/Feed;

    invoke-virtual {v7}, Lcom/narvii/model/Feed;->compactContent()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_6
    iget-object v7, v0, Lcom/narvii/feed/PopularFeedListItem;->feed:Lcom/narvii/model/Feed;

    invoke-virtual {v7}, Lcom/narvii/model/Feed;->compactContent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 136
    :goto_3
    iget-object v8, v0, Lcom/narvii/feed/PopularFeedListItem;->feed:Lcom/narvii/model/Feed;

    invoke-virtual {v8}, Lcom/narvii/model/Feed;->firstMedia()Lcom/narvii/model/Media;

    move-result-object v8

    .line 137
    iget-object v9, v0, Lcom/narvii/feed/PopularFeedListItem;->cornerIcon:Landroid/widget/TextView;

    const/4 v10, 0x6

    const/16 v11, 0x20

    const/16 v12, 0x21

    const/4 v13, 0x4

    if-eqz v9, :cond_a

    .line 138
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    iget-object v9, v0, Lcom/narvii/feed/PopularFeedListItem;->feed:Lcom/narvii/model/Feed;

    instance-of v14, v9, Lcom/narvii/model/Blog;

    if-eqz v14, :cond_a

    .line 140
    check-cast v9, Lcom/narvii/model/Blog;

    invoke-virtual {v9}, Lcom/narvii/model/Blog;->getShowTitle()Ljava/lang/String;

    move-result-object v5

    .line 141
    iget-object v7, v0, Lcom/narvii/feed/PopularFeedListItem;->feed:Lcom/narvii/model/Feed;

    check-cast v7, Lcom/narvii/model/Blog;

    invoke-virtual {v7}, Lcom/narvii/model/Blog;->getShowContent()Ljava/lang/String;

    move-result-object v7

    .line 143
    iget-object v9, v0, Lcom/narvii/feed/PopularFeedListItem;->feed:Lcom/narvii/model/Feed;

    check-cast v9, Lcom/narvii/model/Blog;

    iget v9, v9, Lcom/narvii/model/Blog;->type:I

    if-eq v9, v13, :cond_7

    if-ne v9, v10, :cond_a

    .line 145
    :cond_7
    iget-object v14, v0, Lcom/narvii/feed/PopularFeedListItem;->cornerIcon:Landroid/widget/TextView;

    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    new-instance v14, Landroid/text/SpannableStringBuilder;

    invoke-direct {v14}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 147
    invoke-virtual {v14}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v15

    .line 148
    invoke-virtual {v14, v11}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 149
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-ne v9, v13, :cond_8

    const v16, 0x7f08057b

    const v10, 0x7f08057b

    goto :goto_4

    :cond_8
    const v16, 0x7f08057c

    const v10, 0x7f08057c

    :goto_4
    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 151
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    const/high16 v6, 0x41300000    # 11.0f

    invoke-static {v10, v6}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v10

    float-to-int v10, v10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13, v6}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v3, v4, v4, v10, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 152
    new-instance v6, Landroid/text/style/ImageSpan;

    invoke-direct {v6, v3}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 153
    invoke-virtual {v14}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v14, v6, v15, v3, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 154
    invoke-virtual {v14, v11}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 155
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v6, 0x4

    if-ne v9, v6, :cond_9

    const v6, 0x7f0f06ad

    goto :goto_5

    :cond_9
    const v6, 0x7f0f06b0

    :goto_5
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 156
    iget-object v3, v0, Lcom/narvii/feed/PopularFeedListItem;->cornerIcon:Landroid/widget/TextView;

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    :cond_a
    iget-object v3, v0, Lcom/narvii/feed/PopularFeedListItem;->pollQuizExtraText:Landroid/widget/TextView;

    const/16 v6, 0x8

    if-eqz v3, :cond_d

    .line 162
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    iget-object v3, v0, Lcom/narvii/feed/PopularFeedListItem;->feed:Lcom/narvii/model/Feed;

    instance-of v9, v3, Lcom/narvii/model/Blog;

    if-eqz v9, :cond_d

    .line 164
    check-cast v3, Lcom/narvii/model/Blog;

    iget v3, v3, Lcom/narvii/model/Blog;->type:I

    const/4 v9, 0x4

    if-eq v3, v9, :cond_b

    const/4 v10, 0x6

    if-ne v3, v10, :cond_e

    .line 166
    :cond_b
    iget-object v10, v0, Lcom/narvii/feed/PopularFeedListItem;->pollQuizExtraText:Landroid/widget/TextView;

    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    iget-object v10, v0, Lcom/narvii/feed/PopularFeedListItem;->pollQuizExtraText:Landroid/widget/TextView;

    if-ne v3, v9, :cond_c

    iget-object v3, v0, Lcom/narvii/feed/PopularFeedListItem;->feed:Lcom/narvii/model/Feed;

    check-cast v3, Lcom/narvii/model/Blog;

    .line 168
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v3, v13}, Lcom/narvii/util/BlogUtils;->getPollDurationText(Lcom/narvii/model/Blog;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_c
    iget-object v3, v0, Lcom/narvii/feed/PopularFeedListItem;->feed:Lcom/narvii/model/Feed;

    check-cast v3, Lcom/narvii/model/Blog;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v3, v13}, Lcom/narvii/util/BlogUtils;->getQuizRecordText(Lcom/narvii/model/Blog;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 167
    :goto_6
    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_d
    const/4 v9, 0x4

    .line 173
    :cond_e
    :goto_7
    iget-object v3, v0, Lcom/narvii/feed/PopularFeedListItem;->image:Lcom/narvii/widget/NVImageView;

    if-eqz v3, :cond_12

    .line 174
    iget-object v3, v0, Lcom/narvii/feed/PopularFeedListItem;->feed:Lcom/narvii/model/Feed;

    instance-of v10, v3, Lcom/narvii/model/Blog;

    if-eqz v10, :cond_f

    check-cast v3, Lcom/narvii/model/Blog;

    iget v3, v3, Lcom/narvii/model/Blog;->type:I

    const/16 v10, 0x9

    if-ne v3, v10, :cond_f

    const/4 v3, 0x1

    goto :goto_8

    :cond_f
    const/4 v3, 0x0

    .line 175
    :goto_8
    iget-object v10, v0, Lcom/narvii/feed/PopularFeedListItem;->image:Lcom/narvii/widget/NVImageView;

    iput-boolean v3, v10, Lcom/narvii/widget/NVImageView;->forceShowPlayButton:Z

    .line 176
    instance-of v3, v10, Lcom/narvii/widget/SecretImageView;

    if-eqz v3, :cond_10

    .line 177
    check-cast v10, Lcom/narvii/widget/SecretImageView;

    invoke-virtual {v10, v8, v1}, Lcom/narvii/widget/SecretImageView;->setImageMedia(Lcom/narvii/model/Media;Z)Z

    goto :goto_9

    .line 179
    :cond_10
    invoke-virtual {v10, v8}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 181
    :goto_9
    iget-object v1, v0, Lcom/narvii/feed/PopularFeedListItem;->image:Lcom/narvii/widget/NVImageView;

    if-nez v8, :cond_11

    const/16 v3, 0x8

    goto :goto_a

    :cond_11
    const/4 v3, 0x0

    :goto_a
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 185
    :cond_12
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    if-eqz p5, :cond_17

    .line 190
    iget-object v3, v0, Lcom/narvii/feed/PopularFeedListItem;->tvTitle:Landroid/widget/TextView;

    if-eqz v3, :cond_1f

    move/from16 v8, p12

    .line 191
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 192
    iget-object v3, v0, Lcom/narvii/feed/PopularFeedListItem;->tvTitle:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_13

    const/4 v6, 0x0

    :cond_13
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p3, :cond_14

    .line 193
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 194
    iget-object v3, v0, Lcom/narvii/feed/PopularFeedListItem;->tvTitle:Landroid/widget/TextView;

    int-to-float v2, v2

    invoke-virtual {v3, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 195
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 196
    invoke-virtual {v1, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 197
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-virtual {v1, v3, v2, v5, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_14
    if-eqz p9, :cond_15

    if-eqz p4, :cond_15

    .line 199
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 200
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const-string v3, "\n"

    .line 201
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 202
    new-instance v3, Landroid/text/style/RelativeSizeSpan;

    const v5, 0x3ecccccd    # 0.4f

    invoke-direct {v3, v5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-virtual {v1, v3, v2, v5, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_b

    .line 204
    :cond_15
    invoke-virtual {v1, v11}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 206
    :goto_b
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-eqz p4, :cond_16

    .line 207
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 208
    invoke-virtual {v1, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 210
    :cond_16
    new-instance v3, Landroid/text/style/RelativeSizeSpan;

    move/from16 v5, p8

    invoke-direct {v3, v5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-virtual {v1, v3, v2, v5, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 211
    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-virtual {v1, v3, v2, v5, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 212
    iget-object v2, v0, Lcom/narvii/feed/PopularFeedListItem;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e

    .line 215
    :cond_17
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 216
    invoke-virtual {v1, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 218
    :cond_18
    iget-object v3, v0, Lcom/narvii/feed/PopularFeedListItem;->tvTitle:Landroid/widget/TextView;

    if-eqz v3, :cond_1a

    .line 219
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-virtual {v1, v3, v4, v5, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 220
    iget-object v3, v0, Lcom/narvii/feed/PopularFeedListItem;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v1, v0, Lcom/narvii/feed/PopularFeedListItem;->tvTitle:Landroid/widget/TextView;

    if-eqz p3, :cond_19

    const/4 v3, 0x0

    goto :goto_c

    :cond_19
    const/4 v3, 0x4

    :goto_c
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 223
    :cond_1a
    iget-object v1, v0, Lcom/narvii/feed/PopularFeedListItem;->tvTitle:Landroid/widget/TextView;

    int-to-float v2, v2

    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 224
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 225
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 226
    invoke-virtual {v1, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 228
    :cond_1b
    iget-object v2, v0, Lcom/narvii/feed/PopularFeedListItem;->tvContent:Landroid/widget/TextView;

    if-eqz v2, :cond_1d

    .line 229
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v1, v0, Lcom/narvii/feed/PopularFeedListItem;->tvTitle:Landroid/widget/TextView;

    if-eqz p4, :cond_1c

    const/4 v2, 0x0

    goto :goto_d

    :cond_1c
    const/4 v2, 0x4

    :goto_d
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 232
    :cond_1d
    iget-object v1, v0, Lcom/narvii/feed/PopularFeedListItem;->tvReadMore:Landroid/widget/TextView;

    if-eqz v1, :cond_1f

    if-eqz p6, :cond_1e

    const/4 v6, 0x0

    .line 233
    :cond_1e
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    :cond_1f
    :goto_e
    iget-object v1, v0, Lcom/narvii/feed/PopularFeedListItem;->dividerView:Landroid/view/View;

    if-eqz v1, :cond_21

    if-eqz p10, :cond_20

    goto :goto_f

    :cond_20
    const/4 v4, 0x4

    .line 237
    :goto_f
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 239
    :cond_21
    iget-object v1, v0, Lcom/narvii/feed/PopularFeedListItem;->toolbar:Lcom/narvii/feed/FeedToolbarLayout;

    if-eqz v1, :cond_22

    .line 240
    iget-object v2, v0, Lcom/narvii/feed/PopularFeedListItem;->feed:Lcom/narvii/model/Feed;

    invoke-virtual {v1, v2}, Lcom/narvii/feed/FeedToolbarLayout;->setFeed(Lcom/narvii/model/Feed;)V

    :cond_22
    return-void
.end method

.method public setProgress(Z)V
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/narvii/feed/PopularFeedListItem;->toolbar:Lcom/narvii/feed/FeedToolbarLayout;

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {v0, p1}, Lcom/narvii/feed/FeedToolbarLayout;->setProgress(Z)V

    :cond_0
    return-void
.end method
