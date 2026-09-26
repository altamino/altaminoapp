.class public Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->liveLayerList:Ljava/util/List;

    .line 11
    .line 12
    new-instance v0, Ljava/util/HashSet;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->animatedCategoryTopic:Ljava/util/HashSet;

    .line 18
    const/4 v0, 0x1

    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->contentEmpty:Z

    .line 21
    .line 22
    new-instance v0, Ljava/util/HashMap;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 26
    .line 27
    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->configHashMap:Ljava/util/HashMap;

    .line 28
    .line 29
    new-instance v0, Ljava/util/HashMap;

    .line 30
    .line 31
    .line 32
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 33
    .line 34
    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->eventListenerHashMap:Ljava/util/HashMap;

    .line 35
    .line 36
    new-instance v0, Ljava/util/HashMap;

    .line 37
    .line 38
    .line 39
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 40
    .line 41
    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->dispatchHashMap:Ljava/util/HashMap;

    .line 42
    .line 43
    new-instance v0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$1;

    .line 44
    .line 45
    .line 46
    invoke-direct {v0, p0}, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$1;-><init>(Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;)V

    .line 47
    .line 48
    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->requestRunnable:Ljava/lang/Runnable;

    .line 49
    .line 50
    new-instance v0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$2;

    .line 51
    .line 52
    .line 53
    invoke-direct {v0, p0}, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$2;-><init>(Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;)V

    .line 54
    .line 55
    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->imageSwitchFactory:Landroid/widget/ViewSwitcher$ViewFactory;

    .line 56
    .line 57
    const-string v0, "liveLayer"

    .line 58
    .line 59
    .line 60
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    check-cast p1, Lcom/narvii/livelayer/LiveLayerService;

    .line 64
    .line 65
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->liveLayerService:Lcom/narvii/livelayer/LiveLayerService;

    .line 66
    return-void
.end method

.method static bridge synthetic f(Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->isLoaing:Z

    return-void
.end method

.method static bridge synthetic g(Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->resetCellHeight(Landroid/view/View;I)V

    return-void
.end method

.method static bridge synthetic h(Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->sendRequest()V

    return-void
.end method

.method static bridge synthetic i(Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->unsubscribeLiveLayer()V

    return-void
.end method

.method private resetCellHeight(Landroid/view/View;I)V
    .locals 2

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a026c

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    if-nez p2, :cond_0

    .line 16
    const/4 p2, 0x0

    .line 17
    goto :goto_0

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 21
    move-result-object p2

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 25
    move-result-object p2

    .line 26
    .line 27
    .line 28
    const v1, 0x7f070426

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 32
    move-result p2

    .line 33
    .line 34
    :goto_0
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 35
    .line 36
    if-eq p2, v1, :cond_1

    .line 37
    .line 38
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    :cond_1
    return-void
.end method

.method private sendRequest()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->isLoaing:Z

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->err:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 10
    .line 11
    const-string v0, "api"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    const-string v2, "live-layer/homepage"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 27
    move-result-object v1

    .line 28
    const/4 v2, 0x2

    .line 29
    .line 30
    .line 31
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    const-string v3, "v"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    new-instance v2, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$3;

    .line 45
    .line 46
    const-class v3, Lcom/narvii/livelayer/category/OnlineCategoryListResponse;

    .line 47
    .line 48
    .line 49
    invoke-direct {v2, p0, v3}, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$3;-><init>(Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;Ljava/lang/Class;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 53
    return-void
.end method

.method private unsubscribeLiveLayer()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->eventListenerHashMap:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, Ljava/util/Map$Entry;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->liveLayerService:Lcom/narvii/livelayer/LiveLayerService;

    .line 25
    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 28
    move-result-object v3

    .line 29
    .line 30
    check-cast v3, Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    check-cast v1, Lcom/narvii/livelayer/ws/LiveLayerEventListener;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v3, v1}, Lcom/narvii/livelayer/LiveLayerService;->unsubscribe(Ljava/lang/String;Lcom/narvii/livelayer/ws/LiveLayerEventListener;)V

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_0
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->eventListenerHashMap:Ljava/util/HashMap;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 46
    return-void
.end method


# virtual methods
.method public contentEmpty()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->contentEmpty:Z

    return v0
.end method

.method public errorMessage()Ljava/lang/String;
    .locals 1

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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->liveLayerList:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItem(I)Lcom/narvii/livelayer/category/OnlineCategory;
    .locals 1

    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->liveLayerList:Ljava/util/List;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/livelayer/category/OnlineCategory;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->getItem(I)Lcom/narvii/livelayer/category/OnlineCategory;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->getItem(I)Lcom/narvii/livelayer/category/OnlineCategory;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 8
    move-result p1

    .line 9
    int-to-long v0, p1

    .line 10
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

    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->liveLayerList:Ljava/util/List;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    .line 5
    const v1, 0x7f0d0508

    .line 6
    .line 7
    move-object/from16 v2, p2

    .line 8
    .line 9
    move-object/from16 v3, p3

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, v3, v2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-virtual/range {p0 .. p1}, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->getItem(I)Lcom/narvii/livelayer/category/OnlineCategory;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    iget-object v3, v0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->configHashMap:Ljava/util/HashMap;

    .line 20
    .line 21
    iget-object v4, v2, Lcom/narvii/livelayer/category/OnlineCategory;->topic:Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object v3

    .line 26
    .line 27
    check-cast v3, Lcom/narvii/livelayer/category/OnlineCategoryConfig;

    .line 28
    .line 29
    .line 30
    const v4, 0x7f0a06d5

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object v4

    .line 35
    .line 36
    check-cast v4, Landroid/widget/ImageView;

    .line 37
    .line 38
    .line 39
    invoke-interface {v3}, Lcom/narvii/livelayer/category/OnlineCategoryConfig;->iconId()I

    .line 40
    move-result v5

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 44
    .line 45
    iget-object v4, v0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->textIn:Landroid/view/animation/Animation;

    .line 46
    .line 47
    if-nez v4, :cond_0

    .line 48
    .line 49
    .line 50
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 51
    move-result-object v4

    .line 52
    .line 53
    .line 54
    const v5, 0x7f01005b

    .line 55
    .line 56
    .line 57
    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 58
    move-result-object v4

    .line 59
    .line 60
    iput-object v4, v0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->textIn:Landroid/view/animation/Animation;

    .line 61
    .line 62
    .line 63
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 64
    move-result-object v4

    .line 65
    .line 66
    .line 67
    const v5, 0x7f01005e

    .line 68
    .line 69
    .line 70
    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 71
    move-result-object v4

    .line 72
    .line 73
    iput-object v4, v0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->textOut:Landroid/view/animation/Animation;

    .line 74
    .line 75
    .line 76
    :cond_0
    const v4, 0x7f0a0a5a

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 80
    move-result-object v4

    .line 81
    .line 82
    check-cast v4, Landroid/widget/TextView;

    .line 83
    .line 84
    .line 85
    const v5, 0x7f0a0113

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 89
    move-result-object v6

    .line 90
    .line 91
    check-cast v6, Landroid/animation/ValueAnimator;

    .line 92
    .line 93
    .line 94
    const v7, 0x7f0a0ee1

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 98
    move-result-object v8

    .line 99
    .line 100
    check-cast v8, Ljava/lang/String;

    .line 101
    .line 102
    if-eqz v6, :cond_1

    .line 103
    .line 104
    iget-object v9, v2, Lcom/narvii/livelayer/category/OnlineCategory;->topic:Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    invoke-static {v8, v9}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 108
    move-result v8

    .line 109
    .line 110
    if-nez v8, :cond_1

    .line 111
    .line 112
    .line 113
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->cancel()V

    .line 114
    .line 115
    :cond_1
    iget v8, v2, Lcom/narvii/livelayer/category/OnlineCategory;->userProfileCount:I

    .line 116
    .line 117
    .line 118
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 119
    move-result-object v8

    .line 120
    .line 121
    .line 122
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    .line 124
    iget-object v8, v2, Lcom/narvii/livelayer/category/OnlineCategory;->topic:Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4, v7, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 128
    .line 129
    iget-object v8, v0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->animatedCategoryTopic:Ljava/util/HashSet;

    .line 130
    .line 131
    iget-object v9, v2, Lcom/narvii/livelayer/category/OnlineCategory;->topic:Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 135
    move-result v8

    .line 136
    const/4 v9, 0x1

    .line 137
    .line 138
    if-nez v8, :cond_3

    .line 139
    .line 140
    iget-boolean v8, v0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->isLoaing:Z

    .line 141
    .line 142
    if-nez v8, :cond_3

    .line 143
    .line 144
    const-string v6, ""

    .line 145
    .line 146
    .line 147
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    .line 149
    iget-object v6, v0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->animatedCategoryTopic:Ljava/util/HashSet;

    .line 150
    .line 151
    iget-object v8, v2, Lcom/narvii/livelayer/category/OnlineCategory;->topic:Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v6, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 155
    .line 156
    iget-object v6, v0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->cacheCategoryMap:Ljava/util/HashMap;

    .line 157
    .line 158
    if-eqz v6, :cond_2

    .line 159
    .line 160
    iget-object v8, v2, Lcom/narvii/livelayer/category/OnlineCategory;->topic:Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    move-result-object v6

    .line 165
    .line 166
    check-cast v6, Lcom/narvii/livelayer/category/OnlineCategory;

    .line 167
    .line 168
    if-eqz v6, :cond_2

    .line 169
    .line 170
    iget v6, v6, Lcom/narvii/livelayer/category/OnlineCategory;->userProfileCount:I

    .line 171
    goto :goto_0

    .line 172
    :cond_2
    move v6, v9

    .line 173
    .line 174
    :goto_0
    iget v8, v2, Lcom/narvii/livelayer/category/OnlineCategory;->userProfileCount:I

    .line 175
    .line 176
    .line 177
    filled-new-array {v6, v8}, [I

    .line 178
    move-result-object v8

    .line 179
    .line 180
    .line 181
    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 182
    move-result-object v8

    .line 183
    .line 184
    iget v10, v2, Lcom/narvii/livelayer/category/OnlineCategory;->userProfileCount:I

    .line 185
    sub-int/2addr v10, v6

    .line 186
    .line 187
    .line 188
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    .line 189
    move-result v6

    .line 190
    .line 191
    mul-int/lit8 v6, v6, 0x64

    .line 192
    .line 193
    const/16 v10, 0x320

    .line 194
    .line 195
    .line 196
    invoke-static {v10, v6}, Ljava/lang/Math;->min(II)I

    .line 197
    move-result v6

    .line 198
    int-to-long v10, v6

    .line 199
    .line 200
    .line 201
    invoke-virtual {v8, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 202
    .line 203
    new-instance v6, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$4;

    .line 204
    .line 205
    .line 206
    invoke-direct {v6, v0, v4}, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$4;-><init>(Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;Landroid/widget/TextView;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v8, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v4, v5, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->start()V

    .line 216
    goto :goto_1

    .line 217
    .line 218
    :cond_3
    if-eqz v6, :cond_4

    .line 219
    .line 220
    .line 221
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 222
    move-result v5

    .line 223
    .line 224
    if-nez v5, :cond_5

    .line 225
    .line 226
    :cond_4
    iget v5, v2, Lcom/narvii/livelayer/category/OnlineCategory;->userProfileCount:I

    .line 227
    .line 228
    .line 229
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 230
    move-result-object v5

    .line 231
    .line 232
    .line 233
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    .line 235
    .line 236
    :cond_5
    :goto_1
    const v5, 0x7f0a0707

    .line 237
    .line 238
    .line 239
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 240
    move-result-object v5

    .line 241
    move-object v10, v5

    .line 242
    .line 243
    check-cast v10, Lcom/narvii/widget/NVImageSwitcher;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v10}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 247
    .line 248
    iget-object v5, v0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->imageSwitchFactory:Landroid/widget/ViewSwitcher$ViewFactory;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v10, v5}, Landroid/widget/ViewSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 252
    .line 253
    iget-object v11, v2, Lcom/narvii/livelayer/category/OnlineCategory;->mediaList:Ljava/util/List;

    .line 254
    .line 255
    mul-int/lit8 v5, p1, 0x32

    .line 256
    int-to-long v12, v5

    .line 257
    .line 258
    const-wide/16 v14, 0x1388

    .line 259
    .line 260
    .line 261
    invoke-virtual/range {v10 .. v15}, Lcom/narvii/widget/NVImageSwitcher;->startSwitch(Ljava/util/List;JJ)V

    .line 262
    .line 263
    .line 264
    const v5, 0x7f0a0e9e

    .line 265
    .line 266
    .line 267
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 268
    move-result-object v5

    .line 269
    .line 270
    check-cast v5, Landroid/widget/TextView;

    .line 271
    .line 272
    .line 273
    invoke-interface {v3}, Lcom/narvii/livelayer/category/OnlineCategoryConfig;->titleId()I

    .line 274
    move-result v6

    .line 275
    .line 276
    .line 277
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 278
    .line 279
    .line 280
    const v5, 0x7f0a0a53

    .line 281
    .line 282
    .line 283
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 284
    move-result-object v5

    .line 285
    .line 286
    check-cast v5, Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 287
    .line 288
    iget-object v6, v2, Lcom/narvii/livelayer/category/OnlineCategory;->userProfileList:Ljava/util/LinkedList;

    .line 289
    .line 290
    iget v8, v2, Lcom/narvii/livelayer/category/OnlineCategory;->userProfileCount:I

    .line 291
    .line 292
    .line 293
    invoke-virtual {v5, v6, v8}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setUserList(Ljava/util/List;I)V

    .line 294
    .line 295
    iget-object v6, v2, Lcom/narvii/livelayer/category/OnlineCategory;->topic:Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v5, v7, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 299
    .line 300
    iget-object v6, v0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->dispatchHashMap:Ljava/util/HashMap;

    .line 301
    .line 302
    iget-object v7, v2, Lcom/narvii/livelayer/category/OnlineCategory;->topic:Ljava/lang/String;

    .line 303
    .line 304
    new-instance v8, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$5;

    .line 305
    .line 306
    .line 307
    invoke-direct {v8, v0, v5, v2}, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$5;-><init>(Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;Lcom/narvii/livelayer/LiveLayerOnlineBar;Lcom/narvii/livelayer/category/OnlineCategory;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    .line 312
    new-instance v6, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$6;

    .line 313
    .line 314
    .line 315
    invoke-direct {v6, v0, v1, v4}, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$6;-><init>(Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;Landroid/view/View;Landroid/widget/TextView;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v5, v6}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setOnMemberCountChangedListener(Lcom/narvii/livelayer/LiveLayerOnlineBar$OnMemberCountChangedListener;)V

    .line 319
    .line 320
    .line 321
    const v4, 0x7f0a062a

    .line 322
    .line 323
    .line 324
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 325
    move-result-object v4

    .line 326
    .line 327
    check-cast v4, Lcom/narvii/widget/GradientView;

    .line 328
    .line 329
    .line 330
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 331
    move-result-object v5

    .line 332
    .line 333
    const/high16 v6, 0x41600000    # 14.0f

    .line 334
    .line 335
    .line 336
    invoke-static {v5, v6}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 337
    move-result v5

    .line 338
    float-to-int v5, v5

    .line 339
    .line 340
    .line 341
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 342
    move-result v6

    .line 343
    const/4 v7, 0x7

    .line 344
    const/4 v8, 0x6

    .line 345
    const/4 v10, 0x5

    .line 346
    const/4 v11, 0x4

    .line 347
    const/4 v12, 0x3

    .line 348
    const/4 v13, 0x2

    .line 349
    const/4 v14, 0x0

    .line 350
    .line 351
    const/16 v15, 0x8

    .line 352
    .line 353
    const/16 v16, 0x0

    .line 354
    .line 355
    if-eqz v6, :cond_6

    .line 356
    .line 357
    new-array v6, v15, [F

    .line 358
    .line 359
    aput v16, v6, v14

    .line 360
    .line 361
    aput v16, v6, v9

    .line 362
    int-to-float v5, v5

    .line 363
    .line 364
    aput v5, v6, v13

    .line 365
    .line 366
    aput v5, v6, v12

    .line 367
    .line 368
    aput v5, v6, v11

    .line 369
    .line 370
    aput v5, v6, v10

    .line 371
    .line 372
    aput v16, v6, v8

    .line 373
    .line 374
    aput v16, v6, v7

    .line 375
    goto :goto_2

    .line 376
    .line 377
    :cond_6
    new-array v6, v15, [F

    .line 378
    int-to-float v5, v5

    .line 379
    .line 380
    aput v5, v6, v14

    .line 381
    .line 382
    aput v5, v6, v9

    .line 383
    .line 384
    aput v16, v6, v13

    .line 385
    .line 386
    aput v16, v6, v12

    .line 387
    .line 388
    aput v16, v6, v11

    .line 389
    .line 390
    aput v16, v6, v10

    .line 391
    .line 392
    aput v5, v6, v8

    .line 393
    .line 394
    aput v5, v6, v7

    .line 395
    .line 396
    .line 397
    :goto_2
    invoke-virtual {v4, v6}, Lcom/narvii/widget/GradientView;->setRadius([F)V

    .line 398
    .line 399
    .line 400
    const v5, 0x20ffffff

    .line 401
    .line 402
    const/high16 v6, 0x64000000

    .line 403
    .line 404
    .line 405
    invoke-virtual {v4, v5, v6}, Lcom/narvii/widget/GradientView;->setColor(II)V

    .line 406
    .line 407
    .line 408
    invoke-interface {v3}, Lcom/narvii/livelayer/category/OnlineCategoryConfig;->color()I

    .line 409
    move-result v3

    .line 410
    .line 411
    .line 412
    invoke-virtual {v4, v3}, Lcom/narvii/widget/GradientView;->setBgColor(I)V

    .line 413
    .line 414
    iget v2, v2, Lcom/narvii/livelayer/category/OnlineCategory;->userProfileCount:I

    .line 415
    .line 416
    .line 417
    invoke-direct {v0, v1, v2}, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->resetCellHeight(Landroid/view/View;I)V

    .line 418
    .line 419
    .line 420
    const v2, 0x7f0a0c4f

    .line 421
    .line 422
    .line 423
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 424
    move-result-object v2

    .line 425
    .line 426
    iget-object v3, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 427
    .line 428
    .line 429
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 430
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

    iget-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->isLoaing:Z

    return v0
.end method

.method public onAttach()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 4
    .line 5
    const-string v0, "config"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 15
    .line 16
    sget-object v0, Lcom/narvii/livelayer/category/OnlineCategoryManager;->configList:Ljava/util/List;

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v1

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    check-cast v1, Lcom/narvii/livelayer/category/OnlineCategoryConfig;

    .line 33
    .line 34
    iget-object v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->configHashMap:Ljava/util/HashMap;

    .line 35
    .line 36
    iget-object v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->liveLayerService:Lcom/narvii/livelayer/LiveLayerService;

    .line 37
    .line 38
    .line 39
    invoke-interface {v1}, Lcom/narvii/livelayer/category/OnlineCategoryConfig;->topicName()Ljava/lang/String;

    .line 40
    move-result-object v4

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v4}, Lcom/narvii/livelayer/LiveLayerService;->getNdtopic(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    move-result-object v3

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :cond_0
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->requestRunnable:Ljava/lang/Runnable;

    .line 51
    .line 52
    .line 53
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 54
    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onDetach()V

    .line 4
    .line 5
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->requestRunnable:Ljava/lang/Runnable;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->unsubscribeLiveLayer()V

    .line 14
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 7
    move-result p3

    .line 8
    .line 9
    .line 10
    const p4, 0x7f0a0c4f

    .line 11
    .line 12
    if-ne p3, p4, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p2}, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->getItem(I)Lcom/narvii/livelayer/category/OnlineCategory;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    iget-object p3, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->configHashMap:Ljava/util/HashMap;

    .line 19
    .line 20
    iget-object p2, p2, Lcom/narvii/livelayer/category/OnlineCategory;->topic:Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object p2

    .line 25
    .line 26
    check-cast p2, Lcom/narvii/livelayer/category/OnlineCategoryConfig;

    .line 27
    .line 28
    .line 29
    invoke-interface {p2}, Lcom/narvii/livelayer/category/OnlineCategoryConfig;->targetFragment()Ljava/lang/Class;

    .line 30
    move-result-object p3

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p3}, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->gotoFragment(Ljava/lang/Class;)V

    .line 34
    .line 35
    sget-object p3, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    .line 36
    .line 37
    .line 38
    invoke-static {p0, p3}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 39
    move-result-object p3

    .line 40
    .line 41
    const-string p4, "contentType"

    .line 42
    .line 43
    .line 44
    invoke-interface {p2}, Lcom/narvii/livelayer/category/OnlineCategoryConfig;->topicName()Ljava/lang/String;

    .line 45
    move-result-object p2

    .line 46
    .line 47
    .line 48
    invoke-virtual {p3, p4, p2}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 49
    move-result-object p2

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 53
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

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->refreshMonitorStart(ILcom/narvii/util/Callback;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->sendRequest()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->refreshMonitorEnd()V

    .line 10
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

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    new-instance p1, Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->cachedList:Ljava/util/List;

    .line 15
    .line 16
    new-instance v0, Ljava/util/HashMap;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 20
    .line 21
    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->cacheCategoryMap:Ljava/util/HashMap;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->cachedList:Ljava/util/List;

    .line 24
    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    move-result v1

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    check-cast v1, Lcom/narvii/livelayer/category/OnlineCategory;

    .line 40
    .line 41
    iget-object v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->cacheCategoryMap:Ljava/util/HashMap;

    .line 42
    .line 43
    iget-object v3, v1, Lcom/narvii/livelayer/category/OnlineCategory;->topic:Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    goto :goto_0

    .line 48
    .line 49
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 50
    .line 51
    .line 52
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 53
    .line 54
    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->liveLayerList:Ljava/util/List;

    .line 55
    const/4 p1, 0x0

    .line 56
    .line 57
    iput-boolean p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->isLoaing:Z

    .line 58
    .line 59
    .line 60
    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    .line 61
    move-result p1

    .line 62
    .line 63
    iput-boolean p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->contentEmpty:Z

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 67
    return-void
.end method
