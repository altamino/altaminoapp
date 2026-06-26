.class public abstract Lcom/narvii/detail/DetailAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "DetailAdapter.java"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;
.implements Lcom/narvii/monetization/store/TippingConfirmDialog$TipSuccessListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/detail/DetailAdapter$DetailTagClickListener;,
        Lcom/narvii/detail/DetailAdapter$AddTag;,
        Lcom/narvii/detail/DetailAdapter$HeaderTag;,
        Lcom/narvii/detail/DetailAdapter$CellType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/narvii/model/NVObject;",
        "E:",
        "Lcom/narvii/model/api/ObjectResponse<",
        "+TT;>;>",
        "Lcom/narvii/list/NVAdapter;",
        "Lcom/narvii/notification/NotificationListener;",
        "Lcom/narvii/monetization/store/TippingConfirmDialog$TipSuccessListener;"
    }
.end annotation


# static fields
.field public static final COMMENT_ADD:Lcom/narvii/detail/DetailAdapter$CellType;

.field public static final COMMENT_HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

.field public static final COMMENT_SORT_NEWEST:I = 0x0

.field public static final COMMENT_SORT_OLDEST:I = 0x1

.field public static final COMMENT_SORT_TOP:I = 0x2

.field public static final DIVIDER:Lcom/narvii/detail/DetailAdapter$CellType;

.field public static final DIVIDER_LINE:Lcom/narvii/detail/DetailAdapter$CellType;

.field public static final LIST_DIVIDER:Lcom/narvii/detail/DetailAdapter$CellType;

.field public static final LOADING:Lcom/narvii/detail/DetailAdapter$CellType;

.field public static final MORE_PHOTOS_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

.field public static final PADDING10:Lcom/narvii/detail/DetailAdapter$CellType;

.field public static final PHOTOS_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

.field public static final SEND_REQUEST_CAUSE_ERROR_RETRY:I = 0x3

.field public static final SEND_REQUEST_CAUSE_ON_ATTACH:I = 0x1

.field public static final SEND_REQUEST_CAUSE_REFRESH:I = 0x2

.field public static final TIPPING:Lcom/narvii/detail/DetailAdapter$CellType;

.field public static final USER_GRID:Lcom/narvii/detail/DetailAdapter$CellType;

.field public static final _RELATED_PAGES:Lcom/narvii/detail/DetailAdapter$CellType;


# instance fields
.field private final cellTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/detail/DetailAdapter$CellType;",
            ">;"
        }
    .end annotation
.end field

.field private cells:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private columnSize:I

.field protected errorMsg:Ljava/lang/String;

.field private final listener:Lcom/narvii/util/http/ApiResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/http/ApiResponseListener<",
            "TE;>;"
        }
    .end annotation
.end field

.field public loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

.field public loggingSource:Lcom/narvii/util/logging/LoggingSource;

.field private pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

.field private rawSize:I

.field private request:Lcom/narvii/util/http/ApiRequest;

.field private response:Lcom/narvii/model/api/ObjectResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private sendRequestCause:I

.field public source:Ljava/lang/String;

.field protected tagClickListener:Lcom/narvii/detail/DetailAdapter$DetailTagClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/detail/DetailAdapter<",
            "TT;TE;>.DetailTagClick",
            "Listener;"
        }
    .end annotation
.end field

.field private tipCell:Landroid/view/View;

.field private tipLogListResponse:Lcom/narvii/tipping/model/TipLogListResponse;

.field private tipperListError:Ljava/lang/String;

.field private final tipperListListener:Lcom/narvii/util/http/ApiResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/tipping/model/TipLogListResponse;",
            ">;"
        }
    .end annotation
.end field

.field private tipperListRequest:Lcom/narvii/util/http/ApiRequest;

.field private tipperListSize:I

.field private tippingHelper:Lcom/narvii/tipping/TippingHelper;

.field protected userIPC:Lcom/narvii/logging/Impression/ImpressionCollector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/logging/Impression/ImpressionCollector<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation
.end field

.field private userListError:Ljava/lang/String;

.field private final userListListener:Lcom/narvii/util/http/ApiResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/model/api/UserListResponse;",
            ">;"
        }
    .end annotation
.end field

.field private userListMargin:I

.field private userListRequest:Lcom/narvii/util/http/ApiRequest;

.field private userListResponse:Lcom/narvii/model/api/UserListResponse;

.field private userListSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 211
    new-instance v0, Lcom/narvii/detail/DetailAdapter$HeaderTag;

    const-string v1, "detail.photos.header"

    const v2, 0x7f0f0377

    invoke-direct {v0, v1, v2}, Lcom/narvii/detail/DetailAdapter$HeaderTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/narvii/detail/DetailAdapter;->PHOTOS_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

    .line 213
    new-instance v0, Lcom/narvii/detail/DetailAdapter$HeaderTag;

    const-string v1, "detail.morephotos.header"

    const v2, 0x7f0f0376

    invoke-direct {v0, v1, v2}, Lcom/narvii/detail/DetailAdapter$HeaderTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/narvii/detail/DetailAdapter;->MORE_PHOTOS_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

    .line 215
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v1, "detail.divider"

    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/detail/DetailAdapter;->DIVIDER:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 216
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v1, "detail.divider.line"

    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/detail/DetailAdapter;->DIVIDER_LINE:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 218
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v1, "detail.comment.header"

    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/detail/DetailAdapter;->COMMENT_HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 220
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v1, "detail.comment.add"

    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/detail/DetailAdapter;->COMMENT_ADD:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 222
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v1, "detail.loading"

    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/detail/DetailAdapter;->LOADING:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 223
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v1, "detail.list_divider"

    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/detail/DetailAdapter;->LIST_DIVIDER:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 225
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v1, "detail.padding10"

    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/detail/DetailAdapter;->PADDING10:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 229
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v1, "detail.usergrid"

    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/detail/DetailAdapter;->USER_GRID:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 233
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v1, "detail.related"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/narvii/detail/DetailAdapter;->_RELATED_PAGES:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 235
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v1, "detail.tipping"

    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/detail/DetailAdapter;->TIPPING:Lcom/narvii/detail/DetailAdapter$CellType;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 3

    .line 248
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 110
    new-instance v0, Lcom/narvii/detail/DetailAdapter$1;

    const-class v1, Lcom/narvii/model/User;

    const v2, 0x7f0904e3

    invoke-direct {v0, p0, v1, v2}, Lcom/narvii/detail/DetailAdapter$1;-><init>(Lcom/narvii/detail/DetailAdapter;Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/narvii/detail/DetailAdapter;->userIPC:Lcom/narvii/logging/Impression/ImpressionCollector;

    const-string v0, "Page Detailed View"

    .line 242
    iput-object v0, p0, Lcom/narvii/detail/DetailAdapter;->source:Ljava/lang/String;

    .line 243
    sget-object v0, Lcom/narvii/util/logging/LoggingSource;->PostDetailView:Lcom/narvii/util/logging/LoggingSource;

    iput-object v0, p0, Lcom/narvii/detail/DetailAdapter;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    const/4 v0, 0x0

    .line 244
    iput-object v0, p0, Lcom/narvii/detail/DetailAdapter;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    .line 404
    new-instance v0, Lcom/narvii/detail/DetailAdapter$2;

    .line 405
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->responseType()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/narvii/detail/DetailAdapter$2;-><init>(Lcom/narvii/detail/DetailAdapter;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/narvii/detail/DetailAdapter;->listener:Lcom/narvii/util/http/ApiResponseListener;

    const/4 v0, 0x0

    .line 1290
    iput v0, p0, Lcom/narvii/detail/DetailAdapter;->columnSize:I

    const/4 v1, 0x1

    .line 1291
    iput v1, p0, Lcom/narvii/detail/DetailAdapter;->rawSize:I

    .line 1292
    iput v0, p0, Lcom/narvii/detail/DetailAdapter;->userListMargin:I

    const/16 v0, 0x30

    .line 1293
    iput v0, p0, Lcom/narvii/detail/DetailAdapter;->userListSize:I

    const/16 v0, 0xf

    .line 1299
    iput v0, p0, Lcom/narvii/detail/DetailAdapter;->tipperListSize:I

    .line 1445
    new-instance v0, Lcom/narvii/detail/DetailAdapter$6;

    const-class v1, Lcom/narvii/model/api/UserListResponse;

    invoke-direct {v0, p0, v1}, Lcom/narvii/detail/DetailAdapter$6;-><init>(Lcom/narvii/detail/DetailAdapter;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/narvii/detail/DetailAdapter;->userListListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 1469
    new-instance v0, Lcom/narvii/detail/DetailAdapter$7;

    const-class v1, Lcom/narvii/tipping/model/TipLogListResponse;

    invoke-direct {v0, p0, v1}, Lcom/narvii/detail/DetailAdapter$7;-><init>(Lcom/narvii/detail/DetailAdapter;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/narvii/detail/DetailAdapter;->tipperListListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/detail/DetailAdapter;->cellTypes:Ljava/util/ArrayList;

    .line 251
    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter;->cellTypes:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/narvii/detail/DetailAdapter;->getCellTypes(Ljava/util/List;)V

    .line 252
    new-instance v0, Lcom/narvii/account/push/PushNotificationHelper;

    invoke-direct {v0, p1}, Lcom/narvii/account/push/PushNotificationHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/detail/DetailAdapter;->pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

    return-void
.end method

.method static synthetic access$002(Lcom/narvii/detail/DetailAdapter;Lcom/narvii/util/http/ApiRequest;)Lcom/narvii/util/http/ApiRequest;
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/narvii/detail/DetailAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    return-object p1
.end method

.method static synthetic access$100(Lcom/narvii/detail/DetailAdapter;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method static synthetic access$202(Lcom/narvii/detail/DetailAdapter;Lcom/narvii/util/http/ApiRequest;)Lcom/narvii/util/http/ApiRequest;
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/narvii/detail/DetailAdapter;->userListRequest:Lcom/narvii/util/http/ApiRequest;

    return-object p1
.end method

.method static synthetic access$302(Lcom/narvii/detail/DetailAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/narvii/detail/DetailAdapter;->userListError:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/narvii/detail/DetailAdapter;Lcom/narvii/model/api/UserListResponse;)Lcom/narvii/model/api/UserListResponse;
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/narvii/detail/DetailAdapter;->userListResponse:Lcom/narvii/model/api/UserListResponse;

    return-object p1
.end method

.method static synthetic access$502(Lcom/narvii/detail/DetailAdapter;Lcom/narvii/util/http/ApiRequest;)Lcom/narvii/util/http/ApiRequest;
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/narvii/detail/DetailAdapter;->tipperListRequest:Lcom/narvii/util/http/ApiRequest;

    return-object p1
.end method

.method static synthetic access$602(Lcom/narvii/detail/DetailAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/narvii/detail/DetailAdapter;->tipperListError:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/narvii/detail/DetailAdapter;Lcom/narvii/tipping/model/TipLogListResponse;)Lcom/narvii/tipping/model/TipLogListResponse;
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/narvii/detail/DetailAdapter;->tipLogListResponse:Lcom/narvii/tipping/model/TipLogListResponse;

    return-object p1
.end method

.method static synthetic access$800(Lcom/narvii/detail/DetailAdapter;)Lcom/narvii/tipping/TippingHelper;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/narvii/detail/DetailAdapter;->tippingHelper:Lcom/narvii/tipping/TippingHelper;

    return-object p0
.end method

.method private cells()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 529
    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter;->cells:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter;->response:Lcom/narvii/model/api/ObjectResponse;

    if-eqz v0, :cond_0

    .line 530
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 531
    invoke-virtual {p0, v0}, Lcom/narvii/detail/DetailAdapter;->buildCells(Ljava/util/List;)V

    .line 532
    iput-object v0, p0, Lcom/narvii/detail/DetailAdapter;->cells:Ljava/util/ArrayList;

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter;->cells:Ljava/util/ArrayList;

    return-object v0
.end method

.method private refreshTippingList()V
    .locals 3

    const-string v0, "api"

    .line 783
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 784
    iget-object v1, p0, Lcom/narvii/detail/DetailAdapter;->tipperListRequest:Lcom/narvii/util/http/ApiRequest;

    if-eqz v1, :cond_0

    .line 785
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    :cond_0
    const/4 v1, 0x0

    .line 787
    iget v2, p0, Lcom/narvii/detail/DetailAdapter;->tipperListSize:I

    invoke-virtual {p0, v1, v2}, Lcom/narvii/detail/DetailAdapter;->createTipperListRequest(II)Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/detail/DetailAdapter;->tipperListRequest:Lcom/narvii/util/http/ApiRequest;

    .line 788
    iget-object v1, p0, Lcom/narvii/detail/DetailAdapter;->tipperListRequest:Lcom/narvii/util/http/ApiRequest;

    iget-object v2, p0, Lcom/narvii/detail/DetailAdapter;->tipperListListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method


# virtual methods
.method protected allowAutoJoin()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public allowTipping()Z
    .locals 1

    const/4 v0, 0x1

    .line 1498
    invoke-virtual {p0, v0}, Lcom/narvii/detail/DetailAdapter;->allowTipping(Z)Z

    move-result v0

    return v0
.end method

.method public allowTipping(Z)Z
    .locals 6

    .line 1502
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    .line 1504
    instance-of v1, v0, Lcom/narvii/model/Tippable;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 1505
    check-cast v0, Lcom/narvii/model/Tippable;

    invoke-interface {v0}, Lcom/narvii/model/Tippable;->getTippingInfo()Lcom/narvii/model/TippingInfo;

    move-result-object v1

    if-nez v1, :cond_0

    return v2

    .line 1509
    :cond_0
    invoke-interface {v0}, Lcom/narvii/model/Tippable;->getTipAuthor()Lcom/narvii/model/User;

    move-result-object v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    const-string v4, "account"

    .line 1512
    invoke-virtual {p0, v4}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/account/AccountService;

    .line 1513
    invoke-virtual {v4}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v4

    .line 1514
    invoke-virtual {v0}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz p1, :cond_3

    if-nez v4, :cond_2

    .line 1520
    iget-boolean p1, v1, Lcom/narvii/model/TippingInfo;->tippable:Z

    if-nez p1, :cond_2

    return v2

    :cond_2
    if-eqz v4, :cond_4

    .line 1524
    iget-boolean p1, v1, Lcom/narvii/model/TippingInfo;->tippable:Z

    if-nez p1, :cond_4

    iget p1, v1, Lcom/narvii/model/TippingInfo;->tippedCoins:I

    if-nez p1, :cond_4

    return v2

    .line 1528
    :cond_3
    iget-boolean p1, v1, Lcom/narvii/model/TippingInfo;->tippable:Z

    if-nez p1, :cond_4

    return v2

    :cond_4
    if-eqz v0, :cond_6

    .line 1534
    invoke-virtual {v0}, Lcom/narvii/model/User;->isAminoRole()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    return v3

    :cond_6
    :goto_1
    return v2
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected blurMedia()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract buildCells(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public commentNew()V
    .locals 1

    const/4 v0, 0x0

    .line 1219
    invoke-virtual {p0, v0}, Lcom/narvii/detail/DetailAdapter;->commentNew(Ljava/lang/String;)V

    return-void
.end method

.method public commentNew(Ljava/lang/String;)V
    .locals 4

    .line 1223
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1226
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/narvii/comment/post/CommentPostActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1227
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->objectType()I

    move-result v2

    const-string v3, "parentType"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1228
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v2

    const-string v3, "parentId"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1229
    instance-of v2, v0, Lcom/narvii/model/Blog;

    if-eqz v2, :cond_1

    .line 1230
    move-object v2, v0

    check-cast v2, Lcom/narvii/model/Blog;

    iget v2, v2, Lcom/narvii/model/Blog;->type:I

    const-string v3, "parentSubType"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1232
    :cond_1
    instance-of v2, v0, Lcom/narvii/model/Feed;

    if-eqz v2, :cond_2

    .line 1233
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "feed"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const/4 v2, 0x1

    .line 1235
    invoke-static {p0, v0, v2}, Lcom/narvii/util/StatisticHelper;->getStatisticSource(Lcom/narvii/app/NVContext;Lcom/narvii/model/NVObject;I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "stat_parent_type"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1236
    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter;->source:Ljava/lang/String;

    const-string v2, "Source"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1237
    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    const/4 v2, 0x0

    if-nez v0, :cond_3

    move-object v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v3, "loggingSource"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1238
    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    :goto_1
    const-string v0, "loggingOrigin"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1239
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->allowAutoJoin()Z

    move-result v0

    const-string v2, "autoJoin"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1240
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->showEmojiOnly()Z

    move-result v0

    const-string v2, "showEmojiOnly"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "stickerCollectionId"

    .line 1241
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1242
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    .line 1243
    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter;->pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

    invoke-virtual {p1}, Lcom/narvii/account/push/PushNotificationHelper;->checkRemindDialogWhenPostFinished()V

    return-void
.end method

.method protected commentRefresh()V
    .locals 0

    return-void
.end method

.method protected commentSort()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public createHeaderView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1117
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/narvii/detail/DetailAdapter;->createHeaderView(Ljava/lang/CharSequence;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public createHeaderView(Ljava/lang/CharSequence;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const v0, 0x7f0b0141

    .line 1093
    invoke-virtual {p0, v0, p4, p3}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p3

    const p4, 0x7f0904f4

    .line 1095
    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 1097
    iget-boolean v0, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getHeaderBackgroundColor()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0600ef

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    :goto_0
    invoke-virtual {p4, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    const p4, 0x7f090b5b

    .line 1100
    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    const/4 v0, -0x1

    const v1, -0x777778

    if-eqz p4, :cond_3

    .line 1102
    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1103
    iget-boolean p1, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-eqz p1, :cond_2

    const/4 p1, -0x1

    goto :goto_1

    :cond_2
    const p1, -0x777778

    :goto_1
    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    const p1, 0x7f0904f3

    .line 1106
    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_6

    const/4 p4, 0x1

    if-ge p2, p4, :cond_4

    const-string p2, ""

    goto :goto_2

    .line 1108
    :cond_4
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_2
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1109
    iget-boolean p2, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-eqz p2, :cond_5

    goto :goto_3

    :cond_5
    const v0, -0x777778

    :goto_3
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_6
    return-object p3
.end method

.method public createMediaView(Lcom/narvii/model/Media;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 1022
    invoke-virtual {p0, p2, p4, p3}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f090571

    .line 1024
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/NVImageView;

    .line 1025
    invoke-virtual {p1}, Lcom/narvii/model/Media;->isVideo()Z

    move-result p4

    if-eqz p4, :cond_0

    const p4, 0x3f19999a    # 0.6f

    .line 1026
    iput p4, p3, Lcom/narvii/widget/NVImageView;->maxHeightPercentage:F

    .line 1027
    sget-object p4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, p4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_0
    const/4 p4, 0x0

    if-eqz p1, :cond_1

    .line 1029
    iget-object v0, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/YoutubeUtils;->isYtvScheme(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 1031
    iput-object v0, p3, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 1032
    iput p4, p3, Lcom/narvii/widget/NVImageView;->defaultDrawableId:I

    goto :goto_2

    .line 1034
    :cond_2
    iget-boolean v0, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-eqz v0, :cond_3

    const v0, 0x7f060173

    goto :goto_1

    :cond_3
    const v0, 0x7f060170

    :goto_1
    iput v0, p3, Lcom/narvii/widget/NVImageView;->defaultDrawableId:I

    .line 1036
    :goto_2
    instance-of v0, p3, Lcom/narvii/widget/ISecretImage;

    if-eqz v0, :cond_4

    .line 1037
    move-object v0, p3

    check-cast v0, Lcom/narvii/widget/ISecretImage;

    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->blurMedia()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/narvii/widget/ISecretImage;->setImageMedia(Lcom/narvii/model/Media;Z)Z

    goto :goto_3

    .line 1039
    :cond_4
    invoke-virtual {p3, p1}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    :goto_3
    const v0, 0x7f090b5b

    .line 1041
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1042
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    const/16 v3, 0x8

    if-eq v1, v2, :cond_6

    .line 1043
    iget-object v1, p1, Lcom/narvii/model/Media;->caption:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1044
    iget-object v1, p1, Lcom/narvii/model/Media;->caption:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x8

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1046
    :cond_6
    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1048
    instance-of v1, p3, Lcom/narvii/widget/FlexSizeImageView;

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_7

    .line 1049
    check-cast p3, Lcom/narvii/widget/FlexSizeImageView;

    new-instance v1, Lcom/narvii/detail/DetailAdapter$4;

    invoke-direct {v1, p0, v0}, Lcom/narvii/detail/DetailAdapter$4;-><init>(Lcom/narvii/detail/DetailAdapter;Landroid/widget/TextView;)V

    invoke-virtual {p3, v1}, Lcom/narvii/widget/FlexSizeImageView;->setFlexSizeImageSetDimensionCallback(Lcom/narvii/widget/FlexSizeImageView$IFlexSizeImageSetDimensionCallback;)V

    :cond_7
    const p3, 0x7f090a30

    .line 1059
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/ShareMediaBar;

    .line 1060
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->showShareMediaBar()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "Post Detail"

    .line 1061
    iput-object v0, p3, Lcom/narvii/widget/ShareMediaBar;->source:Ljava/lang/String;

    .line 1062
    invoke-virtual {p3, p4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1063
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 1064
    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter;->cells:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1065
    instance-of v2, v1, Lcom/narvii/model/Media;

    if-eqz v2, :cond_8

    check-cast v1, Lcom/narvii/model/Media;

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1067
    :cond_9
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    invoke-virtual {p3, v0, p1, p4}, Lcom/narvii/widget/ShareMediaBar;->setMedia(Lcom/narvii/model/NVObject;Lcom/narvii/model/Media;Ljava/util/List;)V

    .line 1068
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/model/Feed;

    if-eqz p1, :cond_a

    .line 1069
    new-instance p1, Lcom/narvii/detail/DetailAdapter$5;

    iget-object p4, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-direct {p1, p0, p4}, Lcom/narvii/detail/DetailAdapter$5;-><init>(Lcom/narvii/detail/DetailAdapter;Lcom/narvii/app/NVContext;)V

    invoke-virtual {p3, p1}, Lcom/narvii/widget/ShareMediaBar;->setRepostButton(Lcom/narvii/share/BaseShareButtonRepost;)V

    :cond_a
    const p1, 0x7f090a32

    .line 1077
    invoke-virtual {p3, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 1078
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 1079
    iget-object p4, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p4}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p4

    const/high16 v0, 0x41c80000    # 25.0f

    invoke-static {p4, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p4

    float-to-int p4, p4

    iput p4, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1080
    iget-object p4, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p4}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p4

    float-to-int p4, p4

    iput p4, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1081
    iget-object p4, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p4}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p4

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {p4, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p4

    float-to-int p4, p4

    .line 1082
    invoke-virtual {p1, p4, p4, p4, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 1083
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    .line 1086
    :cond_b
    invoke-virtual {p3, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_6
    return-object p2
.end method

.method public createMediaView(Lcom/narvii/model/Media;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const v0, 0x7f0b014c

    .line 1018
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/narvii/detail/DetailAdapter;->createMediaView(Lcom/narvii/model/Media;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected abstract createRequest()Lcom/narvii/util/http/ApiRequest;
.end method

.method public createTextView(Ljava/lang/String;ILandroid/view/View;Landroid/view/ViewGroup;ZLcom/narvii/util/text/OnTagClickListener;)Landroid/view/View;
    .locals 1

    .line 980
    invoke-virtual {p0, p2, p4, p3}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f090b5b

    .line 981
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    .line 984
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-eqz p5, :cond_2

    .line 987
    new-instance p5, Lcom/narvii/util/text/NVText;

    invoke-direct {p5, p1}, Lcom/narvii/util/text/NVText;-><init>(Ljava/lang/CharSequence;)V

    .line 988
    iget-boolean p1, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    invoke-virtual {p5, p1}, Lcom/narvii/util/text/NVText;->setDarkTheme(Z)V

    .line 989
    invoke-virtual {p5, p6}, Lcom/narvii/util/text/NVText;->markAllEntries(Lcom/narvii/util/text/OnTagClickListener;)I

    if-eqz p6, :cond_1

    const/4 p1, 0x1

    .line 991
    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 992
    invoke-static {}, Lcom/narvii/util/text/LinkTouchMovementMethod;->getInstance()Lcom/narvii/util/text/LinkTouchMovementMethod;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_1
    move-object p1, p5

    .line 999
    :cond_2
    :goto_0
    sget-object p5, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p4, p1, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    const p1, -0xaaaaab

    .line 1000
    invoke-virtual {p0, p2, p3, p1}, Lcom/narvii/detail/DetailAdapter;->setTextColor(Landroid/view/View;II)V

    return-object p2
.end method

.method public createTextView(Ljava/lang/String;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .line 971
    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter;->tagClickListener:Lcom/narvii/detail/DetailAdapter$DetailTagClickListener;

    if-nez v0, :cond_0

    .line 972
    new-instance v0, Lcom/narvii/detail/DetailAdapter$DetailTagClickListener;

    invoke-direct {v0, p0}, Lcom/narvii/detail/DetailAdapter$DetailTagClickListener;-><init>(Lcom/narvii/detail/DetailAdapter;)V

    iput-object v0, p0, Lcom/narvii/detail/DetailAdapter;->tagClickListener:Lcom/narvii/detail/DetailAdapter$DetailTagClickListener;

    :cond_0
    const v3, 0x7f0b015d

    const/4 v6, 0x1

    .line 974
    iget-object v7, p0, Lcom/narvii/detail/DetailAdapter;->tagClickListener:Lcom/narvii/detail/DetailAdapter$DetailTagClickListener;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v7}, Lcom/narvii/detail/DetailAdapter;->createTextView(Ljava/lang/String;ILandroid/view/View;Landroid/view/ViewGroup;ZLcom/narvii/util/text/OnTagClickListener;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected createTipperListRequest(II)Lcom/narvii/util/http/ApiRequest;
    .locals 4

    .line 428
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 432
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 433
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->apiTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/tipping/tipped-users-summary"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 434
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "start"

    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 435
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "size"

    invoke-virtual {p1, v0, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected createUserGridView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .line 1305
    iget v0, p0, Lcom/narvii/detail/DetailAdapter;->columnSize:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1306
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1307
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    .line 1308
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    const v3, 0x7f070116

    .line 1309
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x7f070115

    .line 1310
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v4, 0x6

    const/16 v5, 0xc

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v3

    .line 1311
    div-int v0, v2, v0

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/narvii/detail/DetailAdapter;->columnSize:I

    .line 1312
    iget v0, p0, Lcom/narvii/detail/DetailAdapter;->columnSize:I

    iget v4, p0, Lcom/narvii/detail/DetailAdapter;->rawSize:I

    mul-int v4, v4, v0

    iput v4, p0, Lcom/narvii/detail/DetailAdapter;->userListSize:I

    mul-int v3, v3, v0

    sub-int/2addr v2, v3

    .line 1313
    div-int/lit8 v2, v2, 0x2

    div-int/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/narvii/detail/DetailAdapter;->userListMargin:I

    .line 1315
    :cond_0
    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter;->userListResponse:Lcom/narvii/model/api/UserListResponse;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_5

    .line 1316
    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter;->userListError:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "userGridError"

    if-eqz p1, :cond_1

    .line 1318
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p1

    .line 1321
    :cond_1
    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter;->userListError:Ljava/lang/String;

    invoke-virtual {p0, p2, v3, p1}, Lcom/narvii/list/NVAdapter;->createErrorItem(Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    .line 1322
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p1

    .line 1327
    :cond_2
    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter;->userListRequest:Lcom/narvii/util/http/ApiRequest;

    if-nez v0, :cond_3

    .line 1328
    iget v0, p0, Lcom/narvii/detail/DetailAdapter;->userListSize:I

    mul-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v2, v0}, Lcom/narvii/detail/DetailAdapter;->createUserListRequest(II)Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/detail/DetailAdapter;->userListRequest:Lcom/narvii/util/http/ApiRequest;

    const-string v0, "api"

    .line 1329
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 1330
    iget-object v1, p0, Lcom/narvii/detail/DetailAdapter;->userListRequest:Lcom/narvii/util/http/ApiRequest;

    iget-object v2, p0, Lcom/narvii/detail/DetailAdapter;->userListListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :cond_3
    const-string/jumbo v0, "userGridLoading"

    if-eqz p1, :cond_4

    .line 1334
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-object p1

    .line 1337
    :cond_4
    invoke-virtual {p0, p2, v3}, Lcom/narvii/list/NVAdapter;->createLoadingItem(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 1338
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p1

    :cond_5
    const-string/jumbo v0, "userGrid"

    if-eqz p1, :cond_6

    .line 1344
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_0

    :cond_6
    const p1, 0x7f0b0147

    .line 1347
    invoke-virtual {p0, p1, p2, v3}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 1348
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1350
    :goto_0
    invoke-static {p1, p0}, Lcom/narvii/logging/LogUtils;->setShownInAdapter(Landroid/view/View;Lcom/narvii/logging/Area;)V

    const p2, 0x7f09000e

    .line 1351
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const p2, 0x7f0904e3

    .line 1353
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/GridLayout;

    .line 1354
    iget v0, p0, Lcom/narvii/detail/DetailAdapter;->columnSize:I

    invoke-virtual {p2, v0}, Landroid/widget/GridLayout;->setColumnCount(I)V

    .line 1355
    iget v0, p0, Lcom/narvii/detail/DetailAdapter;->rawSize:I

    invoke-virtual {p2, v0}, Landroid/widget/GridLayout;->setRowCount(I)V

    const/4 v0, 0x0

    .line 1356
    :goto_1
    iget v4, p0, Lcom/narvii/detail/DetailAdapter;->userListSize:I

    if-ge v0, v4, :cond_13

    .line 1359
    iget-object v4, p0, Lcom/narvii/detail/DetailAdapter;->userListResponse:Lcom/narvii/model/api/UserListResponse;

    invoke-virtual {v4}, Lcom/narvii/model/api/UserListResponse;->list()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/narvii/detail/DetailAdapter;->userListResponse:Lcom/narvii/model/api/UserListResponse;

    invoke-virtual {v4}, Lcom/narvii/model/api/UserListResponse;->list()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v0, :cond_7

    .line 1360
    iget-object v4, p0, Lcom/narvii/detail/DetailAdapter;->userListResponse:Lcom/narvii/model/api/UserListResponse;

    invoke-virtual {v4}, Lcom/narvii/model/api/UserListResponse;->list()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/User;

    goto :goto_2

    :cond_7
    move-object v4, v3

    .line 1362
    :goto_2
    invoke-virtual {p2}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v5

    if-le v5, v0, :cond_8

    invoke-virtual {p2, v0}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    goto :goto_3

    :cond_8
    move-object v5, v3

    :goto_3
    const/16 v6, 0x8

    if-nez v4, :cond_9

    if-eqz v5, :cond_12

    .line 1365
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    :cond_9
    if-nez v5, :cond_c

    .line 1369
    iget v5, p0, Lcom/narvii/detail/DetailAdapter;->userListSize:I

    sub-int/2addr v5, v1

    if-ne v0, v5, :cond_a

    .line 1370
    iget-object v5, p0, Lcom/narvii/list/NVAdapter;->inflater:Landroid/view/LayoutInflater;

    const v7, 0x7f0b0149

    invoke-virtual {v5, v7, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    goto :goto_4

    .line 1372
    :cond_a
    iget-object v5, p0, Lcom/narvii/list/NVAdapter;->inflater:Landroid/view/LayoutInflater;

    const v7, 0x7f0b0148

    invoke-virtual {v5, v7, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 1374
    :goto_4
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1375
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x11

    if-ge v8, v9, :cond_b

    .line 1376
    iget v8, p0, Lcom/narvii/detail/DetailAdapter;->userListMargin:I

    iput v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1377
    iput v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_5

    .line 1379
    :cond_b
    iget v8, p0, Lcom/narvii/detail/DetailAdapter;->userListMargin:I

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 1380
    iget v8, p0, Lcom/narvii/detail/DetailAdapter;->userListMargin:I

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 1382
    :goto_5
    invoke-virtual {p2, v5}, Landroid/widget/GridLayout;->addView(Landroid/view/View;)V

    .line 1385
    :cond_c
    invoke-static {v5, v4}, Lcom/narvii/logging/LogUtils;->setAttachedObject(Landroid/view/View;Ljava/lang/Object;)V

    const v7, 0x7f090c10

    .line 1388
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/narvii/widget/UserAvatarLayout;

    .line 1389
    iput-boolean v1, v7, Lcom/narvii/widget/UserAvatarLayout;->disableFullAvatarFrame:Z

    .line 1390
    invoke-virtual {v7, v4}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 1391
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1392
    invoke-virtual {v5, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1393
    iget-object v7, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v7, 0x7f0900ec

    .line 1395
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_d

    .line 1397
    iget-object v8, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    const-string v9, "ranking"

    invoke-interface {v8, v9}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/narvii/util/ranking/RankingService;

    .line 1398
    invoke-virtual {v8, v4}, Lcom/narvii/util/ranking/RankingService;->getInfluencerOrRankingBadge(Lcom/narvii/model/User;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1401
    :cond_d
    iget v4, p0, Lcom/narvii/detail/DetailAdapter;->userListSize:I

    sub-int/2addr v4, v1

    if-ne v0, v4, :cond_12

    const v4, 0x7f090723

    .line 1402
    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1403
    iget-object v8, p0, Lcom/narvii/detail/DetailAdapter;->userListResponse:Lcom/narvii/model/api/UserListResponse;

    invoke-virtual {v8}, Lcom/narvii/model/api/UserListResponse;->list()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    iget v9, p0, Lcom/narvii/detail/DetailAdapter;->userListSize:I

    if-le v8, v9, :cond_e

    const/4 v8, 0x1

    goto :goto_6

    :cond_e
    const/4 v8, 0x0

    :goto_6
    if-eqz v4, :cond_12

    if-eqz v8, :cond_10

    if-eqz v7, :cond_f

    .line 1407
    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1409
    :cond_f
    invoke-virtual {v5, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_10
    if-eqz v8, :cond_11

    const/4 v6, 0x0

    .line 1411
    :cond_11
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    if-eqz v8, :cond_12

    .line 1413
    invoke-static {v5, v3}, Lcom/narvii/logging/LogUtils;->setAttachedObject(Landroid/view/View;Ljava/lang/Object;)V

    :cond_12
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_13
    return-object p1
.end method

.method protected createUserListRequest(II)Lcom/narvii/util/http/ApiRequest;
    .locals 0

    .line 422
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p2, "you need to override createUserListRequest()"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public errorMessage()Ljava/lang/String;
    .locals 1

    .line 330
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter;->errorMsg:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected getCell(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .line 594
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->DIVIDER:Lcom/narvii/detail/DetailAdapter$CellType;

    const v1, 0x7f090b04

    const v2, 0x7f090b03

    const/4 v3, 0x0

    const v4, -0x5b5b5c

    if-ne p1, v0, :cond_1

    const p1, 0x7f0b013b

    .line 595
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/detail/DividerItem;

    .line 598
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 599
    :cond_0
    invoke-virtual {p2}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v3

    .line 600
    :goto_0
    invoke-virtual {p1, v3}, Lcom/narvii/detail/DividerItem;->setId(Ljava/lang/String;)V

    .line 601
    invoke-virtual {p0, p1, v2, v4}, Lcom/narvii/detail/DetailAdapter;->setTextColor(Landroid/view/View;II)V

    .line 602
    invoke-virtual {p0, p1, v1, v4}, Lcom/narvii/detail/DetailAdapter;->setTextColor(Landroid/view/View;II)V

    const p2, 0x7f090b05

    .line 603
    invoke-virtual {p0, p1, p2, v4}, Lcom/narvii/detail/DetailAdapter;->setTextColor(Landroid/view/View;II)V

    const p2, 0x7f090b06

    .line 604
    invoke-virtual {p0, p1, p2, v4}, Lcom/narvii/detail/DetailAdapter;->setTextColor(Landroid/view/View;II)V

    return-object p1

    .line 607
    :cond_1
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->COMMENT_HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    const/16 v5, 0x8

    const v6, 0x7f090b5b

    const v7, -0x777778

    const/4 v8, -0x1

    const/4 v9, 0x0

    if-ne p1, v0, :cond_8

    const p1, 0x7f0b0137

    .line 608
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 609
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    const v0, 0x7f0f02ac

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f090299

    .line 610
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 611
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/TintButton;

    iget-boolean p3, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-nez p3, :cond_2

    const p3, -0x777778

    goto :goto_1

    :cond_2
    const/4 p3, -0x1

    :goto_1
    invoke-virtual {p2, p3}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    const p2, 0x7f090c16

    .line 612
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/TintButton;

    iget-boolean v0, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-nez v0, :cond_3

    const v8, -0x777778

    :cond_3
    invoke-virtual {p3, v8}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 613
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->showUserCommentSetting()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v5, 0x0

    :cond_4
    invoke-virtual {p3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 614
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0901b9

    .line 615
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-boolean p3, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-eqz p3, :cond_5

    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getHeaderBackgroundColor()I

    move-result p3

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    const v0, 0x7f0600ef

    invoke-static {p3, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    :goto_2
    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 616
    invoke-virtual {p0, p1, v6, v7}, Lcom/narvii/detail/DetailAdapter;->setTextColor(Landroid/view/View;II)V

    const p2, 0x7f090290

    .line 617
    invoke-virtual {p0, p1, p2, v7}, Lcom/narvii/detail/DetailAdapter;->setTextColor(Landroid/view/View;II)V

    .line 618
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p3

    instance-of p3, p3, Lcom/narvii/model/Feed;

    if-eqz p3, :cond_7

    .line 619
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 620
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p3

    check-cast p3, Lcom/narvii/model/Feed;

    invoke-virtual {p3}, Lcom/narvii/model/Feed;->getTotalCommentsCount()I

    move-result p3

    if-nez p3, :cond_6

    const-string p3, ""

    goto :goto_3

    :cond_6
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Feed;

    invoke-virtual {v0}, Lcom/narvii/model/Feed;->getTotalCommentsCount()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_3
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 621
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 622
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 624
    :cond_7
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1

    .line 627
    :cond_8
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->COMMENT_ADD:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p1, v0, :cond_c

    const p1, 0x7f0b0135

    .line 628
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090061

    .line 629
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 630
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p3

    .line 631
    instance-of v0, p3, Lcom/narvii/model/Blog;

    if-eqz v0, :cond_9

    check-cast p3, Lcom/narvii/model/Blog;

    iget p3, p3, Lcom/narvii/model/Blog;->type:I

    const/4 v0, 0x3

    if-ne p3, v0, :cond_9

    .line 632
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0de0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    const-string p3, "affiliations"

    .line 634
    invoke-virtual {p0, p3}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/community/AffiliationsService;

    const-string v0, "config"

    .line 635
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 636
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    .line 637
    invoke-virtual {p3, v0}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    const-string v1, "account"

    .line 638
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/AccountService;

    .line 639
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v2

    .line 640
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 641
    invoke-virtual {v1, v9}, Lcom/narvii/account/AccountService;->getUserProfile(I)Lcom/narvii/model/User;

    move-result-object v2

    :cond_a
    const v1, 0x7f090c10

    .line 644
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/UserAvatarLayout;

    .line 645
    invoke-virtual {v1, v2}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 646
    iget-boolean v2, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    iget v3, p0, Lcom/narvii/list/NVAdapter;->backgroundColor:I

    invoke-virtual {v1, v2, v3, v9}, Lcom/narvii/widget/UserAvatarLayout;->setDarkTheme(ZIZ)V

    .line 647
    invoke-virtual {p3, v0}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    move-result p3

    if-eqz p3, :cond_b

    const/4 v5, 0x0

    :cond_b
    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 648
    invoke-virtual {p0, p1, p2, v7}, Lcom/narvii/detail/DetailAdapter;->setTextColor(Landroid/view/View;II)V

    const p3, 0x7f0801fd

    const v0, 0x7f0801fb

    .line 649
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/narvii/detail/DetailAdapter;->setBackgroundColor(Landroid/view/View;III)V

    return-object p1

    .line 652
    :cond_c
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->LOADING:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p1, v0, :cond_d

    .line 653
    invoke-virtual {p0, p3, p2}, Lcom/narvii/list/NVAdapter;->createLoadingItem(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 656
    :cond_d
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->LIST_DIVIDER:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p1, v0, :cond_e

    const p1, 0x7f0b04b7

    .line 657
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 660
    :cond_e
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->DIVIDER_LINE:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p1, v0, :cond_10

    const p1, 0x7f0b013c

    .line 661
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090368

    .line 662
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-boolean p3, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-eqz p3, :cond_f

    goto :goto_4

    :cond_f
    const/high16 v8, 0x22000000

    :goto_4
    invoke-virtual {p2, v8}, Landroid/view/View;->setBackgroundColor(I)V

    return-object p1

    .line 665
    :cond_10
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->PADDING10:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p1, v0, :cond_11

    const p1, 0x7f0b014f

    .line 666
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 670
    :cond_11
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->USER_GRID:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p1, v0, :cond_14

    .line 671
    invoke-virtual {p0, p2, p3}, Lcom/narvii/detail/DetailAdapter;->createUserGridView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090232

    .line 672
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/TintButton;

    if-eqz p2, :cond_13

    .line 674
    iget-boolean p3, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-nez p3, :cond_12

    goto :goto_5

    :cond_12
    const/4 v7, -0x1

    :goto_5
    invoke-virtual {p2, v7}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    :cond_13
    return-object p1

    .line 678
    :cond_14
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->TIPPING:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p1, v0, :cond_1e

    .line 679
    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter;->tipCell:Landroid/view/View;

    if-nez p1, :cond_15

    const p1, 0x7f0b0694

    .line 680
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/detail/DetailAdapter;->tipCell:Landroid/view/View;

    .line 682
    :cond_15
    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter;->tipCell:Landroid/view/View;

    const p2, 0x7f090b91

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/tipping/TippingItem;

    .line 683
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p2

    .line 684
    instance-of p3, p2, Lcom/narvii/model/Tippable;

    if-eqz p3, :cond_1c

    .line 685
    check-cast p2, Lcom/narvii/model/Tippable;

    invoke-interface {p2}, Lcom/narvii/model/Tippable;->getTippingInfo()Lcom/narvii/model/TippingInfo;

    move-result-object p3

    .line 686
    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter;->tipLogListResponse:Lcom/narvii/tipping/model/TipLogListResponse;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/narvii/tipping/model/TipLogListResponse;->list()Ljava/util/List;

    move-result-object v3

    .line 688
    :cond_16
    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter;->tippingHelper:Lcom/narvii/tipping/TippingHelper;

    if-nez v0, :cond_17

    .line 689
    new-instance v0, Lcom/narvii/tipping/TippingHelper;

    invoke-direct {v0, p0}, Lcom/narvii/tipping/TippingHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/detail/DetailAdapter;->tippingHelper:Lcom/narvii/tipping/TippingHelper;

    .line 691
    :cond_17
    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter;->tippingHelper:Lcom/narvii/tipping/TippingHelper;

    invoke-virtual {v0, p2}, Lcom/narvii/tipping/TippingHelper;->isTipAuthor(Lcom/narvii/model/Tippable;)Z

    move-result p2

    .line 693
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz v3, :cond_19

    .line 695
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_18
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/tipping/model/TipLog;

    if-eqz v2, :cond_18

    .line 696
    iget-object v2, v2, Lcom/narvii/tipping/model/TipLog;->tipper:Lcom/narvii/model/User;

    if-eqz v2, :cond_18

    .line 697
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 704
    :cond_19
    iget-object v1, p0, Lcom/narvii/detail/DetailAdapter;->tipLogListResponse:Lcom/narvii/tipping/model/TipLogListResponse;

    if-eqz v1, :cond_1b

    .line 705
    iget-object v1, v1, Lcom/narvii/tipping/model/TipLogListResponse;->tipSummary:Lcom/narvii/tipping/model/TipSummary;

    if-eqz v1, :cond_1a

    .line 706
    iget v8, v1, Lcom/narvii/tipping/model/TipSummary;->tippersCount:I

    goto :goto_7

    :cond_1a
    if-eqz p3, :cond_1b

    .line 708
    iget v8, p3, Lcom/narvii/model/TippingInfo;->tippersCount:I

    .line 712
    :cond_1b
    :goto_7
    invoke-virtual {p1, p3, v0, p2, v8}, Lcom/narvii/tipping/TippingItem;->setTippingInfo(Lcom/narvii/model/TippingInfo;Ljava/util/List;ZI)V

    .line 713
    iget-boolean p2, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    invoke-virtual {p1, p2}, Lcom/narvii/tipping/TippingItem;->setDarkTheme(Z)V

    .line 716
    :cond_1c
    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter;->tipLogListResponse:Lcom/narvii/tipping/model/TipLogListResponse;

    if-nez p1, :cond_1d

    .line 717
    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter;->tipperListError:Ljava/lang/String;

    if-nez p1, :cond_1d

    .line 719
    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter;->tipperListRequest:Lcom/narvii/util/http/ApiRequest;

    if-nez p1, :cond_1d

    .line 720
    invoke-direct {p0}, Lcom/narvii/detail/DetailAdapter;->refreshTippingList()V

    .line 725
    :cond_1d
    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter;->tipCell:Landroid/view/View;

    const p2, 0x7f090366

    const p3, 0x7f0600c4

    const v0, 0x7f0600c5

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/narvii/detail/DetailAdapter;->setBackgroundColor(Landroid/view/View;III)V

    .line 727
    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter;->tipCell:Landroid/view/View;

    const p2, 0x7f090b83

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 728
    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter;->tipCell:Landroid/view/View;

    const p2, 0x7f0906e2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 729
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setOnBarClickListener(Landroid/view/View$OnClickListener;)V

    .line 730
    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter;->tipCell:Landroid/view/View;

    const p2, 0x7f090b82

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 732
    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter;->tipCell:Landroid/view/View;

    return-object p1

    .line 734
    :cond_1e
    instance-of v0, p1, Lcom/narvii/detail/DetailAdapter$HeaderTag;

    if-eqz v0, :cond_20

    .line 735
    move-object v0, p1

    check-cast v0, Lcom/narvii/detail/DetailAdapter$HeaderTag;

    iget v1, v0, Lcom/narvii/detail/DetailAdapter$HeaderTag;->stringId:I

    iget v0, v0, Lcom/narvii/detail/DetailAdapter$HeaderTag;->count:I

    invoke-virtual {p0, v1, v0, p2, p3}, Lcom/narvii/detail/DetailAdapter;->createHeaderView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 737
    invoke-virtual {p0, v9}, Lcom/narvii/detail/DetailAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, p1, :cond_1f

    .line 738
    invoke-virtual {p2, v9, v9, v9, v9}, Landroid/view/View;->setPadding(IIII)V

    :cond_1f
    return-object p2

    .line 742
    :cond_20
    instance-of v0, p1, Lcom/narvii/detail/DetailAdapter$AddTag;

    if-eqz v0, :cond_24

    const v0, 0x7f0b0133

    .line 743
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f090063

    .line 745
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 746
    iget-boolean v0, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-eqz v0, :cond_21

    const v0, 0x7f080595

    goto :goto_8

    :cond_21
    const v0, 0x7f080594

    .line 747
    :goto_8
    iget-boolean v1, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-nez v1, :cond_22

    const v8, -0x929293

    .line 748
    :cond_22
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz p3, :cond_23

    .line 750
    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 751
    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_23
    const p3, 0x7f09055f

    .line 753
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/TintButton;

    .line 754
    invoke-virtual {p3, v8}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 755
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 756
    check-cast p1, Lcom/narvii/detail/DetailAdapter$AddTag;

    iget p1, p1, Lcom/narvii/detail/DetailAdapter$AddTag;->stringId:I

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(I)V

    .line 757
    invoke-virtual {p3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p2

    .line 760
    :cond_24
    instance-of v0, p1, Lcom/narvii/detail/DateDivider;

    if-eqz v0, :cond_26

    const v0, 0x7f0b0139

    .line 761
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 762
    instance-of p3, p2, Lcom/narvii/detail/DateDividerItem;

    if-eqz p3, :cond_25

    .line 763
    move-object p3, p2

    check-cast p3, Lcom/narvii/detail/DateDividerItem;

    check-cast p1, Lcom/narvii/detail/DateDivider;

    invoke-virtual {p3, p1}, Lcom/narvii/detail/DateDividerItem;->setDateDivider(Lcom/narvii/detail/DateDivider;)V

    .line 764
    invoke-virtual {p0, p2, v2, v4}, Lcom/narvii/detail/DetailAdapter;->setTextColor(Landroid/view/View;II)V

    .line 765
    invoke-virtual {p0, p2, v1, v4}, Lcom/narvii/detail/DetailAdapter;->setTextColor(Landroid/view/View;II)V

    const p1, 0x7f09032e

    .line 766
    invoke-virtual {p0, p2, p1, v4}, Lcom/narvii/detail/DetailAdapter;->setTextColor(Landroid/view/View;II)V

    :cond_25
    return-object p2

    .line 770
    :cond_26
    instance-of v0, p1, Lcom/narvii/model/Media;

    if-eqz v0, :cond_27

    .line 771
    check-cast p1, Lcom/narvii/model/Media;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/detail/DetailAdapter;->createMediaView(Lcom/narvii/model/Media;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 773
    :cond_27
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_28

    .line 774
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/detail/DetailAdapter;->createTextView(Ljava/lang/String;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 778
    :cond_28
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p2, p1}, Lcom/narvii/list/NVAdapter;->createErrorItem(Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected getCellTypes(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/detail/DetailAdapter$CellType;",
            ">;)V"
        }
    .end annotation

    .line 541
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->DIVIDER:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 542
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->COMMENT_HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 543
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->COMMENT_ADD:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 544
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->LOADING:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->LIST_DIVIDER:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 546
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->DIVIDER_LINE:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 547
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->PADDING10:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->USER_GRID:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 549
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->TIPPING:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 550
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-class v1, Lcom/narvii/detail/DetailAdapter$HeaderTag;

    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/Class;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 551
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-class v1, Lcom/narvii/detail/DetailAdapter$AddTag;

    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/Class;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 552
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-class v1, Lcom/narvii/detail/DateDivider;

    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/Class;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 553
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-class v1, Lcom/narvii/model/Media;

    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/Class;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 554
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-class v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/Class;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected getCommunity(I)Lcom/narvii/model/Community;
    .locals 3

    .line 939
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    const-string v1, "community"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/CommunityService;

    .line 940
    invoke-virtual {v0, p1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object p1

    if-nez p1, :cond_1

    .line 942
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    const-string v2, "__community"

    if-eqz v1, :cond_0

    .line 943
    check-cast v0, Lcom/narvii/app/NVFragment;

    invoke-virtual {v0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/model/Community;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Community;

    goto :goto_0

    .line 944
    :cond_0
    instance-of v1, v0, Lcom/narvii/app/NVActivity;

    if-eqz v1, :cond_1

    .line 945
    check-cast v0, Lcom/narvii/app/NVActivity;

    invoke-virtual {v0, v2}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/model/Community;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Community;

    :cond_1
    :goto_0
    return-object p1
.end method

.method public getCount()I
    .locals 1

    .line 1127
    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter;->response:Lcom/narvii/model/api/ObjectResponse;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1130
    :cond_0
    invoke-direct {p0}, Lcom/narvii/detail/DetailAdapter;->cells()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected getHeaderBackgroundColor()I
    .locals 1

    const v0, 0x32ffffff

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1135
    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter;->cells:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1136
    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter;->cells:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1138
    :cond_0
    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter;->cells:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 1149
    invoke-virtual {p0, p1}, Lcom/narvii/detail/DetailAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 1150
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long v0, p1

    :goto_0
    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 4

    .line 1160
    invoke-virtual {p0, p1}, Lcom/narvii/detail/DetailAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1164
    :cond_0
    iget-object v1, p0, Lcom/narvii/detail/DetailAdapter;->cellTypes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-lez v1, :cond_2

    .line 1165
    iget-object v2, p0, Lcom/narvii/detail/DetailAdapter;->cellTypes:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 1166
    invoke-virtual {v2, p1}, Lcom/narvii/detail/DetailAdapter$CellType;->isType(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1171
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown cell type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    return v0
.end method

.method public getObject()Lcom/narvii/model/NVObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 355
    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter;->response:Lcom/narvii/model/api/ObjectResponse;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/narvii/model/api/ObjectResponse;->object()Lcom/narvii/model/NVObject;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected getPublishNdcId()I
    .locals 3

    .line 952
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Feed;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 956
    :cond_0
    iget v1, v0, Lcom/narvii/model/Feed;->ndcId:I

    .line 957
    instance-of v2, v0, Lcom/narvii/model/Blog;

    if-eqz v2, :cond_1

    .line 958
    check-cast v0, Lcom/narvii/model/Blog;

    invoke-virtual {v0}, Lcom/narvii/model/Blog;->getPublishNdcId()I

    move-result v1

    :cond_1
    return v1
.end method

.method public getResponse()Lcom/narvii/model/api/ObjectResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 343
    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter;->response:Lcom/narvii/model/api/ObjectResponse;

    return-object v0
.end method

.method public getSendRequestCause()I
    .locals 1

    .line 124
    iget v0, p0, Lcom/narvii/detail/DetailAdapter;->sendRequestCause:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1204
    invoke-virtual {p0, p1}, Lcom/narvii/detail/DetailAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 1206
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/detail/DetailAdapter;->getCell(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 1177
    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter;->cellTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 4

    .line 1187
    invoke-virtual {p0, p1}, Lcom/narvii/detail/DetailAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1191
    :cond_0
    instance-of v1, p1, Lcom/narvii/detail/DetailAdapter$CellType;

    if-eqz v1, :cond_1

    .line 1192
    check-cast p1, Lcom/narvii/detail/DetailAdapter$CellType;

    iget-boolean p1, p1, Lcom/narvii/detail/DetailAdapter$CellType;->isEnabled:Z

    return p1

    .line 1194
    :cond_1
    iget-object v1, p0, Lcom/narvii/detail/DetailAdapter;->cellTypes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 1195
    iget-object v3, v2, Lcom/narvii/detail/DetailAdapter$CellType;->clazz:Ljava/lang/Class;

    if-eqz v3, :cond_2

    invoke-virtual {v2, p1}, Lcom/narvii/detail/DetailAdapter$CellType;->isType(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1196
    iget-boolean p1, v2, Lcom/narvii/detail/DetailAdapter$CellType;->isEnabled:Z

    return p1

    :cond_3
    return v0
.end method

.method public isListShown()Z
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter;->response:Lcom/narvii/model/api/ObjectResponse;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter;->errorMsg:Ljava/lang/String;

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

.method public isLoading()Z
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    const/4 v0, 0x0

    .line 362
    iput-object v0, p0, Lcom/narvii/detail/DetailAdapter;->cells:Ljava/util/ArrayList;

    .line 363
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public abstract objectType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+TT;>;"
        }
    .end annotation
.end method

.method public onAttach()V
    .locals 4

    .line 270
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 272
    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter;->userIPC:Lcom/narvii/logging/Impression/ImpressionCollector;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;Z)V

    .line 273
    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter;->response:Lcom/narvii/model/api/ObjectResponse;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 275
    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    instance-of v2, v1, Landroid/app/Activity;

    const-string v3, "prefetch"

    if-eqz v2, :cond_0

    .line 276
    check-cast v1, Landroid/app/Activity;

    invoke-static {v1, v3}, Lcom/narvii/util/ParamUtils;->getStringParam(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 277
    :cond_0
    instance-of v2, v1, Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_1

    .line 278
    check-cast v1, Landroid/support/v4/app/Fragment;

    invoke-static {v1, v3}, Lcom/narvii/util/ParamUtils;->getStringParam(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 280
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->objectType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/NVObject;

    if-eqz v0, :cond_2

    .line 282
    invoke-virtual {p0, v0}, Lcom/narvii/detail/DetailAdapter;->setObject(Lcom/narvii/model/NVObject;)V

    :cond_2
    const/4 v0, 0x1

    .line 285
    iput v0, p0, Lcom/narvii/detail/DetailAdapter;->sendRequestCause:I

    .line 286
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->sendRequest()V

    :cond_3
    return-void
.end method

.method public onErrorRetry()V
    .locals 1

    .line 335
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->refreshMonitorAbort()V

    const/4 v0, 0x0

    .line 336
    iput-object v0, p0, Lcom/narvii/detail/DetailAdapter;->errorMsg:Ljava/lang/String;

    const/4 v0, 0x3

    .line 337
    iput v0, p0, Lcom/narvii/detail/DetailAdapter;->sendRequestCause:I

    .line 338
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->sendRequest()V

    .line 339
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 400
    iput-object p2, p0, Lcom/narvii/detail/DetailAdapter;->errorMsg:Ljava/lang/String;

    .line 401
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 6

    .line 822
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->USER_GRID:Lcom/narvii/detail/DetailAdapter$CellType;

    const/4 v1, 0x1

    if-ne p3, v0, :cond_1

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    .line 824
    invoke-virtual {p0, p5, p1}, Lcom/narvii/detail/DetailAdapter;->onUserGridClick(Landroid/view/View;Ljava/lang/String;)Z

    :cond_0
    return v1

    .line 828
    :cond_1
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->COMMENT_HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p3, v0, :cond_c

    if-eqz p5, :cond_c

    .line 829
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v0

    const v2, 0x7f090299

    const/4 v3, 0x0

    if-ne v0, v2, :cond_7

    .line 830
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/model/Blog;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Blog;

    iget-boolean p1, p1, Lcom/narvii/model/Blog;->isGlobalAnnouncement:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 831
    :goto_0
    new-instance p2, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    const/4 p3, 0x4

    const/16 p4, 0x8

    if-nez p1, :cond_4

    const p5, 0x7f0f02aa

    .line 833
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->commentSort()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    const/4 v0, 0x4

    goto :goto_1

    :cond_3
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p2, p5, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    :cond_4
    const p5, 0x7f0f02a8

    .line 835
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->commentSort()I

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x4

    goto :goto_2

    :cond_5
    const/16 v0, 0x8

    :goto_2
    invoke-virtual {p2, p5, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    const p5, 0x7f0f02a9

    .line 836
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->commentSort()I

    move-result v0

    if-ne v0, v1, :cond_6

    goto :goto_3

    :cond_6
    const/16 p3, 0x8

    :goto_3
    invoke-virtual {p2, p5, p3}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    const p3, 0x7f0f0ea7

    .line 837
    invoke-virtual {p2, p3, v3}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 838
    new-instance p3, Lcom/narvii/detail/DetailAdapter$3;

    invoke-direct {p3, p0, p1}, Lcom/narvii/detail/DetailAdapter$3;-><init>(Lcom/narvii/detail/DetailAdapter;Z)V

    invoke-virtual {p2, p3}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 871
    invoke-virtual {p2}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    return v1

    .line 873
    :cond_7
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v0

    const v2, 0x7f090290

    if-eq v0, v2, :cond_8

    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v0

    const v2, 0x7f090b5b

    if-ne v0, v2, :cond_b

    :cond_8
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/model/Feed;

    if-eqz v0, :cond_b

    .line 874
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Feed;

    .line 875
    invoke-static {p0, p1, v3}, Lcom/narvii/comment/CommentHelper;->getCommentIntent(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;Z)Landroid/content/Intent;

    move-result-object p2

    .line 876
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    move-result p3

    if-eqz p3, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getPublishNdcId()I

    move-result v3

    :goto_4
    const-string p3, "__communityId"

    invoke-virtual {p2, p3, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 877
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    .line 878
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getTotalCommentsCount()I

    move-result p1

    if-nez p1, :cond_a

    .line 879
    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter;->pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

    invoke-virtual {p1}, Lcom/narvii/account/push/PushNotificationHelper;->checkRemindDialogWhenPostFinished()V

    :cond_a
    return v1

    .line 882
    :cond_b
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v0

    const v2, 0x7f090c16

    if-ne v0, v2, :cond_c

    .line 883
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->openCommentSetting()V

    return v1

    .line 887
    :cond_c
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->COMMENT_ADD:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p3, v0, :cond_d

    .line 888
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->commentNew()V

    return v1

    .line 891
    :cond_d
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->TIPPING:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p3, v0, :cond_14

    .line 892
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    .line 893
    instance-of v2, v0, Lcom/narvii/model/Feed;

    if-nez v2, :cond_e

    return v1

    .line 897
    :cond_e
    check-cast v0, Lcom/narvii/model/Feed;

    .line 898
    iget-object v2, p0, Lcom/narvii/detail/DetailAdapter;->tippingHelper:Lcom/narvii/tipping/TippingHelper;

    if-nez v2, :cond_f

    .line 899
    new-instance v2, Lcom/narvii/tipping/TippingHelper;

    invoke-direct {v2, p0}, Lcom/narvii/tipping/TippingHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v2, p0, Lcom/narvii/detail/DetailAdapter;->tippingHelper:Lcom/narvii/tipping/TippingHelper;

    .line 901
    :cond_f
    iget-object v2, p0, Lcom/narvii/detail/DetailAdapter;->tippingHelper:Lcom/narvii/tipping/TippingHelper;

    invoke-virtual {v2, v0}, Lcom/narvii/tipping/TippingHelper;->isTipAuthor(Lcom/narvii/model/Tippable;)Z

    move-result v2

    const-string v3, "Detailed Page"

    if-eqz p5, :cond_12

    .line 902
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f090b83

    if-ne v4, v5, :cond_12

    .line 904
    sget-object v4, Lcom/narvii/logging/ActSemantic;->prop:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, v4}, Lcom/narvii/detail/DetailAdapter;->sendMainLogEvent(Lcom/narvii/logging/ActSemantic;)V

    const-string v4, "account"

    .line 905
    invoke-virtual {p0, v4}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/account/AccountService;

    .line 906
    invoke-virtual {v4}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v4

    if-nez v4, :cond_10

    .line 907
    new-instance p1, Landroid/content/Intent;

    const-string p2, "tipping"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->ensureLogin(Landroid/content/Intent;)V

    return v1

    .line 910
    :cond_10
    invoke-virtual {p0, v2}, Lcom/narvii/detail/DetailAdapter;->onTipBoxClicked(Z)V

    if-eqz v2, :cond_11

    .line 912
    iget-object v1, p0, Lcom/narvii/detail/DetailAdapter;->tippingHelper:Lcom/narvii/tipping/TippingHelper;

    invoke-virtual {v1, v3}, Lcom/narvii/tipping/TippingHelper;->source(Ljava/lang/String;)Lcom/narvii/tipping/TippingHelper;

    .line 913
    iget-object v1, p0, Lcom/narvii/detail/DetailAdapter;->tippingHelper:Lcom/narvii/tipping/TippingHelper;

    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getPublishNdcId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/narvii/detail/DetailAdapter;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/narvii/tipping/TippingHelper;->openTippingList(Lcom/narvii/model/Tippable;Lcom/narvii/model/Community;)V

    goto :goto_5

    .line 915
    :cond_11
    iget-object v1, p0, Lcom/narvii/detail/DetailAdapter;->tippingHelper:Lcom/narvii/tipping/TippingHelper;

    invoke-virtual {v1, v3}, Lcom/narvii/tipping/TippingHelper;->source(Ljava/lang/String;)Lcom/narvii/tipping/TippingHelper;

    .line 916
    iget-object v1, p0, Lcom/narvii/detail/DetailAdapter;->tippingHelper:Lcom/narvii/tipping/TippingHelper;

    invoke-virtual {v1, v0, p0}, Lcom/narvii/tipping/TippingHelper;->openTipDialog(Lcom/narvii/model/Tippable;Lcom/narvii/monetization/store/TippingConfirmDialog$TipSuccessListener;)Lcom/narvii/monetization/store/TippingConfirmDialog;

    :cond_12
    :goto_5
    if-eqz p5, :cond_14

    .line 920
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0906e2

    if-eq v1, v2, :cond_13

    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f090b82

    if-ne v1, v2, :cond_14

    .line 921
    :cond_13
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object v1

    sget-object v2, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {v1, v2}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    const-string v2, "PropsGiverList"

    invoke-virtual {v1, v2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 923
    iget-object v1, p0, Lcom/narvii/detail/DetailAdapter;->tippingHelper:Lcom/narvii/tipping/TippingHelper;

    invoke-virtual {v1, v3}, Lcom/narvii/tipping/TippingHelper;->source(Ljava/lang/String;)Lcom/narvii/tipping/TippingHelper;

    .line 924
    iget-object v1, p0, Lcom/narvii/detail/DetailAdapter;->tippingHelper:Lcom/narvii/tipping/TippingHelper;

    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getPublishNdcId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/narvii/detail/DetailAdapter;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/narvii/tipping/TippingHelper;->openTippingList(Lcom/narvii/model/Tippable;Lcom/narvii/model/Community;)V

    .line 927
    :cond_14
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 4

    .line 1270
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/model/User;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/narvii/notification/Notification;->parentId:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter;->userListResponse:Lcom/narvii/model/api/UserListResponse;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v1, "new"

    if-eq v0, v1, :cond_0

    const-string v2, "delete"

    if-ne v0, v2, :cond_2

    .line 1275
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/narvii/detail/DetailAdapter;->userListSize:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/narvii/detail/DetailAdapter;->createUserListRequest(II)Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 1276
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest;->url()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p1, Lcom/narvii/notification/Notification;->parentId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1277
    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter;->userListResponse:Lcom/narvii/model/api/UserListResponse;

    invoke-virtual {v0}, Lcom/narvii/model/api/UserListResponse;->list()Ljava/util/List;

    move-result-object v0

    iget-object v3, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/narvii/model/User;

    iget-object v3, v3, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/narvii/util/Utils;->removeId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 1279
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    if-ne v0, v1, :cond_1

    .line 1280
    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter;->userListResponse:Lcom/narvii/model/api/UserListResponse;

    invoke-virtual {v0}, Lcom/narvii/model/api/UserListResponse;->list()Ljava/util/List;

    move-result-object v0

    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/narvii/model/User;

    invoke-interface {v0, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1282
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "fail to update userList"

    .line 1285
    invoke-static {v0, p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ObjectResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "TE;)V"
        }
    .end annotation

    const/4 p1, 0x0

    .line 395
    iput-object p1, p0, Lcom/narvii/detail/DetailAdapter;->errorMsg:Ljava/lang/String;

    .line 396
    invoke-virtual {p0, p2}, Lcom/narvii/detail/DetailAdapter;->setResponse(Lcom/narvii/model/api/ObjectResponse;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 258
    invoke-super {p0, p1}, Lcom/narvii/list/NVAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "response"

    .line 260
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 261
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->responseType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/api/ObjectResponse;

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {p0, v0}, Lcom/narvii/detail/DetailAdapter;->setResponse(Lcom/narvii/model/api/ObjectResponse;)V

    :cond_0
    const-string v0, "errorMsg"

    .line 265
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/detail/DetailAdapter;->errorMsg:Ljava/lang/String;

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 292
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 293
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->saveInstanceState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 294
    iget-object v1, p0, Lcom/narvii/detail/DetailAdapter;->response:Lcom/narvii/model/api/ObjectResponse;

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->safeWriteAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "response"

    .line 295
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v1, p0, Lcom/narvii/detail/DetailAdapter;->errorMsg:Ljava/lang/String;

    const-string v2, "errorMsg"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method protected onTipBoxClicked(Z)V
    .locals 0

    return-void
.end method

.method public onTipSuccess()V
    .locals 5

    .line 793
    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter;->tipCell:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "account"

    .line 797
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 798
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 799
    iget-object v1, p0, Lcom/narvii/detail/DetailAdapter;->tipLogListResponse:Lcom/narvii/tipping/model/TipLogListResponse;

    if-eqz v1, :cond_2

    .line 800
    new-instance v1, Lcom/narvii/tipping/model/TipLog;

    invoke-direct {v1}, Lcom/narvii/tipping/model/TipLog;-><init>()V

    .line 801
    iput-object v0, v1, Lcom/narvii/tipping/model/TipLog;->tipper:Lcom/narvii/model/User;

    .line 802
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    iput-object v2, v1, Lcom/narvii/tipping/model/TipLog;->lastTippedTime:Ljava/util/Date;

    .line 804
    iget-object v2, p0, Lcom/narvii/detail/DetailAdapter;->tipLogListResponse:Lcom/narvii/tipping/model/TipLogListResponse;

    iget-object v3, v2, Lcom/narvii/tipping/model/TipLogListResponse;->tippedUserList:Ljava/util/List;

    if-nez v3, :cond_1

    .line 805
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/narvii/tipping/model/TipLogListResponse;->tippedUserList:Ljava/util/List;

    .line 807
    :cond_1
    iget-object v2, p0, Lcom/narvii/detail/DetailAdapter;->tipLogListResponse:Lcom/narvii/tipping/model/TipLogListResponse;

    invoke-virtual {v2}, Lcom/narvii/tipping/model/TipLogListResponse;->list()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/narvii/util/Utils;->removeId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 808
    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter;->tipLogListResponse:Lcom/narvii/tipping/model/TipLogListResponse;

    invoke-virtual {v0}, Lcom/narvii/tipping/model/TipLogListResponse;->list()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 809
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    .line 812
    :cond_2
    invoke-direct {p0}, Lcom/narvii/detail/DetailAdapter;->refreshTippingList()V

    return-void
.end method

.method protected onUserGridClick(Landroid/view/View;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 1426
    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter;->userListError:Ljava/lang/String;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 1427
    iput-object p1, p0, Lcom/narvii/detail/DetailAdapter;->userListError:Ljava/lang/String;

    .line 1428
    iput-object p1, p0, Lcom/narvii/detail/DetailAdapter;->userListRequest:Lcom/narvii/util/http/ApiRequest;

    .line 1429
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    return v0

    .line 1432
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/narvii/model/User;

    if-eqz v1, :cond_3

    .line 1433
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/User;

    .line 1434
    iget-object v1, p0, Lcom/narvii/detail/DetailAdapter;->userIPC:Lcom/narvii/logging/Impression/ImpressionCollector;

    sget-object v2, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, v1, p1, v2}, Lcom/narvii/list/NVAdapter;->getClickEventBuilder(Lcom/narvii/logging/Impression/ImpressionCollector;Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 1436
    invoke-static {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    if-nez p2, :cond_2

    .line 1438
    iget-object p2, p0, Lcom/narvii/detail/DetailAdapter;->source:Ljava/lang/String;

    :cond_2
    const-string v1, "Source"

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1439
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return v0

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method protected openCommentSetting()V
    .locals 3

    .line 931
    const-class v0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 932
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f02a1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 933
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f00f7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "subTitle"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "privilegeKey"

    const-string v2, "privilegeOfCommentOnUserProfile"

    .line 934
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 935
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

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

    .line 309
    invoke-virtual {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->refreshMonitorStart(ILcom/narvii/util/Callback;)V

    const/4 p1, 0x0

    .line 310
    iput-object p1, p0, Lcom/narvii/detail/DetailAdapter;->errorMsg:Ljava/lang/String;

    const/4 p2, 0x2

    .line 311
    iput p2, p0, Lcom/narvii/detail/DetailAdapter;->sendRequestCause:I

    .line 312
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->sendRequest()V

    .line 314
    iput-object p1, p0, Lcom/narvii/detail/DetailAdapter;->userListError:Ljava/lang/String;

    .line 315
    iput-object p1, p0, Lcom/narvii/detail/DetailAdapter;->userListResponse:Lcom/narvii/model/api/UserListResponse;

    .line 317
    iput-object p1, p0, Lcom/narvii/detail/DetailAdapter;->tipperListError:Ljava/lang/String;

    .line 318
    iput-object p1, p0, Lcom/narvii/detail/DetailAdapter;->tipperListRequest:Lcom/narvii/util/http/ApiRequest;

    .line 320
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->refreshMonitorEnd()V

    .line 321
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    return-void
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

.method protected sendMainLogEvent(Lcom/narvii/logging/ActSemantic;)V
    .locals 1

    .line 967
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "EngagementArea"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    return-void
.end method

.method protected sendRequest()V
    .locals 3

    const-string v0, "api"

    .line 384
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 385
    iget-object v1, p0, Lcom/narvii/detail/DetailAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    if-eqz v1, :cond_0

    .line 386
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 388
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->createRequest()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/detail/DetailAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    .line 389
    iget-object v1, p0, Lcom/narvii/detail/DetailAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    if-eqz v1, :cond_1

    .line 390
    iget-object v2, p0, Lcom/narvii/detail/DetailAdapter;->listener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :cond_1
    return-void
.end method

.method protected setBackgroundColor(Landroid/view/View;III)V
    .locals 0

    .line 578
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 580
    iget-boolean p2, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move p3, p4

    :goto_0
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    return-void
.end method

.method protected setCommentSort(I)V
    .locals 0

    return-void
.end method

.method protected setImageStrokeColor(Landroid/view/View;II)V
    .locals 1

    .line 567
    iget-boolean v0, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, -0x1

    :goto_0
    invoke-static {p1, p2, p3}, Lcom/narvii/util/ViewUtils;->setImageStrokeColor(Landroid/view/View;II)V

    return-void
.end method

.method public abstract setObject(Lcom/narvii/model/NVObject;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public setResponse(Lcom/narvii/model/api/ObjectResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 350
    iput-object p1, p0, Lcom/narvii/detail/DetailAdapter;->response:Lcom/narvii/model/api/ObjectResponse;

    .line 351
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected setTextColor(Landroid/view/View;II)V
    .locals 1

    const/4 v0, -0x1

    .line 558
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/narvii/detail/DetailAdapter;->setTextColor(Landroid/view/View;III)V

    return-void
.end method

.method protected setTextColor(Landroid/view/View;III)V
    .locals 1

    .line 562
    iget-boolean v0, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move p3, p4

    :goto_0
    invoke-static {p1, p2, p3}, Lcom/narvii/util/ViewUtils;->setTextColor(Landroid/view/View;II)V

    return-void
.end method

.method protected setTextColorSelector(Landroid/view/View;III)V
    .locals 1

    .line 571
    invoke-static {p1, p2}, Lcom/narvii/util/ViewUtils;->getTextView(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 573
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-boolean v0, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move p3, p4

    :goto_0
    invoke-static {p2, p3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method protected showEmojiOnly()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected showEmptyContent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public showShareMediaBar()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected showUserCommentSetting()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public splitSegments(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 454
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/detail/DetailAdapter;->splitSegments(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)V

    return-void
.end method

.method public splitSegments(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;Z)V"
        }
    .end annotation

    .line 459
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 460
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->showEmptyContent()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 461
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f03e8

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p2, :cond_2

    if-eqz p5, :cond_1

    .line 465
    invoke-interface {p3, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 467
    :cond_1
    invoke-interface {p4, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    :goto_0
    return-void

    .line 473
    :cond_3
    invoke-static {p1}, Lcom/narvii/util/text/IMGUtils;->extractIMGsWithIndices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 474
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz p5, :cond_4

    if-eqz p2, :cond_4

    .line 477
    invoke-interface {p3, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 480
    :cond_4
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez p5, :cond_5

    if-eqz p2, :cond_5

    .line 483
    invoke-interface {p4, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    return-void

    :cond_6
    if-eqz p2, :cond_8

    .line 490
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_1

    .line 493
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_2

    .line 491
    :cond_8
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    :goto_2
    const/4 p2, 0x0

    .line 497
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/Extractor$Entity;

    .line 498
    invoke-virtual {v2}, Lcom/twitter/Extractor$Entity;->getStart()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, p2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 499
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_9

    .line 500
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    :cond_9
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 504
    :cond_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 505
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/Media;

    .line 506
    invoke-virtual {v2}, Lcom/twitter/Extractor$Entity;->getValue()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lcom/narvii/model/Media;->refId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 507
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    .line 508
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 513
    :cond_b
    invoke-virtual {v2}, Lcom/twitter/Extractor$Entity;->getEnd()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_3

    .line 516
    :cond_c
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 517
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_d

    .line 518
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    if-eqz p5, :cond_e

    .line 521
    invoke-interface {p3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    .line 523
    :cond_e
    invoke-interface {p4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_4
    return-void
.end method
