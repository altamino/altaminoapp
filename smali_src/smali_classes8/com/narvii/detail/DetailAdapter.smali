.class public abstract Lcom/narvii/detail/DetailAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;
.implements Lcom/narvii/monetization/store/TippingConfirmDialog$TipSuccessListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/detail/DetailAdapter$CellType;,
        Lcom/narvii/detail/DetailAdapter$HeaderTag;,
        Lcom/narvii/detail/DetailAdapter$AddTag;,
        Lcom/narvii/detail/DetailAdapter$DetailTagClickListener;
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

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/detail/DetailAdapter$HeaderTag;

    .line 3
    .line 4
    const-string v1, "detail.photos.header"

    .line 5
    .line 6
    .line 7
    const v2, 0x7f1203cf

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1, v2}, Lcom/narvii/detail/DetailAdapter$HeaderTag;-><init>(Ljava/lang/String;I)V

    .line 11
    .line 12
    sput-object v0, Lcom/narvii/detail/DetailAdapter;->PHOTOS_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

    .line 13
    .line 14
    new-instance v0, Lcom/narvii/detail/DetailAdapter$HeaderTag;

    .line 15
    .line 16
    const-string v1, "detail.morephotos.header"

    .line 17
    .line 18
    .line 19
    const v2, 0x7f1203ce

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1, v2}, Lcom/narvii/detail/DetailAdapter$HeaderTag;-><init>(Ljava/lang/String;I)V

    .line 23
    .line 24
    sput-object v0, Lcom/narvii/detail/DetailAdapter;->MORE_PHOTOS_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

    .line 25
    .line 26
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 27
    .line 28
    const-string v1, "detail.divider"

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    sput-object v0, Lcom/narvii/detail/DetailAdapter;->DIVIDER:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 34
    .line 35
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 36
    .line 37
    const-string v1, "detail.divider.line"

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    sput-object v0, Lcom/narvii/detail/DetailAdapter;->DIVIDER_LINE:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 43
    .line 44
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 45
    .line 46
    const-string v1, "detail.comment.header"

    .line 47
    .line 48
    .line 49
    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    sput-object v0, Lcom/narvii/detail/DetailAdapter;->COMMENT_HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 52
    .line 53
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 54
    .line 55
    const-string v1, "detail.comment.add"

    .line 56
    .line 57
    .line 58
    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    sput-object v0, Lcom/narvii/detail/DetailAdapter;->COMMENT_ADD:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 61
    .line 62
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 63
    .line 64
    const-string v1, "detail.loading"

    .line 65
    .line 66
    .line 67
    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    sput-object v0, Lcom/narvii/detail/DetailAdapter;->LOADING:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 70
    .line 71
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 72
    .line 73
    const-string v1, "detail.list_divider"

    .line 74
    .line 75
    .line 76
    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    sput-object v0, Lcom/narvii/detail/DetailAdapter;->LIST_DIVIDER:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 79
    .line 80
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 81
    .line 82
    const-string v1, "detail.padding10"

    .line 83
    .line 84
    .line 85
    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    sput-object v0, Lcom/narvii/detail/DetailAdapter;->PADDING10:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 88
    .line 89
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 90
    .line 91
    const-string v1, "detail.usergrid"

    .line 92
    .line 93
    .line 94
    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    sput-object v0, Lcom/narvii/detail/DetailAdapter;->USER_GRID:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 97
    .line 98
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 99
    .line 100
    const-string v1, "detail.related"

    .line 101
    const/4 v2, 0x0

    .line 102
    .line 103
    .line 104
    invoke-direct {v0, v1, v2}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    .line 105
    .line 106
    sput-object v0, Lcom/narvii/detail/DetailAdapter;->_RELATED_PAGES:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 107
    .line 108
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 109
    .line 110
    const-string v1, "detail.tipping"

    .line 111
    .line 112
    .line 113
    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    sput-object v0, Lcom/narvii/detail/DetailAdapter;->TIPPING:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 116
    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/detail/DetailAdapter$1;

    .line 6
    .line 7
    const-class v1, Lcom/narvii/model/User;

    .line 8
    .line 9
    .line 10
    const v2, 0x7f0a0632

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, p0, v1, v2}, Lcom/narvii/detail/DetailAdapter$1;-><init>(Lcom/narvii/detail/DetailAdapter;Ljava/lang/Class;I)V

    .line 14
    .line 15
    iput-object v0, p0, Lcom/narvii/detail/DetailAdapter;->userIPC:Lcom/narvii/logging/Impression/ImpressionCollector;

    .line 16
    .line 17
    const-string v0, "Page Detailed View"

    .line 18
    .line 19
    iput-object v0, p0, Lcom/narvii/detail/DetailAdapter;->source:Ljava/lang/String;

    .line 20
    .line 21
    sget-object v0, Lcom/narvii/util/logging/LoggingSource;->PostDetailView:Lcom/narvii/util/logging/LoggingSource;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/detail/DetailAdapter;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    .line 24
    const/4 v0, 0x0

    .line 25
    .line 26
    iput-object v0, p0, Lcom/narvii/detail/DetailAdapter;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    .line 27
    .line 28
    new-instance v0, Lcom/narvii/detail/DetailAdapter$2;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->responseType()Ljava/lang/Class;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, p0, v1}, Lcom/narvii/detail/DetailAdapter$2;-><init>(Lcom/narvii/detail/DetailAdapter;Ljava/lang/Class;)V

    .line 36
    .line 37
    iput-object v0, p0, Lcom/narvii/detail/DetailAdapter;->listener:Lcom/narvii/util/http/ApiResponseListener;

    .line 38
    const/4 v0, 0x0

    .line 39
    .line 40
    iput v0, p0, Lcom/narvii/detail/DetailAdapter;->columnSize:I

    .line 41
    const/4 v1, 0x1

    .line 42
    .line 43
    iput v1, p0, Lcom/narvii/detail/DetailAdapter;->rawSize:I

    .line 44
    .line 45
    iput v0, p0, Lcom/narvii/detail/DetailAdapter;->userListMargin:I

    .line 46
    .line 47
    const/16 v0, 0x30

    .line 48
    .line 49
    iput v0, p0, Lcom/narvii/detail/DetailAdapter;->userListSize:I

    .line 50
    .line 51
    const/16 v0, 0xf

    .line 52
    .line 53
    iput v0, p0, Lcom/narvii/detail/DetailAdapter;->tipperListSize:I

    .line 54
    .line 55
    new-instance v0, Lcom/narvii/detail/DetailAdapter$6;

    .line 56
    .line 57
    const-class v1, Lcom/narvii/model/api/UserListResponse;

    .line 58
    .line 59
    .line 60
    invoke-direct {v0, p0, v1}, Lcom/narvii/detail/DetailAdapter$6;-><init>(Lcom/narvii/detail/DetailAdapter;Ljava/lang/Class;)V

    .line 61
    .line 62
    iput-object v0, p0, Lcom/narvii/detail/DetailAdapter;->userListListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 63
    .line 64
    new-instance v0, Lcom/narvii/detail/DetailAdapter$7;

    .line 65
    .line 66
    const-class v1, Lcom/narvii/tipping/model/TipLogListResponse;

    .line 67
    .line 68
    .line 69
    invoke-direct {v0, p0, v1}, Lcom/narvii/detail/DetailAdapter$7;-><init>(Lcom/narvii/detail/DetailAdapter;Ljava/lang/Class;)V

    .line 70
    .line 71
    iput-object v0, p0, Lcom/narvii/detail/DetailAdapter;->tipperListListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 72
    .line 73
    new-instance v0, Ljava/util/ArrayList;

    .line 74
    .line 75
    .line 76
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .line 78
    iput-object v0, p0, Lcom/narvii/detail/DetailAdapter;->cellTypes:Ljava/util/ArrayList;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v0}, Lcom/narvii/detail/DetailAdapter;->getCellTypes(Ljava/util/List;)V

    .line 82
    .line 83
    new-instance v0, Lcom/narvii/account/push/PushNotificationHelper;

    .line 84
    .line 85
    .line 86
    invoke-direct {v0, p1}, Lcom/narvii/account/push/PushNotificationHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 87
    .line 88
    iput-object v0, p0, Lcom/narvii/detail/DetailAdapter;->pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/narvii/detail/DetailAdapter;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 3
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter;->cells:Ljava/util/ArrayList;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter;->response:Lcom/narvii/model/api/ObjectResponse;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/narvii/detail/DetailAdapter;->buildCells(Ljava/util/List;)V

    .line 17
    .line 18
    iput-object v0, p0, Lcom/narvii/detail/DetailAdapter;->cells:Ljava/util/ArrayList;

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter;->cells:Ljava/util/ArrayList;

    .line 21
    return-object v0
.end method

.method static bridge synthetic f(Lcom/narvii/detail/DetailAdapter;)Lcom/narvii/tipping/TippingHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/detail/DetailAdapter;->tippingHelper:Lcom/narvii/tipping/TippingHelper;

    return-object p0
.end method

.method static bridge synthetic g(Lcom/narvii/detail/DetailAdapter;Lcom/narvii/util/http/ApiRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/detail/DetailAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    return-void
.end method

.method static bridge synthetic h(Lcom/narvii/detail/DetailAdapter;Lcom/narvii/tipping/model/TipLogListResponse;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/detail/DetailAdapter;->tipLogListResponse:Lcom/narvii/tipping/model/TipLogListResponse;

    return-void
.end method

.method static bridge synthetic i(Lcom/narvii/detail/DetailAdapter;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/detail/DetailAdapter;->tipperListError:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic j(Lcom/narvii/detail/DetailAdapter;Lcom/narvii/util/http/ApiRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/detail/DetailAdapter;->tipperListRequest:Lcom/narvii/util/http/ApiRequest;

    return-void
.end method

.method static bridge synthetic k(Lcom/narvii/detail/DetailAdapter;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/detail/DetailAdapter;->userListError:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic l(Lcom/narvii/detail/DetailAdapter;Lcom/narvii/util/http/ApiRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/detail/DetailAdapter;->userListRequest:Lcom/narvii/util/http/ApiRequest;

    return-void
.end method

.method static bridge synthetic m(Lcom/narvii/detail/DetailAdapter;Lcom/narvii/model/api/UserListResponse;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/detail/DetailAdapter;->userListResponse:Lcom/narvii/model/api/UserListResponse;

    return-void
.end method

.method private refreshTippingList()V
    .locals 3

    .line 1
    .line 2
    const-string v0, "api"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/detail/DetailAdapter;->tipperListRequest:Lcom/narvii/util/http/ApiRequest;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    .line 18
    iget v2, p0, Lcom/narvii/detail/DetailAdapter;->tipperListSize:I

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v1, v2}, Lcom/narvii/detail/DetailAdapter;->createTipperListRequest(II)Lcom/narvii/util/http/ApiRequest;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    iput-object v1, p0, Lcom/narvii/detail/DetailAdapter;->tipperListRequest:Lcom/narvii/util/http/ApiRequest;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/narvii/detail/DetailAdapter;->tipperListListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 30
    return-void
.end method

.method public static safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/list/NVAdapter;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

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

    .line 1
    invoke-virtual {p0, v0}, Lcom/narvii/detail/DetailAdapter;->allowTipping(Z)Z

    move-result v0

    return v0
.end method

.method public allowTipping(Z)Z
    .locals 6

    .line 2
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lcom/narvii/model/Tippable;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 4
    check-cast v0, Lcom/narvii/model/Tippable;

    invoke-interface {v0}, Lcom/narvii/model/Tippable;->getTippingInfo()Lcom/narvii/model/TippingInfo;

    move-result-object v1

    if-nez v1, :cond_0

    return v2

    .line 5
    :cond_0
    invoke-interface {v0}, Lcom/narvii/model/Tippable;->getTipAuthor()Lcom/narvii/model/User;

    move-result-object v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    const-string v4, "account"

    .line 6
    invoke-virtual {p0, v4}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/account/AccountService;

    .line 7
    invoke-virtual {v4}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-virtual {v0}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    if-eqz p1, :cond_3

    if-nez v4, :cond_2

    .line 9
    iget-boolean p1, v1, Lcom/narvii/model/TippingInfo;->tippable:Z

    if-nez p1, :cond_2

    return v2

    :cond_2
    if-eqz v4, :cond_4

    .line 10
    iget-boolean p1, v1, Lcom/narvii/model/TippingInfo;->tippable:Z

    if-nez p1, :cond_4

    iget p1, v1, Lcom/narvii/model/TippingInfo;->tippedCoins:I

    if-nez p1, :cond_4

    return v2

    .line 11
    :cond_3
    iget-boolean p1, v1, Lcom/narvii/model/TippingInfo;->tippable:Z

    if-nez p1, :cond_4

    return v2

    :cond_4
    if-eqz v0, :cond_6

    .line 12
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

    .line 1
    invoke-virtual {p0, v0}, Lcom/narvii/detail/DetailAdapter;->commentNew(Ljava/lang/String;)V

    return-void
.end method

.method public commentNew(Ljava/lang/String;)V
    .locals 4

    .line 2
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/narvii/comment/post/CommentPostActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "parentType"

    .line 4
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->objectType()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "parentId"

    .line 5
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    instance-of v2, v0, Lcom/narvii/model/Blog;

    if-eqz v2, :cond_1

    .line 7
    move-object v2, v0

    check-cast v2, Lcom/narvii/model/Blog;

    iget v2, v2, Lcom/narvii/model/Blog;->type:I

    const-string v3, "parentSubType"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8
    :cond_1
    instance-of v2, v0, Lcom/narvii/model/Feed;

    if-eqz v2, :cond_2

    const-string v2, "feed"

    .line 9
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const/4 v2, 0x1

    .line 10
    invoke-static {p0, v0, v2}, Lcom/narvii/util/StatisticHelper;->getStatisticSource(Lcom/narvii/app/NVContext;Lcom/narvii/model/NVObject;I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "stat_parent_type"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Source"

    iget-object v2, p0, Lcom/narvii/detail/DetailAdapter;->source:Ljava/lang/String;

    .line 11
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    const/4 v2, 0x0

    if-nez v0, :cond_3

    move-object v0, v2

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v3, "loggingSource"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    if-nez v0, :cond_4

    goto :goto_1

    .line 13
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    :goto_1
    const-string v0, "loggingOrigin"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "autoJoin"

    .line 14
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->allowAutoJoin()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "showEmojiOnly"

    .line 15
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->showEmojiOnly()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "stickerCollectionId"

    .line 16
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    invoke-static {p0, v1}, Lcom/narvii/detail/DetailAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter;->pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

    .line 18
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

    .line 10
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

    const v0, 0x7f0d0160

    .line 1
    invoke-virtual {p0, v0, p4, p3}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p3

    const p4, 0x7f0a0648

    .line 2
    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_1

    iget-boolean v0, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getHeaderBackgroundColor()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060139

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    :goto_0
    invoke-virtual {p4, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    const p4, 0x7f0a0e51

    .line 4
    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    const v0, -0x777778

    const/4 v1, -0x1

    if-eqz p4, :cond_3

    .line 5
    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean p1, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-eqz p1, :cond_2

    move p1, v1

    goto :goto_1

    :cond_2
    move p1, v0

    .line 6
    :goto_1
    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    const p1, 0x7f0a0647

    .line 7
    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_6

    const/4 p4, 0x1

    if-ge p2, p4, :cond_4

    const-string p2, ""

    goto :goto_2

    .line 8
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

    iget-boolean p2, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-eqz p2, :cond_5

    move v0, v1

    .line 9
    :cond_5
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_6
    return-object p3
.end method

.method public createMediaView(Lcom/narvii/model/Media;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 2
    invoke-virtual {p0, p2, p4, p3}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0a06eb

    .line 3
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/NVImageView;

    .line 4
    invoke-virtual {p1}, Lcom/narvii/model/Media;->isVideo()Z

    move-result p4

    if-eqz p4, :cond_0

    const p4, 0x3f19999a    # 0.6f

    .line 5
    iput p4, p3, Lcom/narvii/widget/NVImageView;->maxHeightPercentage:F

    .line 6
    sget-object p4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, p4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 7
    :cond_0
    iget-object p4, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-static {p4}, Lcom/narvii/util/YoutubeUtils;->isYtvScheme(Ljava/lang/String;)Z

    move-result p4

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    const/4 p4, 0x0

    .line 8
    iput-object p4, p3, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 9
    iput v0, p3, Lcom/narvii/widget/NVImageView;->defaultDrawableId:I

    goto :goto_1

    :cond_1
    iget-boolean p4, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-eqz p4, :cond_2

    const p4, 0x7f0603dc

    goto :goto_0

    :cond_2
    const p4, 0x7f0603d9

    .line 10
    :goto_0
    iput p4, p3, Lcom/narvii/widget/NVImageView;->defaultDrawableId:I

    .line 11
    :goto_1
    instance-of p4, p3, Lcom/narvii/widget/ISecretImage;

    if-eqz p4, :cond_3

    .line 12
    move-object p4, p3

    check-cast p4, Lcom/narvii/widget/ISecretImage;

    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->blurMedia()Z

    move-result v1

    invoke-interface {p4, p1, v1}, Lcom/narvii/widget/ISecretImage;->setImageMedia(Lcom/narvii/model/Media;Z)Z

    goto :goto_2

    .line 13
    :cond_3
    invoke-virtual {p3, p1}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    :goto_2
    const p4, 0x7f0a0e51

    .line 14
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    .line 15
    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    const/16 v3, 0x8

    if-eq v1, v2, :cond_5

    .line 16
    iget-object v1, p1, Lcom/narvii/model/Media;->caption:Ljava/lang/String;

    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v1, p1, Lcom/narvii/model/Media;->caption:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_3

    :cond_4
    move v1, v0

    :goto_3
    invoke-virtual {p4, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 18
    invoke-virtual {p3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    instance-of v1, p3, Lcom/narvii/widget/FlexSizeImageView;

    if-eqz v1, :cond_6

    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_6

    .line 20
    check-cast p3, Lcom/narvii/widget/FlexSizeImageView;

    new-instance v1, Lcom/narvii/detail/DetailAdapter$4;

    invoke-direct {v1, p0, p4}, Lcom/narvii/detail/DetailAdapter$4;-><init>(Lcom/narvii/detail/DetailAdapter;Landroid/widget/TextView;)V

    invoke-virtual {p3, v1}, Lcom/narvii/widget/FlexSizeImageView;->setFlexSizeImageSetDimensionCallback(Lcom/narvii/widget/FlexSizeImageView$IFlexSizeImageSetDimensionCallback;)V

    :cond_6
    const p3, 0x7f0a0cf7

    .line 21
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/ShareMediaBar;

    .line 22
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->showShareMediaBar()Z

    move-result p4

    if-eqz p4, :cond_a

    const-string p4, "Post Detail"

    .line 23
    iput-object p4, p3, Lcom/narvii/widget/ShareMediaBar;->source:Ljava/lang/String;

    .line 24
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 25
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter;->cells:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 27
    instance-of v2, v1, Lcom/narvii/model/Media;

    if-eqz v2, :cond_7

    check-cast v1, Lcom/narvii/model/Media;

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 28
    :cond_8
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    invoke-virtual {p3, v0, p1, p4}, Lcom/narvii/widget/ShareMediaBar;->setMedia(Lcom/narvii/model/NVObject;Lcom/narvii/model/Media;Ljava/util/List;)V

    .line 29
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/model/Feed;

    if-eqz p1, :cond_9

    .line 30
    new-instance p1, Lcom/narvii/detail/DetailAdapter$5;

    iget-object p4, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-direct {p1, p0, p4}, Lcom/narvii/detail/DetailAdapter$5;-><init>(Lcom/narvii/detail/DetailAdapter;Lcom/narvii/app/NVContext;)V

    invoke-virtual {p3, p1}, Lcom/narvii/widget/ShareMediaBar;->setRepostButton(Lcom/narvii/share/BaseShareButtonRepost;)V

    :cond_9
    const p1, 0x7f0a0cf9

    .line 31
    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iget-object p4, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 33
    invoke-interface {p4}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p4

    const/high16 v0, 0x41c80000    # 25.0f

    invoke-static {p4, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p4

    float-to-int p4, p4

    iput p4, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p4, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 34
    invoke-interface {p4}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p4

    float-to-int p4, p4

    iput p4, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p4, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 35
    invoke-interface {p4}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p4

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {p4, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p4

    float-to-int p4, p4

    .line 36
    invoke-virtual {p1, p4, p4, p4, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 37
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    .line 38
    :cond_a
    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    return-object p2
.end method

.method public createMediaView(Lcom/narvii/model/Media;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const v0, 0x7f0d016b

    .line 1
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/narvii/detail/DetailAdapter;->createMediaView(Lcom/narvii/model/Media;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected abstract createRequest()Lcom/narvii/util/http/ApiRequest;
.end method

.method public createTextView(Ljava/lang/String;ILandroid/view/View;Landroid/view/ViewGroup;ZLcom/narvii/util/text/OnTagClickListener;)Landroid/view/View;
    .locals 1

    .line 3
    invoke-virtual {p0, p2, p4, p3}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0a0e51

    .line 4
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-eqz p5, :cond_2

    .line 6
    new-instance p5, Lcom/narvii/util/text/NVText;

    invoke-direct {p5, p1}, Lcom/narvii/util/text/NVText;-><init>(Ljava/lang/CharSequence;)V

    iget-boolean p1, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    .line 7
    invoke-virtual {p5, p1}, Lcom/narvii/util/text/NVText;->setDarkTheme(Z)V

    .line 8
    invoke-virtual {p5, p6}, Lcom/narvii/util/text/NVText;->markAllEntries(Lcom/narvii/util/text/OnTagClickListener;)I

    if-eqz p6, :cond_1

    const/4 p1, 0x1

    .line 9
    invoke-virtual {p4, p1}, Landroid/view/View;->setClickable(Z)V

    .line 10
    invoke-static {}, Lcom/narvii/util/text/LinkTouchMovementMethod;->getInstance()Lcom/narvii/util/text/LinkTouchMovementMethod;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_1
    move-object p1, p5

    .line 11
    :cond_2
    :goto_0
    sget-object p5, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p4, p1, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    const p1, -0xaaaaab

    .line 12
    invoke-virtual {p0, p2, p3, p1}, Lcom/narvii/detail/DetailAdapter;->setTextColor(Landroid/view/View;II)V

    return-object p2
.end method

.method public createTextView(Ljava/lang/String;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter;->tagClickListener:Lcom/narvii/detail/DetailAdapter$DetailTagClickListener;

    if-nez v0, :cond_0

    .line 1
    new-instance v0, Lcom/narvii/detail/DetailAdapter$DetailTagClickListener;

    invoke-direct {v0, p0}, Lcom/narvii/detail/DetailAdapter$DetailTagClickListener;-><init>(Lcom/narvii/detail/DetailAdapter;)V

    iput-object v0, p0, Lcom/narvii/detail/DetailAdapter;->tagClickListener:Lcom/narvii/detail/DetailAdapter$DetailTagClickListener;

    :cond_0
    const v3, 0x7f0d017b

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/narvii/detail/DetailAdapter;->tagClickListener:Lcom/narvii/detail/DetailAdapter$DetailTagClickListener;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    .line 2
    invoke-virtual/range {v1 .. v7}, Lcom/narvii/detail/DetailAdapter;->createTextView(Ljava/lang/String;ILandroid/view/View;Landroid/view/ViewGroup;ZLcom/narvii/util/text/OnTagClickListener;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected createTipperListRequest(II)Lcom/narvii/util/http/ApiRequest;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->apiTypeName()Ljava/lang/String;

    .line 21
    move-result-object v3

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v3, "/"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v0, "/tipping/tipped-users-summary"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    const-string v1, "start"

    .line 52
    .line 53
    .line 54
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    const-string v0, "size"

    .line 62
    .line 63
    .line 64
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    move-result-object p2

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v0, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 73
    move-result-object p1

    .line 74
    return-object p1
.end method

.method protected createUserGridView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/detail/DetailAdapter;->columnSize:I

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 13
    move-result-object v2

    .line 14
    .line 15
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 16
    int-to-float v2, v2

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    move-result-object v3

    .line 21
    .line 22
    const/high16 v4, 0x41a00000    # 20.0f

    .line 23
    .line 24
    .line 25
    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 26
    move-result v3

    .line 27
    sub-float/2addr v2, v3

    .line 28
    float-to-int v2, v2

    .line 29
    .line 30
    .line 31
    const v3, 0x7f070160

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 35
    move-result v3

    .line 36
    .line 37
    .line 38
    const v4, 0x7f07015f

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 42
    move-result v0

    .line 43
    .line 44
    mul-int/lit8 v0, v0, 0x2

    .line 45
    add-int/2addr v0, v3

    .line 46
    .line 47
    div-int v0, v2, v0

    .line 48
    .line 49
    const/16 v4, 0xc

    .line 50
    .line 51
    .line 52
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    .line 53
    move-result v0

    .line 54
    const/4 v4, 0x6

    .line 55
    .line 56
    .line 57
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    .line 58
    move-result v0

    .line 59
    .line 60
    iput v0, p0, Lcom/narvii/detail/DetailAdapter;->columnSize:I

    .line 61
    .line 62
    iget v4, p0, Lcom/narvii/detail/DetailAdapter;->rawSize:I

    .line 63
    mul-int/2addr v4, v0

    .line 64
    .line 65
    iput v4, p0, Lcom/narvii/detail/DetailAdapter;->userListSize:I

    .line 66
    mul-int/2addr v3, v0

    .line 67
    sub-int/2addr v2, v3

    .line 68
    .line 69
    div-int/lit8 v2, v2, 0x2

    .line 70
    div-int/2addr v2, v0

    .line 71
    .line 72
    .line 73
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 74
    move-result v0

    .line 75
    .line 76
    iput v0, p0, Lcom/narvii/detail/DetailAdapter;->userListMargin:I

    .line 77
    .line 78
    :cond_0
    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter;->userListResponse:Lcom/narvii/model/api/UserListResponse;

    .line 79
    const/4 v2, 0x0

    .line 80
    const/4 v3, 0x0

    .line 81
    .line 82
    if-nez v0, :cond_5

    .line 83
    .line 84
    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter;->userListError:Ljava/lang/String;

    .line 85
    .line 86
    if-eqz v0, :cond_2

    .line 87
    .line 88
    const-string v0, "userGridError"

    .line 89
    .line 90
    if-eqz p1, :cond_1

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 94
    move-result-object v1

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    move-result v1

    .line 99
    .line 100
    if-eqz v1, :cond_1

    .line 101
    return-object p1

    .line 102
    .line 103
    :cond_1
    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter;->userListError:Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, p2, v3, p1}, Lcom/narvii/list/NVAdapter;->createErrorItem(Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    .line 107
    move-result-object p1

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 111
    return-object p1

    .line 112
    .line 113
    :cond_2
    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter;->userListRequest:Lcom/narvii/util/http/ApiRequest;

    .line 114
    .line 115
    if-nez v0, :cond_3

    .line 116
    .line 117
    iget v0, p0, Lcom/narvii/detail/DetailAdapter;->userListSize:I

    .line 118
    .line 119
    mul-int/lit8 v0, v0, 0x3

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, v2, v0}, Lcom/narvii/detail/DetailAdapter;->createUserListRequest(II)Lcom/narvii/util/http/ApiRequest;

    .line 123
    move-result-object v0

    .line 124
    .line 125
    iput-object v0, p0, Lcom/narvii/detail/DetailAdapter;->userListRequest:Lcom/narvii/util/http/ApiRequest;

    .line 126
    .line 127
    const-string v0, "api"

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 131
    move-result-object v0

    .line 132
    .line 133
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 134
    .line 135
    iget-object v1, p0, Lcom/narvii/detail/DetailAdapter;->userListRequest:Lcom/narvii/util/http/ApiRequest;

    .line 136
    .line 137
    iget-object v2, p0, Lcom/narvii/detail/DetailAdapter;->userListListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 141
    .line 142
    :cond_3
    const-string v0, "userGridLoading"

    .line 143
    .line 144
    if-eqz p1, :cond_4

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 148
    move-result-object v1

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    move-result v1

    .line 153
    .line 154
    if-eqz v1, :cond_4

    .line 155
    return-object p1

    .line 156
    .line 157
    .line 158
    :cond_4
    invoke-virtual {p0, p2, v3}, Lcom/narvii/list/NVAdapter;->createLoadingItem(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 159
    move-result-object p1

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 163
    return-object p1

    .line 164
    .line 165
    :cond_5
    const-string v0, "userGrid"

    .line 166
    .line 167
    if-eqz p1, :cond_6

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 171
    move-result-object v4

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 175
    move-result v4

    .line 176
    .line 177
    if-eqz v4, :cond_6

    .line 178
    goto :goto_0

    .line 179
    .line 180
    .line 181
    :cond_6
    const p1, 0x7f0d0166

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0, p1, p2, v3}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 185
    move-result-object p1

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    :goto_0
    invoke-static {p1, p0}, Lcom/narvii/logging/LogUtils;->setShownInAdapter(Landroid/view/View;Lcom/narvii/logging/Area;)V

    .line 192
    .line 193
    .line 194
    const p2, 0x7f0a001a

    .line 195
    .line 196
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    const p2, 0x7f0a0632

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 206
    move-result-object p2

    .line 207
    .line 208
    check-cast p2, Landroid/widget/GridLayout;

    .line 209
    .line 210
    iget v0, p0, Lcom/narvii/detail/DetailAdapter;->columnSize:I

    .line 211
    .line 212
    .line 213
    invoke-virtual {p2, v0}, Landroid/widget/GridLayout;->setColumnCount(I)V

    .line 214
    .line 215
    iget v0, p0, Lcom/narvii/detail/DetailAdapter;->rawSize:I

    .line 216
    .line 217
    .line 218
    invoke-virtual {p2, v0}, Landroid/widget/GridLayout;->setRowCount(I)V

    .line 219
    move v0, v2

    .line 220
    .line 221
    :goto_1
    iget v4, p0, Lcom/narvii/detail/DetailAdapter;->userListSize:I

    .line 222
    .line 223
    if-ge v0, v4, :cond_12

    .line 224
    .line 225
    iget-object v4, p0, Lcom/narvii/detail/DetailAdapter;->userListResponse:Lcom/narvii/model/api/UserListResponse;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v4}, Lcom/narvii/model/api/UserListResponse;->list()Ljava/util/List;

    .line 229
    move-result-object v4

    .line 230
    .line 231
    if-eqz v4, :cond_7

    .line 232
    .line 233
    iget-object v4, p0, Lcom/narvii/detail/DetailAdapter;->userListResponse:Lcom/narvii/model/api/UserListResponse;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v4}, Lcom/narvii/model/api/UserListResponse;->list()Ljava/util/List;

    .line 237
    move-result-object v4

    .line 238
    .line 239
    .line 240
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 241
    move-result v4

    .line 242
    .line 243
    if-le v4, v0, :cond_7

    .line 244
    .line 245
    iget-object v4, p0, Lcom/narvii/detail/DetailAdapter;->userListResponse:Lcom/narvii/model/api/UserListResponse;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v4}, Lcom/narvii/model/api/UserListResponse;->list()Ljava/util/List;

    .line 249
    move-result-object v4

    .line 250
    .line 251
    .line 252
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 253
    move-result-object v4

    .line 254
    .line 255
    check-cast v4, Lcom/narvii/model/User;

    .line 256
    goto :goto_2

    .line 257
    :cond_7
    move-object v4, v3

    .line 258
    .line 259
    .line 260
    :goto_2
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 261
    move-result v5

    .line 262
    .line 263
    if-le v5, v0, :cond_8

    .line 264
    .line 265
    .line 266
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 267
    move-result-object v5

    .line 268
    goto :goto_3

    .line 269
    :cond_8
    move-object v5, v3

    .line 270
    .line 271
    :goto_3
    const/16 v6, 0x8

    .line 272
    .line 273
    if-nez v4, :cond_9

    .line 274
    .line 275
    if-eqz v5, :cond_11

    .line 276
    .line 277
    .line 278
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 279
    .line 280
    goto/16 :goto_6

    .line 281
    .line 282
    :cond_9
    if-nez v5, :cond_b

    .line 283
    .line 284
    iget v5, p0, Lcom/narvii/detail/DetailAdapter;->userListSize:I

    .line 285
    sub-int/2addr v5, v1

    .line 286
    .line 287
    if-ne v0, v5, :cond_a

    .line 288
    .line 289
    iget-object v5, p0, Lcom/narvii/list/NVAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 290
    .line 291
    .line 292
    const v7, 0x7f0d0168

    .line 293
    .line 294
    .line 295
    invoke-virtual {v5, v7, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 296
    move-result-object v5

    .line 297
    goto :goto_4

    .line 298
    .line 299
    :cond_a
    iget-object v5, p0, Lcom/narvii/list/NVAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 300
    .line 301
    .line 302
    const v7, 0x7f0d0167

    .line 303
    .line 304
    .line 305
    invoke-virtual {v5, v7, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 306
    move-result-object v5

    .line 307
    .line 308
    .line 309
    :goto_4
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 310
    move-result-object v7

    .line 311
    .line 312
    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 313
    .line 314
    iget v8, p0, Lcom/narvii/detail/DetailAdapter;->userListMargin:I

    .line 315
    .line 316
    .line 317
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 318
    .line 319
    iget v8, p0, Lcom/narvii/detail/DetailAdapter;->userListMargin:I

    .line 320
    .line 321
    .line 322
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {p2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 326
    .line 327
    .line 328
    :cond_b
    invoke-static {v5, v4}, Lcom/narvii/logging/LogUtils;->setAttachedObject(Landroid/view/View;Ljava/lang/Object;)V

    .line 329
    .line 330
    .line 331
    const v7, 0x7f0a0f36

    .line 332
    .line 333
    .line 334
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 335
    move-result-object v7

    .line 336
    .line 337
    check-cast v7, Lcom/narvii/widget/UserAvatarLayout;

    .line 338
    .line 339
    iput-boolean v1, v7, Lcom/narvii/widget/UserAvatarLayout;->disableFullAvatarFrame:Z

    .line 340
    .line 341
    .line 342
    invoke-virtual {v7, v4}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v5, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 349
    .line 350
    iget-object v7, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    .line 355
    .line 356
    const v7, 0x7f0a017b

    .line 357
    .line 358
    .line 359
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 360
    move-result-object v7

    .line 361
    .line 362
    check-cast v7, Landroid/widget/ImageView;

    .line 363
    .line 364
    if-eqz v7, :cond_c

    .line 365
    .line 366
    iget-object v8, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 367
    .line 368
    const-string v9, "ranking"

    .line 369
    .line 370
    .line 371
    invoke-interface {v8, v9}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 372
    move-result-object v8

    .line 373
    .line 374
    check-cast v8, Lcom/narvii/util/ranking/RankingService;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v8, v4}, Lcom/narvii/util/ranking/RankingService;->getInfluencerOrRankingBadge(Lcom/narvii/model/User;)Landroid/graphics/drawable/Drawable;

    .line 378
    move-result-object v4

    .line 379
    .line 380
    .line 381
    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 382
    .line 383
    :cond_c
    iget v4, p0, Lcom/narvii/detail/DetailAdapter;->userListSize:I

    .line 384
    sub-int/2addr v4, v1

    .line 385
    .line 386
    if-ne v0, v4, :cond_11

    .line 387
    .line 388
    .line 389
    const v4, 0x7f0a098d

    .line 390
    .line 391
    .line 392
    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 393
    move-result-object v4

    .line 394
    .line 395
    iget-object v8, p0, Lcom/narvii/detail/DetailAdapter;->userListResponse:Lcom/narvii/model/api/UserListResponse;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v8}, Lcom/narvii/model/api/UserListResponse;->list()Ljava/util/List;

    .line 399
    move-result-object v8

    .line 400
    .line 401
    .line 402
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 403
    move-result v8

    .line 404
    .line 405
    iget v9, p0, Lcom/narvii/detail/DetailAdapter;->userListSize:I

    .line 406
    .line 407
    if-le v8, v9, :cond_d

    .line 408
    move v8, v1

    .line 409
    goto :goto_5

    .line 410
    :cond_d
    move v8, v2

    .line 411
    .line 412
    :goto_5
    if-eqz v4, :cond_11

    .line 413
    .line 414
    if-eqz v8, :cond_f

    .line 415
    .line 416
    if-eqz v7, :cond_e

    .line 417
    .line 418
    .line 419
    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 420
    .line 421
    .line 422
    :cond_e
    invoke-virtual {v5, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 423
    .line 424
    :cond_f
    if-eqz v8, :cond_10

    .line 425
    move v6, v2

    .line 426
    .line 427
    .line 428
    :cond_10
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 429
    .line 430
    if-eqz v8, :cond_11

    .line 431
    .line 432
    .line 433
    invoke-static {v5, v3}, Lcom/narvii/logging/LogUtils;->setAttachedObject(Landroid/view/View;Ljava/lang/Object;)V

    .line 434
    .line 435
    :cond_11
    :goto_6
    add-int/lit8 v0, v0, 0x1

    .line 436
    .line 437
    goto/16 :goto_1

    .line 438
    :cond_12
    return-object p1
.end method

.method protected createUserListRequest(II)Lcom/narvii/util/http/ApiRequest;
    .locals 0

    .line 1
    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    .line 4
    const-string p2, "you need to override createUserListRequest()"

    .line 5
    .line 6
    .line 7
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method

.method public errorMessage()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter;->errorMsg:Ljava/lang/String;

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method protected getCell(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->DIVIDER:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 3
    .line 4
    .line 5
    const v1, 0x7f0a0de6

    .line 6
    .line 7
    .line 8
    const v2, 0x7f0a0de5

    .line 9
    const/4 v3, 0x0

    .line 10
    .line 11
    .line 12
    const v4, -0x5b5b5c

    .line 13
    .line 14
    if-ne p1, v0, :cond_1

    .line 15
    .line 16
    .line 17
    const p1, 0x7f0d015a

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    check-cast p1, Lcom/narvii/detail/DividerItem;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 27
    move-result-object p2

    .line 28
    .line 29
    if-nez p2, :cond_0

    .line 30
    goto :goto_0

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {p2}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 34
    move-result-object v3

    .line 35
    .line 36
    .line 37
    :goto_0
    invoke-virtual {p1, v3}, Lcom/narvii/detail/DividerItem;->setId(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1, v2, v4}, Lcom/narvii/detail/DetailAdapter;->setTextColor(Landroid/view/View;II)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1, v1, v4}, Lcom/narvii/detail/DetailAdapter;->setTextColor(Landroid/view/View;II)V

    .line 44
    .line 45
    .line 46
    const p2, 0x7f0a0de7

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p1, p2, v4}, Lcom/narvii/detail/DetailAdapter;->setTextColor(Landroid/view/View;II)V

    .line 50
    .line 51
    .line 52
    const p2, 0x7f0a0de8

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p1, p2, v4}, Lcom/narvii/detail/DetailAdapter;->setTextColor(Landroid/view/View;II)V

    .line 56
    return-object p1

    .line 57
    .line 58
    :cond_1
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->COMMENT_HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 59
    .line 60
    const/16 v5, 0x8

    .line 61
    .line 62
    .line 63
    const v6, 0x7f0a0e51

    .line 64
    const/4 v7, -0x1

    .line 65
    .line 66
    .line 67
    const v8, -0x777778

    .line 68
    const/4 v9, 0x0

    .line 69
    .line 70
    if-ne p1, v0, :cond_8

    .line 71
    .line 72
    .line 73
    const p1, 0x7f0d0156

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 77
    move-result-object p1

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 81
    move-result-object p2

    .line 82
    .line 83
    check-cast p2, Landroid/widget/TextView;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 87
    move-result-object p3

    .line 88
    .line 89
    .line 90
    const v0, 0x7f1202f7

    .line 91
    .line 92
    .line 93
    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 94
    move-result-object p3

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    .line 99
    .line 100
    const p2, 0x7f0a0361

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 104
    move-result-object p3

    .line 105
    .line 106
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 113
    move-result-object p2

    .line 114
    .line 115
    check-cast p2, Lcom/narvii/widget/TintButton;

    .line 116
    .line 117
    iget-boolean p3, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    .line 118
    .line 119
    if-nez p3, :cond_2

    .line 120
    move p3, v8

    .line 121
    goto :goto_1

    .line 122
    :cond_2
    move p3, v7

    .line 123
    .line 124
    .line 125
    :goto_1
    invoke-virtual {p2, p3}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 126
    .line 127
    .line 128
    const p2, 0x7f0a0f3c

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 132
    move-result-object p3

    .line 133
    .line 134
    check-cast p3, Lcom/narvii/widget/TintButton;

    .line 135
    .line 136
    iget-boolean v0, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    .line 137
    .line 138
    if-nez v0, :cond_3

    .line 139
    move v7, v8

    .line 140
    .line 141
    .line 142
    :cond_3
    invoke-virtual {p3, v7}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 146
    move-result-object p3

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->showUserCommentSetting()Z

    .line 150
    move-result v0

    .line 151
    .line 152
    if-eqz v0, :cond_4

    .line 153
    move v5, v9

    .line 154
    .line 155
    .line 156
    :cond_4
    invoke-virtual {p3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 160
    move-result-object p2

    .line 161
    .line 162
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    .line 167
    .line 168
    const p2, 0x7f0a026a

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 172
    move-result-object p2

    .line 173
    .line 174
    iget-boolean p3, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    .line 175
    .line 176
    if-eqz p3, :cond_5

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getHeaderBackgroundColor()I

    .line 180
    move-result p3

    .line 181
    goto :goto_2

    .line 182
    .line 183
    .line 184
    :cond_5
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 185
    move-result-object p3

    .line 186
    .line 187
    .line 188
    const v0, 0x7f060139

    .line 189
    .line 190
    .line 191
    invoke-static {p3, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 192
    move-result p3

    .line 193
    .line 194
    .line 195
    :goto_2
    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0, p1, v6, v8}, Lcom/narvii/detail/DetailAdapter;->setTextColor(Landroid/view/View;II)V

    .line 199
    .line 200
    .line 201
    const p2, 0x7f0a0358

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0, p1, p2, v8}, Lcom/narvii/detail/DetailAdapter;->setTextColor(Landroid/view/View;II)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 208
    move-result-object p3

    .line 209
    .line 210
    instance-of p3, p3, Lcom/narvii/model/Feed;

    .line 211
    .line 212
    if-eqz p3, :cond_7

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 216
    move-result-object p2

    .line 217
    .line 218
    check-cast p2, Landroid/widget/TextView;

    .line 219
    .line 220
    .line 221
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 222
    move-result-object p3

    .line 223
    .line 224
    check-cast p3, Lcom/narvii/model/Feed;

    .line 225
    .line 226
    .line 227
    invoke-virtual {p3}, Lcom/narvii/model/Feed;->getTotalCommentsCount()I

    .line 228
    move-result p3

    .line 229
    .line 230
    if-nez p3, :cond_6

    .line 231
    .line 232
    const-string p3, ""

    .line 233
    goto :goto_3

    .line 234
    .line 235
    :cond_6
    new-instance p3, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    .line 240
    const-string v0, "("

    .line 241
    .line 242
    .line 243
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 247
    move-result-object v0

    .line 248
    .line 249
    check-cast v0, Lcom/narvii/model/Feed;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0}, Lcom/narvii/model/Feed;->getTotalCommentsCount()I

    .line 253
    move-result v0

    .line 254
    .line 255
    .line 256
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    const-string v0, ")"

    .line 259
    .line 260
    .line 261
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    move-result-object p3

    .line 266
    .line 267
    .line 268
    :goto_3
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    .line 270
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 271
    .line 272
    .line 273
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 277
    move-result-object p2

    .line 278
    .line 279
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 280
    .line 281
    .line 282
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    .line 284
    :cond_7
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 285
    .line 286
    .line 287
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    return-object p1

    .line 289
    .line 290
    :cond_8
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->COMMENT_ADD:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 291
    .line 292
    if-ne p1, v0, :cond_c

    .line 293
    .line 294
    .line 295
    const p1, 0x7f0d0154

    .line 296
    .line 297
    .line 298
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 299
    move-result-object p1

    .line 300
    .line 301
    .line 302
    const p2, 0x7f0a0099

    .line 303
    .line 304
    .line 305
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 306
    move-result-object p3

    .line 307
    .line 308
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 309
    .line 310
    .line 311
    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 315
    move-result-object p3

    .line 316
    .line 317
    instance-of v0, p3, Lcom/narvii/model/Blog;

    .line 318
    .line 319
    if-eqz v0, :cond_9

    .line 320
    .line 321
    check-cast p3, Lcom/narvii/model/Blog;

    .line 322
    .line 323
    iget p3, p3, Lcom/narvii/model/Blog;->type:I

    .line 324
    const/4 v0, 0x3

    .line 325
    .line 326
    if-ne p3, v0, :cond_9

    .line 327
    .line 328
    .line 329
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 330
    move-result-object p3

    .line 331
    .line 332
    check-cast p3, Landroid/widget/TextView;

    .line 333
    .line 334
    .line 335
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 336
    move-result-object v0

    .line 337
    .line 338
    .line 339
    const v1, 0x7f120f0b

    .line 340
    .line 341
    .line 342
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 343
    move-result-object v0

    .line 344
    .line 345
    .line 346
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    .line 348
    :cond_9
    const-string p3, "affiliations"

    .line 349
    .line 350
    .line 351
    invoke-virtual {p0, p3}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 352
    move-result-object p3

    .line 353
    .line 354
    check-cast p3, Lcom/narvii/community/AffiliationsService;

    .line 355
    .line 356
    const-string v0, "config"

    .line 357
    .line 358
    .line 359
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 360
    move-result-object v0

    .line 361
    .line 362
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 366
    move-result v0

    .line 367
    .line 368
    .line 369
    invoke-virtual {p3, v0}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    .line 370
    .line 371
    const-string v1, "account"

    .line 372
    .line 373
    .line 374
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 375
    move-result-object v1

    .line 376
    .line 377
    check-cast v1, Lcom/narvii/account/AccountService;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 381
    move-result-object v2

    .line 382
    .line 383
    .line 384
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    .line 385
    move-result v3

    .line 386
    .line 387
    if-eqz v3, :cond_a

    .line 388
    .line 389
    .line 390
    invoke-virtual {v1, v9}, Lcom/narvii/account/AccountService;->getUserProfile(I)Lcom/narvii/model/User;

    .line 391
    move-result-object v2

    .line 392
    .line 393
    .line 394
    :cond_a
    const v1, 0x7f0a0f36

    .line 395
    .line 396
    .line 397
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 398
    move-result-object v1

    .line 399
    .line 400
    check-cast v1, Lcom/narvii/widget/UserAvatarLayout;

    .line 401
    .line 402
    .line 403
    invoke-virtual {v1, v2}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 404
    .line 405
    iget-boolean v2, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    .line 406
    .line 407
    iget v3, p0, Lcom/narvii/list/NVAdapter;->backgroundColor:I

    .line 408
    .line 409
    .line 410
    invoke-virtual {v1, v2, v3, v9}, Lcom/narvii/widget/UserAvatarLayout;->setDarkTheme(ZIZ)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {p3, v0}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    .line 414
    move-result p3

    .line 415
    .line 416
    if-eqz p3, :cond_b

    .line 417
    move v5, v9

    .line 418
    .line 419
    .line 420
    :cond_b
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {p0, p1, p2, v8}, Lcom/narvii/detail/DetailAdapter;->setTextColor(Landroid/view/View;II)V

    .line 424
    .line 425
    .line 426
    const p3, 0x7f080289

    .line 427
    .line 428
    .line 429
    const v0, 0x7f080287

    .line 430
    .line 431
    .line 432
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/narvii/detail/DetailAdapter;->setBackgroundColor(Landroid/view/View;III)V

    .line 433
    return-object p1

    .line 434
    .line 435
    :cond_c
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->LOADING:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 436
    .line 437
    if-ne p1, v0, :cond_d

    .line 438
    .line 439
    .line 440
    invoke-virtual {p0, p3, p2}, Lcom/narvii/list/NVAdapter;->createLoadingItem(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 441
    move-result-object p1

    .line 442
    return-object p1

    .line 443
    .line 444
    :cond_d
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->LIST_DIVIDER:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 445
    .line 446
    if-ne p1, v0, :cond_e

    .line 447
    .line 448
    .line 449
    const p1, 0x7f0d04e4

    .line 450
    .line 451
    .line 452
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 453
    move-result-object p1

    .line 454
    return-object p1

    .line 455
    .line 456
    :cond_e
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->DIVIDER_LINE:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 457
    .line 458
    if-ne p1, v0, :cond_10

    .line 459
    .line 460
    .line 461
    const p1, 0x7f0d015b

    .line 462
    .line 463
    .line 464
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 465
    move-result-object p1

    .line 466
    .line 467
    .line 468
    const p2, 0x7f0a0451

    .line 469
    .line 470
    .line 471
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 472
    move-result-object p2

    .line 473
    .line 474
    iget-boolean p3, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    .line 475
    .line 476
    if-eqz p3, :cond_f

    .line 477
    goto :goto_4

    .line 478
    .line 479
    :cond_f
    const/high16 v7, 0x22000000

    .line 480
    .line 481
    .line 482
    :goto_4
    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 483
    return-object p1

    .line 484
    .line 485
    :cond_10
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->PADDING10:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 486
    .line 487
    if-ne p1, v0, :cond_11

    .line 488
    .line 489
    .line 490
    const p1, 0x7f0d016e

    .line 491
    .line 492
    .line 493
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 494
    move-result-object p1

    .line 495
    return-object p1

    .line 496
    .line 497
    :cond_11
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->USER_GRID:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 498
    .line 499
    if-ne p1, v0, :cond_14

    .line 500
    .line 501
    .line 502
    invoke-virtual {p0, p2, p3}, Lcom/narvii/detail/DetailAdapter;->createUserGridView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 503
    move-result-object p1

    .line 504
    .line 505
    .line 506
    const p2, 0x7f0a02ec

    .line 507
    .line 508
    .line 509
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 510
    move-result-object p2

    .line 511
    .line 512
    check-cast p2, Lcom/narvii/widget/TintButton;

    .line 513
    .line 514
    if-eqz p2, :cond_13

    .line 515
    .line 516
    iget-boolean p3, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    .line 517
    .line 518
    if-nez p3, :cond_12

    .line 519
    move v7, v8

    .line 520
    .line 521
    .line 522
    :cond_12
    invoke-virtual {p2, v7}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 523
    :cond_13
    return-object p1

    .line 524
    .line 525
    :cond_14
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->TIPPING:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 526
    .line 527
    if-ne p1, v0, :cond_1e

    .line 528
    .line 529
    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter;->tipCell:Landroid/view/View;

    .line 530
    .line 531
    if-nez p1, :cond_15

    .line 532
    .line 533
    .line 534
    const p1, 0x7f0d074b

    .line 535
    .line 536
    .line 537
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 538
    move-result-object p1

    .line 539
    .line 540
    iput-object p1, p0, Lcom/narvii/detail/DetailAdapter;->tipCell:Landroid/view/View;

    .line 541
    .line 542
    :cond_15
    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter;->tipCell:Landroid/view/View;

    .line 543
    .line 544
    .line 545
    const p2, 0x7f0a0e95

    .line 546
    .line 547
    .line 548
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 549
    move-result-object p1

    .line 550
    .line 551
    check-cast p1, Lcom/narvii/tipping/TippingItem;

    .line 552
    .line 553
    .line 554
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 555
    move-result-object p2

    .line 556
    .line 557
    instance-of p3, p2, Lcom/narvii/model/Tippable;

    .line 558
    .line 559
    if-eqz p3, :cond_1c

    .line 560
    .line 561
    check-cast p2, Lcom/narvii/model/Tippable;

    .line 562
    .line 563
    .line 564
    invoke-interface {p2}, Lcom/narvii/model/Tippable;->getTippingInfo()Lcom/narvii/model/TippingInfo;

    .line 565
    move-result-object p3

    .line 566
    .line 567
    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter;->tipLogListResponse:Lcom/narvii/tipping/model/TipLogListResponse;

    .line 568
    .line 569
    if-eqz v0, :cond_16

    .line 570
    .line 571
    .line 572
    invoke-virtual {v0}, Lcom/narvii/tipping/model/TipLogListResponse;->list()Ljava/util/List;

    .line 573
    move-result-object v3

    .line 574
    .line 575
    :cond_16
    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter;->tippingHelper:Lcom/narvii/tipping/TippingHelper;

    .line 576
    .line 577
    if-nez v0, :cond_17

    .line 578
    .line 579
    new-instance v0, Lcom/narvii/tipping/TippingHelper;

    .line 580
    .line 581
    .line 582
    invoke-direct {v0, p0}, Lcom/narvii/tipping/TippingHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 583
    .line 584
    iput-object v0, p0, Lcom/narvii/detail/DetailAdapter;->tippingHelper:Lcom/narvii/tipping/TippingHelper;

    .line 585
    .line 586
    :cond_17
    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter;->tippingHelper:Lcom/narvii/tipping/TippingHelper;

    .line 587
    .line 588
    .line 589
    invoke-virtual {v0, p2}, Lcom/narvii/tipping/TippingHelper;->isTipAuthor(Lcom/narvii/model/Tippable;)Z

    .line 590
    move-result p2

    .line 591
    .line 592
    new-instance v0, Ljava/util/ArrayList;

    .line 593
    .line 594
    .line 595
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 596
    .line 597
    if-eqz v3, :cond_19

    .line 598
    .line 599
    .line 600
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 601
    move-result-object v1

    .line 602
    .line 603
    .line 604
    :cond_18
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 605
    move-result v2

    .line 606
    .line 607
    if-eqz v2, :cond_19

    .line 608
    .line 609
    .line 610
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 611
    move-result-object v2

    .line 612
    .line 613
    check-cast v2, Lcom/narvii/tipping/model/TipLog;

    .line 614
    .line 615
    if-eqz v2, :cond_18

    .line 616
    .line 617
    iget-object v2, v2, Lcom/narvii/tipping/model/TipLog;->tipper:Lcom/narvii/model/User;

    .line 618
    .line 619
    if-eqz v2, :cond_18

    .line 620
    .line 621
    .line 622
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 623
    goto :goto_5

    .line 624
    .line 625
    :cond_19
    iget-object v1, p0, Lcom/narvii/detail/DetailAdapter;->tipLogListResponse:Lcom/narvii/tipping/model/TipLogListResponse;

    .line 626
    .line 627
    if-eqz v1, :cond_1b

    .line 628
    .line 629
    iget-object v1, v1, Lcom/narvii/tipping/model/TipLogListResponse;->tipSummary:Lcom/narvii/tipping/model/TipSummary;

    .line 630
    .line 631
    if-eqz v1, :cond_1a

    .line 632
    .line 633
    iget v7, v1, Lcom/narvii/tipping/model/TipSummary;->tippersCount:I

    .line 634
    goto :goto_6

    .line 635
    .line 636
    :cond_1a
    if-eqz p3, :cond_1b

    .line 637
    .line 638
    iget v7, p3, Lcom/narvii/model/TippingInfo;->tippersCount:I

    .line 639
    .line 640
    .line 641
    :cond_1b
    :goto_6
    invoke-virtual {p1, p3, v0, p2, v7}, Lcom/narvii/tipping/TippingItem;->setTippingInfo(Lcom/narvii/model/TippingInfo;Ljava/util/List;ZI)V

    .line 642
    .line 643
    iget-boolean p2, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    .line 644
    .line 645
    .line 646
    invoke-virtual {p1, p2}, Lcom/narvii/tipping/TippingItem;->setDarkTheme(Z)V

    .line 647
    .line 648
    :cond_1c
    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter;->tipLogListResponse:Lcom/narvii/tipping/model/TipLogListResponse;

    .line 649
    .line 650
    if-nez p1, :cond_1d

    .line 651
    .line 652
    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter;->tipperListError:Ljava/lang/String;

    .line 653
    .line 654
    if-nez p1, :cond_1d

    .line 655
    .line 656
    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter;->tipperListRequest:Lcom/narvii/util/http/ApiRequest;

    .line 657
    .line 658
    if-nez p1, :cond_1d

    .line 659
    .line 660
    .line 661
    invoke-direct {p0}, Lcom/narvii/detail/DetailAdapter;->refreshTippingList()V

    .line 662
    .line 663
    :cond_1d
    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter;->tipCell:Landroid/view/View;

    .line 664
    .line 665
    .line 666
    const p2, 0x7f0600ff

    .line 667
    .line 668
    .line 669
    const p3, 0x7f060100

    .line 670
    .line 671
    .line 672
    const v0, 0x7f0a044f

    .line 673
    .line 674
    .line 675
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/narvii/detail/DetailAdapter;->setBackgroundColor(Landroid/view/View;III)V

    .line 676
    .line 677
    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter;->tipCell:Landroid/view/View;

    .line 678
    .line 679
    .line 680
    const p2, 0x7f0a0e89

    .line 681
    .line 682
    .line 683
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 684
    move-result-object p1

    .line 685
    .line 686
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 687
    .line 688
    .line 689
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 690
    .line 691
    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter;->tipCell:Landroid/view/View;

    .line 692
    .line 693
    .line 694
    const p2, 0x7f0a0943

    .line 695
    .line 696
    .line 697
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 698
    move-result-object p1

    .line 699
    .line 700
    check-cast p1, Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 701
    .line 702
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 703
    .line 704
    .line 705
    invoke-virtual {p1, p2}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setOnBarClickListener(Landroid/view/View$OnClickListener;)V

    .line 706
    .line 707
    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter;->tipCell:Landroid/view/View;

    .line 708
    .line 709
    .line 710
    const p2, 0x7f0a0e88

    .line 711
    .line 712
    .line 713
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 714
    move-result-object p1

    .line 715
    .line 716
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 717
    .line 718
    .line 719
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 720
    .line 721
    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter;->tipCell:Landroid/view/View;

    .line 722
    return-object p1

    .line 723
    .line 724
    :cond_1e
    instance-of v0, p1, Lcom/narvii/detail/DetailAdapter$HeaderTag;

    .line 725
    .line 726
    if-eqz v0, :cond_20

    .line 727
    move-object v0, p1

    .line 728
    .line 729
    check-cast v0, Lcom/narvii/detail/DetailAdapter$HeaderTag;

    .line 730
    .line 731
    iget v1, v0, Lcom/narvii/detail/DetailAdapter$HeaderTag;->stringId:I

    .line 732
    .line 733
    iget v0, v0, Lcom/narvii/detail/DetailAdapter$HeaderTag;->count:I

    .line 734
    .line 735
    .line 736
    invoke-virtual {p0, v1, v0, p2, p3}, Lcom/narvii/detail/DetailAdapter;->createHeaderView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 737
    move-result-object p2

    .line 738
    .line 739
    .line 740
    invoke-virtual {p0, v9}, Lcom/narvii/detail/DetailAdapter;->getItem(I)Ljava/lang/Object;

    .line 741
    move-result-object p3

    .line 742
    .line 743
    if-ne p3, p1, :cond_1f

    .line 744
    .line 745
    .line 746
    invoke-virtual {p2, v9, v9, v9, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 747
    :cond_1f
    return-object p2

    .line 748
    .line 749
    :cond_20
    instance-of v0, p1, Lcom/narvii/detail/DetailAdapter$AddTag;

    .line 750
    .line 751
    if-eqz v0, :cond_24

    .line 752
    .line 753
    .line 754
    const v0, 0x7f0d0152

    .line 755
    .line 756
    .line 757
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 758
    move-result-object p2

    .line 759
    .line 760
    .line 761
    const p3, 0x7f0a009b

    .line 762
    .line 763
    .line 764
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 765
    move-result-object p3

    .line 766
    .line 767
    iget-boolean v0, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    .line 768
    .line 769
    if-eqz v0, :cond_21

    .line 770
    .line 771
    .line 772
    const v1, 0x7f0806c6

    .line 773
    goto :goto_7

    .line 774
    .line 775
    .line 776
    :cond_21
    const v1, 0x7f0806c5

    .line 777
    .line 778
    :goto_7
    if-nez v0, :cond_22

    .line 779
    .line 780
    .line 781
    const v7, -0x929293

    .line 782
    .line 783
    .line 784
    :cond_22
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 785
    move-result-object v0

    .line 786
    .line 787
    .line 788
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 789
    move-result-object v0

    .line 790
    .line 791
    .line 792
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 793
    move-result-object v0

    .line 794
    .line 795
    if-eqz p3, :cond_23

    .line 796
    .line 797
    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 798
    .line 799
    .line 800
    invoke-virtual {p3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 801
    .line 802
    .line 803
    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 804
    .line 805
    .line 806
    :cond_23
    const p3, 0x7f0a06d3

    .line 807
    .line 808
    .line 809
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 810
    move-result-object p3

    .line 811
    .line 812
    check-cast p3, Lcom/narvii/widget/TintButton;

    .line 813
    .line 814
    .line 815
    invoke-virtual {p3, v7}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 816
    .line 817
    .line 818
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 819
    move-result-object p3

    .line 820
    .line 821
    check-cast p3, Landroid/widget/TextView;

    .line 822
    .line 823
    check-cast p1, Lcom/narvii/detail/DetailAdapter$AddTag;

    .line 824
    .line 825
    iget p1, p1, Lcom/narvii/detail/DetailAdapter$AddTag;->stringId:I

    .line 826
    .line 827
    .line 828
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(I)V

    .line 829
    .line 830
    .line 831
    invoke-virtual {p3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 832
    return-object p2

    .line 833
    .line 834
    :cond_24
    instance-of v0, p1, Lcom/narvii/detail/DateDivider;

    .line 835
    .line 836
    if-eqz v0, :cond_26

    .line 837
    .line 838
    .line 839
    const v0, 0x7f0d0158

    .line 840
    .line 841
    .line 842
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 843
    move-result-object p2

    .line 844
    .line 845
    instance-of p3, p2, Lcom/narvii/detail/DateDividerItem;

    .line 846
    .line 847
    if-eqz p3, :cond_25

    .line 848
    move-object p3, p2

    .line 849
    .line 850
    check-cast p3, Lcom/narvii/detail/DateDividerItem;

    .line 851
    .line 852
    check-cast p1, Lcom/narvii/detail/DateDivider;

    .line 853
    .line 854
    .line 855
    invoke-virtual {p3, p1}, Lcom/narvii/detail/DateDividerItem;->setDateDivider(Lcom/narvii/detail/DateDivider;)V

    .line 856
    .line 857
    .line 858
    invoke-virtual {p0, p2, v2, v4}, Lcom/narvii/detail/DetailAdapter;->setTextColor(Landroid/view/View;II)V

    .line 859
    .line 860
    .line 861
    invoke-virtual {p0, p2, v1, v4}, Lcom/narvii/detail/DetailAdapter;->setTextColor(Landroid/view/View;II)V

    .line 862
    .line 863
    .line 864
    const p1, 0x7f0a0408

    .line 865
    .line 866
    .line 867
    invoke-virtual {p0, p2, p1, v4}, Lcom/narvii/detail/DetailAdapter;->setTextColor(Landroid/view/View;II)V

    .line 868
    :cond_25
    return-object p2

    .line 869
    .line 870
    :cond_26
    instance-of v0, p1, Lcom/narvii/model/Media;

    .line 871
    .line 872
    if-eqz v0, :cond_27

    .line 873
    .line 874
    check-cast p1, Lcom/narvii/model/Media;

    .line 875
    .line 876
    .line 877
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/detail/DetailAdapter;->createMediaView(Lcom/narvii/model/Media;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 878
    move-result-object p1

    .line 879
    return-object p1

    .line 880
    .line 881
    :cond_27
    instance-of v0, p1, Ljava/lang/String;

    .line 882
    .line 883
    if-eqz v0, :cond_28

    .line 884
    .line 885
    check-cast p1, Ljava/lang/String;

    .line 886
    .line 887
    .line 888
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/detail/DetailAdapter;->createTextView(Ljava/lang/String;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 889
    move-result-object p1

    .line 890
    return-object p1

    .line 891
    .line 892
    .line 893
    :cond_28
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 894
    move-result-object p1

    .line 895
    .line 896
    .line 897
    invoke-virtual {p0, p3, p2, p1}, Lcom/narvii/list/NVAdapter;->createErrorItem(Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    .line 898
    move-result-object p1

    .line 899
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

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->DIVIDER:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->COMMENT_HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->COMMENT_ADD:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->LOADING:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->LIST_DIVIDER:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 23
    .line 24
    .line 25
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->DIVIDER_LINE:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 28
    .line 29
    .line 30
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->PADDING10:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 33
    .line 34
    .line 35
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->USER_GRID:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 38
    .line 39
    .line 40
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->TIPPING:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 43
    .line 44
    .line 45
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 48
    .line 49
    const-class v1, Lcom/narvii/detail/DetailAdapter$HeaderTag;

    .line 50
    .line 51
    .line 52
    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/Class;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 58
    .line 59
    const-class v1, Lcom/narvii/detail/DetailAdapter$AddTag;

    .line 60
    .line 61
    .line 62
    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/Class;)V

    .line 63
    .line 64
    .line 65
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 68
    .line 69
    const-class v1, Lcom/narvii/detail/DateDivider;

    .line 70
    .line 71
    .line 72
    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/Class;)V

    .line 73
    .line 74
    .line 75
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 78
    .line 79
    const-class v1, Lcom/narvii/model/Media;

    .line 80
    .line 81
    .line 82
    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/Class;)V

    .line 83
    .line 84
    .line 85
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 88
    .line 89
    const-class v1, Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/Class;)V

    .line 93
    .line 94
    .line 95
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    return-void
.end method

.method protected getCommunity(I)Lcom/narvii/model/Community;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "community"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/community/CommunityService;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 19
    .line 20
    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    .line 21
    .line 22
    const-class v2, Lcom/narvii/model/Community;

    .line 23
    .line 24
    const-string v3, "__community"

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    check-cast v0, Lcom/narvii/app/NVFragment;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    .line 35
    invoke-static {p1, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    check-cast p1, Lcom/narvii/model/Community;

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_0
    instance-of v1, v0, Lcom/narvii/app/NVActivity;

    .line 42
    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v3}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    .line 52
    invoke-static {p1, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    check-cast p1, Lcom/narvii/model/Community;

    .line 56
    :cond_1
    :goto_0
    return-object p1
.end method

.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter;->response:Lcom/narvii/model/api/ObjectResponse;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/narvii/detail/DetailAdapter;->cells()Ljava/util/ArrayList;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method protected getHeaderBackgroundColor()I
    .locals 1

    const v0, 0x32ffffff

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter;->cells:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-ge p1, v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter;->cells:Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    .line 17
    :cond_0
    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter;->cells:Ljava/util/ArrayList;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 21
    const/4 p1, 0x0

    .line 22
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/detail/DetailAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    const-wide/16 v0, 0x0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 13
    move-result p1

    .line 14
    int-to-long v0, p1

    .line 15
    :goto_0
    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/detail/DetailAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    return v0

    .line 9
    .line 10
    :cond_0
    iget-object v1, p0, Lcom/narvii/detail/DetailAdapter;->cellTypes:Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 14
    move-result v1

    .line 15
    .line 16
    :goto_0
    if-lez v1, :cond_2

    .line 17
    .line 18
    iget-object v2, p0, Lcom/narvii/detail/DetailAdapter;->cellTypes:Ljava/util/ArrayList;

    .line 19
    .line 20
    add-int/lit8 v3, v1, -0x1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    check-cast v2, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, p1}, Lcom/narvii/detail/DetailAdapter$CellType;->isType(Ljava/lang/Object;)Z

    .line 30
    move-result v2

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    return v1

    .line 34
    .line 35
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    const-string v2, "unknown cell type: "

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    .line 56
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 57
    return v0
.end method

.method public getObject()Lcom/narvii/model/NVObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter;->response:Lcom/narvii/model/api/ObjectResponse;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/model/api/ObjectResponse;->object()Lcom/narvii/model/NVObject;

    .line 10
    move-result-object v0

    .line 11
    :goto_0
    return-object v0
.end method

.method protected getPublishNdcId()I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Lcom/narvii/model/Feed;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    .line 12
    :cond_0
    iget v1, v0, Lcom/narvii/model/Feed;->ndcId:I

    .line 13
    .line 14
    instance-of v2, v0, Lcom/narvii/model/Blog;

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    check-cast v0, Lcom/narvii/model/Blog;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/model/Blog;->getPublishNdcId()I

    .line 22
    move-result v1

    .line 23
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

    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter;->response:Lcom/narvii/model/api/ObjectResponse;

    return-object v0
.end method

.method public getSendRequestCause()I
    .locals 1

    iget v0, p0, Lcom/narvii/detail/DetailAdapter;->sendRequestCause:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/detail/DetailAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/detail/DetailAdapter;->getCell(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter;->cellTypes:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    .line 8
    add-int/lit8 v0, v0, 0x1

    .line 9
    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/detail/DetailAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    return v0

    .line 9
    .line 10
    :cond_0
    instance-of v1, p1, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    check-cast p1, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 15
    .line 16
    iget-boolean p1, p1, Lcom/narvii/detail/DetailAdapter$CellType;->isEnabled:Z

    .line 17
    return p1

    .line 18
    .line 19
    :cond_1
    iget-object v1, p0, Lcom/narvii/detail/DetailAdapter;->cellTypes:Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v2

    .line 28
    .line 29
    if-eqz v2, :cond_3

    .line 30
    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    check-cast v2, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 36
    .line 37
    iget-object v3, v2, Lcom/narvii/detail/DetailAdapter$CellType;->clazz:Ljava/lang/Class;

    .line 38
    .line 39
    if-eqz v3, :cond_2

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, p1}, Lcom/narvii/detail/DetailAdapter$CellType;->isType(Ljava/lang/Object;)Z

    .line 43
    move-result v3

    .line 44
    .line 45
    if-eqz v3, :cond_2

    .line 46
    .line 47
    iget-boolean p1, v2, Lcom/narvii/detail/DetailAdapter$CellType;->isEnabled:Z

    .line 48
    return p1

    .line 49
    :cond_3
    return v0
.end method

.method public isListShown()Z
    .locals 1

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

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-object v0, p0, Lcom/narvii/detail/DetailAdapter;->cells:Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 7
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
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter;->userIPC:Lcom/narvii/logging/Impression/ImpressionCollector;

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;Z)V

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter;->response:Lcom/narvii/model/api/ObjectResponse;

    .line 12
    .line 13
    if-nez v0, :cond_3

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 16
    .line 17
    instance-of v1, v0, Landroid/app/Activity;

    .line 18
    .line 19
    const-string v2, "prefetch"

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    check-cast v0, Landroid/app/Activity;

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v2}, Lcom/narvii/util/ParamUtils;->getStringParam(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_0
    instance-of v1, v0, Landroidx/fragment/app/Fragment;

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v2}, Lcom/narvii/util/ParamUtils;->getStringParam(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v0, 0x0

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->objectType()Ljava/lang/Class;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    check-cast v0, Lcom/narvii/model/NVObject;

    .line 51
    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v0}, Lcom/narvii/detail/DetailAdapter;->setObject(Lcom/narvii/model/NVObject;)V

    .line 56
    :cond_2
    const/4 v0, 0x1

    .line 57
    .line 58
    iput v0, p0, Lcom/narvii/detail/DetailAdapter;->sendRequestCause:I

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->sendRequest()V

    .line 62
    :cond_3
    return-void
.end method

.method public onErrorRetry()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->refreshMonitorAbort()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-object v0, p0, Lcom/narvii/detail/DetailAdapter;->errorMsg:Ljava/lang/String;

    .line 7
    const/4 v0, 0x3

    .line 8
    .line 9
    iput v0, p0, Lcom/narvii/detail/DetailAdapter;->sendRequestCause:I

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->sendRequest()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    .line 16
    return-void
.end method

.method protected onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 1
    .line 2
    iput-object p2, p0, Lcom/narvii/detail/DetailAdapter;->errorMsg:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    .line 6
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 6

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->USER_GRID:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-ne p3, v0, :cond_1

    .line 6
    .line 7
    if-eqz p5, :cond_0

    .line 8
    const/4 p1, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p5, p1}, Lcom/narvii/detail/DetailAdapter;->onUserGridClick(Landroid/view/View;Ljava/lang/String;)Z

    .line 12
    :cond_0
    return v1

    .line 13
    .line 14
    :cond_1
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->COMMENT_HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 15
    .line 16
    if-ne p3, v0, :cond_c

    .line 17
    .line 18
    if-eqz p5, :cond_c

    .line 19
    .line 20
    .line 21
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 22
    move-result v0

    .line 23
    .line 24
    .line 25
    const v2, 0x7f0a0361

    .line 26
    const/4 v3, 0x0

    .line 27
    .line 28
    if-ne v0, v2, :cond_7

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    instance-of p1, p1, Lcom/narvii/model/Blog;

    .line 35
    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    check-cast p1, Lcom/narvii/model/Blog;

    .line 43
    .line 44
    iget-boolean p1, p1, Lcom/narvii/model/Blog;->isGlobalAnnouncement:Z

    .line 45
    .line 46
    if-eqz p1, :cond_2

    .line 47
    move p1, v1

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    move p1, v3

    .line 50
    .line 51
    :goto_0
    new-instance p2, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 55
    move-result-object p3

    .line 56
    .line 57
    .line 58
    invoke-direct {p2, p3}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 59
    .line 60
    const/16 p3, 0x8

    .line 61
    const/4 p4, 0x4

    .line 62
    .line 63
    if-nez p1, :cond_4

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->commentSort()I

    .line 67
    move-result p5

    .line 68
    const/4 v0, 0x2

    .line 69
    .line 70
    if-ne p5, v0, :cond_3

    .line 71
    move p5, p4

    .line 72
    goto :goto_1

    .line 73
    :cond_3
    move p5, p3

    .line 74
    .line 75
    .line 76
    :goto_1
    const v0, 0x7f1202f5

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, v0, p5}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 80
    .line 81
    .line 82
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->commentSort()I

    .line 83
    move-result p5

    .line 84
    .line 85
    if-nez p5, :cond_5

    .line 86
    move p5, p4

    .line 87
    goto :goto_2

    .line 88
    :cond_5
    move p5, p3

    .line 89
    .line 90
    .line 91
    :goto_2
    const v0, 0x7f1202f3

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2, v0, p5}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->commentSort()I

    .line 98
    move-result p5

    .line 99
    .line 100
    if-ne p5, v1, :cond_6

    .line 101
    move p3, p4

    .line 102
    .line 103
    .line 104
    :cond_6
    const p4, 0x7f1202f4

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2, p4, p3}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 108
    .line 109
    .line 110
    const p3, 0x7f120fc9

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2, p3, v3}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 114
    .line 115
    new-instance p3, Lcom/narvii/detail/DetailAdapter$3;

    .line 116
    .line 117
    .line 118
    invoke-direct {p3, p0, p1}, Lcom/narvii/detail/DetailAdapter$3;-><init>(Lcom/narvii/detail/DetailAdapter;Z)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2, p3}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 125
    return v1

    .line 126
    .line 127
    .line 128
    :cond_7
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 129
    move-result v0

    .line 130
    .line 131
    .line 132
    const v2, 0x7f0a0358

    .line 133
    .line 134
    if-eq v0, v2, :cond_8

    .line 135
    .line 136
    .line 137
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 138
    move-result v0

    .line 139
    .line 140
    .line 141
    const v2, 0x7f0a0e51

    .line 142
    .line 143
    if-ne v0, v2, :cond_b

    .line 144
    .line 145
    .line 146
    :cond_8
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 147
    move-result-object v0

    .line 148
    .line 149
    instance-of v0, v0, Lcom/narvii/model/Feed;

    .line 150
    .line 151
    if-eqz v0, :cond_b

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 155
    move-result-object p1

    .line 156
    .line 157
    check-cast p1, Lcom/narvii/model/Feed;

    .line 158
    .line 159
    .line 160
    invoke-static {p0, p1, v3}, Lcom/narvii/comment/CommentHelper;->getCommentIntent(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;Z)Landroid/content/Intent;

    .line 161
    move-result-object p2

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    .line 165
    move-result p3

    .line 166
    .line 167
    if-eqz p3, :cond_9

    .line 168
    goto :goto_3

    .line 169
    .line 170
    .line 171
    :cond_9
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getPublishNdcId()I

    .line 172
    move-result v3

    .line 173
    .line 174
    :goto_3
    const-string p3, "__communityId"

    .line 175
    .line 176
    .line 177
    invoke-virtual {p2, p3, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 178
    .line 179
    .line 180
    invoke-static {p0, p2}, Lcom/narvii/detail/DetailAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getTotalCommentsCount()I

    .line 184
    move-result p1

    .line 185
    .line 186
    if-nez p1, :cond_a

    .line 187
    .line 188
    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter;->pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1}, Lcom/narvii/account/push/PushNotificationHelper;->checkRemindDialogWhenPostFinished()V

    .line 192
    :cond_a
    return v1

    .line 193
    .line 194
    .line 195
    :cond_b
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 196
    move-result v0

    .line 197
    .line 198
    .line 199
    const v2, 0x7f0a0f3c

    .line 200
    .line 201
    if-ne v0, v2, :cond_c

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->openCommentSetting()V

    .line 205
    return v1

    .line 206
    .line 207
    :cond_c
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->COMMENT_ADD:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 208
    .line 209
    if-ne p3, v0, :cond_d

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->commentNew()V

    .line 213
    return v1

    .line 214
    .line 215
    :cond_d
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->TIPPING:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 216
    .line 217
    if-ne p3, v0, :cond_14

    .line 218
    .line 219
    .line 220
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 221
    move-result-object v0

    .line 222
    .line 223
    instance-of v2, v0, Lcom/narvii/model/Feed;

    .line 224
    .line 225
    if-nez v2, :cond_e

    .line 226
    return v1

    .line 227
    .line 228
    :cond_e
    check-cast v0, Lcom/narvii/model/Feed;

    .line 229
    .line 230
    iget-object v2, p0, Lcom/narvii/detail/DetailAdapter;->tippingHelper:Lcom/narvii/tipping/TippingHelper;

    .line 231
    .line 232
    if-nez v2, :cond_f

    .line 233
    .line 234
    new-instance v2, Lcom/narvii/tipping/TippingHelper;

    .line 235
    .line 236
    .line 237
    invoke-direct {v2, p0}, Lcom/narvii/tipping/TippingHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 238
    .line 239
    iput-object v2, p0, Lcom/narvii/detail/DetailAdapter;->tippingHelper:Lcom/narvii/tipping/TippingHelper;

    .line 240
    .line 241
    :cond_f
    iget-object v2, p0, Lcom/narvii/detail/DetailAdapter;->tippingHelper:Lcom/narvii/tipping/TippingHelper;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v2, v0}, Lcom/narvii/tipping/TippingHelper;->isTipAuthor(Lcom/narvii/model/Tippable;)Z

    .line 245
    move-result v2

    .line 246
    .line 247
    const-string v3, "Detailed Page"

    .line 248
    .line 249
    if-eqz p5, :cond_12

    .line 250
    .line 251
    .line 252
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 253
    move-result v4

    .line 254
    .line 255
    .line 256
    const v5, 0x7f0a0e89

    .line 257
    .line 258
    if-ne v4, v5, :cond_12

    .line 259
    .line 260
    sget-object v4, Lcom/narvii/logging/ActSemantic;->prop:Lcom/narvii/logging/ActSemantic;

    .line 261
    .line 262
    .line 263
    invoke-virtual {p0, v4}, Lcom/narvii/detail/DetailAdapter;->sendMainLogEvent(Lcom/narvii/logging/ActSemantic;)V

    .line 264
    .line 265
    const-string v4, "account"

    .line 266
    .line 267
    .line 268
    invoke-virtual {p0, v4}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 269
    move-result-object v4

    .line 270
    .line 271
    check-cast v4, Lcom/narvii/account/AccountService;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v4}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 275
    move-result v4

    .line 276
    .line 277
    if-nez v4, :cond_10

    .line 278
    .line 279
    new-instance p1, Landroid/content/Intent;

    .line 280
    .line 281
    const-string p2, "tipping"

    .line 282
    .line 283
    .line 284
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->ensureLogin(Landroid/content/Intent;)V

    .line 288
    return v1

    .line 289
    .line 290
    .line 291
    :cond_10
    invoke-virtual {p0, v2}, Lcom/narvii/detail/DetailAdapter;->onTipBoxClicked(Z)V

    .line 292
    .line 293
    if-eqz v2, :cond_11

    .line 294
    .line 295
    iget-object v1, p0, Lcom/narvii/detail/DetailAdapter;->tippingHelper:Lcom/narvii/tipping/TippingHelper;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v1, v3}, Lcom/narvii/tipping/TippingHelper;->source(Ljava/lang/String;)Lcom/narvii/tipping/TippingHelper;

    .line 299
    .line 300
    iget-object v1, p0, Lcom/narvii/detail/DetailAdapter;->tippingHelper:Lcom/narvii/tipping/TippingHelper;

    .line 301
    .line 302
    .line 303
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getPublishNdcId()I

    .line 304
    move-result v2

    .line 305
    .line 306
    .line 307
    invoke-virtual {p0, v2}, Lcom/narvii/detail/DetailAdapter;->getCommunity(I)Lcom/narvii/model/Community;

    .line 308
    move-result-object v2

    .line 309
    .line 310
    .line 311
    invoke-virtual {v1, v0, v2}, Lcom/narvii/tipping/TippingHelper;->openTippingList(Lcom/narvii/model/Tippable;Lcom/narvii/model/Community;)V

    .line 312
    goto :goto_4

    .line 313
    .line 314
    :cond_11
    iget-object v1, p0, Lcom/narvii/detail/DetailAdapter;->tippingHelper:Lcom/narvii/tipping/TippingHelper;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v1, v3}, Lcom/narvii/tipping/TippingHelper;->source(Ljava/lang/String;)Lcom/narvii/tipping/TippingHelper;

    .line 318
    .line 319
    iget-object v1, p0, Lcom/narvii/detail/DetailAdapter;->tippingHelper:Lcom/narvii/tipping/TippingHelper;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v1, v0, p0}, Lcom/narvii/tipping/TippingHelper;->openTipDialog(Lcom/narvii/model/Tippable;Lcom/narvii/monetization/store/TippingConfirmDialog$TipSuccessListener;)Lcom/narvii/monetization/store/TippingConfirmDialog;

    .line 323
    .line 324
    :cond_12
    :goto_4
    if-eqz p5, :cond_14

    .line 325
    .line 326
    .line 327
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 328
    move-result v1

    .line 329
    .line 330
    .line 331
    const v2, 0x7f0a0943

    .line 332
    .line 333
    if-eq v1, v2, :cond_13

    .line 334
    .line 335
    .line 336
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 337
    move-result v1

    .line 338
    .line 339
    .line 340
    const v2, 0x7f0a0e88

    .line 341
    .line 342
    if-ne v1, v2, :cond_14

    .line 343
    .line 344
    .line 345
    :cond_13
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    .line 346
    move-result-object v1

    .line 347
    .line 348
    sget-object v2, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    .line 349
    .line 350
    .line 351
    invoke-static {v1, v2}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 352
    move-result-object v1

    .line 353
    .line 354
    const-string v2, "PropsGiverList"

    .line 355
    .line 356
    .line 357
    invoke-virtual {v1, v2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 358
    move-result-object v1

    .line 359
    .line 360
    .line 361
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 362
    move-result-object v2

    .line 363
    .line 364
    .line 365
    invoke-virtual {v1, v2}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    .line 366
    move-result-object v1

    .line 367
    .line 368
    .line 369
    invoke-virtual {v1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 370
    .line 371
    iget-object v1, p0, Lcom/narvii/detail/DetailAdapter;->tippingHelper:Lcom/narvii/tipping/TippingHelper;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v1, v3}, Lcom/narvii/tipping/TippingHelper;->source(Ljava/lang/String;)Lcom/narvii/tipping/TippingHelper;

    .line 375
    .line 376
    iget-object v1, p0, Lcom/narvii/detail/DetailAdapter;->tippingHelper:Lcom/narvii/tipping/TippingHelper;

    .line 377
    .line 378
    .line 379
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getPublishNdcId()I

    .line 380
    move-result v2

    .line 381
    .line 382
    .line 383
    invoke-virtual {p0, v2}, Lcom/narvii/detail/DetailAdapter;->getCommunity(I)Lcom/narvii/model/Community;

    .line 384
    move-result-object v2

    .line 385
    .line 386
    .line 387
    invoke-virtual {v1, v0, v2}, Lcom/narvii/tipping/TippingHelper;->openTippingList(Lcom/narvii/model/Tippable;Lcom/narvii/model/Community;)V

    .line 388
    .line 389
    .line 390
    :cond_14
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 391
    move-result p1

    .line 392
    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 3
    .line 4
    instance-of v0, v0, Lcom/narvii/model/User;

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    iget-object v0, p1, Lcom/narvii/notification/Notification;->parentId:Ljava/lang/String;

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter;->userListResponse:Lcom/narvii/model/api/UserListResponse;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 17
    .line 18
    const-string v1, "new"

    .line 19
    .line 20
    if-eq v0, v1, :cond_0

    .line 21
    .line 22
    const-string v2, "delete"

    .line 23
    .line 24
    if-ne v0, v2, :cond_2

    .line 25
    .line 26
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/narvii/detail/DetailAdapter;->userListSize:I

    .line 27
    const/4 v2, 0x0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v2, v0}, Lcom/narvii/detail/DetailAdapter;->createUserListRequest(II)Lcom/narvii/util/http/ApiRequest;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest;->url()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    iget-object v3, p1, Lcom/narvii/notification/Notification;->parentId:Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 41
    move-result v0

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter;->userListResponse:Lcom/narvii/model/api/UserListResponse;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/narvii/model/api/UserListResponse;->list()Ljava/util/List;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    iget-object v3, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v3, Lcom/narvii/model/User;

    .line 54
    .line 55
    iget-object v3, v3, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    invoke-static {v0, v3}, Lcom/narvii/util/Utils;->removeId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 59
    .line 60
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 61
    .line 62
    if-ne v0, v1, :cond_1

    .line 63
    .line 64
    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter;->userListResponse:Lcom/narvii/model/api/UserListResponse;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/narvii/model/api/UserListResponse;->list()Ljava/util/List;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast p1, Lcom/narvii/model/User;

    .line 73
    .line 74
    .line 75
    invoke-interface {v0, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 76
    goto :goto_0

    .line 77
    :catch_0
    move-exception p1

    .line 78
    goto :goto_1

    .line 79
    .line 80
    .line 81
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    goto :goto_2

    .line 83
    .line 84
    :goto_1
    const-string v0, "fail to update userList"

    .line 85
    .line 86
    .line 87
    invoke-static {v0, p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    :cond_2
    :goto_2
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

    .line 1
    const/4 p1, 0x0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/narvii/detail/DetailAdapter;->errorMsg:Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lcom/narvii/detail/DetailAdapter;->setResponse(Lcom/narvii/model/api/ObjectResponse;)V

    .line 7
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "response"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->responseType()Ljava/lang/Class;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    check-cast v0, Lcom/narvii/model/api/ObjectResponse;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lcom/narvii/detail/DetailAdapter;->setResponse(Lcom/narvii/model/api/ObjectResponse;)V

    .line 25
    .line 26
    :cond_0
    const-string v0, "errorMsg"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    iput-object p1, p0, Lcom/narvii/detail/DetailAdapter;->errorMsg:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onSaveInstanceState()Landroid/os/Bundle;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->saveInstanceState()Z

    .line 8
    move-result v1

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/detail/DetailAdapter;->response:Lcom/narvii/model/api/ObjectResponse;

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->safeWriteAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    const-string v2, "response"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    const-string v1, "errorMsg"

    .line 24
    .line 25
    iget-object v2, p0, Lcom/narvii/detail/DetailAdapter;->errorMsg:Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_0
    return-object v0
.end method

.method protected onTipBoxClicked(Z)V
    .locals 0

    return-void
.end method

.method public onTipSuccess()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter;->tipCell:Landroid/view/View;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    const-string v0, "account"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/detail/DetailAdapter;->tipLogListResponse:Lcom/narvii/tipping/model/TipLogListResponse;

    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    new-instance v1, Lcom/narvii/tipping/model/TipLog;

    .line 26
    .line 27
    .line 28
    invoke-direct {v1}, Lcom/narvii/tipping/model/TipLog;-><init>()V

    .line 29
    .line 30
    iput-object v0, v1, Lcom/narvii/tipping/model/TipLog;->tipper:Lcom/narvii/model/User;

    .line 31
    .line 32
    new-instance v2, Ljava/util/Date;

    .line 33
    .line 34
    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 36
    move-result-wide v3

    .line 37
    .line 38
    .line 39
    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 40
    .line 41
    iput-object v2, v1, Lcom/narvii/tipping/model/TipLog;->lastTippedTime:Ljava/util/Date;

    .line 42
    .line 43
    iget-object v2, p0, Lcom/narvii/detail/DetailAdapter;->tipLogListResponse:Lcom/narvii/tipping/model/TipLogListResponse;

    .line 44
    .line 45
    iget-object v3, v2, Lcom/narvii/tipping/model/TipLogListResponse;->tippedUserList:Ljava/util/List;

    .line 46
    .line 47
    if-nez v3, :cond_1

    .line 48
    .line 49
    new-instance v3, Ljava/util/ArrayList;

    .line 50
    .line 51
    .line 52
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    iput-object v3, v2, Lcom/narvii/tipping/model/TipLogListResponse;->tippedUserList:Ljava/util/List;

    .line 55
    .line 56
    :cond_1
    iget-object v2, p0, Lcom/narvii/detail/DetailAdapter;->tipLogListResponse:Lcom/narvii/tipping/model/TipLogListResponse;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/narvii/tipping/model/TipLogListResponse;->list()Ljava/util/List;

    .line 60
    move-result-object v2

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    .line 67
    invoke-static {v2, v0}, Lcom/narvii/util/Utils;->removeId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 68
    .line 69
    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter;->tipLogListResponse:Lcom/narvii/tipping/model/TipLogListResponse;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/narvii/tipping/model/TipLogListResponse;->list()Ljava/util/List;

    .line 73
    move-result-object v0

    .line 74
    const/4 v2, 0x0

    .line 75
    .line 76
    .line 77
    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    .line 81
    .line 82
    .line 83
    :cond_2
    invoke-direct {p0}, Lcom/narvii/detail/DetailAdapter;->refreshTippingList()V

    .line 84
    return-void
.end method

.method protected onUserGridClick(Landroid/view/View;Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter;->userListError:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz p1, :cond_3

    .line 8
    const/4 p1, 0x0

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/detail/DetailAdapter;->userListError:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/detail/DetailAdapter;->userListRequest:Lcom/narvii/util/http/ApiRequest;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    .line 16
    return v0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    instance-of v1, v1, Lcom/narvii/model/User;

    .line 23
    .line 24
    if-eqz v1, :cond_3

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    check-cast p1, Lcom/narvii/model/User;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/narvii/detail/DetailAdapter;->userIPC:Lcom/narvii/logging/Impression/ImpressionCollector;

    .line 33
    .line 34
    sget-object v2, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v1, p1, v2}, Lcom/narvii/list/NVAdapter;->getClickEventBuilder(Lcom/narvii/logging/Impression/ImpressionCollector;Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 42
    .line 43
    .line 44
    invoke-static {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    if-nez p1, :cond_1

    .line 48
    return v0

    .line 49
    .line 50
    :cond_1
    if-nez p2, :cond_2

    .line 51
    .line 52
    iget-object p2, p0, Lcom/narvii/detail/DetailAdapter;->source:Ljava/lang/String;

    .line 53
    .line 54
    :cond_2
    const-string v1, "Source"

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    .line 59
    .line 60
    invoke-static {p0, p1}, Lcom/narvii/detail/DetailAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 61
    return v0

    .line 62
    :cond_3
    const/4 p1, 0x0

    .line 63
    return p1
.end method

.method protected openCommentSetting()V
    .locals 3

    .line 1
    .line 2
    const-class v0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    const v2, 0x7f1202ec

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    const-string v2, "title"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    const v2, 0x7f120135

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    const-string v2, "subTitle"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    .line 40
    const-string v1, "privilegeKey"

    .line 41
    .line 42
    const-string v2, "privilegeOfCommentOnUserProfile"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    invoke-static {p0, v0}, Lcom/narvii/detail/DetailAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 49
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

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->refreshMonitorStart(ILcom/narvii/util/Callback;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    .line 6
    iput-object p1, p0, Lcom/narvii/detail/DetailAdapter;->errorMsg:Ljava/lang/String;

    .line 7
    const/4 p2, 0x2

    .line 8
    .line 9
    iput p2, p0, Lcom/narvii/detail/DetailAdapter;->sendRequestCause:I

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->sendRequest()V

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/detail/DetailAdapter;->userListError:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/narvii/detail/DetailAdapter;->userListResponse:Lcom/narvii/model/api/UserListResponse;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/narvii/detail/DetailAdapter;->tipperListError:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/narvii/detail/DetailAdapter;->tipperListRequest:Lcom/narvii/util/http/ApiRequest;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->refreshMonitorEnd()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    .line 27
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

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    const-string v0, "EngagementArea"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 26
    return-void
.end method

.method protected sendRequest()V
    .locals 3

    .line 1
    .line 2
    const-string v0, "api"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/detail/DetailAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->createRequest()Lcom/narvii/util/http/ApiRequest;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    iput-object v1, p0, Lcom/narvii/detail/DetailAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    iget-object v2, p0, Lcom/narvii/detail/DetailAdapter;->listener:Lcom/narvii/util/http/ApiResponseListener;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 29
    :cond_1
    return-void
.end method

.method protected setBackgroundColor(Landroid/view/View;III)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    iget-boolean p2, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    .line 9
    .line 10
    if-nez p2, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move p3, p4

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 16
    :cond_1
    return-void
.end method

.method protected setCommentSort(I)V
    .locals 0

    return-void
.end method

.method protected setImageStrokeColor(Landroid/view/View;II)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p3, -0x1

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-static {p1, p2, p3}, Lcom/narvii/util/ViewUtils;->setImageStrokeColor(Landroid/view/View;II)V

    .line 10
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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/detail/DetailAdapter;->response:Lcom/narvii/model/api/ObjectResponse;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    .line 6
    return-void
.end method

.method protected setTextColor(Landroid/view/View;II)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/narvii/detail/DetailAdapter;->setTextColor(Landroid/view/View;III)V

    return-void
.end method

.method protected setTextColor(Landroid/view/View;III)V
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move p3, p4

    .line 2
    :goto_0
    invoke-static {p1, p2, p3}, Lcom/narvii/util/ViewUtils;->setTextColor(Landroid/view/View;II)V

    return-void
.end method

.method protected setTextColorSelector(Landroid/view/View;III)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Lcom/narvii/util/ViewUtils;->getTextView(Landroid/view/View;I)Landroid/widget/TextView;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move p3, p4

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 20
    move-result p2

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 24
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

    .line 1
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

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->showEmptyContent()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f120454

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p2, :cond_2

    if-eqz p5, :cond_1

    .line 5
    invoke-interface {p3, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {p4, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    :goto_0
    return-void

    .line 7
    :cond_3
    invoke-static {p1}, Lcom/narvii/util/text/IMGUtils;->extractIMGsWithIndices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz p5, :cond_4

    if-eqz p2, :cond_4

    .line 9
    invoke-interface {p3, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 10
    :cond_4
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez p5, :cond_5

    if-eqz p2, :cond_5

    .line 11
    invoke-interface {p4, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    return-void

    :cond_6
    if-eqz p2, :cond_8

    .line 12
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_1

    .line 13
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_2

    .line 14
    :cond_8
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 15
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/a$b;

    .line 16
    invoke-virtual {v2}, Lcom/twitter/a$b;->b()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_9

    .line 18
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_9
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 20
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/Media;

    .line 22
    invoke-virtual {v2}, Lcom/twitter/a$b;->d()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lcom/narvii/model/Media;->refId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 24
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    :cond_b
    invoke-virtual {v2}, Lcom/twitter/a$b;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_3

    .line 26
    :cond_c
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_d

    .line 28
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    if-eqz p5, :cond_e

    .line 29
    invoke-interface {p3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    .line 30
    :cond_e
    invoke-interface {p4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_4
    return-void
.end method
