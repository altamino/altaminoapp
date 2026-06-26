.class public Lcom/narvii/feed/featured/MoreFeaturedListAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "MoreFeaturedListAdapter.java"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreItemsViewHolder;,
        Lcom/narvii/feed/featured/MoreFeaturedListAdapter$PopularFeedViewHolder;,
        Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;
    }
.end annotation


# static fields
.field private static final PAGE_SIZE:I = 0x19

.field public static final STYLE_BIG:I = 0x1

.field public static final STYLE_SMALL:I


# instance fields
.field private final BASE_MORE_FEED_NUM:I

.field accountService:Lcom/narvii/account/AccountService;

.field configService:Lcom/narvii/config/ConfigService;

.field public detailOpenSource:Ljava/lang/String;

.field featuredBlogCategory:Lcom/narvii/model/BlogCategory;

.field feedHelper:Lcom/narvii/feed/FeedHelper;

.field private ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector<",
            "Lcom/narvii/model/Feed;",
            ">;"
        }
    .end annotation
.end field

.field moreFeaturedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Blog;",
            ">;"
        }
    .end annotation
.end field

.field recycleAdapter:Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;

.field protected showStyle:I

.field styleChanged:Z

.field timeStamp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 81
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const/16 v0, 0xa

    .line 61
    iput v0, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->BASE_MORE_FEED_NUM:I

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->showStyle:I

    .line 72
    iput-boolean v0, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->styleChanged:Z

    .line 82
    new-instance v0, Lcom/narvii/feed/FeedHelper;

    invoke-direct {v0, p1}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->feedHelper:Lcom/narvii/feed/FeedHelper;

    const-string p1, "config"

    .line 83
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    iput-object p1, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->configService:Lcom/narvii/config/ConfigService;

    const-string p1, "account"

    .line 84
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    iput-object p1, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->accountService:Lcom/narvii/account/AccountService;

    .line 85
    new-instance p1, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;-><init>(Lcom/narvii/feed/featured/MoreFeaturedListAdapter;Lcom/narvii/feed/featured/MoreFeaturedListAdapter$1;)V

    iput-object p1, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->recycleAdapter:Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/feed/featured/MoreFeaturedListAdapter;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->openFeatureCategoryList()V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/feed/featured/MoreFeaturedListAdapter;Landroid/view/View;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->fixItemViewStyle(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Lcom/narvii/feed/featured/MoreFeaturedListAdapter;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method private fixItemViewStyle(Landroid/view/View;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 431
    :cond_0
    iget v0, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->showStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 432
    new-instance v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701f9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 433
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701f7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 432
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 435
    :cond_1
    new-instance v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701fa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 436
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701f8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 435
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method private openFeatureCategoryList()V
    .locals 3

    .line 408
    iget-object v0, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->featuredBlogCategory:Lcom/narvii/model/BlogCategory;

    if-nez v0, :cond_0

    return-void

    .line 411
    :cond_0
    const-class v0, Lcom/narvii/feed/BlogInCategoryListFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 412
    iget-object v1, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->featuredBlogCategory:Lcom/narvii/model/BlogCategory;

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "blogCategory"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 413
    iget-object v1, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->featuredBlogCategory:Lcom/narvii/model/BlogCategory;

    invoke-virtual {v1}, Lcom/narvii/model/BlogCategory;->id()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    const-string v2, "isFeaturedCategory"

    .line 414
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 415
    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1, v0}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected getApiRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 118
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/feed/featured-more"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 119
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "start"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const/16 v1, 0x19

    .line 120
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "size"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 121
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "MoreFeaturedList"

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->moreFeaturedList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const p1, 0x7f0b022c

    .line 173
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09072a

    .line 174
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$2;

    invoke-direct {p3, p0}, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$2;-><init>(Lcom/narvii/feed/featured/MoreFeaturedListAdapter;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f0f0bd1

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 182
    iget p3, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->showStyle:I

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f0f06ae

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    const p3, 0x7f09072b

    .line 185
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f090729

    .line 186
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/HorizontalRecyclerView;

    .line 187
    iget-object p3, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;

    invoke-static {p1, p3}, Lcom/narvii/logging/LogUtils;->recyclerShownInAdapter(Landroid/view/View;Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;)V

    .line 188
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 189
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p3

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 191
    :cond_1
    new-instance p3, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p3, v1, v0, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 192
    invoke-virtual {p2, p3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 193
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f080785

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 194
    new-instance v1, Lcom/narvii/util/recycleview/DividerItemDecoration;

    invoke-direct {v1, p3}, Lcom/narvii/util/recycleview/DividerItemDecoration;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 195
    iget-object p3, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->recycleAdapter:Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 198
    :goto_0
    iget-boolean p3, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->styleChanged:Z

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->moreFeaturedList:Ljava/util/List;

    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-eqz p3, :cond_2

    .line 199
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 200
    iput-boolean v0, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->styleChanged:Z

    :cond_2
    return-object p1
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 142
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 143
    iget-object v0, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->recycleAdapter:Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onAttach()V
    .locals 3

    .line 134
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 135
    new-instance v0, Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;

    const-class v1, Lcom/narvii/model/Feed;

    const v2, 0x7f090729

    invoke-direct {v0, v1, v2}, Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;

    .line 136
    iget-object v0, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;

    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    .line 137
    invoke-virtual {p0}, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->sendMoreFeaturedRequest()V

    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 5

    .line 207
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/influencer/FanClub;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->moreFeaturedList:Ljava/util/List;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 209
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/Feed;

    .line 210
    invoke-virtual {v2}, Lcom/narvii/model/NVObject;->uid()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/narvii/influencer/FanClub;

    iget-object v4, v4, Lcom/narvii/influencer/FanClub;->targetUid:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 211
    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/narvii/influencer/FanClub;

    invoke-virtual {v1}, Lcom/narvii/influencer/FanClub;->isActive()Z

    move-result v1

    xor-int/2addr v1, v4

    iput-boolean v1, v2, Lcom/narvii/model/Feed;->needHidden:Z

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 216
    invoke-virtual {p0}, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public openFeedDetail(Lcom/narvii/model/Feed;I)V
    .locals 8

    .line 422
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    iget-object v2, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->moreFeaturedList:Ljava/util/List;

    .line 423
    invoke-virtual {p0}, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->getApiRequest()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->getApiRequest()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest;->url()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v3, v1

    iget-object v4, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->timeStamp:Ljava/lang/String;

    const/4 v6, 0x0

    const/16 v7, 0x19

    move-object v1, p1

    move v5, p2

    .line 422
    invoke-static/range {v0 .. v7}, Lcom/narvii/detail/FeedDetailFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 424
    iget-object p2, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->detailOpenSource:Ljava/lang/String;

    const-string v0, "Source"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x1

    const-string v0, "moreFeaturedPost"

    .line 425
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 426
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p2, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 126
    invoke-virtual {p0}, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->notifyDataSetChanged()V

    .line 127
    invoke-virtual {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->refreshMonitorStart(ILcom/narvii/util/Callback;)V

    .line 128
    invoke-virtual {p0}, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->sendMoreFeaturedRequest()V

    .line 129
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->refreshMonitorEnd()V

    return-void
.end method

.method sendMoreFeaturedRequest()V
    .locals 4

    const-string v0, "api"

    .line 98
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 99
    invoke-virtual {p0}, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->getApiRequest()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    new-instance v2, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$1;

    const-class v3, Lcom/narvii/feed/featured/HistoryFeaturedFeedResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$1;-><init>(Lcom/narvii/feed/featured/MoreFeaturedListAdapter;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public setShowStyle(I)V
    .locals 1

    .line 89
    iget v0, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->showStyle:I

    if-eq v0, p1, :cond_0

    .line 90
    iput p1, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->showStyle:I

    const/4 p1, 0x1

    .line 91
    iput-boolean p1, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->styleChanged:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 93
    iput-boolean p1, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->styleChanged:Z

    :goto_0
    return-void
.end method
