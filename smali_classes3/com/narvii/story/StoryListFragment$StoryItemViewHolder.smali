.class Lcom/narvii/story/StoryListFragment$StoryItemViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "StoryListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/story/StoryListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StoryItemViewHolder"
.end annotation


# instance fields
.field storyItemView:Lcom/narvii/story/widgets/StoryItemView;

.field final synthetic this$0:Lcom/narvii/story/StoryListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/story/StoryListFragment;Landroid/view/View;)V
    .locals 2

    .line 2278
    iput-object p1, p0, Lcom/narvii/story/StoryListFragment$StoryItemViewHolder;->this$0:Lcom/narvii/story/StoryListFragment;

    .line 2279
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f090ae3

    .line 2280
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/story/widgets/StoryItemView;

    iput-object v0, p0, Lcom/narvii/story/StoryListFragment$StoryItemViewHolder;->storyItemView:Lcom/narvii/story/widgets/StoryItemView;

    .line 2281
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$StoryItemViewHolder;->storyItemView:Lcom/narvii/story/widgets/StoryItemView;

    invoke-static {p1}, Lcom/narvii/story/StoryListFragment;->access$4900(Lcom/narvii/story/StoryListFragment;)I

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-virtual {v0, p1}, Lcom/narvii/story/widgets/StoryItemView;->setOrientation(I)V

    .line 2283
    instance-of p1, p2, Lcom/narvii/paging/PageView;

    if-eqz p1, :cond_1

    .line 2284
    check-cast p2, Lcom/narvii/paging/PageView;

    invoke-virtual {p2, v1}, Lcom/narvii/paging/PageView;->sendPageViewEventToThirdParty(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public bindStory(Lcom/narvii/model/Blog;IZ)V
    .locals 7

    .line 2289
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$StoryItemViewHolder;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryListFragment;->access$900(Lcom/narvii/story/StoryListFragment;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {p1}, Lcom/narvii/model/Blog;->getPublishNdcId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/narvii/model/Community;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 2290
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/narvii/story/StoryListFragment$StoryItemViewHolder;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v2}, Lcom/narvii/story/StoryListFragment;->access$2100(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/model/Blog;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v2, v0

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/narvii/story/StoryListFragment$StoryItemViewHolder;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v2}, Lcom/narvii/story/StoryListFragment;->access$2100(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/model/Blog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2293
    invoke-virtual {p1}, Lcom/narvii/model/Blog;->getExtraCoverMedia()Lcom/narvii/model/Media;

    move-result-object v1

    if-nez v1, :cond_2

    move-object v1, v0

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/narvii/model/Blog;->getExtraCoverMedia()Lcom/narvii/model/Media;

    move-result-object v1

    iget-object v1, v1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    :goto_2
    invoke-virtual {p0, v1}, Lcom/narvii/story/StoryListFragment$StoryItemViewHolder;->cachedDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_3

    :cond_3
    move-object v1, v0

    .line 2295
    :goto_3
    iget-object v2, p0, Lcom/narvii/story/StoryListFragment$StoryItemViewHolder;->storyItemView:Lcom/narvii/story/widgets/StoryItemView;

    iget-object v3, v2, Lcom/narvii/story/widgets/StoryItemView;->imgStoryThumb:Lcom/narvii/widget/NVImageView;

    iput-object v1, v3, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 2296
    iput-object v1, v3, Lcom/narvii/widget/NVImageView;->loadingDrawable:Landroid/graphics/drawable/Drawable;

    .line 2297
    iget-object v1, p0, Lcom/narvii/story/StoryListFragment$StoryItemViewHolder;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v1}, Lcom/narvii/story/StoryListFragment;->access$5000(Lcom/narvii/story/StoryListFragment;)Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/narvii/story/widgets/StoryItemView;->setIsImmersionModel(Z)V

    .line 2298
    iget-object v1, p0, Lcom/narvii/story/StoryListFragment$StoryItemViewHolder;->storyItemView:Lcom/narvii/story/widgets/StoryItemView;

    iget-object v2, p0, Lcom/narvii/story/StoryListFragment$StoryItemViewHolder;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v2}, Lcom/narvii/story/StoryListFragment;->access$5100(Lcom/narvii/story/StoryListFragment;)Z

    move-result v6

    move-object v2, p1

    move v3, p2

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/narvii/story/widgets/StoryItemView;->setStory(Lcom/narvii/model/Blog;ILcom/narvii/model/Community;ZZ)V

    .line 2299
    iget-object p2, p0, Lcom/narvii/story/StoryListFragment$StoryItemViewHolder;->storyItemView:Lcom/narvii/story/widgets/StoryItemView;

    iget-object p3, p0, Lcom/narvii/story/StoryListFragment$StoryItemViewHolder;->this$0:Lcom/narvii/story/StoryListFragment;

    iget-object p3, p3, Lcom/narvii/story/StoryListFragment;->storyPageTurningListener:Lcom/narvii/story/widgets/StoryItemClickListener;

    invoke-virtual {p2, p3}, Lcom/narvii/story/widgets/StoryItemView;->setStoryItemClickListener(Lcom/narvii/story/widgets/StoryItemClickListener;)V

    .line 2300
    iget-object p2, p0, Lcom/narvii/story/StoryListFragment$StoryItemViewHolder;->storyItemView:Lcom/narvii/story/widgets/StoryItemView;

    iget-object p3, p0, Lcom/narvii/story/StoryListFragment$StoryItemViewHolder;->this$0:Lcom/narvii/story/StoryListFragment;

    iget-object p3, p3, Lcom/narvii/story/StoryListFragment;->storyItemPlayControlListener:Lcom/narvii/story/widgets/StoryItemPlayControlListener;

    invoke-virtual {p2, p3}, Lcom/narvii/story/widgets/StoryItemView;->setStoryItemPlayControlListener(Lcom/narvii/story/widgets/StoryItemPlayControlListener;)V

    .line 2301
    invoke-virtual {p1}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/narvii/story/StoryListFragment$StoryItemViewHolder;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {p3}, Lcom/narvii/story/StoryListFragment;->access$100(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/model/Blog;

    move-result-object p3

    if-nez p3, :cond_4

    goto :goto_4

    :cond_4
    iget-object p3, p0, Lcom/narvii/story/StoryListFragment$StoryItemViewHolder;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {p3}, Lcom/narvii/story/StoryListFragment;->access$100(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/model/Blog;

    move-result-object p3

    invoke-virtual {p3}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-static {p2, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 2302
    iget-object p2, p0, Lcom/narvii/story/StoryListFragment$StoryItemViewHolder;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {p2}, Lcom/narvii/story/StoryListFragment;->access$100(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/model/Blog;

    move-result-object p2

    iget p2, p2, Lcom/narvii/model/Blog;->currentWindowIndex:I

    iput p2, p1, Lcom/narvii/model/Blog;->currentWindowIndex:I

    .line 2304
    :cond_5
    iget-object p2, p0, Lcom/narvii/story/StoryListFragment$StoryItemViewHolder;->storyItemView:Lcom/narvii/story/widgets/StoryItemView;

    iget p3, p1, Lcom/narvii/model/Blog;->currentWindowIndex:I

    invoke-virtual {p2, p3}, Lcom/narvii/story/widgets/StoryItemView;->setSceneIndex(I)V

    .line 2306
    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of p3, p2, Lcom/narvii/paging/PageView;

    if-eqz p3, :cond_6

    .line 2307
    check-cast p2, Lcom/narvii/paging/PageView;

    invoke-virtual {p2, p1}, Lcom/narvii/paging/PageView;->setStrategyObject(Lcom/narvii/model/StrategyObject;)V

    :cond_6
    return-void
.end method

.method public cachedDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2315
    :cond_0
    iget-object v1, p0, Lcom/narvii/story/StoryListFragment$StoryItemViewHolder;->this$0:Lcom/narvii/story/StoryListFragment;

    const-string v2, "imageLoader"

    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/image/NVImageLoader;

    const-string v2, "00"

    .line 2316
    invoke-static {p1, v2}, Lcom/narvii/widget/NVImageView;->replaceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2317
    invoke-virtual {v1, p1}, Lcom/narvii/util/image/NVImageLoader;->getDiskCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2319
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    :cond_1
    return-object v0
.end method
