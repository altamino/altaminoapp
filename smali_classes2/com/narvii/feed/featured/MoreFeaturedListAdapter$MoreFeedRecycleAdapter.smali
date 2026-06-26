.class Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "MoreFeaturedListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/feed/featured/MoreFeaturedListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MoreFeedRecycleAdapter"
.end annotation


# static fields
.field private static final TYPE_MEDIA_BIG:I = 0x3

.field private static final TYPE_MEDIA_SMALL:I = 0x0

.field private static final TYPE_MORE_BIG:I = 0x5

.field private static final TYPE_MORE_SMALL:I = 0x2

.field private static final TYPE_TEXT_BIG:I = 0x4

.field private static final TYPE_TEXT_SMALL:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/narvii/feed/featured/MoreFeaturedListAdapter;


# direct methods
.method private constructor <init>(Lcom/narvii/feed/featured/MoreFeaturedListAdapter;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;->this$0:Lcom/narvii/feed/featured/MoreFeaturedListAdapter;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/feed/featured/MoreFeaturedListAdapter;Lcom/narvii/feed/featured/MoreFeaturedListAdapter$1;)V
    .locals 0

    .line 222
    invoke-direct {p0, p1}, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;-><init>(Lcom/narvii/feed/featured/MoreFeaturedListAdapter;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .line 371
    iget-object v0, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;->this$0:Lcom/narvii/feed/featured/MoreFeaturedListAdapter;

    iget-object v0, v0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->moreFeaturedList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 374
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_1

    const/16 v0, 0xb

    return v0

    .line 377
    :cond_1
    iget-object v0, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;->this$0:Lcom/narvii/feed/featured/MoreFeaturedListAdapter;

    iget-object v0, v0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->moreFeaturedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0xa

    if-lt p1, v1, :cond_1

    .line 236
    iget-object p1, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;->this$0:Lcom/narvii/feed/featured/MoreFeaturedListAdapter;

    iget p1, p1, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->showStyle:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x5

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    return p1

    .line 238
    :cond_1
    iget-object v1, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;->this$0:Lcom/narvii/feed/featured/MoreFeaturedListAdapter;

    iget-object v1, v1, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->moreFeaturedList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Feed;

    .line 239
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->firstMedia()Lcom/narvii/model/Media;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 240
    iget-object p1, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;->this$0:Lcom/narvii/feed/featured/MoreFeaturedListAdapter;

    iget p1, p1, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->showStyle:I

    if-ne p1, v0, :cond_2

    const/4 p1, 0x3

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1

    .line 242
    :cond_3
    iget-object p1, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;->this$0:Lcom/narvii/feed/featured/MoreFeaturedListAdapter;

    iget p1, p1, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->showStyle:I

    if-ne p1, v0, :cond_4

    const/4 v0, 0x4

    :cond_4
    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 291
    instance-of v3, v1, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$PopularFeedViewHolder;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_4

    .line 292
    move-object v3, v1

    check-cast v3, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$PopularFeedViewHolder;

    .line 293
    iget-object v6, v0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;->this$0:Lcom/narvii/feed/featured/MoreFeaturedListAdapter;

    iget-object v6, v6, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->moreFeaturedList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/narvii/model/Feed;

    if-nez v2, :cond_0

    .line 296
    iget-object v7, v0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;->this$0:Lcom/narvii/feed/featured/MoreFeaturedListAdapter;

    invoke-virtual {v7}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v7, v8}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v7

    float-to-int v7, v7

    .line 297
    iget-object v8, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    iget-object v10, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getPaddingRight()I

    move-result v10

    iget-object v11, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getPaddingBottom()I

    move-result v11

    invoke-virtual {v8, v7, v9, v10, v11}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 299
    :cond_0
    iget-object v7, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    iget-object v9, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    iget-object v10, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    invoke-virtual {v7, v4, v8, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 302
    :goto_0
    invoke-virtual {v6}, Lcom/narvii/model/Feed;->getRealFeed()Lcom/narvii/model/Feed;

    move-result-object v7

    .line 303
    iget-object v8, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v8, v6}, Lcom/narvii/logging/LogUtils;->setAttachedObject(Landroid/view/View;Ljava/lang/Object;)V

    .line 305
    iget-object v8, v3, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$PopularFeedViewHolder;->feedItem:Lcom/narvii/feed/PopularFeedListItem;

    if-eqz v8, :cond_1

    const v9, 0x7f090571

    .line 307
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/narvii/widget/ThumbImageView;

    .line 308
    iget-object v11, v3, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$PopularFeedViewHolder;->feedItem:Lcom/narvii/feed/PopularFeedListItem;

    iget-object v9, v0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;->this$0:Lcom/narvii/feed/featured/MoreFeaturedListAdapter;

    invoke-static {v9}, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->access$300(Lcom/narvii/feed/featured/MoreFeaturedListAdapter;)Lcom/narvii/app/NVContext;

    move-result-object v12

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    const/16 v20, 0x0

    const/16 v21, 0x0

    iget-object v9, v0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;->this$0:Lcom/narvii/feed/featured/MoreFeaturedListAdapter;

    .line 310
    invoke-virtual {v9}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070146

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    const/16 v23, 0x3

    move-object v13, v7

    .line 308
    invoke-virtual/range {v11 .. v23}, Lcom/narvii/feed/PopularFeedListItem;->setFeed(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;ZZZZZFZZII)V

    .line 311
    iget-object v9, v3, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$PopularFeedViewHolder;->feedItem:Lcom/narvii/feed/PopularFeedListItem;

    invoke-virtual {v9, v5}, Lcom/narvii/feed/PopularFeedListItem;->setDarkTheme(Z)V

    .line 312
    iget-object v9, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v10, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter$1;

    invoke-direct {v10, v0, v6, v1}, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter$1;-><init>(Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;Lcom/narvii/model/Feed;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v8, :cond_1

    .line 321
    iget-object v1, v0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;->this$0:Lcom/narvii/feed/featured/MoreFeaturedListAdapter;

    iget-object v1, v1, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->moreFeaturedList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Blog;

    invoke-virtual {v1}, Lcom/narvii/model/Blog;->firstMedia()Lcom/narvii/model/Media;

    move-result-object v1

    if-nez v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_1

    .line 322
    iget-object v1, v0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;->this$0:Lcom/narvii/feed/featured/MoreFeaturedListAdapter;

    invoke-virtual {v1}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08010f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 323
    iget-object v2, v0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;->this$0:Lcom/narvii/feed/featured/MoreFeaturedListAdapter;

    iget-object v2, v2, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->feedHelper:Lcom/narvii/feed/FeedHelper;

    invoke-virtual {v2}, Lcom/narvii/feed/FeedHelper;->getHighLightColor()I

    move-result v2

    invoke-static {v2}, Lcom/narvii/widget/TintButton;->tintColorFilter(I)Landroid/graphics/ColorFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 324
    invoke-virtual {v8, v1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 325
    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 329
    :cond_1
    iget-object v1, v3, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$PopularFeedViewHolder;->feedToolbarLayout:Lcom/narvii/feed/FeedToolbarLayout;

    if-eqz v1, :cond_8

    .line 330
    invoke-virtual {v1, v5}, Lcom/narvii/feed/FeedToolbarLayout;->setDarkTheme(Z)V

    .line 331
    iget-object v1, v3, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$PopularFeedViewHolder;->feedToolbarLayout:Lcom/narvii/feed/FeedToolbarLayout;

    const v2, 0x7f090458

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v7, :cond_2

    .line 332
    invoke-virtual {v7}, Lcom/narvii/model/Feed;->getTotalVotesCount()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v7}, Lcom/narvii/model/Feed;->getTotalVotesCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    iget-object v1, v3, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$PopularFeedViewHolder;->feedToolbarLayout:Lcom/narvii/feed/FeedToolbarLayout;

    const v2, 0x7f090459

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/TintButton;

    if-eqz v7, :cond_3

    .line 335
    iget-object v2, v0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;->this$0:Lcom/narvii/feed/featured/MoreFeaturedListAdapter;

    invoke-virtual {v2}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    move-result v2

    invoke-virtual {v6, v2}, Lcom/narvii/model/Feed;->getVotedValue(Z)I

    move-result v2

    if-nez v2, :cond_3

    .line 336
    iget-object v2, v0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;->this$0:Lcom/narvii/feed/featured/MoreFeaturedListAdapter;

    invoke-virtual {v2}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f08055e

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, -0x1

    .line 337
    invoke-virtual {v1, v2}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    goto/16 :goto_4

    .line 339
    :cond_3
    iget-object v1, v3, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$PopularFeedViewHolder;->feedToolbarLayout:Lcom/narvii/feed/FeedToolbarLayout;

    invoke-virtual {v1, v7}, Lcom/narvii/feed/FeedToolbarLayout;->setFeed(Lcom/narvii/model/Feed;)V

    goto :goto_4

    .line 345
    :cond_4
    instance-of v2, v1, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreItemsViewHolder;

    if-eqz v2, :cond_8

    .line 346
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 347
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/16 v6, 0xa

    .line 348
    :goto_2
    iget-object v7, v0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;->this$0:Lcom/narvii/feed/featured/MoreFeaturedListAdapter;

    iget-object v7, v7, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->moreFeaturedList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_7

    .line 349
    iget-object v7, v0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;->this$0:Lcom/narvii/feed/featured/MoreFeaturedListAdapter;

    iget-object v7, v7, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->moreFeaturedList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/narvii/model/Blog;

    invoke-virtual {v7}, Lcom/narvii/model/Blog;->getRealFeed()Lcom/narvii/model/Feed;

    move-result-object v7

    .line 350
    invoke-virtual {v7}, Lcom/narvii/model/Feed;->firstMedia()Lcom/narvii/model/Media;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 351
    instance-of v8, v7, Lcom/narvii/model/Blog;

    if-eqz v8, :cond_5

    move-object v8, v7

    check-cast v8, Lcom/narvii/model/Blog;

    iget v8, v8, Lcom/narvii/model/Blog;->type:I

    const/4 v9, 0x7

    if-ne v8, v9, :cond_5

    iget-boolean v8, v7, Lcom/narvii/model/Feed;->needHidden:Z

    if-eqz v8, :cond_5

    const/4 v8, 0x1

    goto :goto_3

    :cond_5
    const/4 v8, 0x0

    .line 352
    :goto_3
    invoke-virtual {v7}, Lcom/narvii/model/Feed;->firstMedia()Lcom/narvii/model/Media;

    move-result-object v7

    iget-object v7, v7, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 356
    :cond_7
    move-object v4, v1

    check-cast v4, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreItemsViewHolder;

    iget-object v5, v4, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreItemsViewHolder;->moreThumbLayout:Lcom/narvii/feed/featured/FeaturedMoreItemsLayout;

    invoke-virtual {v5, v3}, Lcom/narvii/feed/featured/FeaturedMoreItemsLayout;->setNeedBlurImage(Ljava/util/List;)V

    .line 357
    iget-object v3, v4, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreItemsViewHolder;->moreThumbLayout:Lcom/narvii/feed/featured/FeaturedMoreItemsLayout;

    invoke-virtual {v3, v2}, Lcom/narvii/feed/featured/FeaturedMoreItemsLayout;->setThumbUrls(Ljava/util/List;)V

    .line 358
    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter$2;

    invoke-direct {v2, v0}, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter$2;-><init>(Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    :goto_4
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 8

    const/4 v0, 0x5

    const/4 v1, 0x3

    const/4 v2, 0x2

    const v3, 0x7f0b0535

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-eqz p2, :cond_3

    if-eq p2, v5, :cond_2

    if-eq p2, v2, :cond_1

    if-eq p2, v1, :cond_4

    if-eq p2, v4, :cond_0

    if-eq p2, v0, :cond_1

    goto :goto_0

    :cond_0
    const v3, 0x7f0b0538

    goto :goto_0

    :cond_1
    const v3, 0x7f0b0536

    goto :goto_0

    :cond_2
    const v3, 0x7f0b0539

    goto :goto_0

    :cond_3
    const v3, 0x7f0b0537

    .line 270
    :cond_4
    :goto_0
    iget-object v6, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;->this$0:Lcom/narvii/feed/featured/MoreFeaturedListAdapter;

    invoke-virtual {v6}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v3, p1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 271
    iget-object v3, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;->this$0:Lcom/narvii/feed/featured/MoreFeaturedListAdapter;

    invoke-static {v3, p1}, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->access$200(Lcom/narvii/feed/featured/MoreFeaturedListAdapter;Landroid/view/View;)V

    if-eq p2, v5, :cond_5

    if-ne p2, v4, :cond_6

    :cond_5
    const v3, 0x7f090444

    .line 274
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v6, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;->this$0:Lcom/narvii/feed/featured/MoreFeaturedListAdapter;

    iget-object v6, v6, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->feedHelper:Lcom/narvii/feed/FeedHelper;

    invoke-virtual {v6}, Lcom/narvii/feed/FeedHelper;->getTextOnlyBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    if-eq p2, v2, :cond_a

    if-ne p2, v0, :cond_7

    goto :goto_2

    :cond_7
    if-eq p2, v1, :cond_9

    if-eqz p2, :cond_9

    if-eq p2, v4, :cond_9

    if-ne p2, v5, :cond_8

    goto :goto_1

    :cond_8
    const/4 p1, 0x0

    return-object p1

    .line 284
    :cond_9
    :goto_1
    new-instance p2, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$PopularFeedViewHolder;

    iget-object v0, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;->this$0:Lcom/narvii/feed/featured/MoreFeaturedListAdapter;

    invoke-direct {p2, v0, p1}, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$PopularFeedViewHolder;-><init>(Lcom/narvii/feed/featured/MoreFeaturedListAdapter;Landroid/view/View;)V

    return-object p2

    .line 279
    :cond_a
    :goto_2
    new-instance p2, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreItemsViewHolder;

    iget-object v0, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;->this$0:Lcom/narvii/feed/featured/MoreFeaturedListAdapter;

    invoke-direct {p2, v0, p1}, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreItemsViewHolder;-><init>(Lcom/narvii/feed/featured/MoreFeaturedListAdapter;Landroid/view/View;)V

    return-object p2
.end method
