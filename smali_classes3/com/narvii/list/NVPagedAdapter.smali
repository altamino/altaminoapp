.class public abstract Lcom/narvii/list/NVPagedAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "NVPagedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/narvii/model/NVObject;",
        "E:",
        "Lcom/narvii/model/api/ListResponse<",
        "+TT;>;>",
        "Lcom/narvii/list/NVAdapter;"
    }
.end annotation


# static fields
.field protected static final DIRECTION_MIDDLE:I = 0x3

.field protected static final DIRECTION_NEXT:I = 0x1

.field protected static final DIRECTION_NONE:I = 0x0

.field protected static final DIRECTION_PREV:I = -0x1

.field protected static final DIRECTION_REFRESH:I = 0x2

.field public static final ERROR:Lcom/narvii/util/Tag;

.field public static final LIST_END:Lcom/narvii/util/Tag;

.field public static final LOADING:Lcom/narvii/util/Tag;

.field public static final LOAD_MORE:Lcom/narvii/util/Tag;

.field public static final PAGINATION_TYPE_CUSTOM:I = -0x1

.field public static final PAGINATION_TYPE_OFFSET:I = 0x0

.field public static final PAGINATION_TYPE_SINGLE_PAGE:I = -0x2

.field public static final PAGINATION_TYPE_TOKEN:I = 0x1

.field public static final REFRESH_FLAG_REPLACE:I = 0x200

.field private static final REQ_MIDDLE_OBJ_ID:Lcom/narvii/util/Tag;

.field private static final REQ_TAG_FROM_START:Lcom/narvii/util/Tag;

.field private static final REQ_TAG_REFRESH_FLAG:Lcom/narvii/util/Tag;

.field private static final REQ_TAG_SIZE:Lcom/narvii/util/Tag;

.field private static final REQ_TAG_START:Lcom/narvii/util/Tag;


# instance fields
.field public _errorMsg:Ljava/lang/String;

.field protected _isEnd:Z

.field protected _list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected _nextPageToken:Ljava/lang/String;

.field protected _prevPageToken:Ljava/lang/String;

.field protected _refreshPageToken:Ljava/lang/String;

.field protected _start:I

.field protected _stopTime:Ljava/lang/String;

.field protected attached:Z

.field private datePageHelper:Lcom/narvii/list/DatePageHelper;

.field private direction:I

.field protected paginationType:I

.field protected refreshFlag:I

.field private request:Lcom/narvii/util/http/ApiRequest;

.field private requestCallback:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final requestListener:Lcom/narvii/util/http/ApiResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/http/ApiResponseListener<",
            "TE;>;"
        }
    .end annotation
.end field

.field private requestTime:J

.field private requestWaitTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    new-instance v0, Lcom/narvii/util/Tag;

    const-string v1, "loading"

    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    .line 45
    new-instance v0, Lcom/narvii/util/Tag;

    const-string v1, "loadMore"

    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/list/NVPagedAdapter;->LOAD_MORE:Lcom/narvii/util/Tag;

    .line 46
    new-instance v0, Lcom/narvii/util/Tag;

    const-string v1, "listEnd"

    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    .line 47
    new-instance v0, Lcom/narvii/util/Tag;

    const-string v1, "error"

    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/list/NVPagedAdapter;->ERROR:Lcom/narvii/util/Tag;

    .line 49
    new-instance v0, Lcom/narvii/util/Tag;

    const-string v1, "reqStart"

    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/list/NVPagedAdapter;->REQ_TAG_START:Lcom/narvii/util/Tag;

    .line 50
    new-instance v0, Lcom/narvii/util/Tag;

    const-string v1, "reqSize"

    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/list/NVPagedAdapter;->REQ_TAG_SIZE:Lcom/narvii/util/Tag;

    .line 51
    new-instance v0, Lcom/narvii/util/Tag;

    const-string v1, "reqFromStart"

    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/list/NVPagedAdapter;->REQ_TAG_FROM_START:Lcom/narvii/util/Tag;

    .line 52
    new-instance v0, Lcom/narvii/util/Tag;

    const-string v1, "reqRefreshFlag"

    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/list/NVPagedAdapter;->REQ_TAG_REFRESH_FLAG:Lcom/narvii/util/Tag;

    .line 54
    new-instance v0, Lcom/narvii/util/Tag;

    const-string v1, "reqMiddleObjId"

    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/list/NVPagedAdapter;->REQ_MIDDLE_OBJ_ID:Lcom/narvii/util/Tag;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    const/4 v0, 0x0

    .line 104
    invoke-direct {p0, p1, v0}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;I)V
    .locals 1

    .line 99
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 953
    new-instance p1, Lcom/narvii/list/NVPagedAdapter$1;

    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->responseType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/narvii/list/NVPagedAdapter$1;-><init>(Lcom/narvii/list/NVPagedAdapter;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->requestListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 100
    iput p2, p0, Lcom/narvii/list/NVPagedAdapter;->paginationType:I

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/list/NVPagedAdapter;)J
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/narvii/list/NVPagedAdapter;->requestWaitTime:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/narvii/list/NVPagedAdapter;)J
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/narvii/list/NVPagedAdapter;->requestTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/narvii/list/NVPagedAdapter;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/narvii/list/NVPagedAdapter;->direction:I

    return p0
.end method

.method static synthetic access$202(Lcom/narvii/list/NVPagedAdapter;I)I
    .locals 0

    .line 40
    iput p1, p0, Lcom/narvii/list/NVPagedAdapter;->direction:I

    return p1
.end method

.method static synthetic access$300(Lcom/narvii/list/NVPagedAdapter;)Lcom/narvii/util/Callback;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/narvii/list/NVPagedAdapter;->requestCallback:Lcom/narvii/util/Callback;

    return-object p0
.end method

.method static synthetic access$302(Lcom/narvii/list/NVPagedAdapter;Lcom/narvii/util/Callback;)Lcom/narvii/util/Callback;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->requestCallback:Lcom/narvii/util/Callback;

    return-object p1
.end method

.method static synthetic access$402(Lcom/narvii/list/NVPagedAdapter;Lcom/narvii/util/http/ApiRequest;)Lcom/narvii/util/http/ApiRequest;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    return-object p1
.end method

.method protected static mergeTop(Ljava/util/ArrayList;Ljava/util/List;[Z)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/narvii/model/NVObject;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;[Z)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    .line 875
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 876
    aput-boolean v2, p2, v1

    .line 877
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    .line 880
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 881
    aput-boolean v2, p2, v1

    .line 882
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 885
    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_5

    .line 886
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    .line 887
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/NVObject;

    const/4 v4, 0x0

    .line 888
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_9

    .line 889
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/model/NVObject;

    .line 890
    invoke-virtual {v3}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 891
    new-instance p2, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v0, v4

    add-int/2addr v1, v0

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 893
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/2addr v4, v2

    .line 894
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v4, p1, :cond_3

    .line 895
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return-object p2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 901
    :cond_5
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/NVObject;

    const/4 v3, 0x0

    .line 902
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_9

    .line 903
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/NVObject;

    .line 904
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    if-nez v3, :cond_6

    return-object p0

    .line 908
    :cond_6
    new-instance p2, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v3

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_3
    if-ge v1, v3, :cond_7

    .line 910
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 912
    :cond_7
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p2

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 917
    :cond_9
    aput-boolean v2, p2, v1

    .line 918
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method private replaceObject(ILcom/narvii/model/NVObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 303
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/NVObject;

    const/4 v1, 0x0

    .line 305
    instance-of v2, v0, Lcom/narvii/model/StrategyObject;

    if-eqz v2, :cond_1

    instance-of v2, p2, Lcom/narvii/model/StrategyObject;

    if-eqz v2, :cond_1

    .line 306
    check-cast v0, Lcom/narvii/model/StrategyObject;

    invoke-interface {v0}, Lcom/narvii/model/StrategyObject;->getStrategyInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 309
    :try_start_0
    invoke-virtual {p2}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object v2

    .line 310
    move-object v3, v2

    check-cast v3, Lcom/narvii/model/StrategyObject;

    invoke-interface {v3, v0}, Lcom/narvii/model/StrategyObject;->setStrategyInfo(Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "replace object"

    .line 314
    invoke-static {v2, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 319
    iget-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method


# virtual methods
.method protected abortRequests()V
    .locals 4

    const-string v0, "api"

    .line 937
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 938
    iget-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 939
    iget-object v3, p0, Lcom/narvii/list/NVPagedAdapter;->requestListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v0, v1, v3}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 940
    iput-object v2, p0, Lcom/narvii/list/NVPagedAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    .line 942
    :cond_0
    iget-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->requestCallback:Lcom/narvii/util/Callback;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 943
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    .line 945
    iput v0, p0, Lcom/narvii/list/NVPagedAdapter;->direction:I

    .line 946
    iput v0, p0, Lcom/narvii/list/NVPagedAdapter;->refreshFlag:I

    .line 947
    iput-object v2, p0, Lcom/narvii/list/NVPagedAdapter;->requestCallback:Lcom/narvii/util/Callback;

    const-wide/16 v0, 0x0

    .line 948
    iput-wide v0, p0, Lcom/narvii/list/NVPagedAdapter;->requestTime:J

    .line 949
    iput-wide v0, p0, Lcom/narvii/list/NVPagedAdapter;->requestWaitTime:J

    .line 950
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public addAllFirst(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 335
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/NVObject;

    .line 336
    iget-object v2, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_0

    .line 337
    iget-object v2, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 341
    :cond_1
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public autoLoadNextPage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public createListEndItem(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .locals 5

    .line 1188
    sget v0, Lcom/narvii/lib/R$layout;->normal_list_end_item:I

    const-string v1, "listEnd"

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    .line 1190
    sget p2, Lcom/narvii/lib/R$id;->icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 1191
    sget v0, Lcom/narvii/lib/R$id;->text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez p3, :cond_0

    .line 1193
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1194
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v1, Lcom/narvii/lib/R$string;->_empty:I

    invoke-virtual {p3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    .line 1196
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1197
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/narvii/lib/R$string;->normal_end_n_items:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 1198
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v4, v1

    .line 1197
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const/4 p3, -0x1

    if-eqz v0, :cond_3

    .line 1202
    iget-boolean v1, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isDarkNVTheme()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const v1, -0x99999a

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, -0x1

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    if-eqz p2, :cond_6

    .line 1206
    iget-boolean v0, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isDarkNVTheme()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    const p3, -0x777778

    :cond_5
    :goto_3
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_6
    return-object p1
.end method

.method public createLoadMoreItem(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 1178
    sget v0, Lcom/narvii/lib/R$layout;->normal_load_more_list_item:I

    const-string v1, "loadMore"

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    .line 1180
    sget p2, Lcom/narvii/lib/R$id;->text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_2

    .line 1182
    iget-boolean v0, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isDarkNVTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, -0xbbbbbc

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    return-object p1
.end method

.method public createLoadingItem(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 3

    .line 1164
    sget v0, Lcom/narvii/lib/R$layout;->normal_loading_list_item:I

    const-string v1, "loading"

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    .line 1166
    sget p2, Lcom/narvii/lib/R$id;->spinner:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/SpinningView;

    const v0, -0xbbbbbc

    const/4 v1, -0x1

    if-eqz p2, :cond_2

    .line 1168
    iget-boolean v2, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isDarkNVTheme()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const v2, -0xbbbbbc

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, -0x1

    :goto_1
    invoke-virtual {p2, v2}, Lcom/narvii/widget/SpinningView;->setSpinColor(I)V

    .line 1170
    :cond_2
    sget p2, Lcom/narvii/lib/R$id;->text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_5

    .line 1172
    iget-boolean v2, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isDarkNVTheme()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const/4 v0, -0x1

    :cond_4
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_5
    return-object p1
.end method

.method protected abstract createRequest(Z)Lcom/narvii/util/http/ApiRequest;
.end method

.method protected dataDeserializer()Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract dataType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end method

.method public editList(Lcom/narvii/notification/Notification;Z)V
    .locals 3

    .line 249
    iget-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 252
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->dataType()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 253
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/narvii/model/NVObject;

    .line 254
    iget-object p1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "new"

    if-ne p1, v2, :cond_2

    .line 255
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->filterDuplicate()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 256
    iget-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_1

    .line 258
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void

    .line 262
    :cond_1
    iget-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 263
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_1

    :cond_2
    const-string v2, "edit"

    if-ne p1, v2, :cond_6

    .line 265
    iget-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_5

    if-eqz p2, :cond_3

    .line 268
    iget-object p2, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 269
    iget-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 270
    iget p1, p0, Lcom/narvii/list/NVPagedAdapter;->paginationType:I

    if-nez p1, :cond_4

    .line 271
    iget p1, p0, Lcom/narvii/list/NVPagedAdapter;->_start:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/narvii/list/NVPagedAdapter;->_start:I

    goto :goto_0

    .line 274
    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/narvii/list/NVPagedAdapter;->replaceObject(ILcom/narvii/model/NVObject;)V

    .line 276
    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_9

    .line 279
    iget-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 280
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_1

    :cond_6
    const-string p2, "update"

    if-ne p1, p2, :cond_7

    .line 284
    iget-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_9

    .line 286
    invoke-direct {p0, p1, v0}, Lcom/narvii/list/NVPagedAdapter;->replaceObject(ILcom/narvii/model/NVObject;)V

    .line 287
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_1

    :cond_7
    const-string p2, "delete"

    if-ne p1, p2, :cond_9

    .line 290
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVPagedAdapter;->removeIdEqualsObject(Lcom/narvii/model/NVObject;)I

    move-result p1

    .line 291
    iget p2, p0, Lcom/narvii/list/NVPagedAdapter;->paginationType:I

    if-nez p2, :cond_8

    .line 292
    iget p2, p0, Lcom/narvii/list/NVPagedAdapter;->_start:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/narvii/list/NVPagedAdapter;->_start:I

    .line 294
    :cond_8
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_9
    :goto_1
    return-void
.end method

.method public errorMessage()Ljava/lang/String;
    .locals 2

    .line 191
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_errorMsg:Ljava/lang/String;

    :cond_1
    :goto_0
    return-object v1
.end method

.method protected filterDuplicate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected filterResponseList(Ljava/util/List;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;I)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 693
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->filterDuplicate()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 694
    new-instance p2, Lcom/narvii/util/FilterHelper;

    invoke-direct {p2, p0}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->filterDuplicated(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 696
    :cond_0
    new-instance p2, Lcom/narvii/util/FilterHelper;

    invoke-direct {p2, p0}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {p2, p1}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getCount()I
    .locals 2

    .line 1019
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1020
    :goto_0
    iget-boolean v1, p0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    if-eqz v1, :cond_1

    .line 1021
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVPagedAdapter;->showListEnd(I)Z

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getDataClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 348
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->dataType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    .line 1029
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge p1, v0, :cond_1

    if-ltz p1, :cond_1

    .line 1031
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1033
    :cond_1
    iget-boolean p1, p0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    if-eqz p1, :cond_5

    .line 1034
    iget p1, p0, Lcom/narvii/list/NVPagedAdapter;->refreshFlag:I

    and-int/lit16 p1, p1, 0x100

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-nez v1, :cond_4

    .line 1035
    iget p1, p0, Lcom/narvii/list/NVPagedAdapter;->direction:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    goto :goto_1

    :cond_3
    sget-object p1, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    goto :goto_2

    :cond_4
    :goto_1
    sget-object p1, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    :goto_2
    return-object p1

    .line 1037
    :cond_5
    iget-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_errorMsg:Ljava/lang/String;

    if-eqz p1, :cond_6

    .line 1038
    sget-object p1, Lcom/narvii/list/NVPagedAdapter;->ERROR:Lcom/narvii/util/Tag;

    return-object p1

    .line 1040
    :cond_6
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->autoLoadNextPage()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1041
    sget-object p1, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    return-object p1

    .line 1043
    :cond_7
    iget-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    if-nez p1, :cond_9

    if-nez v0, :cond_8

    iget-boolean p1, p0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    if-nez p1, :cond_8

    goto :goto_3

    .line 1046
    :cond_8
    sget-object p1, Lcom/narvii/list/NVPagedAdapter;->LOAD_MORE:Lcom/narvii/util/Tag;

    return-object p1

    .line 1044
    :cond_9
    :goto_3
    sget-object p1, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 1051
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 1052
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    if-ne p1, v0, :cond_0

    .line 1053
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0

    :cond_0
    if-nez p1, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 1055
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long v0, p1

    :goto_0
    return-wide v0
.end method

.method protected abstract getItemType(Ljava/lang/Object;)I
.end method

.method protected abstract getItemTypeCount()I
.end method

.method protected abstract getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1060
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1063
    :cond_0
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 1065
    :cond_1
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->LOAD_MORE:Lcom/narvii/util/Tag;

    if-ne p1, v0, :cond_2

    const/4 p1, 0x2

    return p1

    .line 1067
    :cond_2
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    if-ne p1, v0, :cond_3

    const/4 p1, 0x3

    return p1

    .line 1069
    :cond_3
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->ERROR:Lcom/narvii/util/Tag;

    if-ne p1, v0, :cond_4

    const/4 p1, 0x4

    return p1

    .line 1072
    :cond_4
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->getItemType(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_5

    const/4 p1, -0x1

    goto :goto_0

    :cond_5
    add-int/lit8 p1, p1, 0x5

    :goto_0
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 1095
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    const v1, 0x1020014

    const v2, 0x1090003

    if-nez v0, :cond_1

    .line 1097
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".getItem("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") returns null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 1099
    invoke-virtual {p0, v2, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 1101
    sget-boolean p2, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-eqz p2, :cond_0

    .line 1102
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const-string p3, "getItem() returns null"

    .line 1103
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p1

    .line 1106
    :cond_1
    sget-object v3, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    const/4 v4, 0x1

    if-ne v0, v3, :cond_2

    .line 1107
    invoke-virtual {p0, v4}, Lcom/narvii/list/NVPagedAdapter;->loadNextPage(Z)V

    .line 1108
    invoke-virtual {p0, p3, p2}, Lcom/narvii/list/NVPagedAdapter;->createLoadingItem(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 1109
    :cond_2
    sget-object v3, Lcom/narvii/list/NVPagedAdapter;->LOAD_MORE:Lcom/narvii/util/Tag;

    if-ne v0, v3, :cond_3

    .line 1110
    invoke-virtual {p0, p3, p2}, Lcom/narvii/list/NVPagedAdapter;->createLoadMoreItem(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 1111
    :cond_3
    sget-object v3, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    if-ne v0, v3, :cond_5

    .line 1112
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 1113
    :goto_0
    invoke-virtual {p0, p3, p2, p1}, Lcom/narvii/list/NVPagedAdapter;->createListEndItem(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 1114
    :cond_5
    sget-object v3, Lcom/narvii/list/NVPagedAdapter;->ERROR:Lcom/narvii/util/Tag;

    if-ne v0, v3, :cond_6

    .line 1115
    iget-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_errorMsg:Ljava/lang/String;

    invoke-virtual {p0, p3, p2, p1}, Lcom/narvii/list/NVAdapter;->createErrorItem(Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 1117
    :cond_6
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->getCount()I

    move-result v3

    add-int/lit8 v5, v3, -0x5

    sub-int/2addr v5, v4

    if-lt p1, v5, :cond_7

    sub-int/2addr v3, v4

    .line 1118
    invoke-virtual {p0, v3}, Lcom/narvii/list/NVPagedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    sget-object v5, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    if-ne v3, v5, :cond_7

    .line 1119
    invoke-virtual {p0, v4}, Lcom/narvii/list/NVPagedAdapter;->loadNextPage(Z)V

    .line 1121
    :cond_7
    invoke-virtual {p0, v0, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_9

    .line 1123
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".getItemView("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") returns null for object "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 1125
    invoke-virtual {p0, v2, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 1127
    sget-boolean p2, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-eqz p2, :cond_8

    .line 1128
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const-string p3, "getItemView() returns null"

    .line 1129
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    return-object p1

    .line 1133
    :cond_9
    sget p1, Lcom/narvii/lib/R$id;->_not_set_cell_tag:I

    invoke-virtual {v3, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq p1, p2, :cond_a

    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->tagCellAuto()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1134
    invoke-virtual {p0, v3, v0}, Lcom/narvii/list/NVAdapter;->tagCellForLog(Landroid/view/View;Ljava/lang/Object;)V

    :cond_a
    return-object v3
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 1079
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->getItemTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    return v0
.end method

.method public hasPrevPage()Z
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->_prevPageToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected ignoreStopTime()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isAttached()Z
    .locals 1

    .line 612
    iget-boolean v0, p0, Lcom/narvii/list/NVPagedAdapter;->attached:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 187
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public isEnd()Z
    .locals 1

    .line 225
    iget-boolean v0, p0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    return v0
.end method

.method public isListShown()Z
    .locals 1

    .line 182
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->datePageHelper:Lcom/narvii/list/DatePageHelper;

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v0}, Lcom/narvii/list/DatePageHelper;->getList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 216
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadFinishEmptyOrError()Z
    .locals 1

    .line 1212
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->isEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->errorMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loadMiddlePage(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/Callback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_3

    .line 576
    iget v0, p0, Lcom/narvii/list/NVPagedAdapter;->paginationType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v0, "api"

    .line 580
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    const/4 v1, 0x0

    .line 581
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVPagedAdapter;->createRequest(Z)Lcom/narvii/util/http/ApiRequest;

    move-result-object v2

    if-nez v2, :cond_1

    .line 583
    iput v1, p0, Lcom/narvii/list/NVPagedAdapter;->direction:I

    return-void

    .line 586
    :cond_1
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest;->edit()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v3

    .line 587
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->pageSize()I

    move-result v4

    const-string v5, "pagingType"

    const-string v6, "t"

    .line 588
    invoke-virtual {v3, v5, v6}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v5, "pageToken"

    .line 589
    invoke-virtual {v3, v5, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 590
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v5, "size"

    invoke-virtual {v3, v5, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 591
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest;->getTags()Ljava/util/HashMap;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 592
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest;->getTags()Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 593
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v5, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    goto :goto_0

    .line 596
    :cond_2
    sget-object p2, Lcom/narvii/list/NVPagedAdapter;->REQ_MIDDLE_OBJ_ID:Lcom/narvii/util/Tag;

    invoke-virtual {v3, p2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 597
    sget-object p1, Lcom/narvii/list/NVPagedAdapter;->REQ_TAG_SIZE:Lcom/narvii/util/Tag;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 598
    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    const/4 p1, 0x3

    .line 600
    iput p1, p0, Lcom/narvii/list/NVPagedAdapter;->direction:I

    .line 601
    iput v1, p0, Lcom/narvii/list/NVPagedAdapter;->refreshFlag:I

    .line 602
    iput-object p3, p0, Lcom/narvii/list/NVPagedAdapter;->requestCallback:Lcom/narvii/util/Callback;

    .line 603
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/narvii/list/NVPagedAdapter;->requestTime:J

    const-wide/16 p1, 0x0

    .line 604
    iput-wide p1, p0, Lcom/narvii/list/NVPagedAdapter;->requestWaitTime:J

    .line 606
    iget-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    iget-object p2, p0, Lcom/narvii/list/NVPagedAdapter;->requestListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 608
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_3
    :goto_1
    return-void
.end method

.method public loadNextPage(Z)V
    .locals 10

    .line 458
    iget-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    if-eqz p1, :cond_d

    iget-boolean p1, p0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    if-eqz p1, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 p1, 0x0

    .line 461
    iput-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_errorMsg:Ljava/lang/String;

    const-string v0, "api"

    .line 462
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 464
    iget v1, p0, Lcom/narvii/list/NVPagedAdapter;->paginationType:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    .line 465
    iget v1, p0, Lcom/narvii/list/NVPagedAdapter;->_start:I

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    if-ne v1, v3, :cond_3

    .line 467
    iget-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_nextPageToken:Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_3
    const/4 v4, -0x2

    if-ne v1, v4, :cond_5

    :cond_4
    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    .line 471
    :cond_5
    iget-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 473
    :goto_1
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVPagedAdapter;->createRequest(Z)Lcom/narvii/util/http/ApiRequest;

    move-result-object v4

    if-nez v4, :cond_6

    .line 475
    iput-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    goto/16 :goto_3

    .line 476
    :cond_6
    iget v5, p0, Lcom/narvii/list/NVPagedAdapter;->paginationType:I

    const-string v6, "size"

    if-nez v5, :cond_8

    .line 477
    invoke-virtual {v4}, Lcom/narvii/util/http/ApiRequest;->edit()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v4

    .line 478
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->pageSize()I

    move-result v5

    .line 479
    iget v7, p0, Lcom/narvii/list/NVPagedAdapter;->_start:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "start"

    invoke-virtual {v4, v8, v7}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 480
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 481
    iget-object v6, p0, Lcom/narvii/list/NVPagedAdapter;->_stopTime:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->ignoreStopTime()Z

    move-result v6

    if-nez v6, :cond_7

    .line 482
    iget-object v6, p0, Lcom/narvii/list/NVPagedAdapter;->_stopTime:Ljava/lang/String;

    const-string v7, "stoptime"

    invoke-virtual {v4, v7, v6}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 484
    :cond_7
    sget-object v6, Lcom/narvii/list/NVPagedAdapter;->REQ_TAG_START:Lcom/narvii/util/Tag;

    iget v7, p0, Lcom/narvii/list/NVPagedAdapter;->_start:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 485
    sget-object v6, Lcom/narvii/list/NVPagedAdapter;->REQ_TAG_FROM_START:Lcom/narvii/util/Tag;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v6, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 486
    sget-object v1, Lcom/narvii/list/NVPagedAdapter;->REQ_TAG_SIZE:Lcom/narvii/util/Tag;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 487
    invoke-virtual {v4}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    goto :goto_3

    :cond_8
    if-ne v5, v3, :cond_b

    .line 489
    invoke-virtual {v4}, Lcom/narvii/util/http/ApiRequest;->edit()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v5

    .line 490
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->pageSize()I

    move-result v7

    const-string v8, "pagingType"

    const-string v9, "t"

    .line 491
    invoke-virtual {v5, v8, v9}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 492
    iget-object v8, p0, Lcom/narvii/list/NVPagedAdapter;->_nextPageToken:Ljava/lang/String;

    if-eqz v8, :cond_9

    const-string v9, "pageToken"

    .line 493
    invoke-virtual {v5, v9, v8}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 495
    :cond_9
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 496
    invoke-virtual {v4}, Lcom/narvii/util/http/ApiRequest;->getTags()Ljava/util/HashMap;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 497
    invoke-virtual {v4}, Lcom/narvii/util/http/ApiRequest;->getTags()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 498
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    goto :goto_2

    .line 501
    :cond_a
    sget-object v4, Lcom/narvii/list/NVPagedAdapter;->REQ_TAG_FROM_START:Lcom/narvii/util/Tag;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v5, v4, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 502
    sget-object v1, Lcom/narvii/list/NVPagedAdapter;->REQ_TAG_SIZE:Lcom/narvii/util/Tag;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v1, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 503
    invoke-virtual {v5}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    goto :goto_3

    .line 505
    :cond_b
    iput-object v4, p0, Lcom/narvii/list/NVPagedAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    .line 507
    :goto_3
    iput v2, p0, Lcom/narvii/list/NVPagedAdapter;->refreshFlag:I

    .line 508
    iput-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->requestCallback:Lcom/narvii/util/Callback;

    .line 509
    iget-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    const-wide/16 v4, 0x0

    if-nez p1, :cond_c

    .line 510
    iput v2, p0, Lcom/narvii/list/NVPagedAdapter;->direction:I

    .line 511
    iput-wide v4, p0, Lcom/narvii/list/NVPagedAdapter;->requestTime:J

    .line 512
    iput-wide v4, p0, Lcom/narvii/list/NVPagedAdapter;->requestWaitTime:J

    const-string p1, "loadNextPage pending..."

    .line 513
    invoke-static {p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;)V

    goto :goto_4

    .line 515
    :cond_c
    iput v3, p0, Lcom/narvii/list/NVPagedAdapter;->direction:I

    .line 516
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/narvii/list/NVPagedAdapter;->requestTime:J

    .line 517
    iput-wide v4, p0, Lcom/narvii/list/NVPagedAdapter;->requestWaitTime:J

    .line 518
    iget-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    iget-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->requestListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 520
    :goto_4
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_d
    :goto_5
    return-void
.end method

.method public loadPrevPage(Lcom/narvii/util/Callback;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 524
    iget-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->_prevPageToken:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 527
    :cond_0
    iget v0, p0, Lcom/narvii/list/NVPagedAdapter;->paginationType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    const-string v0, "api"

    .line 531
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 532
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVPagedAdapter;->createRequest(Z)Lcom/narvii/util/http/ApiRequest;

    move-result-object v3

    if-nez v3, :cond_1

    .line 534
    iput v1, p0, Lcom/narvii/list/NVPagedAdapter;->direction:I

    const-string p1, "loadPrevPage pending..."

    .line 535
    invoke-static {p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;)V

    return v1

    .line 539
    :cond_1
    iget-object v4, p0, Lcom/narvii/list/NVPagedAdapter;->requestCallback:Lcom/narvii/util/Callback;

    if-eqz v4, :cond_2

    const/4 v5, 0x2

    .line 540
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 543
    :cond_2
    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest;->edit()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v4

    .line 544
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->pageSize()I

    move-result v5

    const-string v6, "pagingType"

    const-string v7, "t"

    .line 545
    invoke-virtual {v4, v6, v7}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 546
    iget-object v6, p0, Lcom/narvii/list/NVPagedAdapter;->_prevPageToken:Ljava/lang/String;

    const-string v7, "pageToken"

    invoke-virtual {v4, v7, v6}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 547
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "size"

    invoke-virtual {v4, v7, v6}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 548
    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest;->getTags()Ljava/util/HashMap;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 549
    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest;->getTags()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 550
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v7, v6}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    goto :goto_0

    .line 553
    :cond_3
    sget-object v3, Lcom/narvii/list/NVPagedAdapter;->REQ_TAG_FROM_START:Lcom/narvii/util/Tag;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v3, v6}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 554
    sget-object v3, Lcom/narvii/list/NVPagedAdapter;->REQ_TAG_SIZE:Lcom/narvii/util/Tag;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 555
    invoke-virtual {v4}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v3

    iput-object v3, p0, Lcom/narvii/list/NVPagedAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    .line 557
    iget-object v3, p0, Lcom/narvii/list/NVPagedAdapter;->_prevPageToken:Ljava/lang/String;

    if-nez v3, :cond_4

    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    const/4 v3, -0x1

    :goto_1
    iput v3, p0, Lcom/narvii/list/NVPagedAdapter;->direction:I

    .line 558
    iput v1, p0, Lcom/narvii/list/NVPagedAdapter;->refreshFlag:I

    .line 559
    iput-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->requestCallback:Lcom/narvii/util/Callback;

    .line 560
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/narvii/list/NVPagedAdapter;->requestTime:J

    const-wide/16 v3, 0x0

    .line 561
    iput-wide v3, p0, Lcom/narvii/list/NVPagedAdapter;->requestWaitTime:J

    .line 563
    iget-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    iget-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->requestListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 565
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return v2

    .line 528
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "only token pagination is supported!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public onAttach()V
    .locals 3

    const/4 v0, 0x1

    .line 135
    iput-boolean v0, p0, Lcom/narvii/list/NVPagedAdapter;->attached:Z

    .line 136
    iget-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 138
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 140
    :cond_1
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    if-eqz v1, :cond_2

    .line 142
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    goto :goto_1

    .line 143
    :cond_2
    iget v1, p0, Lcom/narvii/list/NVPagedAdapter;->_start:I

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    if-nez v1, :cond_3

    .line 144
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVPagedAdapter;->loadNextPage(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onErrorRetry()V
    .locals 1

    const/4 v0, 0x0

    .line 196
    iput-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->_errorMsg:Ljava/lang/String;

    const/4 v0, 0x0

    .line 197
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVPagedAdapter;->loadNextPage(Z)V

    return-void
.end method

.method protected onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V
    .locals 0

    const/4 p1, 0x1

    if-eq p4, p1, :cond_0

    .line 922
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 923
    :cond_0
    iput-object p2, p0, Lcom/narvii/list/NVPagedAdapter;->_errorMsg:Ljava/lang/String;

    .line 924
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_1
    const/4 p1, 0x2

    if-ne p4, p1, :cond_2

    .line 926
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0, p3}, Lcom/narvii/list/NVPagedAdapter;->showErrorToast(Lcom/narvii/model/api/ApiResponse;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 928
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    :cond_2
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .line 1148
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->ERROR:Lcom/narvii/util/Tag;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p3, v0, :cond_0

    .line 1149
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVPagedAdapter;->loadNextPage(Z)V

    return v2

    .line 1152
    :cond_0
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->LOAD_MORE:Lcom/narvii/util/Tag;

    if-ne p3, v0, :cond_1

    .line 1153
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVPagedAdapter;->loadNextPage(Z)V

    return v2

    .line 1156
    :cond_1
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    if-ne p3, v0, :cond_2

    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1157
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    return v2

    .line 1160
    :cond_2
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "TE;I)V"
        }
    .end annotation

    .line 707
    iget v0, p0, Lcom/narvii/list/NVPagedAdapter;->paginationType:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_d

    .line 708
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->REQ_TAG_SIZE:Lcom/narvii/util/Tag;

    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->pageSize()I

    move-result v5

    invoke-virtual {p1, v0, v5}, Lcom/narvii/util/http/ApiRequest;->tagInt(Ljava/lang/Object;I)I

    move-result v0

    if-ne p3, v1, :cond_8

    .line 710
    iget-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v0, :cond_3

    iget p1, p0, Lcom/narvii/list/NVPagedAdapter;->refreshFlag:I

    and-int/lit16 p1, p1, 0x200

    if-eqz p1, :cond_0

    goto :goto_1

    .line 723
    :cond_0
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/narvii/list/NVPagedAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    new-array p3, v3, [Z

    .line 725
    iget-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    invoke-static {v1, p1, p3}, Lcom/narvii/list/NVPagedAdapter;->mergeTop(Ljava/util/ArrayList;Ljava/util/List;[Z)Ljava/util/ArrayList;

    move-result-object p1

    .line 726
    iget-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    if-eq v1, p1, :cond_7

    .line 727
    iput-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 728
    iget-object p1, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    iput-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_stopTime:Ljava/lang/String;

    .line 729
    aget-boolean p1, p3, v4

    if-eqz p1, :cond_7

    .line 730
    iput v0, p0, Lcom/narvii/list/NVPagedAdapter;->_start:I

    .line 731
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :cond_2
    :goto_0
    iput-boolean v3, p0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    goto :goto_4

    .line 712
    :cond_3
    :goto_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 713
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/narvii/list/NVPagedAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_4

    .line 715
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    goto :goto_2

    .line 717
    :cond_4
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p3, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 719
    :goto_2
    iput v0, p0, Lcom/narvii/list/NVPagedAdapter;->_start:I

    .line 720
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :cond_6
    :goto_3
    iput-boolean v3, p0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    .line 721
    iget-object p1, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    iput-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_stopTime:Ljava/lang/String;

    .line 735
    :cond_7
    :goto_4
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto/16 :goto_16

    .line 737
    :cond_8
    iput-object v2, p0, Lcom/narvii/list/NVPagedAdapter;->_errorMsg:Ljava/lang/String;

    .line 738
    iget-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    if-nez v1, :cond_9

    .line 739
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 741
    :cond_9
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_5

    .line 744
    :cond_a
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/narvii/list/NVPagedAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    move-result-object p3

    .line 745
    iget-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 746
    sget-object p3, Lcom/narvii/list/NVPagedAdapter;->REQ_TAG_START:Lcom/narvii/util/Tag;

    iget v1, p0, Lcom/narvii/list/NVPagedAdapter;->_start:I

    invoke-virtual {p1, p3, v1}, Lcom/narvii/util/http/ApiRequest;->tagInt(Ljava/lang/Object;I)I

    move-result p1

    add-int/2addr p1, v0

    .line 747
    iput p1, p0, Lcom/narvii/list/NVPagedAdapter;->_start:I

    goto :goto_6

    .line 742
    :cond_b
    :goto_5
    iput-boolean v3, p0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    .line 749
    :goto_6
    iget-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_stopTime:Ljava/lang/String;

    if-nez p1, :cond_c

    .line 750
    iget-object p1, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    iput-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_stopTime:Ljava/lang/String;

    .line 753
    :cond_c
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto/16 :goto_16

    :cond_d
    const/4 v5, -0x1

    if-ne v0, v3, :cond_27

    .line 756
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->getPaging()Lcom/narvii/model/api/Pagination;

    move-result-object v0

    if-nez v0, :cond_e

    move-object v0, v2

    goto :goto_7

    :cond_e
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->getPaging()Lcom/narvii/model/api/Pagination;

    move-result-object v0

    iget-object v0, v0, Lcom/narvii/model/api/Pagination;->nextPageToken:Ljava/lang/String;

    .line 757
    :goto_7
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->getPaging()Lcom/narvii/model/api/Pagination;

    move-result-object v6

    if-nez v6, :cond_f

    move-object v6, v2

    goto :goto_8

    :cond_f
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->getPaging()Lcom/narvii/model/api/Pagination;

    move-result-object v6

    iget-object v6, v6, Lcom/narvii/model/api/Pagination;->prevPageToken:Ljava/lang/String;

    .line 758
    :goto_8
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->getPaging()Lcom/narvii/model/api/Pagination;

    move-result-object v7

    if-nez v7, :cond_10

    move-object v7, v2

    goto :goto_9

    :cond_10
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->getPaging()Lcom/narvii/model/api/Pagination;

    move-result-object v7

    iget-object v7, v7, Lcom/narvii/model/api/Pagination;->refreshPageToken:Ljava/lang/String;

    :goto_9
    const-string v8, "pagination prev token is null! keep prevToken"

    if-ne p3, v1, :cond_18

    if-nez v6, :cond_11

    .line 761
    invoke-static {v8}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    goto :goto_a

    .line 763
    :cond_11
    iput-object v6, p0, Lcom/narvii/list/NVPagedAdapter;->_prevPageToken:Ljava/lang/String;

    .line 765
    :goto_a
    iput-object v7, p0, Lcom/narvii/list/NVPagedAdapter;->_refreshPageToken:Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 766
    iget-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    if-eqz p1, :cond_14

    iget p1, p0, Lcom/narvii/list/NVPagedAdapter;->refreshFlag:I

    and-int/lit16 p1, p1, 0x200

    if-eqz p1, :cond_12

    goto :goto_c

    .line 778
    :cond_12
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/narvii/list/NVPagedAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    new-array p2, v3, [Z

    .line 780
    iget-object p3, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    invoke-static {p3, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->mergeTop(Ljava/util/ArrayList;Ljava/util/List;[Z)Ljava/util/ArrayList;

    move-result-object p1

    .line 781
    iget-object p3, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    if-eq p3, p1, :cond_17

    .line 782
    iput-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 783
    aget-boolean p1, p2, v4

    if-eqz p1, :cond_17

    .line 784
    iput-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->_nextPageToken:Ljava/lang/String;

    if-nez v0, :cond_13

    goto :goto_b

    :cond_13
    const/4 v3, 0x0

    .line 785
    :goto_b
    iput-boolean v3, p0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    goto :goto_f

    .line 768
    :cond_14
    :goto_c
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 769
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/narvii/list/NVPagedAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_15

    .line 771
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    goto :goto_d

    .line 773
    :cond_15
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 775
    :goto_d
    iput-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->_nextPageToken:Ljava/lang/String;

    if-nez v0, :cond_16

    goto :goto_e

    :cond_16
    const/4 v3, 0x0

    .line 776
    :goto_e
    iput-boolean v3, p0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    .line 789
    :cond_17
    :goto_f
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto/16 :goto_16

    :cond_18
    if-ne p3, v5, :cond_1c

    if-nez v6, :cond_19

    .line 792
    invoke-static {v8}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    goto :goto_10

    .line 794
    :cond_19
    iput-object v6, p0, Lcom/narvii/list/NVPagedAdapter;->_prevPageToken:Ljava/lang/String;

    .line 796
    :goto_10
    iget-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    if-nez p1, :cond_1a

    .line 797
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 799
    :cond_1a
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1b

    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1b

    .line 800
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/narvii/list/NVPagedAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    .line 801
    iget-object p2, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    invoke-virtual {p2, v4, p1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 804
    :cond_1b
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto/16 :goto_16

    :cond_1c
    const/4 v1, 0x3

    if-ne p3, v1, :cond_1f

    .line 806
    iget-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    if-nez v0, :cond_1d

    .line 807
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 809
    :cond_1d
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1e

    .line 810
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    move-result-object p2

    .line 811
    sget-object p3, Lcom/narvii/list/NVPagedAdapter;->REQ_MIDDLE_OBJ_ID:Lcom/narvii/util/Tag;

    invoke-virtual {p1, p3}, Lcom/narvii/util/http/ApiRequest;->tag(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 812
    instance-of p3, p1, Ljava/lang/String;

    if-eqz p3, :cond_1e

    .line 813
    iget-object p3, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    check-cast p1, Ljava/lang/String;

    invoke-static {p3, p1}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    move-result p1

    .line 814
    iget-object p3, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    invoke-virtual {p3, p1, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 817
    :cond_1e
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto/16 :goto_16

    .line 819
    :cond_1f
    iput-object v2, p0, Lcom/narvii/list/NVPagedAdapter;->_errorMsg:Ljava/lang/String;

    .line 820
    iget-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    if-nez v1, :cond_20

    .line 821
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 823
    :cond_20
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_21

    .line 824
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    move-result-object p2

    .line 825
    iget-object p3, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 827
    :cond_21
    sget-object p2, Lcom/narvii/list/NVPagedAdapter;->REQ_TAG_FROM_START:Lcom/narvii/util/Tag;

    invoke-virtual {p1, p2}, Lcom/narvii/util/http/ApiRequest;->tag(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p1, p2, :cond_22

    const/4 p1, 0x1

    goto :goto_11

    :cond_22
    const/4 p1, 0x0

    :goto_11
    if-eqz p1, :cond_23

    .line 829
    iput-object v6, p0, Lcom/narvii/list/NVPagedAdapter;->_prevPageToken:Ljava/lang/String;

    .line 830
    iput-object v7, p0, Lcom/narvii/list/NVPagedAdapter;->_refreshPageToken:Ljava/lang/String;

    :cond_23
    if-eqz v0, :cond_25

    .line 832
    iget-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_nextPageToken:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    goto :goto_12

    :cond_24
    const/4 v3, 0x0

    :cond_25
    :goto_12
    iput-boolean v3, p0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    .line 833
    iget-boolean p1, p0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    if-eqz p1, :cond_26

    move-object v0, v2

    :cond_26
    iput-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->_nextPageToken:Ljava/lang/String;

    .line 835
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_16

    :cond_27
    const/4 p1, -0x2

    if-ne v0, p1, :cond_28

    .line 838
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/narvii/list/NVPagedAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    .line 839
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 840
    iput v4, p0, Lcom/narvii/list/NVPagedAdapter;->_start:I

    .line 841
    iput-boolean v3, p0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    .line 842
    iput-object v2, p0, Lcom/narvii/list/NVPagedAdapter;->_stopTime:Ljava/lang/String;

    .line 843
    iput-object v2, p0, Lcom/narvii/list/NVPagedAdapter;->_errorMsg:Ljava/lang/String;

    .line 844
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_16

    :cond_28
    if-ne v0, v5, :cond_2d

    if-ne p3, v1, :cond_29

    .line 847
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 848
    iput v4, p0, Lcom/narvii/list/NVPagedAdapter;->_start:I

    goto :goto_13

    .line 849
    :cond_29
    iget-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    if-nez p1, :cond_2a

    .line 850
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 852
    :cond_2a
    :goto_13
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_2b

    const/4 p1, 0x0

    goto :goto_14

    :cond_2b
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 853
    :goto_14
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/narvii/list/NVPagedAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    move-result-object p3

    .line 854
    iget-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 855
    iget p3, p0, Lcom/narvii/list/NVPagedAdapter;->_start:I

    add-int/2addr p3, p1

    iput p3, p0, Lcom/narvii/list/NVPagedAdapter;->_start:I

    .line 856
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->pageSize()I

    move-result p3

    if-ge p1, p3, :cond_2c

    goto :goto_15

    :cond_2c
    const/4 v3, 0x0

    :goto_15
    iput-boolean v3, p0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    .line 857
    iget-object p1, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    iput-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_stopTime:Ljava/lang/String;

    .line 858
    iput-object v2, p0, Lcom/narvii/list/NVPagedAdapter;->_errorMsg:Ljava/lang/String;

    .line 859
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_2d
    :goto_16
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 109
    invoke-super {p0, p1}, Lcom/narvii/list/NVAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    if-eqz p1, :cond_1

    .line 112
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->dataDeserializer()Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    const-string v1, "list"

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->dataDeserializer()Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListUsing(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->dataType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 120
    iput-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    const-string v0, "start"

    .line 121
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/narvii/list/NVPagedAdapter;->_start:I

    const-string v0, "isEnd"

    .line 122
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    const-string v0, "stopTime"

    .line 123
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->_stopTime:Ljava/lang/String;

    const-string v0, "prevPageToken"

    .line 124
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->_prevPageToken:Ljava/lang/String;

    const-string v0, "nextPageToken"

    .line 125
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->_nextPageToken:Ljava/lang/String;

    const-string v0, "errorMsg"

    .line 126
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_errorMsg:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 4

    .line 149
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 150
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->saveInstanceState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->safeWriteAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 152
    iget v2, p0, Lcom/narvii/list/NVPagedAdapter;->_start:I

    const-string v3, "start"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "list"

    .line 153
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-boolean v1, p0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    const-string v2, "isEnd"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 155
    iget-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_stopTime:Ljava/lang/String;

    const-string v2, "stopTime"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_prevPageToken:Ljava/lang/String;

    const-string v2, "prevPageToken"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_nextPageToken:Ljava/lang/String;

    const-string v2, "nextPageToken"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_errorMsg:Ljava/lang/String;

    const-string v2, "errorMsg"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method protected pageSize()I
    .locals 1

    const-string v0, "config"

    .line 233
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 234
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getPageSize()I

    move-result v0

    return v0
.end method

.method public final rawList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+TT;>;"
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    return-object v0
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    and-int/lit16 v0, p1, 0x100

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 617
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit16 v4, p1, 0x200

    .line 621
    iget-object v4, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    const/4 v5, 0x2

    if-eqz v4, :cond_1

    if-nez v0, :cond_3

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->resetWhenEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 622
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    .line 623
    iget-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    if-eqz v0, :cond_2

    .line 624
    iput-object p2, p0, Lcom/narvii/list/NVPagedAdapter;->requestCallback:Lcom/narvii/util/Callback;

    .line 625
    iput v5, p0, Lcom/narvii/list/NVPagedAdapter;->direction:I

    .line 626
    iput p1, p0, Lcom/narvii/list/NVPagedAdapter;->refreshFlag:I

    :cond_2
    return-void

    :cond_3
    const-string v0, "api"

    .line 631
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 632
    iget-object v4, p0, Lcom/narvii/list/NVPagedAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    if-eqz v4, :cond_4

    .line 633
    invoke-virtual {v0, v4}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 635
    :cond_4
    invoke-virtual {p0, v2}, Lcom/narvii/list/NVPagedAdapter;->createRequest(Z)Lcom/narvii/util/http/ApiRequest;

    move-result-object v4

    const/4 v6, 0x0

    if-nez v4, :cond_5

    .line 637
    iput-object v6, p0, Lcom/narvii/list/NVPagedAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    goto/16 :goto_1

    .line 638
    :cond_5
    iget v7, p0, Lcom/narvii/list/NVPagedAdapter;->paginationType:I

    const-string v8, "size"

    if-nez v7, :cond_6

    .line 639
    invoke-virtual {v4}, Lcom/narvii/util/http/ApiRequest;->edit()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    .line 640
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->pageSize()I

    move-result v4

    .line 641
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v9, "start"

    invoke-virtual {v2, v9, v7}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 642
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v8, v7}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 643
    sget-object v7, Lcom/narvii/list/NVPagedAdapter;->REQ_TAG_START:Lcom/narvii/util/Tag;

    iget v8, p0, Lcom/narvii/list/NVPagedAdapter;->_start:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 644
    sget-object v7, Lcom/narvii/list/NVPagedAdapter;->REQ_TAG_FROM_START:Lcom/narvii/util/Tag;

    invoke-virtual {v2, v7, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 645
    sget-object v3, Lcom/narvii/list/NVPagedAdapter;->REQ_TAG_SIZE:Lcom/narvii/util/Tag;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 646
    sget-object v3, Lcom/narvii/list/NVPagedAdapter;->REQ_TAG_REFRESH_FLAG:Lcom/narvii/util/Tag;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 647
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v2

    iput-object v2, p0, Lcom/narvii/list/NVPagedAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    goto :goto_1

    :cond_6
    if-ne v7, v2, :cond_8

    .line 649
    invoke-virtual {v4}, Lcom/narvii/util/http/ApiRequest;->edit()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    .line 650
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->pageSize()I

    move-result v4

    const-string v7, "pagingType"

    const-string v9, "t"

    .line 651
    invoke-virtual {v2, v7, v9}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 652
    iget-object v7, p0, Lcom/narvii/list/NVPagedAdapter;->_refreshPageToken:Ljava/lang/String;

    if-eqz v7, :cond_7

    const-string v9, "pageToken"

    .line 653
    invoke-virtual {v2, v9, v7}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 655
    :cond_7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v8, v7}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 656
    sget-object v7, Lcom/narvii/list/NVPagedAdapter;->REQ_TAG_FROM_START:Lcom/narvii/util/Tag;

    invoke-virtual {v2, v7, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 657
    sget-object v3, Lcom/narvii/list/NVPagedAdapter;->REQ_TAG_SIZE:Lcom/narvii/util/Tag;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 658
    sget-object v3, Lcom/narvii/list/NVPagedAdapter;->REQ_TAG_REFRESH_FLAG:Lcom/narvii/util/Tag;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 659
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v2

    iput-object v2, p0, Lcom/narvii/list/NVPagedAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    goto :goto_1

    .line 661
    :cond_8
    iput-object v4, p0, Lcom/narvii/list/NVPagedAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    .line 664
    :goto_1
    iget-object v2, p0, Lcom/narvii/list/NVPagedAdapter;->requestCallback:Lcom/narvii/util/Callback;

    if-eqz v2, :cond_9

    .line 665
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 667
    :cond_9
    iget-object v2, p0, Lcom/narvii/list/NVPagedAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    const-wide/16 v3, 0x0

    if-nez v2, :cond_a

    .line 668
    iput v1, p0, Lcom/narvii/list/NVPagedAdapter;->direction:I

    .line 669
    iput v1, p0, Lcom/narvii/list/NVPagedAdapter;->refreshFlag:I

    .line 670
    iput-object v6, p0, Lcom/narvii/list/NVPagedAdapter;->requestCallback:Lcom/narvii/util/Callback;

    .line 671
    iput-wide v3, p0, Lcom/narvii/list/NVPagedAdapter;->requestTime:J

    .line 672
    iput-wide v3, p0, Lcom/narvii/list/NVPagedAdapter;->requestWaitTime:J

    goto :goto_2

    .line 674
    :cond_a
    iput v5, p0, Lcom/narvii/list/NVPagedAdapter;->direction:I

    .line 675
    iput p1, p0, Lcom/narvii/list/NVPagedAdapter;->refreshFlag:I

    .line 676
    iput-object p2, p0, Lcom/narvii/list/NVPagedAdapter;->requestCallback:Lcom/narvii/util/Callback;

    .line 677
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/narvii/list/NVPagedAdapter;->requestTime:J

    .line 678
    iput-wide v3, p0, Lcom/narvii/list/NVPagedAdapter;->requestWaitTime:J

    .line 679
    iget-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    iget-object p2, p0, Lcom/narvii/list/NVPagedAdapter;->requestListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :goto_2
    return-void
.end method

.method protected removeIdEqualsObject(Lcom/narvii/model/NVObject;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->removeId(Ljava/util/Collection;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public removeIdEqualsObjectId(Ljava/lang/String;)I
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->removeId(Ljava/util/Collection;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public resetEmptyList()V
    .locals 4

    .line 426
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 427
    iput v0, p0, Lcom/narvii/list/NVPagedAdapter;->_start:I

    const/4 v1, 0x1

    .line 428
    iput-boolean v1, p0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    const/4 v1, 0x0

    .line 429
    iput-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_stopTime:Ljava/lang/String;

    .line 430
    iput-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_prevPageToken:Ljava/lang/String;

    .line 431
    iput-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_nextPageToken:Ljava/lang/String;

    .line 432
    iput-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_errorMsg:Ljava/lang/String;

    const-string v2, "api"

    .line 434
    invoke-virtual {p0, v2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 435
    iget-object v3, p0, Lcom/narvii/list/NVPagedAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    if-eqz v3, :cond_0

    .line 436
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 437
    iput-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    .line 440
    :cond_0
    iget-object v2, p0, Lcom/narvii/list/NVPagedAdapter;->requestCallback:Lcom/narvii/util/Callback;

    if-eqz v2, :cond_1

    const/4 v3, 0x2

    .line 441
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 443
    :cond_1
    iput v0, p0, Lcom/narvii/list/NVPagedAdapter;->direction:I

    .line 444
    iput v0, p0, Lcom/narvii/list/NVPagedAdapter;->refreshFlag:I

    .line 445
    iput-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->requestCallback:Lcom/narvii/util/Callback;

    const-wide/16 v0, 0x0

    .line 446
    iput-wide v0, p0, Lcom/narvii/list/NVPagedAdapter;->requestTime:J

    .line 447
    iput-wide v0, p0, Lcom/narvii/list/NVPagedAdapter;->requestWaitTime:J

    .line 449
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public resetList()V
    .locals 4

    .line 390
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 391
    iput v0, p0, Lcom/narvii/list/NVPagedAdapter;->_start:I

    .line 392
    iput-boolean v0, p0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    const/4 v1, 0x0

    .line 393
    iput-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_stopTime:Ljava/lang/String;

    .line 394
    iput-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_prevPageToken:Ljava/lang/String;

    .line 395
    iput-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_nextPageToken:Ljava/lang/String;

    .line 396
    iput-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_refreshPageToken:Ljava/lang/String;

    .line 397
    iput-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_errorMsg:Ljava/lang/String;

    const-string v2, "api"

    .line 399
    invoke-virtual {p0, v2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 400
    iget-object v3, p0, Lcom/narvii/list/NVPagedAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    if-eqz v3, :cond_0

    .line 401
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 402
    iput-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    .line 405
    :cond_0
    iget-object v2, p0, Lcom/narvii/list/NVPagedAdapter;->requestCallback:Lcom/narvii/util/Callback;

    if-eqz v2, :cond_1

    const/4 v3, 0x2

    .line 406
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 408
    :cond_1
    iput v0, p0, Lcom/narvii/list/NVPagedAdapter;->direction:I

    .line 409
    iput v0, p0, Lcom/narvii/list/NVPagedAdapter;->refreshFlag:I

    .line 410
    iput-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->requestCallback:Lcom/narvii/util/Callback;

    const-wide/16 v1, 0x0

    .line 411
    iput-wide v1, p0, Lcom/narvii/list/NVPagedAdapter;->requestTime:J

    .line 412
    iput-wide v1, p0, Lcom/narvii/list/NVPagedAdapter;->requestWaitTime:J

    .line 414
    iget-boolean v1, p0, Lcom/narvii/list/NVPagedAdapter;->attached:Z

    if-eqz v1, :cond_2

    .line 415
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVPagedAdapter;->loadNextPage(Z)V

    .line 417
    :cond_2
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->mainIpc:Lcom/narvii/logging/Impression/ImpressionCollector;

    if-eqz v0, :cond_3

    .line 418
    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-static {v0, v1}, Lcom/narvii/logging/Impression/ImpressionUtils;->clearImpression(Lcom/narvii/logging/Impression/ImpressionCollector;Lcom/narvii/app/NVContext;)V

    :cond_3
    return-void
.end method

.method protected resetWhenEmpty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected abstract responseType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+TE;>;"
        }
    .end annotation
.end method

.method public setDatePageHelper(Lcom/narvii/list/DatePageHelper;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->datePageHelper:Lcom/narvii/list/DatePageHelper;

    return-void
.end method

.method public setList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "TT;>;)V"
        }
    .end annotation

    .line 201
    iput-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    return-void
.end method

.method public setRefreshWaitTime(J)V
    .locals 0

    .line 689
    iput-wide p1, p0, Lcom/narvii/list/NVPagedAdapter;->requestWaitTime:J

    return-void
.end method

.method protected showErrorToast(Lcom/narvii/model/api/ApiResponse;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public showListEnd(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected tagCellAuto()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
