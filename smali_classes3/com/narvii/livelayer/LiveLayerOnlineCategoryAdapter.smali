.class public Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "LiveLayerOnlineCategoryAdapter.java"


# static fields
.field public static final USER_LIST_MAX_SIZE:I = 0x1e


# instance fields
.field animatedCategoryTopic:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field cacheCategoryMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/livelayer/category/OnlineCategory;",
            ">;"
        }
    .end annotation
.end field

.field cachedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/livelayer/category/OnlineCategory;",
            ">;"
        }
    .end annotation
.end field

.field configHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/livelayer/category/OnlineCategoryConfig;",
            ">;"
        }
    .end annotation
.end field

.field contentEmpty:Z

.field dispatchHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/livelayer/ws/LiveLayerEventListener;",
            ">;"
        }
    .end annotation
.end field

.field err:Ljava/lang/String;

.field eventListenerHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/livelayer/ws/LiveLayerEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private imageSwitchFactory:Landroid/widget/ViewSwitcher$ViewFactory;

.field private isLoaing:Z

.field liveLayerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/livelayer/category/OnlineCategory;",
            ">;"
        }
    .end annotation
.end field

.field liveLayerService:Lcom/narvii/livelayer/LiveLayerService;

.field requestRunnable:Ljava/lang/Runnable;

.field public textIn:Landroid/view/animation/Animation;

.field public textOut:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 86
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->liveLayerList:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->animatedCategoryTopic:Ljava/util/HashSet;

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->contentEmpty:Z

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->configHashMap:Ljava/util/HashMap;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->eventListenerHashMap:Ljava/util/HashMap;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->dispatchHashMap:Ljava/util/HashMap;

    .line 76
    new-instance v0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$1;

    invoke-direct {v0, p0}, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$1;-><init>(Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;)V

    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->requestRunnable:Ljava/lang/Runnable;

    .line 129
    new-instance v0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$2;

    invoke-direct {v0, p0}, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$2;-><init>(Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;)V

    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->imageSwitchFactory:Landroid/widget/ViewSwitcher$ViewFactory;

    const-string v0, "liveLayer"

    .line 87
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/livelayer/LiveLayerService;

    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->liveLayerService:Lcom/narvii/livelayer/LiveLayerService;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->sendRequest()V

    return-void
.end method

.method static synthetic access$102(Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->isLoaing:Z

    return p1
.end method

.method static synthetic access$200(Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->unsubscribeLiveLayer()V

    return-void
.end method

.method static synthetic access$300(Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;Landroid/view/View;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->resetCellHeight(Landroid/view/View;I)V

    return-void
.end method

.method private resetCellHeight(Landroid/view/View;I)V
    .locals 2

    const v0, 0x7f0901bb

    .line 393
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 394
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 396
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f070212

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 397
    :goto_0
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq p2, v1, :cond_1

    .line 398
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 399
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private sendRequest()V
    .locals 4

    const/4 v0, 0x1

    .line 163
    iput-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->isLoaing:Z

    const/4 v0, 0x0

    .line 164
    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->err:Ljava/lang/String;

    .line 165
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    const-string v0, "api"

    .line 166
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 167
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "live-layer/homepage"

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "v"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    .line 168
    new-instance v2, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$3;

    const-class v3, Lcom/narvii/livelayer/category/OnlineCategoryListResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$3;-><init>(Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private unsubscribeLiveLayer()V
    .locals 4

    .line 430
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->eventListenerHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 431
    iget-object v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->liveLayerService:Lcom/narvii/livelayer/LiveLayerService;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/livelayer/ws/LiveLayerEventListener;

    invoke-virtual {v2, v3, v1}, Lcom/narvii/livelayer/LiveLayerService;->unsubscribe(Ljava/lang/String;Lcom/narvii/livelayer/ws/LiveLayerEventListener;)V

    goto :goto_0

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->eventListenerHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method


# virtual methods
.method public contentEmpty()Z
    .locals 1

    .line 150
    iget-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->contentEmpty:Z

    return v0
.end method

.method public errorMessage()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->err:Ljava/lang/String;

    return-object v0
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "OnlineCategoryList"

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->liveLayerList:Ljava/util/List;

    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/narvii/livelayer/category/OnlineCategory;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->liveLayerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/livelayer/category/OnlineCategory;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->getItem(I)Lcom/narvii/livelayer/category/OnlineCategory;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 257
    invoke-virtual {p0, p1}, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->getItem(I)Lcom/narvii/livelayer/category/OnlineCategory;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getLiveLayerList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/livelayer/category/OnlineCategory;",
            ">;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->liveLayerList:Ljava/util/List;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18

    move-object/from16 v0, p0

    const v1, 0x7f0b04db

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 267
    invoke-virtual {v0, v1, v3, v2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 269
    invoke-virtual/range {p0 .. p1}, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->getItem(I)Lcom/narvii/livelayer/category/OnlineCategory;

    move-result-object v2

    .line 270
    iget-object v3, v0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->configHashMap:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/narvii/livelayer/category/OnlineCategory;->topic:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/livelayer/category/OnlineCategoryConfig;

    const v4, 0x7f090562

    .line 271
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 272
    invoke-interface {v3}, Lcom/narvii/livelayer/category/OnlineCategoryConfig;->iconId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 274
    iget-object v4, v0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->textIn:Landroid/view/animation/Animation;

    if-nez v4, :cond_0

    .line 275
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f01003d

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, v0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->textIn:Landroid/view/animation/Animation;

    .line 277
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f010040

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, v0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->textOut:Landroid/view/animation/Animation;

    :cond_0
    const v4, 0x7f0907b6

    .line 281
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0900a7

    .line 283
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/ValueAnimator;

    const v7, 0x7f090bc4

    .line 284
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 285
    iget-object v9, v2, Lcom/narvii/livelayer/category/OnlineCategory;->topic:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 286
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->cancel()V

    .line 289
    :cond_1
    iget v8, v2, Lcom/narvii/livelayer/category/OnlineCategory;->userProfileCount:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v8, v2, Lcom/narvii/livelayer/category/OnlineCategory;->topic:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 292
    iget-object v8, v0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->animatedCategoryTopic:Ljava/util/HashSet;

    iget-object v9, v2, Lcom/narvii/livelayer/category/OnlineCategory;->topic:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-nez v8, :cond_3

    iget-boolean v8, v0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->isLoaing:Z

    if-nez v8, :cond_3

    const-string v6, ""

    .line 293
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    iget-object v6, v0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->animatedCategoryTopic:Ljava/util/HashSet;

    iget-object v8, v2, Lcom/narvii/livelayer/category/OnlineCategory;->topic:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 297
    iget-object v6, v0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->cacheCategoryMap:Ljava/util/HashMap;

    if-eqz v6, :cond_2

    .line 298
    iget-object v8, v2, Lcom/narvii/livelayer/category/OnlineCategory;->topic:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/narvii/livelayer/category/OnlineCategory;

    if-eqz v6, :cond_2

    .line 300
    iget v6, v6, Lcom/narvii/livelayer/category/OnlineCategory;->userProfileCount:I

    goto :goto_0

    :cond_2
    const/4 v6, 0x1

    :goto_0
    new-array v8, v10, [I

    aput v6, v8, v9

    .line 305
    iget v12, v2, Lcom/narvii/livelayer/category/OnlineCategory;->userProfileCount:I

    aput v12, v8, v11

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v8

    const/16 v12, 0x320

    .line 306
    iget v13, v2, Lcom/narvii/livelayer/category/OnlineCategory;->userProfileCount:I

    sub-int/2addr v13, v6

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v6

    mul-int/lit8 v6, v6, 0x64

    invoke-static {v12, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-long v12, v6

    invoke-virtual {v8, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 307
    new-instance v6, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$4;

    invoke-direct {v6, v0, v4}, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$4;-><init>(Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;Landroid/widget/TextView;)V

    invoke-virtual {v8, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 315
    invoke-virtual {v4, v5, v8}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 316
    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    :cond_3
    if-eqz v6, :cond_4

    .line 319
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v5

    if-nez v5, :cond_5

    .line 320
    :cond_4
    iget v5, v2, Lcom/narvii/livelayer/category/OnlineCategory;->userProfileCount:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_1
    const v5, 0x7f090581

    .line 324
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Lcom/narvii/widget/NVImageSwitcher;

    .line 325
    invoke-virtual {v12}, Landroid/widget/ViewSwitcher;->removeAllViews()V

    .line 326
    iget-object v5, v0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->imageSwitchFactory:Landroid/widget/ViewSwitcher$ViewFactory;

    invoke-virtual {v12, v5}, Landroid/widget/ViewSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 327
    iget-object v13, v2, Lcom/narvii/livelayer/category/OnlineCategory;->mediaList:Ljava/util/List;

    mul-int/lit8 v5, p1, 0x32

    int-to-long v14, v5

    const-wide/16 v16, 0x1388

    invoke-virtual/range {v12 .. v17}, Lcom/narvii/widget/NVImageSwitcher;->startSwitch(Ljava/util/List;JJ)V

    const v5, 0x7f090b9a

    .line 329
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 330
    invoke-interface {v3}, Lcom/narvii/livelayer/category/OnlineCategoryConfig;->titleId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    const v5, 0x7f0907b0

    .line 332
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 333
    iget-object v6, v2, Lcom/narvii/livelayer/category/OnlineCategory;->userProfileList:Ljava/util/LinkedList;

    iget v8, v2, Lcom/narvii/livelayer/category/OnlineCategory;->userProfileCount:I

    invoke-virtual {v5, v6, v8}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setUserList(Ljava/util/List;I)V

    .line 334
    iget-object v6, v2, Lcom/narvii/livelayer/category/OnlineCategory;->topic:Ljava/lang/String;

    invoke-virtual {v5, v7, v6}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 335
    iget-object v6, v0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->dispatchHashMap:Ljava/util/HashMap;

    iget-object v7, v2, Lcom/narvii/livelayer/category/OnlineCategory;->topic:Ljava/lang/String;

    new-instance v8, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$5;

    invoke-direct {v8, v0, v5, v2}, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$5;-><init>(Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;Lcom/narvii/livelayer/LiveLayerOnlineBar;Lcom/narvii/livelayer/category/OnlineCategory;)V

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    new-instance v6, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$6;

    invoke-direct {v6, v0, v1, v4}, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$6;-><init>(Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;Landroid/view/View;Landroid/widget/TextView;)V

    invoke-virtual {v5, v6}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setOnMemberCountChangedListener(Lcom/narvii/livelayer/LiveLayerOnlineBar$OnMemberCountChangedListener;)V

    const v4, 0x7f0904dd

    .line 374
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/narvii/widget/GradientView;

    .line 375
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x41600000    # 14.0f

    invoke-static {v5, v6}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v5

    float-to-int v5, v5

    .line 377
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v6

    const/4 v7, 0x7

    const/4 v8, 0x6

    const/4 v12, 0x5

    const/4 v13, 0x4

    const/4 v14, 0x3

    const/16 v15, 0x8

    const/16 v16, 0x0

    if-eqz v6, :cond_6

    new-array v6, v15, [F

    aput v16, v6, v9

    aput v16, v6, v11

    int-to-float v5, v5

    aput v5, v6, v10

    aput v5, v6, v14

    aput v5, v6, v13

    aput v5, v6, v12

    aput v16, v6, v8

    aput v16, v6, v7

    goto :goto_2

    :cond_6
    new-array v6, v15, [F

    int-to-float v5, v5

    aput v5, v6, v9

    aput v5, v6, v11

    aput v16, v6, v10

    aput v16, v6, v14

    aput v16, v6, v13

    aput v16, v6, v12

    aput v5, v6, v8

    aput v5, v6, v7

    .line 382
    :goto_2
    invoke-virtual {v4, v6}, Lcom/narvii/widget/GradientView;->setRadius([F)V

    const v5, 0x20ffffff

    const/high16 v6, 0x64000000

    .line 383
    invoke-virtual {v4, v5, v6}, Lcom/narvii/widget/GradientView;->setColor(II)V

    .line 384
    invoke-interface {v3}, Lcom/narvii/livelayer/category/OnlineCategoryConfig;->color()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/narvii/widget/GradientView;->setBgColor(I)V

    .line 386
    iget v2, v2, Lcom/narvii/livelayer/category/OnlineCategory;->userProfileCount:I

    invoke-direct {v0, v1, v2}, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->resetCellHeight(Landroid/view/View;I)V

    const v2, 0x7f09098c

    .line 388
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method

.method protected gotoFragment(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .line 154
    iget-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->isLoaing:Z

    return v0
.end method

.method public onAttach()V
    .locals 5

    .line 118
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    const-string v0, "config"

    .line 120
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 121
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 123
    sget-object v0, Lcom/narvii/livelayer/category/OnlineCategoryManager;->configList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/livelayer/category/OnlineCategoryConfig;

    .line 124
    iget-object v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->configHashMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->liveLayerService:Lcom/narvii/livelayer/LiveLayerService;

    invoke-interface {v1}, Lcom/narvii/livelayer/category/OnlineCategoryConfig;->topicName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/narvii/livelayer/LiveLayerService;->getNdtopic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->requestRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 424
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onDetach()V

    .line 425
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->requestRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 426
    invoke-direct {p0}, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->unsubscribeLiveLayer()V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x1

    if-eqz p5, :cond_0

    .line 406
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result p3

    const p4, 0x7f09098c

    if-ne p3, p4, :cond_0

    .line 407
    invoke-virtual {p0, p2}, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->getItem(I)Lcom/narvii/livelayer/category/OnlineCategory;

    move-result-object p2

    .line 408
    iget-object p3, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->configHashMap:Ljava/util/HashMap;

    iget-object p2, p2, Lcom/narvii/livelayer/category/OnlineCategory;->topic:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/livelayer/category/OnlineCategoryConfig;

    .line 409
    invoke-interface {p2}, Lcom/narvii/livelayer/category/OnlineCategoryConfig;->targetFragment()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->gotoFragment(Ljava/lang/Class;)V

    .line 411
    sget-object p3, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p3}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p3

    invoke-interface {p2}, Lcom/narvii/livelayer/category/OnlineCategoryConfig;->topicName()Ljava/lang/String;

    move-result-object p2

    const-string p4, "contentType"

    invoke-virtual {p3, p4, p2}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    :cond_0
    return p1
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

    .line 144
    invoke-virtual {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->refreshMonitorStart(ILcom/narvii/util/Callback;)V

    .line 145
    invoke-direct {p0}, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->sendRequest()V

    .line 146
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->refreshMonitorEnd()V

    return-void
.end method

.method public setCachedListData(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/livelayer/category/OnlineCategory;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 92
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 94
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->cachedList:Ljava/util/List;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->cacheCategoryMap:Ljava/util/HashMap;

    .line 96
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->cachedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/livelayer/category/OnlineCategory;

    .line 97
    iget-object v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->cacheCategoryMap:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/narvii/livelayer/category/OnlineCategory;->topic:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 100
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->liveLayerList:Ljava/util/List;

    const/4 p1, 0x0

    .line 101
    iput-boolean p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->isLoaing:Z

    .line 102
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->liveLayerList:Ljava/util/List;

    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->contentEmpty:Z

    .line 103
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
