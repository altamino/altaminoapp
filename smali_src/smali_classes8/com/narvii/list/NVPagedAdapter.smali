.class public abstract Lcom/narvii/list/NVPagedAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/Tag;

    .line 3
    .line 4
    const-string v1, "loading"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    sput-object v0, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    .line 10
    .line 11
    new-instance v0, Lcom/narvii/util/Tag;

    .line 12
    .line 13
    const-string v1, "loadMore"

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    sput-object v0, Lcom/narvii/list/NVPagedAdapter;->LOAD_MORE:Lcom/narvii/util/Tag;

    .line 19
    .line 20
    new-instance v0, Lcom/narvii/util/Tag;

    .line 21
    .line 22
    const-string v1, "listEnd"

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    sput-object v0, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    .line 28
    .line 29
    new-instance v0, Lcom/narvii/util/Tag;

    .line 30
    .line 31
    const-string v1, "error"

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    sput-object v0, Lcom/narvii/list/NVPagedAdapter;->ERROR:Lcom/narvii/util/Tag;

    .line 37
    .line 38
    new-instance v0, Lcom/narvii/util/Tag;

    .line 39
    .line 40
    const-string v1, "reqStart"

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    sput-object v0, Lcom/narvii/list/NVPagedAdapter;->REQ_TAG_START:Lcom/narvii/util/Tag;

    .line 46
    .line 47
    new-instance v0, Lcom/narvii/util/Tag;

    .line 48
    .line 49
    const-string v1, "reqSize"

    .line 50
    .line 51
    .line 52
    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    sput-object v0, Lcom/narvii/list/NVPagedAdapter;->REQ_TAG_SIZE:Lcom/narvii/util/Tag;

    .line 55
    .line 56
    new-instance v0, Lcom/narvii/util/Tag;

    .line 57
    .line 58
    const-string v1, "reqFromStart"

    .line 59
    .line 60
    .line 61
    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    sput-object v0, Lcom/narvii/list/NVPagedAdapter;->REQ_TAG_FROM_START:Lcom/narvii/util/Tag;

    .line 64
    .line 65
    new-instance v0, Lcom/narvii/util/Tag;

    .line 66
    .line 67
    const-string v1, "reqRefreshFlag"

    .line 68
    .line 69
    .line 70
    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    sput-object v0, Lcom/narvii/list/NVPagedAdapter;->REQ_TAG_REFRESH_FLAG:Lcom/narvii/util/Tag;

    .line 73
    .line 74
    new-instance v0, Lcom/narvii/util/Tag;

    .line 75
    .line 76
    const-string v1, "reqMiddleObjId"

    .line 77
    .line 78
    .line 79
    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    sput-object v0, Lcom/narvii/list/NVPagedAdapter;->REQ_MIDDLE_OBJ_ID:Lcom/narvii/util/Tag;

    .line 82
    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 2
    new-instance p1, Lcom/narvii/list/NVPagedAdapter$1;

    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->responseType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/narvii/list/NVPagedAdapter$1;-><init>(Lcom/narvii/list/NVPagedAdapter;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->requestListener:Lcom/narvii/util/http/ApiResponseListener;

    iput p2, p0, Lcom/narvii/list/NVPagedAdapter;->paginationType:I

    return-void
.end method

.method static bridge synthetic f(Lcom/narvii/list/NVPagedAdapter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/list/NVPagedAdapter;->direction:I

    return p0
.end method

.method static bridge synthetic g(Lcom/narvii/list/NVPagedAdapter;)Lcom/narvii/util/Callback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/list/NVPagedAdapter;->requestCallback:Lcom/narvii/util/Callback;

    return-object p0
.end method

.method static bridge synthetic h(Lcom/narvii/list/NVPagedAdapter;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/narvii/list/NVPagedAdapter;->requestTime:J

    return-wide v0
.end method

.method static bridge synthetic i(Lcom/narvii/list/NVPagedAdapter;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/narvii/list/NVPagedAdapter;->requestWaitTime:J

    return-wide v0
.end method

.method static bridge synthetic j(Lcom/narvii/list/NVPagedAdapter;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/list/NVPagedAdapter;->direction:I

    return-void
.end method

.method static bridge synthetic k(Lcom/narvii/list/NVPagedAdapter;Lcom/narvii/util/http/ApiRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    return-void
.end method

.method static bridge synthetic l(Lcom/narvii/list/NVPagedAdapter;Lcom/narvii/util/Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->requestCallback:Lcom/narvii/util/Callback;

    return-void
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

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-object p0

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    aput-boolean v2, p2, v1

    .line 14
    .line 15
    new-instance p0, Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 19
    return-object p0

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 23
    move-result v0

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    aput-boolean v2, p2, v1

    .line 28
    .line 29
    new-instance p0, Ljava/util/ArrayList;

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    return-object p0

    .line 34
    .line 35
    .line 36
    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 37
    move-result v0

    .line 38
    .line 39
    .line 40
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 41
    move-result v3

    .line 42
    .line 43
    if-lt v0, v3, :cond_5

    .line 44
    .line 45
    .line 46
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 47
    move-result v0

    .line 48
    sub-int/2addr v0, v2

    .line 49
    .line 50
    .line 51
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 52
    move-result-object v3

    .line 53
    .line 54
    check-cast v3, Lcom/narvii/model/NVObject;

    .line 55
    move v4, v1

    .line 56
    .line 57
    .line 58
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 59
    move-result v5

    .line 60
    .line 61
    if-ge v4, v5, :cond_9

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 65
    move-result-object v5

    .line 66
    .line 67
    check-cast v5, Lcom/narvii/model/NVObject;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 71
    move-result-object v6

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 75
    move-result-object v5

    .line 76
    .line 77
    .line 78
    invoke-static {v6, v5}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    move-result v5

    .line 80
    .line 81
    if-eqz v5, :cond_4

    .line 82
    .line 83
    new-instance p2, Ljava/util/ArrayList;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 87
    move-result v1

    .line 88
    sub-int/2addr v0, v4

    .line 89
    add-int/2addr v1, v0

    .line 90
    .line 91
    .line 92
    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 96
    add-int/2addr v4, v2

    .line 97
    .line 98
    .line 99
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 100
    move-result p1

    .line 101
    .line 102
    if-ge v4, p1, :cond_3

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 106
    move-result-object p1

    .line 107
    .line 108
    check-cast p1, Lcom/narvii/model/NVObject;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    add-int/lit8 v4, v4, 0x1

    .line 114
    goto :goto_1

    .line 115
    :cond_3
    return-object p2

    .line 116
    .line 117
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 118
    goto :goto_0

    .line 119
    .line 120
    .line 121
    :cond_5
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 122
    move-result-object v0

    .line 123
    .line 124
    check-cast v0, Lcom/narvii/model/NVObject;

    .line 125
    move v3, v1

    .line 126
    .line 127
    .line 128
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 129
    move-result v4

    .line 130
    .line 131
    if-ge v3, v4, :cond_9

    .line 132
    .line 133
    .line 134
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 135
    move-result-object v4

    .line 136
    .line 137
    check-cast v4, Lcom/narvii/model/NVObject;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 141
    move-result-object v5

    .line 142
    .line 143
    .line 144
    invoke-virtual {v4}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 145
    move-result-object v4

    .line 146
    .line 147
    .line 148
    invoke-static {v5, v4}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 149
    move-result v4

    .line 150
    .line 151
    if-eqz v4, :cond_8

    .line 152
    .line 153
    if-nez v3, :cond_6

    .line 154
    return-object p0

    .line 155
    .line 156
    :cond_6
    new-instance p2, Ljava/util/ArrayList;

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 160
    move-result v0

    .line 161
    add-int/2addr v0, v3

    .line 162
    .line 163
    .line 164
    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 165
    .line 166
    :goto_3
    if-ge v1, v3, :cond_7

    .line 167
    .line 168
    .line 169
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 170
    move-result-object v0

    .line 171
    .line 172
    check-cast v0, Lcom/narvii/model/NVObject;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    .line 177
    add-int/lit8 v1, v1, 0x1

    .line 178
    goto :goto_3

    .line 179
    .line 180
    .line 181
    :cond_7
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 182
    return-object p2

    .line 183
    .line 184
    :cond_8
    add-int/lit8 v3, v3, 0x1

    .line 185
    goto :goto_2

    .line 186
    .line 187
    :cond_9
    aput-boolean v2, p2, v1

    .line 188
    .line 189
    new-instance p0, Ljava/util/ArrayList;

    .line 190
    .line 191
    .line 192
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 193
    return-object p0
.end method

.method private replaceObject(ILcom/narvii/model/NVObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Lcom/narvii/model/NVObject;

    .line 12
    .line 13
    instance-of v1, v0, Lcom/narvii/model/StrategyObject;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    instance-of v1, p2, Lcom/narvii/model/StrategyObject;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    check-cast v0, Lcom/narvii/model/StrategyObject;

    .line 22
    .line 23
    .line 24
    invoke-interface {v0}, Lcom/narvii/model/StrategyObject;->getStrategyInfo()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    .line 30
    :try_start_0
    invoke-virtual {p2}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    .line 31
    move-result-object v1

    .line 32
    move-object v2, v1

    .line 33
    .line 34
    check-cast v2, Lcom/narvii/model/StrategyObject;

    .line 35
    .line 36
    .line 37
    invoke-interface {v2, v0}, Lcom/narvii/model/StrategyObject;->setStrategyInfo(Ljava/lang/String;)V

    .line 38
    .line 39
    iget-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .line 46
    const-string v1, "replace object"

    .line 47
    .line 48
    .line 49
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    .line 51
    :cond_1
    iget-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 55
    :goto_0
    return-void
.end method


# virtual methods
.method protected abortRequests()V
    .locals 4

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
    iget-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v3, p0, Lcom/narvii/list/NVPagedAdapter;->requestListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, v3}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 19
    .line 20
    iput-object v2, p0, Lcom/narvii/list/NVPagedAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->requestCallback:Lcom/narvii/util/Callback;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    const/4 v1, 0x2

    .line 26
    .line 27
    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, v1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 33
    :cond_1
    const/4 v0, 0x0

    .line 34
    .line 35
    iput v0, p0, Lcom/narvii/list/NVPagedAdapter;->direction:I

    .line 36
    .line 37
    iput v0, p0, Lcom/narvii/list/NVPagedAdapter;->refreshFlag:I

    .line 38
    .line 39
    iput-object v2, p0, Lcom/narvii/list/NVPagedAdapter;->requestCallback:Lcom/narvii/util/Callback;

    .line 40
    .line 41
    const-wide/16 v0, 0x0

    .line 42
    .line 43
    iput-wide v0, p0, Lcom/narvii/list/NVPagedAdapter;->requestTime:J

    .line 44
    .line 45
    iput-wide v0, p0, Lcom/narvii/list/NVPagedAdapter;->requestWaitTime:J

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 49
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object p1

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    .line 14
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v1

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    check-cast v1, Lcom/narvii/model/NVObject;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 29
    move-result-object v3

    .line 30
    .line 31
    .line 32
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 33
    move-result v2

    .line 34
    .line 35
    if-gez v2, :cond_0

    .line 36
    .line 37
    iget-object v2, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 41
    .line 42
    add-int/lit8 v0, v0, 0x1

    .line 43
    goto :goto_0

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 47
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

    .line 1
    .line 2
    sget v0, Lcom/narvii/lib/R$layout;->normal_list_end_item:I

    .line 3
    .line 4
    const-string v1, "listEnd"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    sget p2, Lcom/narvii/lib/R$id;->icon:I

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    check-cast p2, Landroid/widget/TextView;

    .line 17
    .line 18
    sget v0, Lcom/narvii/lib/R$id;->text:I

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    check-cast v0, Landroid/widget/TextView;

    .line 25
    const/4 v1, 0x0

    .line 26
    .line 27
    if-nez p3, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 34
    move-result-object p3

    .line 35
    .line 36
    sget v1, Lcom/narvii/lib/R$string;->_empty:I

    .line 37
    .line 38
    .line 39
    invoke-virtual {p3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 40
    move-result-object p3

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_0
    const/16 v2, 0x8

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 53
    move-result-object v2

    .line 54
    .line 55
    sget v3, Lcom/narvii/lib/R$string;->normal_end_n_items:I

    .line 56
    const/4 v4, 0x1

    .line 57
    .line 58
    new-array v4, v4, [Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    move-result-object p3

    .line 63
    .line 64
    aput-object p3, v4, v1

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    move-result-object p3

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :goto_0
    const/4 p3, -0x1

    .line 73
    .line 74
    if-eqz v0, :cond_3

    .line 75
    .line 76
    iget-boolean v1, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    .line 77
    .line 78
    if-nez v1, :cond_2

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isDarkNVTheme()Z

    .line 82
    move-result v1

    .line 83
    .line 84
    if-eqz v1, :cond_1

    .line 85
    goto :goto_1

    .line 86
    .line 87
    .line 88
    :cond_1
    const v1, -0x99999a

    .line 89
    goto :goto_2

    .line 90
    :cond_2
    :goto_1
    move v1, p3

    .line 91
    .line 92
    .line 93
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    .line 95
    :cond_3
    if-eqz p2, :cond_6

    .line 96
    .line 97
    iget-boolean v0, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    .line 98
    .line 99
    if-nez v0, :cond_5

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isDarkNVTheme()Z

    .line 103
    move-result v0

    .line 104
    .line 105
    if-eqz v0, :cond_4

    .line 106
    goto :goto_3

    .line 107
    .line 108
    .line 109
    :cond_4
    const p3, -0x777778

    .line 110
    .line 111
    .line 112
    :cond_5
    :goto_3
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    :cond_6
    return-object p1
.end method

.method public createLoadMoreItem(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 1
    .line 2
    sget v0, Lcom/narvii/lib/R$layout;->normal_load_more_list_item:I

    .line 3
    .line 4
    const-string v1, "loadMore"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    sget p2, Lcom/narvii/lib/R$id;->text:I

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    check-cast p2, Landroid/widget/TextView;

    .line 17
    .line 18
    if-eqz p2, :cond_2

    .line 19
    .line 20
    iget-boolean v0, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isDarkNVTheme()Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    goto :goto_0

    .line 30
    .line 31
    .line 32
    :cond_0
    const v0, -0xbbbbbc

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    const/4 v0, -0x1

    .line 35
    .line 36
    .line 37
    :goto_1
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 38
    :cond_2
    return-object p1
.end method

.method public createLoadingItem(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 3

    .line 1
    .line 2
    sget v0, Lcom/narvii/lib/R$layout;->normal_loading_list_item:I

    .line 3
    .line 4
    const-string v1, "loading"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    sget p2, Lcom/narvii/lib/R$id;->spinner:I

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    check-cast p2, Lcom/narvii/widget/SpinningView;

    .line 17
    const/4 v0, -0x1

    .line 18
    .line 19
    .line 20
    const v1, -0xbbbbbc

    .line 21
    .line 22
    if-eqz p2, :cond_2

    .line 23
    .line 24
    iget-boolean v2, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    .line 25
    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isDarkNVTheme()Z

    .line 30
    move-result v2

    .line 31
    .line 32
    if-eqz v2, :cond_0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v2, v1

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    move v2, v0

    .line 37
    .line 38
    .line 39
    :goto_1
    invoke-virtual {p2, v2}, Lcom/narvii/widget/SpinningView;->setSpinColor(I)V

    .line 40
    .line 41
    :cond_2
    sget p2, Lcom/narvii/lib/R$id;->text:I

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    move-result-object p2

    .line 46
    .line 47
    check-cast p2, Landroid/widget/TextView;

    .line 48
    .line 49
    if-eqz p2, :cond_5

    .line 50
    .line 51
    iget-boolean v2, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    .line 52
    .line 53
    if-nez v2, :cond_4

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isDarkNVTheme()Z

    .line 57
    move-result v2

    .line 58
    .line 59
    if-eqz v2, :cond_3

    .line 60
    goto :goto_2

    .line 61
    :cond_3
    move v0, v1

    .line 62
    .line 63
    .line 64
    :cond_4
    :goto_2
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 65
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->dataType()Ljava/lang/Class;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_9

    .line 18
    .line 19
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Lcom/narvii/model/NVObject;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 24
    .line 25
    const-string v1, "new"

    .line 26
    const/4 v2, 0x0

    .line 27
    .line 28
    if-ne p1, v1, :cond_2

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->filterDuplicate()Z

    .line 32
    move-result p1

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    iget-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 40
    move-result-object p2

    .line 41
    .line 42
    .line 43
    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 44
    move-result p1

    .line 45
    .line 46
    if-ltz p1, :cond_1

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 50
    return-void

    .line 51
    .line 52
    :cond_1
    iget-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 59
    goto :goto_1

    .line 60
    .line 61
    :cond_2
    const-string v1, "edit"

    .line 62
    .line 63
    if-ne p1, v1, :cond_6

    .line 64
    .line 65
    iget-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 69
    move-result-object v1

    .line 70
    .line 71
    .line 72
    invoke-static {p1, v1}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 73
    move-result p1

    .line 74
    .line 75
    if-ltz p1, :cond_5

    .line 76
    .line 77
    if-eqz p2, :cond_3

    .line 78
    .line 79
    iget-object p2, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 83
    .line 84
    iget-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 88
    .line 89
    iget p1, p0, Lcom/narvii/list/NVPagedAdapter;->paginationType:I

    .line 90
    .line 91
    if-nez p1, :cond_4

    .line 92
    .line 93
    iget p1, p0, Lcom/narvii/list/NVPagedAdapter;->_start:I

    .line 94
    .line 95
    add-int/lit8 p1, p1, -0x1

    .line 96
    .line 97
    iput p1, p0, Lcom/narvii/list/NVPagedAdapter;->_start:I

    .line 98
    goto :goto_0

    .line 99
    .line 100
    .line 101
    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/narvii/list/NVPagedAdapter;->replaceObject(ILcom/narvii/model/NVObject;)V

    .line 102
    .line 103
    .line 104
    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 105
    goto :goto_1

    .line 106
    .line 107
    :cond_5
    if-eqz p2, :cond_9

    .line 108
    .line 109
    iget-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 116
    goto :goto_1

    .line 117
    .line 118
    :cond_6
    const-string p2, "update"

    .line 119
    .line 120
    if-ne p1, p2, :cond_7

    .line 121
    .line 122
    iget-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 126
    move-result-object p2

    .line 127
    .line 128
    .line 129
    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 130
    move-result p1

    .line 131
    .line 132
    if-ltz p1, :cond_9

    .line 133
    .line 134
    .line 135
    invoke-direct {p0, p1, v0}, Lcom/narvii/list/NVPagedAdapter;->replaceObject(ILcom/narvii/model/NVObject;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 139
    goto :goto_1

    .line 140
    .line 141
    :cond_7
    const-string p2, "delete"

    .line 142
    .line 143
    if-ne p1, p2, :cond_9

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVPagedAdapter;->removeIdEqualsObject(Lcom/narvii/model/NVObject;)I

    .line 147
    move-result p1

    .line 148
    .line 149
    iget p2, p0, Lcom/narvii/list/NVPagedAdapter;->paginationType:I

    .line 150
    .line 151
    if-nez p2, :cond_8

    .line 152
    .line 153
    iget p2, p0, Lcom/narvii/list/NVPagedAdapter;->_start:I

    .line 154
    sub-int/2addr p2, p1

    .line 155
    .line 156
    iput p2, p0, Lcom/narvii/list/NVPagedAdapter;->_start:I

    .line 157
    .line 158
    .line 159
    :cond_8
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 160
    :cond_9
    :goto_1
    return-void
.end method

.method public errorMessage()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_errorMsg:Ljava/lang/String;

    .line 21
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

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    if-eq p2, v0, :cond_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->filterDuplicate()Z

    .line 7
    move-result p2

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    new-instance p2, Lcom/narvii/util/FilterHelper;

    .line 12
    .line 13
    .line 14
    invoke-direct {p2, p0}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->filterDuplicated(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, p1}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    .line 29
    :cond_0
    new-instance p2, Lcom/narvii/util/FilterHelper;

    .line 30
    .line 31
    .line 32
    invoke-direct {p2, p0}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, p1}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    .line 36
    move-result-object p1

    .line 37
    return-object p1
.end method

.method public getCount()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    move-result v0

    .line 17
    .line 18
    :goto_0
    iget-boolean v1, p0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVPagedAdapter;->showListEnd(I)Z

    .line 24
    move-result v1

    .line 25
    add-int/2addr v0, v1

    .line 26
    return v0

    .line 27
    .line 28
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 29
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

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->dataType()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    move-result v0

    .line 17
    .line 18
    :goto_0
    if-ge p1, v0, :cond_1

    .line 19
    .line 20
    if-ltz p1, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object p1

    .line 29
    return-object p1

    .line 30
    .line 31
    :cond_1
    iget-boolean p1, p0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    .line 32
    .line 33
    if-eqz p1, :cond_4

    .line 34
    .line 35
    iget p1, p0, Lcom/narvii/list/NVPagedAdapter;->refreshFlag:I

    .line 36
    .line 37
    and-int/lit16 p1, p1, 0x100

    .line 38
    .line 39
    if-eqz p1, :cond_2

    .line 40
    goto :goto_1

    .line 41
    .line 42
    :cond_2
    iget p1, p0, Lcom/narvii/list/NVPagedAdapter;->direction:I

    .line 43
    const/4 v0, 0x2

    .line 44
    .line 45
    if-eq p1, v0, :cond_3

    .line 46
    .line 47
    :goto_1
    sget-object p1, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    .line 48
    goto :goto_2

    .line 49
    .line 50
    :cond_3
    sget-object p1, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    .line 51
    :goto_2
    return-object p1

    .line 52
    .line 53
    :cond_4
    iget-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_errorMsg:Ljava/lang/String;

    .line 54
    .line 55
    if-eqz p1, :cond_5

    .line 56
    .line 57
    sget-object p1, Lcom/narvii/list/NVPagedAdapter;->ERROR:Lcom/narvii/util/Tag;

    .line 58
    return-object p1

    .line 59
    .line 60
    .line 61
    :cond_5
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->autoLoadNextPage()Z

    .line 62
    move-result p1

    .line 63
    .line 64
    if-eqz p1, :cond_6

    .line 65
    .line 66
    sget-object p1, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    .line 67
    return-object p1

    .line 68
    .line 69
    :cond_6
    iget-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    .line 70
    .line 71
    if-nez p1, :cond_8

    .line 72
    .line 73
    if-nez v0, :cond_7

    .line 74
    .line 75
    iget-boolean p1, p0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    .line 76
    .line 77
    if-nez p1, :cond_7

    .line 78
    goto :goto_3

    .line 79
    .line 80
    :cond_7
    sget-object p1, Lcom/narvii/list/NVPagedAdapter;->LOAD_MORE:Lcom/narvii/util/Tag;

    .line 81
    return-object p1

    .line 82
    .line 83
    :cond_8
    :goto_3
    sget-object p1, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    .line 84
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    move-result-wide v0

    .line 13
    return-wide v0

    .line 14
    .line 15
    :cond_0
    if-nez p1, :cond_1

    .line 16
    .line 17
    const-wide/16 v0, 0x0

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 22
    move-result p1

    .line 23
    int-to-long v0, p1

    .line 24
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

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    .line 10
    :cond_0
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    .line 11
    .line 12
    if-ne p1, v0, :cond_1

    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    .line 16
    :cond_1
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->LOAD_MORE:Lcom/narvii/util/Tag;

    .line 17
    .line 18
    if-ne p1, v0, :cond_2

    .line 19
    const/4 p1, 0x2

    .line 20
    return p1

    .line 21
    .line 22
    :cond_2
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    .line 23
    .line 24
    if-ne p1, v0, :cond_3

    .line 25
    const/4 p1, 0x3

    .line 26
    return p1

    .line 27
    .line 28
    :cond_3
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->ERROR:Lcom/narvii/util/Tag;

    .line 29
    .line 30
    if-ne p1, v0, :cond_4

    .line 31
    const/4 p1, 0x4

    .line 32
    return p1

    .line 33
    .line 34
    .line 35
    :cond_4
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->getItemType(Ljava/lang/Object;)I

    .line 36
    move-result p1

    .line 37
    .line 38
    if-gez p1, :cond_5

    .line 39
    const/4 p1, -0x1

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_5
    add-int/lit8 p1, p1, 0x5

    .line 43
    :goto_0
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    const v1, 0x1020014

    .line 8
    .line 9
    .line 10
    const v2, 0x1090003

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    move-result-object v3

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 25
    move-result-object v3

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v3, ".getItem("

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string p1, ") returns null"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v2, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    sget-boolean p2, Lcom/narvii/app/NVApplication;->DEBUG:Z

    .line 55
    .line 56
    if-eqz p2, :cond_0

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 60
    move-result-object p2

    .line 61
    .line 62
    check-cast p2, Landroid/widget/TextView;

    .line 63
    .line 64
    const-string p3, "getItem() returns null"

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    :cond_0
    return-object p1

    .line 69
    .line 70
    :cond_1
    sget-object v3, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    .line 71
    const/4 v4, 0x1

    .line 72
    .line 73
    if-ne v0, v3, :cond_2

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v4}, Lcom/narvii/list/NVPagedAdapter;->loadNextPage(Z)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, p3, p2}, Lcom/narvii/list/NVPagedAdapter;->createLoadingItem(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 80
    move-result-object p1

    .line 81
    return-object p1

    .line 82
    .line 83
    :cond_2
    sget-object v5, Lcom/narvii/list/NVPagedAdapter;->LOAD_MORE:Lcom/narvii/util/Tag;

    .line 84
    .line 85
    if-ne v0, v5, :cond_3

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, p3, p2}, Lcom/narvii/list/NVPagedAdapter;->createLoadMoreItem(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 89
    move-result-object p1

    .line 90
    return-object p1

    .line 91
    .line 92
    :cond_3
    sget-object v5, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    .line 93
    .line 94
    if-ne v0, v5, :cond_5

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    .line 98
    move-result-object p1

    .line 99
    .line 100
    if-nez p1, :cond_4

    .line 101
    const/4 p1, 0x0

    .line 102
    goto :goto_0

    .line 103
    .line 104
    .line 105
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    .line 106
    move-result-object p1

    .line 107
    .line 108
    .line 109
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 110
    move-result p1

    .line 111
    .line 112
    .line 113
    :goto_0
    invoke-virtual {p0, p3, p2, p1}, Lcom/narvii/list/NVPagedAdapter;->createListEndItem(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 114
    move-result-object p1

    .line 115
    return-object p1

    .line 116
    .line 117
    :cond_5
    sget-object v5, Lcom/narvii/list/NVPagedAdapter;->ERROR:Lcom/narvii/util/Tag;

    .line 118
    .line 119
    if-ne v0, v5, :cond_6

    .line 120
    .line 121
    iget-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_errorMsg:Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, p3, p2, p1}, Lcom/narvii/list/NVAdapter;->createErrorItem(Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    .line 125
    move-result-object p1

    .line 126
    return-object p1

    .line 127
    .line 128
    .line 129
    :cond_6
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->getCount()I

    .line 130
    move-result v5

    .line 131
    .line 132
    add-int/lit8 v6, v5, -0x6

    .line 133
    .line 134
    if-lt p1, v6, :cond_7

    .line 135
    sub-int/2addr v5, v4

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0, v5}, Lcom/narvii/list/NVPagedAdapter;->getItem(I)Ljava/lang/Object;

    .line 139
    move-result-object v5

    .line 140
    .line 141
    if-ne v5, v3, :cond_7

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0, v4}, Lcom/narvii/list/NVPagedAdapter;->loadNextPage(Z)V

    .line 145
    .line 146
    .line 147
    :cond_7
    invoke-virtual {p0, v0, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 148
    move-result-object v3

    .line 149
    .line 150
    if-nez v3, :cond_9

    .line 151
    .line 152
    new-instance v3, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    move-result-object v4

    .line 160
    .line 161
    .line 162
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 163
    move-result-object v4

    .line 164
    .line 165
    .line 166
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    const-string v4, ".getItemView("

    .line 169
    .line 170
    .line 171
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    const-string p1, ") returns null for object "

    .line 177
    .line 178
    .line 179
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    move-result-object p1

    .line 187
    .line 188
    .line 189
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0, v2, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 193
    move-result-object p1

    .line 194
    .line 195
    sget-boolean p2, Lcom/narvii/app/NVApplication;->DEBUG:Z

    .line 196
    .line 197
    if-eqz p2, :cond_8

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 201
    move-result-object p2

    .line 202
    .line 203
    check-cast p2, Landroid/widget/TextView;

    .line 204
    .line 205
    const-string p3, "getItemView() returns null"

    .line 206
    .line 207
    .line 208
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    :cond_8
    return-object p1

    .line 210
    .line 211
    :cond_9
    sget p1, Lcom/narvii/lib/R$id;->_not_set_cell_tag:I

    .line 212
    .line 213
    .line 214
    invoke-virtual {v3, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 215
    move-result-object p1

    .line 216
    .line 217
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 218
    .line 219
    if-eq p1, p2, :cond_a

    .line 220
    .line 221
    .line 222
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->tagCellAuto()Z

    .line 223
    move-result p1

    .line 224
    .line 225
    if-eqz p1, :cond_a

    .line 226
    .line 227
    .line 228
    invoke-virtual {p0, v3, v0}, Lcom/narvii/list/NVAdapter;->tagCellForLog(Landroid/view/View;Ljava/lang/Object;)V

    .line 229
    :cond_a
    return-object v3
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->getItemTypeCount()I

    .line 4
    move-result v0

    .line 5
    .line 6
    add-int/lit8 v0, v0, 0x5

    .line 7
    return v0
.end method

.method public hasPrevPage()Z
    .locals 1

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

    iget-boolean v0, p0, Lcom/narvii/list/NVPagedAdapter;->attached:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
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

    iget-boolean v0, p0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    return v0
.end method

.method public isListShown()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    move-result v0

    .line 15
    .line 16
    if-gtz v0, :cond_1

    .line 17
    .line 18
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    :cond_1
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_2
    const/4 v0, 0x0

    .line 24
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->datePageHelper:Lcom/narvii/list/DatePageHelper;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/list/DatePageHelper;->getList()Ljava/util/ArrayList;

    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public loadFinishEmptyOrError()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->isEnd()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->isEmpty()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->errorMessage()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    :cond_1
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_2
    const/4 v0, 0x0

    .line 22
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

    .line 1
    .line 2
    if-eqz p2, :cond_3

    .line 3
    .line 4
    iget v0, p0, Lcom/narvii/list/NVPagedAdapter;->paginationType:I

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_0
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
    const/4 v1, 0x0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVPagedAdapter;->createRequest(Z)Lcom/narvii/util/http/ApiRequest;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    iput v1, p0, Lcom/narvii/list/NVPagedAdapter;->direction:I

    .line 27
    return-void

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest;->edit()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 31
    move-result-object v3

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->pageSize()I

    .line 35
    move-result v4

    .line 36
    .line 37
    const-string v5, "pagingType"

    .line 38
    .line 39
    const-string v6, "t"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, v5, v6}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 43
    .line 44
    const-string v5, "pageToken"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, v5, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 48
    .line 49
    const-string p2, "size"

    .line 50
    .line 51
    .line 52
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    move-result-object v5

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, p2, v5}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest;->getTags()Ljava/util/HashMap;

    .line 60
    move-result-object p2

    .line 61
    .line 62
    if-eqz p2, :cond_2

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest;->getTags()Ljava/util/HashMap;

    .line 66
    move-result-object p2

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 70
    move-result-object p2

    .line 71
    .line 72
    .line 73
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 74
    move-result-object p2

    .line 75
    .line 76
    .line 77
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    move-result v2

    .line 79
    .line 80
    if-eqz v2, :cond_2

    .line 81
    .line 82
    .line 83
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    move-result-object v2

    .line 85
    .line 86
    check-cast v2, Ljava/util/Map$Entry;

    .line 87
    .line 88
    .line 89
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 90
    move-result-object v5

    .line 91
    .line 92
    .line 93
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 94
    move-result-object v2

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3, v5, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 98
    goto :goto_0

    .line 99
    .line 100
    :cond_2
    sget-object p2, Lcom/narvii/list/NVPagedAdapter;->REQ_MIDDLE_OBJ_ID:Lcom/narvii/util/Tag;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3, p2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 104
    .line 105
    sget-object p1, Lcom/narvii/list/NVPagedAdapter;->REQ_TAG_SIZE:Lcom/narvii/util/Tag;

    .line 106
    .line 107
    .line 108
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    move-result-object p2

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3, p1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 116
    move-result-object p1

    .line 117
    .line 118
    iput-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    .line 119
    const/4 p1, 0x3

    .line 120
    .line 121
    iput p1, p0, Lcom/narvii/list/NVPagedAdapter;->direction:I

    .line 122
    .line 123
    iput v1, p0, Lcom/narvii/list/NVPagedAdapter;->refreshFlag:I

    .line 124
    .line 125
    iput-object p3, p0, Lcom/narvii/list/NVPagedAdapter;->requestCallback:Lcom/narvii/util/Callback;

    .line 126
    .line 127
    .line 128
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 129
    move-result-wide p1

    .line 130
    .line 131
    iput-wide p1, p0, Lcom/narvii/list/NVPagedAdapter;->requestTime:J

    .line 132
    .line 133
    const-wide/16 p1, 0x0

    .line 134
    .line 135
    iput-wide p1, p0, Lcom/narvii/list/NVPagedAdapter;->requestWaitTime:J

    .line 136
    .line 137
    iget-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    .line 138
    .line 139
    iget-object p2, p0, Lcom/narvii/list/NVPagedAdapter;->requestListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, p1, p2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 146
    :cond_3
    :goto_1
    return-void
.end method

.method public loadNextPage(Z)V
    .locals 10

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 3
    .line 4
    if-eqz p1, :cond_d

    .line 5
    .line 6
    iget-boolean p1, p0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    .line 7
    .line 8
    if-nez p1, :cond_d

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    goto/16 :goto_5

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    .line 17
    iput-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_errorMsg:Ljava/lang/String;

    .line 18
    .line 19
    const-string v0, "api"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 26
    .line 27
    iget v1, p0, Lcom/narvii/list/NVPagedAdapter;->paginationType:I

    .line 28
    const/4 v2, 0x0

    .line 29
    const/4 v3, 0x1

    .line 30
    .line 31
    if-nez v1, :cond_2

    .line 32
    .line 33
    iget v1, p0, Lcom/narvii/list/NVPagedAdapter;->_start:I

    .line 34
    .line 35
    if-nez v1, :cond_1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move v1, v2

    .line 38
    goto :goto_1

    .line 39
    .line 40
    :cond_2
    if-ne v1, v3, :cond_3

    .line 41
    .line 42
    iget-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_nextPageToken:Ljava/lang/String;

    .line 43
    .line 44
    if-nez v1, :cond_1

    .line 45
    goto :goto_0

    .line 46
    :cond_3
    const/4 v4, -0x2

    .line 47
    .line 48
    if-ne v1, v4, :cond_5

    .line 49
    :cond_4
    :goto_0
    move v1, v3

    .line 50
    goto :goto_1

    .line 51
    .line 52
    :cond_5
    iget-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 53
    .line 54
    if-eqz v1, :cond_4

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 58
    move-result v1

    .line 59
    .line 60
    if-eqz v1, :cond_1

    .line 61
    goto :goto_0

    .line 62
    .line 63
    .line 64
    :goto_1
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVPagedAdapter;->createRequest(Z)Lcom/narvii/util/http/ApiRequest;

    .line 65
    move-result-object v4

    .line 66
    .line 67
    if-nez v4, :cond_6

    .line 68
    .line 69
    iput-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    .line 70
    .line 71
    goto/16 :goto_3

    .line 72
    .line 73
    :cond_6
    iget v5, p0, Lcom/narvii/list/NVPagedAdapter;->paginationType:I

    .line 74
    .line 75
    const-string v6, "size"

    .line 76
    .line 77
    if-nez v5, :cond_8

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4}, Lcom/narvii/util/http/ApiRequest;->edit()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 81
    move-result-object v4

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->pageSize()I

    .line 85
    move-result v5

    .line 86
    .line 87
    iget v7, p0, Lcom/narvii/list/NVPagedAdapter;->_start:I

    .line 88
    .line 89
    .line 90
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    move-result-object v7

    .line 92
    .line 93
    const-string v8, "start"

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4, v8, v7}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 97
    .line 98
    .line 99
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    move-result-object v7

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4, v6, v7}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 104
    .line 105
    iget-object v6, p0, Lcom/narvii/list/NVPagedAdapter;->_stopTime:Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 109
    move-result v6

    .line 110
    .line 111
    if-nez v6, :cond_7

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->ignoreStopTime()Z

    .line 115
    move-result v6

    .line 116
    .line 117
    if-nez v6, :cond_7

    .line 118
    .line 119
    const-string v6, "stoptime"

    .line 120
    .line 121
    iget-object v7, p0, Lcom/narvii/list/NVPagedAdapter;->_stopTime:Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v4, v6, v7}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 125
    .line 126
    :cond_7
    sget-object v6, Lcom/narvii/list/NVPagedAdapter;->REQ_TAG_START:Lcom/narvii/util/Tag;

    .line 127
    .line 128
    iget v7, p0, Lcom/narvii/list/NVPagedAdapter;->_start:I

    .line 129
    .line 130
    .line 131
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    move-result-object v7

    .line 133
    .line 134
    .line 135
    invoke-virtual {v4, v6, v7}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 136
    .line 137
    sget-object v6, Lcom/narvii/list/NVPagedAdapter;->REQ_TAG_FROM_START:Lcom/narvii/util/Tag;

    .line 138
    .line 139
    .line 140
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 141
    move-result-object v1

    .line 142
    .line 143
    .line 144
    invoke-virtual {v4, v6, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 145
    .line 146
    sget-object v1, Lcom/narvii/list/NVPagedAdapter;->REQ_TAG_SIZE:Lcom/narvii/util/Tag;

    .line 147
    .line 148
    .line 149
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    move-result-object v5

    .line 151
    .line 152
    .line 153
    invoke-virtual {v4, v1, v5}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v4}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 157
    move-result-object v1

    .line 158
    .line 159
    iput-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    .line 160
    goto :goto_3

    .line 161
    .line 162
    :cond_8
    if-ne v5, v3, :cond_b

    .line 163
    .line 164
    .line 165
    invoke-virtual {v4}, Lcom/narvii/util/http/ApiRequest;->edit()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 166
    move-result-object v5

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->pageSize()I

    .line 170
    move-result v7

    .line 171
    .line 172
    const-string v8, "pagingType"

    .line 173
    .line 174
    const-string v9, "t"

    .line 175
    .line 176
    .line 177
    invoke-virtual {v5, v8, v9}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 178
    .line 179
    iget-object v8, p0, Lcom/narvii/list/NVPagedAdapter;->_nextPageToken:Ljava/lang/String;

    .line 180
    .line 181
    if-eqz v8, :cond_9

    .line 182
    .line 183
    const-string v9, "pageToken"

    .line 184
    .line 185
    .line 186
    invoke-virtual {v5, v9, v8}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 187
    .line 188
    .line 189
    :cond_9
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 190
    move-result-object v8

    .line 191
    .line 192
    .line 193
    invoke-virtual {v5, v6, v8}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v4}, Lcom/narvii/util/http/ApiRequest;->getTags()Ljava/util/HashMap;

    .line 197
    move-result-object v6

    .line 198
    .line 199
    if-eqz v6, :cond_a

    .line 200
    .line 201
    .line 202
    invoke-virtual {v4}, Lcom/narvii/util/http/ApiRequest;->getTags()Ljava/util/HashMap;

    .line 203
    move-result-object v4

    .line 204
    .line 205
    .line 206
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 207
    move-result-object v4

    .line 208
    .line 209
    .line 210
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 211
    move-result-object v4

    .line 212
    .line 213
    .line 214
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 215
    move-result v6

    .line 216
    .line 217
    if-eqz v6, :cond_a

    .line 218
    .line 219
    .line 220
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 221
    move-result-object v6

    .line 222
    .line 223
    check-cast v6, Ljava/util/Map$Entry;

    .line 224
    .line 225
    .line 226
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 227
    move-result-object v8

    .line 228
    .line 229
    .line 230
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 231
    move-result-object v6

    .line 232
    .line 233
    .line 234
    invoke-virtual {v5, v8, v6}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 235
    goto :goto_2

    .line 236
    .line 237
    :cond_a
    sget-object v4, Lcom/narvii/list/NVPagedAdapter;->REQ_TAG_FROM_START:Lcom/narvii/util/Tag;

    .line 238
    .line 239
    .line 240
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 241
    move-result-object v1

    .line 242
    .line 243
    .line 244
    invoke-virtual {v5, v4, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 245
    .line 246
    sget-object v1, Lcom/narvii/list/NVPagedAdapter;->REQ_TAG_SIZE:Lcom/narvii/util/Tag;

    .line 247
    .line 248
    .line 249
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 250
    move-result-object v4

    .line 251
    .line 252
    .line 253
    invoke-virtual {v5, v1, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v5}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 257
    move-result-object v1

    .line 258
    .line 259
    iput-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    .line 260
    goto :goto_3

    .line 261
    .line 262
    :cond_b
    iput-object v4, p0, Lcom/narvii/list/NVPagedAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    .line 263
    .line 264
    :goto_3
    iput v2, p0, Lcom/narvii/list/NVPagedAdapter;->refreshFlag:I

    .line 265
    .line 266
    iput-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->requestCallback:Lcom/narvii/util/Callback;

    .line 267
    .line 268
    iget-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    .line 269
    .line 270
    const-wide/16 v4, 0x0

    .line 271
    .line 272
    if-nez p1, :cond_c

    .line 273
    .line 274
    iput v2, p0, Lcom/narvii/list/NVPagedAdapter;->direction:I

    .line 275
    .line 276
    iput-wide v4, p0, Lcom/narvii/list/NVPagedAdapter;->requestTime:J

    .line 277
    .line 278
    iput-wide v4, p0, Lcom/narvii/list/NVPagedAdapter;->requestWaitTime:J

    .line 279
    .line 280
    const-string p1, "loadNextPage pending..."

    .line 281
    .line 282
    .line 283
    invoke-static {p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;)V

    .line 284
    goto :goto_4

    .line 285
    .line 286
    :cond_c
    iput v3, p0, Lcom/narvii/list/NVPagedAdapter;->direction:I

    .line 287
    .line 288
    .line 289
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 290
    move-result-wide v1

    .line 291
    .line 292
    iput-wide v1, p0, Lcom/narvii/list/NVPagedAdapter;->requestTime:J

    .line 293
    .line 294
    iput-wide v4, p0, Lcom/narvii/list/NVPagedAdapter;->requestWaitTime:J

    .line 295
    .line 296
    iget-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    .line 297
    .line 298
    iget-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->requestListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 302
    .line 303
    .line 304
    :goto_4
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 305
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->_prevPageToken:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    :cond_0
    iget v0, p0, Lcom/narvii/list/NVPagedAdapter;->paginationType:I

    .line 9
    const/4 v2, 0x1

    .line 10
    .line 11
    if-ne v0, v2, :cond_5

    .line 12
    .line 13
    const-string v0, "api"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVPagedAdapter;->createRequest(Z)Lcom/narvii/util/http/ApiRequest;

    .line 23
    move-result-object v3

    .line 24
    .line 25
    if-nez v3, :cond_1

    .line 26
    .line 27
    iput v1, p0, Lcom/narvii/list/NVPagedAdapter;->direction:I

    .line 28
    .line 29
    const-string p1, "loadPrevPage pending..."

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;)V

    .line 33
    return v1

    .line 34
    .line 35
    :cond_1
    iget-object v4, p0, Lcom/narvii/list/NVPagedAdapter;->requestCallback:Lcom/narvii/util/Callback;

    .line 36
    .line 37
    if-eqz v4, :cond_2

    .line 38
    const/4 v5, 0x2

    .line 39
    .line 40
    .line 41
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    move-result-object v5

    .line 43
    .line 44
    .line 45
    invoke-interface {v4, v5}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :cond_2
    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest;->edit()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 49
    move-result-object v4

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->pageSize()I

    .line 53
    move-result v5

    .line 54
    .line 55
    const-string v6, "pagingType"

    .line 56
    .line 57
    const-string v7, "t"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4, v6, v7}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 61
    .line 62
    const-string v6, "pageToken"

    .line 63
    .line 64
    iget-object v7, p0, Lcom/narvii/list/NVPagedAdapter;->_prevPageToken:Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4, v6, v7}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 68
    .line 69
    const-string v6, "size"

    .line 70
    .line 71
    .line 72
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    move-result-object v7

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4, v6, v7}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest;->getTags()Ljava/util/HashMap;

    .line 80
    move-result-object v6

    .line 81
    .line 82
    if-eqz v6, :cond_3

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest;->getTags()Ljava/util/HashMap;

    .line 86
    move-result-object v3

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 90
    move-result-object v3

    .line 91
    .line 92
    .line 93
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 94
    move-result-object v3

    .line 95
    .line 96
    .line 97
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    move-result v6

    .line 99
    .line 100
    if-eqz v6, :cond_3

    .line 101
    .line 102
    .line 103
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    move-result-object v6

    .line 105
    .line 106
    check-cast v6, Ljava/util/Map$Entry;

    .line 107
    .line 108
    .line 109
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 110
    move-result-object v7

    .line 111
    .line 112
    .line 113
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 114
    move-result-object v6

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4, v7, v6}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 118
    goto :goto_0

    .line 119
    .line 120
    :cond_3
    sget-object v3, Lcom/narvii/list/NVPagedAdapter;->REQ_TAG_FROM_START:Lcom/narvii/util/Tag;

    .line 121
    .line 122
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4, v3, v6}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 126
    .line 127
    sget-object v3, Lcom/narvii/list/NVPagedAdapter;->REQ_TAG_SIZE:Lcom/narvii/util/Tag;

    .line 128
    .line 129
    .line 130
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    move-result-object v5

    .line 132
    .line 133
    .line 134
    invoke-virtual {v4, v3, v5}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v4}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 138
    move-result-object v3

    .line 139
    .line 140
    iput-object v3, p0, Lcom/narvii/list/NVPagedAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    .line 141
    .line 142
    iget-object v3, p0, Lcom/narvii/list/NVPagedAdapter;->_prevPageToken:Ljava/lang/String;

    .line 143
    .line 144
    if-nez v3, :cond_4

    .line 145
    move v3, v1

    .line 146
    goto :goto_1

    .line 147
    :cond_4
    const/4 v3, -0x1

    .line 148
    .line 149
    :goto_1
    iput v3, p0, Lcom/narvii/list/NVPagedAdapter;->direction:I

    .line 150
    .line 151
    iput v1, p0, Lcom/narvii/list/NVPagedAdapter;->refreshFlag:I

    .line 152
    .line 153
    iput-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->requestCallback:Lcom/narvii/util/Callback;

    .line 154
    .line 155
    .line 156
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 157
    move-result-wide v3

    .line 158
    .line 159
    iput-wide v3, p0, Lcom/narvii/list/NVPagedAdapter;->requestTime:J

    .line 160
    .line 161
    const-wide/16 v3, 0x0

    .line 162
    .line 163
    iput-wide v3, p0, Lcom/narvii/list/NVPagedAdapter;->requestWaitTime:J

    .line 164
    .line 165
    iget-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    .line 166
    .line 167
    iget-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->requestListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 174
    return v2

    .line 175
    .line 176
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 177
    .line 178
    const-string v0, "only token pagination is supported!"

    .line 179
    .line 180
    .line 181
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 182
    throw p1
.end method

.method public onAttach()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/list/NVPagedAdapter;->attached:Z

    .line 4
    .line 5
    iget-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    move v1, v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    .line 12
    :goto_0
    if-eqz v1, :cond_1

    .line 13
    .line 14
    new-instance v2, Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    iput-object v2, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    .line 28
    goto :goto_1

    .line 29
    .line 30
    :cond_2
    iget v1, p0, Lcom/narvii/list/NVPagedAdapter;->_start:I

    .line 31
    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    iget-boolean v1, p0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    .line 35
    .line 36
    if-nez v1, :cond_3

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVPagedAdapter;->loadNextPage(Z)V

    .line 40
    :cond_3
    :goto_1
    return-void
.end method

.method public onErrorRetry()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->_errorMsg:Ljava/lang/String;

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVPagedAdapter;->loadNextPage(Z)V

    .line 8
    return-void
.end method

.method protected onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    .line 3
    if-eq p4, p1, :cond_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 11
    move-result p1

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    :cond_0
    iput-object p2, p0, Lcom/narvii/list/NVPagedAdapter;->_errorMsg:Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 19
    :cond_1
    const/4 p1, 0x2

    .line 20
    .line 21
    if-ne p4, p1, :cond_2

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 29
    move-result p1

    .line 30
    .line 31
    if-nez p1, :cond_2

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p3}, Lcom/narvii/list/NVPagedAdapter;->showErrorToast(Lcom/narvii/model/api/ApiResponse;)Z

    .line 35
    move-result p1

    .line 36
    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 41
    move-result-object p1

    .line 42
    const/4 p3, 0x0

    .line 43
    .line 44
    .line 45
    invoke-static {p1, p2, p3}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 50
    :cond_2
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->ERROR:Lcom/narvii/util/Tag;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    .line 6
    if-ne p3, v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVPagedAdapter;->loadNextPage(Z)V

    .line 10
    return v2

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->LOAD_MORE:Lcom/narvii/util/Tag;

    .line 13
    .line 14
    if-ne p3, v0, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVPagedAdapter;->loadNextPage(Z)V

    .line 18
    return v2

    .line 19
    .line 20
    :cond_1
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    .line 21
    .line 22
    if-ne p3, v0, :cond_2

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 36
    move-result v0

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    .line 42
    return v2

    .line 43
    .line 44
    .line 45
    :cond_2
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 46
    move-result p1

    .line 47
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

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/list/NVPagedAdapter;->paginationType:I

    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    const/4 v4, 0x0

    .line 7
    .line 8
    if-nez v0, :cond_d

    .line 9
    .line 10
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->REQ_TAG_SIZE:Lcom/narvii/util/Tag;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->pageSize()I

    .line 14
    move-result v5

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0, v5}, Lcom/narvii/util/http/ApiRequest;->tagInt(Ljava/lang/Object;I)I

    .line 18
    move-result v0

    .line 19
    .line 20
    if-ne p3, v1, :cond_8

    .line 21
    .line 22
    iget-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 23
    .line 24
    if-eqz p1, :cond_3

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 28
    move-result p1

    .line 29
    .line 30
    if-le p1, v0, :cond_3

    .line 31
    .line 32
    iget p1, p0, Lcom/narvii/list/NVPagedAdapter;->refreshFlag:I

    .line 33
    .line 34
    and-int/lit16 p1, p1, 0x200

    .line 35
    .line 36
    if-eqz p1, :cond_0

    .line 37
    goto :goto_1

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1, p3}, Lcom/narvii/list/NVPagedAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    new-array p3, v3, [Z

    .line 48
    .line 49
    iget-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 50
    .line 51
    .line 52
    invoke-static {v1, p1, p3}, Lcom/narvii/list/NVPagedAdapter;->mergeTop(Ljava/util/ArrayList;Ljava/util/List;[Z)Ljava/util/ArrayList;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    iget-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 56
    .line 57
    if-eq v1, p1, :cond_7

    .line 58
    .line 59
    iput-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 60
    .line 61
    iget-object p1, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    .line 62
    .line 63
    iput-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_stopTime:Ljava/lang/String;

    .line 64
    .line 65
    aget-boolean p1, p3, v4

    .line 66
    .line 67
    if-eqz p1, :cond_7

    .line 68
    .line 69
    iput v0, p0, Lcom/narvii/list/NVPagedAdapter;->_start:I

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    .line 73
    move-result-object p1

    .line 74
    .line 75
    if-eqz p1, :cond_2

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    .line 82
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 83
    move-result p1

    .line 84
    .line 85
    if-nez p1, :cond_1

    .line 86
    goto :goto_0

    .line 87
    :cond_1
    move v3, v4

    .line 88
    .line 89
    :cond_2
    :goto_0
    iput-boolean v3, p0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    .line 90
    goto :goto_4

    .line 91
    .line 92
    :cond_3
    :goto_1
    new-instance p1, Ljava/util/ArrayList;

    .line 93
    .line 94
    .line 95
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .line 97
    iput-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    .line 101
    move-result-object p1

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, p1, p3}, Lcom/narvii/list/NVPagedAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    .line 105
    move-result-object p1

    .line 106
    .line 107
    if-nez p1, :cond_4

    .line 108
    .line 109
    new-instance p1, Ljava/util/ArrayList;

    .line 110
    .line 111
    .line 112
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .line 114
    iput-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 115
    goto :goto_2

    .line 116
    .line 117
    :cond_4
    new-instance p3, Ljava/util/ArrayList;

    .line 118
    .line 119
    .line 120
    invoke-direct {p3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 121
    .line 122
    iput-object p3, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 123
    .line 124
    :goto_2
    iput v0, p0, Lcom/narvii/list/NVPagedAdapter;->_start:I

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    .line 128
    move-result-object p1

    .line 129
    .line 130
    if-eqz p1, :cond_6

    .line 131
    .line 132
    .line 133
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    .line 134
    move-result-object p1

    .line 135
    .line 136
    .line 137
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 138
    move-result p1

    .line 139
    .line 140
    if-nez p1, :cond_5

    .line 141
    goto :goto_3

    .line 142
    :cond_5
    move v3, v4

    .line 143
    .line 144
    :cond_6
    :goto_3
    iput-boolean v3, p0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    .line 145
    .line 146
    iget-object p1, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    .line 147
    .line 148
    iput-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_stopTime:Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    :cond_7
    :goto_4
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 152
    .line 153
    goto/16 :goto_15

    .line 154
    .line 155
    :cond_8
    iput-object v2, p0, Lcom/narvii/list/NVPagedAdapter;->_errorMsg:Ljava/lang/String;

    .line 156
    .line 157
    iget-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 158
    .line 159
    if-nez v1, :cond_9

    .line 160
    .line 161
    new-instance v1, Ljava/util/ArrayList;

    .line 162
    .line 163
    .line 164
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .line 166
    iput-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 167
    .line 168
    .line 169
    :cond_9
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    .line 170
    move-result-object v1

    .line 171
    .line 172
    if-eqz v1, :cond_b

    .line 173
    .line 174
    .line 175
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    .line 176
    move-result-object v1

    .line 177
    .line 178
    .line 179
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 180
    move-result v1

    .line 181
    .line 182
    if-nez v1, :cond_a

    .line 183
    goto :goto_5

    .line 184
    .line 185
    .line 186
    :cond_a
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    .line 187
    move-result-object v1

    .line 188
    .line 189
    .line 190
    invoke-virtual {p0, v1, p3}, Lcom/narvii/list/NVPagedAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    .line 191
    move-result-object p3

    .line 192
    .line 193
    iget-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 197
    .line 198
    sget-object p3, Lcom/narvii/list/NVPagedAdapter;->REQ_TAG_START:Lcom/narvii/util/Tag;

    .line 199
    .line 200
    iget v1, p0, Lcom/narvii/list/NVPagedAdapter;->_start:I

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1, p3, v1}, Lcom/narvii/util/http/ApiRequest;->tagInt(Ljava/lang/Object;I)I

    .line 204
    move-result p1

    .line 205
    add-int/2addr p1, v0

    .line 206
    .line 207
    iput p1, p0, Lcom/narvii/list/NVPagedAdapter;->_start:I

    .line 208
    goto :goto_6

    .line 209
    .line 210
    :cond_b
    :goto_5
    iput-boolean v3, p0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    .line 211
    .line 212
    :goto_6
    iget-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_stopTime:Ljava/lang/String;

    .line 213
    .line 214
    if-nez p1, :cond_c

    .line 215
    .line 216
    iget-object p1, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    .line 217
    .line 218
    iput-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_stopTime:Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    :cond_c
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 222
    .line 223
    goto/16 :goto_15

    .line 224
    :cond_d
    const/4 v5, -0x1

    .line 225
    .line 226
    if-ne v0, v3, :cond_25

    .line 227
    .line 228
    .line 229
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->getPaging()Lcom/narvii/model/api/Pagination;

    .line 230
    move-result-object v0

    .line 231
    .line 232
    if-nez v0, :cond_e

    .line 233
    move-object v0, v2

    .line 234
    goto :goto_7

    .line 235
    .line 236
    .line 237
    :cond_e
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->getPaging()Lcom/narvii/model/api/Pagination;

    .line 238
    move-result-object v0

    .line 239
    .line 240
    iget-object v0, v0, Lcom/narvii/model/api/Pagination;->nextPageToken:Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    :goto_7
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->getPaging()Lcom/narvii/model/api/Pagination;

    .line 244
    move-result-object v6

    .line 245
    .line 246
    if-nez v6, :cond_f

    .line 247
    move-object v6, v2

    .line 248
    goto :goto_8

    .line 249
    .line 250
    .line 251
    :cond_f
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->getPaging()Lcom/narvii/model/api/Pagination;

    .line 252
    move-result-object v6

    .line 253
    .line 254
    iget-object v6, v6, Lcom/narvii/model/api/Pagination;->prevPageToken:Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    :goto_8
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->getPaging()Lcom/narvii/model/api/Pagination;

    .line 258
    move-result-object v7

    .line 259
    .line 260
    if-nez v7, :cond_10

    .line 261
    move-object v7, v2

    .line 262
    goto :goto_9

    .line 263
    .line 264
    .line 265
    :cond_10
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->getPaging()Lcom/narvii/model/api/Pagination;

    .line 266
    move-result-object v7

    .line 267
    .line 268
    iget-object v7, v7, Lcom/narvii/model/api/Pagination;->refreshPageToken:Ljava/lang/String;

    .line 269
    .line 270
    :goto_9
    const-string v8, "pagination prev token is null! keep prevToken"

    .line 271
    .line 272
    if-ne p3, v1, :cond_17

    .line 273
    .line 274
    if-nez v6, :cond_11

    .line 275
    .line 276
    .line 277
    invoke-static {v8}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 278
    goto :goto_a

    .line 279
    .line 280
    :cond_11
    iput-object v6, p0, Lcom/narvii/list/NVPagedAdapter;->_prevPageToken:Ljava/lang/String;

    .line 281
    .line 282
    :goto_a
    iput-object v7, p0, Lcom/narvii/list/NVPagedAdapter;->_refreshPageToken:Ljava/lang/String;

    .line 283
    .line 284
    if-eqz v0, :cond_13

    .line 285
    .line 286
    iget-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 287
    .line 288
    if-eqz p1, :cond_13

    .line 289
    .line 290
    iget p1, p0, Lcom/narvii/list/NVPagedAdapter;->refreshFlag:I

    .line 291
    .line 292
    and-int/lit16 p1, p1, 0x200

    .line 293
    .line 294
    if-eqz p1, :cond_12

    .line 295
    goto :goto_b

    .line 296
    .line 297
    .line 298
    :cond_12
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    .line 299
    move-result-object p1

    .line 300
    .line 301
    .line 302
    invoke-virtual {p0, p1, p3}, Lcom/narvii/list/NVPagedAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    .line 303
    move-result-object p1

    .line 304
    .line 305
    new-array p2, v3, [Z

    .line 306
    .line 307
    iget-object p3, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 308
    .line 309
    .line 310
    invoke-static {p3, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->mergeTop(Ljava/util/ArrayList;Ljava/util/List;[Z)Ljava/util/ArrayList;

    .line 311
    move-result-object p1

    .line 312
    .line 313
    iget-object p3, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 314
    .line 315
    if-eq p3, p1, :cond_16

    .line 316
    .line 317
    iput-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 318
    .line 319
    aget-boolean p1, p2, v4

    .line 320
    .line 321
    if-eqz p1, :cond_16

    .line 322
    .line 323
    iput-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->_nextPageToken:Ljava/lang/String;

    .line 324
    .line 325
    iput-boolean v4, p0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    .line 326
    goto :goto_e

    .line 327
    .line 328
    :cond_13
    :goto_b
    new-instance p1, Ljava/util/ArrayList;

    .line 329
    .line 330
    .line 331
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 332
    .line 333
    iput-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 334
    .line 335
    .line 336
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    .line 337
    move-result-object p1

    .line 338
    .line 339
    .line 340
    invoke-virtual {p0, p1, p3}, Lcom/narvii/list/NVPagedAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    .line 341
    move-result-object p1

    .line 342
    .line 343
    if-nez p1, :cond_14

    .line 344
    .line 345
    new-instance p1, Ljava/util/ArrayList;

    .line 346
    .line 347
    .line 348
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 349
    .line 350
    iput-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 351
    goto :goto_c

    .line 352
    .line 353
    :cond_14
    new-instance p2, Ljava/util/ArrayList;

    .line 354
    .line 355
    .line 356
    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 357
    .line 358
    iput-object p2, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 359
    .line 360
    :goto_c
    iput-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->_nextPageToken:Ljava/lang/String;

    .line 361
    .line 362
    if-nez v0, :cond_15

    .line 363
    goto :goto_d

    .line 364
    :cond_15
    move v3, v4

    .line 365
    .line 366
    :goto_d
    iput-boolean v3, p0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    .line 367
    .line 368
    .line 369
    :cond_16
    :goto_e
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 370
    .line 371
    goto/16 :goto_15

    .line 372
    .line 373
    :cond_17
    if-ne p3, v5, :cond_1b

    .line 374
    .line 375
    if-nez v6, :cond_18

    .line 376
    .line 377
    .line 378
    invoke-static {v8}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 379
    goto :goto_f

    .line 380
    .line 381
    :cond_18
    iput-object v6, p0, Lcom/narvii/list/NVPagedAdapter;->_prevPageToken:Ljava/lang/String;

    .line 382
    .line 383
    :goto_f
    iget-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 384
    .line 385
    if-nez p1, :cond_19

    .line 386
    .line 387
    new-instance p1, Ljava/util/ArrayList;

    .line 388
    .line 389
    .line 390
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 391
    .line 392
    iput-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 393
    .line 394
    .line 395
    :cond_19
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    .line 396
    move-result-object p1

    .line 397
    .line 398
    if-eqz p1, :cond_1a

    .line 399
    .line 400
    .line 401
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    .line 402
    move-result-object p1

    .line 403
    .line 404
    .line 405
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 406
    move-result p1

    .line 407
    .line 408
    if-lez p1, :cond_1a

    .line 409
    .line 410
    .line 411
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    .line 412
    move-result-object p1

    .line 413
    .line 414
    .line 415
    invoke-virtual {p0, p1, p3}, Lcom/narvii/list/NVPagedAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    .line 416
    move-result-object p1

    .line 417
    .line 418
    iget-object p2, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 419
    .line 420
    .line 421
    invoke-virtual {p2, v4, p1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 422
    .line 423
    .line 424
    :cond_1a
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 425
    .line 426
    goto/16 :goto_15

    .line 427
    :cond_1b
    const/4 v1, 0x3

    .line 428
    .line 429
    if-ne p3, v1, :cond_1e

    .line 430
    .line 431
    iget-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 432
    .line 433
    if-nez v0, :cond_1c

    .line 434
    .line 435
    new-instance v0, Ljava/util/ArrayList;

    .line 436
    .line 437
    .line 438
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 439
    .line 440
    iput-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 441
    .line 442
    .line 443
    :cond_1c
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    .line 444
    move-result-object v0

    .line 445
    .line 446
    if-eqz v0, :cond_1d

    .line 447
    .line 448
    .line 449
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    .line 450
    move-result-object v0

    .line 451
    .line 452
    .line 453
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 454
    move-result v0

    .line 455
    .line 456
    if-lez v0, :cond_1d

    .line 457
    .line 458
    .line 459
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    .line 460
    move-result-object p2

    .line 461
    .line 462
    .line 463
    invoke-virtual {p0, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    .line 464
    move-result-object p2

    .line 465
    .line 466
    sget-object p3, Lcom/narvii/list/NVPagedAdapter;->REQ_MIDDLE_OBJ_ID:Lcom/narvii/util/Tag;

    .line 467
    .line 468
    .line 469
    invoke-virtual {p1, p3}, Lcom/narvii/util/http/ApiRequest;->tag(Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    move-result-object p1

    .line 471
    .line 472
    instance-of p3, p1, Ljava/lang/String;

    .line 473
    .line 474
    if-eqz p3, :cond_1d

    .line 475
    .line 476
    iget-object p3, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 477
    .line 478
    check-cast p1, Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    invoke-static {p3, p1}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 482
    move-result p1

    .line 483
    .line 484
    iget-object p3, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 485
    .line 486
    .line 487
    invoke-virtual {p3, p1, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 488
    .line 489
    .line 490
    :cond_1d
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 491
    .line 492
    goto/16 :goto_15

    .line 493
    .line 494
    :cond_1e
    iput-object v2, p0, Lcom/narvii/list/NVPagedAdapter;->_errorMsg:Ljava/lang/String;

    .line 495
    .line 496
    iget-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 497
    .line 498
    if-nez v1, :cond_1f

    .line 499
    .line 500
    new-instance v1, Ljava/util/ArrayList;

    .line 501
    .line 502
    .line 503
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 504
    .line 505
    iput-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 506
    .line 507
    .line 508
    :cond_1f
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    .line 509
    move-result-object v1

    .line 510
    .line 511
    if-eqz v1, :cond_20

    .line 512
    .line 513
    .line 514
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    .line 515
    move-result-object v1

    .line 516
    .line 517
    .line 518
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 519
    move-result v1

    .line 520
    .line 521
    if-lez v1, :cond_20

    .line 522
    .line 523
    .line 524
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    .line 525
    move-result-object p2

    .line 526
    .line 527
    .line 528
    invoke-virtual {p0, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    .line 529
    move-result-object p2

    .line 530
    .line 531
    iget-object p3, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 532
    .line 533
    .line 534
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 535
    .line 536
    :cond_20
    sget-object p2, Lcom/narvii/list/NVPagedAdapter;->REQ_TAG_FROM_START:Lcom/narvii/util/Tag;

    .line 537
    .line 538
    .line 539
    invoke-virtual {p1, p2}, Lcom/narvii/util/http/ApiRequest;->tag(Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    move-result-object p1

    .line 541
    .line 542
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 543
    .line 544
    if-ne p1, p2, :cond_21

    .line 545
    .line 546
    iput-object v6, p0, Lcom/narvii/list/NVPagedAdapter;->_prevPageToken:Ljava/lang/String;

    .line 547
    .line 548
    iput-object v7, p0, Lcom/narvii/list/NVPagedAdapter;->_refreshPageToken:Ljava/lang/String;

    .line 549
    .line 550
    :cond_21
    if-eqz v0, :cond_23

    .line 551
    .line 552
    iget-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_nextPageToken:Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 556
    move-result p1

    .line 557
    .line 558
    if-eqz p1, :cond_22

    .line 559
    goto :goto_10

    .line 560
    :cond_22
    move v3, v4

    .line 561
    .line 562
    :cond_23
    :goto_10
    iput-boolean v3, p0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    .line 563
    .line 564
    if-eqz v3, :cond_24

    .line 565
    goto :goto_11

    .line 566
    :cond_24
    move-object v2, v0

    .line 567
    .line 568
    :goto_11
    iput-object v2, p0, Lcom/narvii/list/NVPagedAdapter;->_nextPageToken:Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 572
    .line 573
    goto/16 :goto_15

    .line 574
    :cond_25
    const/4 p1, -0x2

    .line 575
    .line 576
    if-ne v0, p1, :cond_26

    .line 577
    .line 578
    .line 579
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    .line 580
    move-result-object p1

    .line 581
    .line 582
    .line 583
    invoke-virtual {p0, p1, p3}, Lcom/narvii/list/NVPagedAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    .line 584
    move-result-object p1

    .line 585
    .line 586
    new-instance p2, Ljava/util/ArrayList;

    .line 587
    .line 588
    .line 589
    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 590
    .line 591
    iput-object p2, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 592
    .line 593
    iput v4, p0, Lcom/narvii/list/NVPagedAdapter;->_start:I

    .line 594
    .line 595
    iput-boolean v3, p0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    .line 596
    .line 597
    iput-object v2, p0, Lcom/narvii/list/NVPagedAdapter;->_stopTime:Ljava/lang/String;

    .line 598
    .line 599
    iput-object v2, p0, Lcom/narvii/list/NVPagedAdapter;->_errorMsg:Ljava/lang/String;

    .line 600
    .line 601
    .line 602
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 603
    goto :goto_15

    .line 604
    .line 605
    :cond_26
    if-ne v0, v5, :cond_2b

    .line 606
    .line 607
    if-ne p3, v1, :cond_27

    .line 608
    .line 609
    new-instance p1, Ljava/util/ArrayList;

    .line 610
    .line 611
    .line 612
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 613
    .line 614
    iput-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 615
    .line 616
    iput v4, p0, Lcom/narvii/list/NVPagedAdapter;->_start:I

    .line 617
    goto :goto_12

    .line 618
    .line 619
    :cond_27
    iget-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 620
    .line 621
    if-nez p1, :cond_28

    .line 622
    .line 623
    new-instance p1, Ljava/util/ArrayList;

    .line 624
    .line 625
    .line 626
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 627
    .line 628
    iput-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 629
    .line 630
    .line 631
    :cond_28
    :goto_12
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    .line 632
    move-result-object p1

    .line 633
    .line 634
    if-nez p1, :cond_29

    .line 635
    move p1, v4

    .line 636
    goto :goto_13

    .line 637
    .line 638
    .line 639
    :cond_29
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    .line 640
    move-result-object p1

    .line 641
    .line 642
    .line 643
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 644
    move-result p1

    .line 645
    .line 646
    .line 647
    :goto_13
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    .line 648
    move-result-object v0

    .line 649
    .line 650
    .line 651
    invoke-virtual {p0, v0, p3}, Lcom/narvii/list/NVPagedAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    .line 652
    move-result-object p3

    .line 653
    .line 654
    iget-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 655
    .line 656
    .line 657
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 658
    .line 659
    iget p3, p0, Lcom/narvii/list/NVPagedAdapter;->_start:I

    .line 660
    add-int/2addr p3, p1

    .line 661
    .line 662
    iput p3, p0, Lcom/narvii/list/NVPagedAdapter;->_start:I

    .line 663
    .line 664
    .line 665
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->pageSize()I

    .line 666
    move-result p3

    .line 667
    .line 668
    if-ge p1, p3, :cond_2a

    .line 669
    goto :goto_14

    .line 670
    :cond_2a
    move v3, v4

    .line 671
    .line 672
    :goto_14
    iput-boolean v3, p0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    .line 673
    .line 674
    iget-object p1, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    .line 675
    .line 676
    iput-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_stopTime:Ljava/lang/String;

    .line 677
    .line 678
    iput-object v2, p0, Lcom/narvii/list/NVPagedAdapter;->_errorMsg:Ljava/lang/String;

    .line 679
    .line 680
    .line 681
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 682
    :cond_2b
    :goto_15
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
    if-eqz p1, :cond_1

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->dataDeserializer()Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    const-string v1, "list"

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->dataDeserializer()Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListUsing(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Ljava/util/ArrayList;

    .line 25
    move-result-object v0

    .line 26
    goto :goto_0

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->dataType()Ljava/lang/Class;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    :goto_0
    if-eqz v0, :cond_1

    .line 41
    .line 42
    iput-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 43
    .line 44
    const-string v0, "start"

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 48
    move-result v0

    .line 49
    .line 50
    iput v0, p0, Lcom/narvii/list/NVPagedAdapter;->_start:I

    .line 51
    .line 52
    const-string v0, "isEnd"

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 56
    move-result v0

    .line 57
    .line 58
    iput-boolean v0, p0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    .line 59
    .line 60
    const-string v0, "stopTime"

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    iput-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->_stopTime:Ljava/lang/String;

    .line 67
    .line 68
    const-string v0, "prevPageToken"

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    iput-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->_prevPageToken:Ljava/lang/String;

    .line 75
    .line 76
    const-string v0, "nextPageToken"

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    move-result-object v0

    .line 81
    .line 82
    iput-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->_nextPageToken:Ljava/lang/String;

    .line 83
    .line 84
    const-string v0, "errorMsg"

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    move-result-object p1

    .line 89
    .line 90
    iput-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_errorMsg:Ljava/lang/String;

    .line 91
    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 4

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
    iget-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->safeWriteAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    const-string v2, "start"

    .line 19
    .line 20
    iget v3, p0, Lcom/narvii/list/NVPagedAdapter;->_start:I

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 24
    .line 25
    const-string v2, "list"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    const-string v1, "isEnd"

    .line 31
    .line 32
    iget-boolean v2, p0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 36
    .line 37
    const-string v1, "stopTime"

    .line 38
    .line 39
    iget-object v2, p0, Lcom/narvii/list/NVPagedAdapter;->_stopTime:Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    const-string v1, "prevPageToken"

    .line 45
    .line 46
    iget-object v2, p0, Lcom/narvii/list/NVPagedAdapter;->_prevPageToken:Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    const-string v1, "nextPageToken"

    .line 52
    .line 53
    iget-object v2, p0, Lcom/narvii/list/NVPagedAdapter;->_nextPageToken:Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    const-string v1, "errorMsg"

    .line 59
    .line 60
    iget-object v2, p0, Lcom/narvii/list/NVPagedAdapter;->_errorMsg:Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_0
    return-object v0
.end method

.method protected pageSize()I
    .locals 1

    .line 1
    .line 2
    const-string v0, "config"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getPageSize()I

    .line 12
    move-result v0

    .line 13
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

    iget-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    return-object v0
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 9
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
    and-int/lit16 v0, p1, 0x100

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    move v0, v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v2

    .line 10
    .line 11
    :goto_0
    iget-object v3, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 12
    const/4 v4, 0x2

    .line 13
    .line 14
    if-eqz v3, :cond_1

    .line 15
    .line 16
    if-nez v0, :cond_3

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->resetWhenEmpty()Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    iput-object p2, p0, Lcom/narvii/list/NVPagedAdapter;->requestCallback:Lcom/narvii/util/Callback;

    .line 38
    .line 39
    iput v4, p0, Lcom/narvii/list/NVPagedAdapter;->direction:I

    .line 40
    .line 41
    iput p1, p0, Lcom/narvii/list/NVPagedAdapter;->refreshFlag:I

    .line 42
    :cond_2
    return-void

    .line 43
    .line 44
    :cond_3
    const-string v0, "api"

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 51
    .line 52
    iget-object v3, p0, Lcom/narvii/list/NVPagedAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    .line 53
    .line 54
    if-eqz v3, :cond_4

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v3}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 58
    .line 59
    .line 60
    :cond_4
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVPagedAdapter;->createRequest(Z)Lcom/narvii/util/http/ApiRequest;

    .line 61
    move-result-object v3

    .line 62
    const/4 v5, 0x0

    .line 63
    .line 64
    if-nez v3, :cond_5

    .line 65
    .line 66
    iput-object v5, p0, Lcom/narvii/list/NVPagedAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    .line 67
    .line 68
    goto/16 :goto_1

    .line 69
    .line 70
    :cond_5
    iget v6, p0, Lcom/narvii/list/NVPagedAdapter;->paginationType:I

    .line 71
    .line 72
    const-string v7, "size"

    .line 73
    .line 74
    if-nez v6, :cond_6

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest;->edit()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 78
    move-result-object v1

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->pageSize()I

    .line 82
    move-result v3

    .line 83
    .line 84
    const-string v6, "start"

    .line 85
    .line 86
    .line 87
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    move-result-object v8

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v6, v8}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 92
    .line 93
    .line 94
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    move-result-object v6

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v7, v6}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 99
    .line 100
    sget-object v6, Lcom/narvii/list/NVPagedAdapter;->REQ_TAG_START:Lcom/narvii/util/Tag;

    .line 101
    .line 102
    iget v7, p0, Lcom/narvii/list/NVPagedAdapter;->_start:I

    .line 103
    .line 104
    .line 105
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    move-result-object v7

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v6, v7}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 110
    .line 111
    sget-object v6, Lcom/narvii/list/NVPagedAdapter;->REQ_TAG_FROM_START:Lcom/narvii/util/Tag;

    .line 112
    .line 113
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v6, v7}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 117
    .line 118
    sget-object v6, Lcom/narvii/list/NVPagedAdapter;->REQ_TAG_SIZE:Lcom/narvii/util/Tag;

    .line 119
    .line 120
    .line 121
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    move-result-object v3

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, v6, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 126
    .line 127
    sget-object v3, Lcom/narvii/list/NVPagedAdapter;->REQ_TAG_REFRESH_FLAG:Lcom/narvii/util/Tag;

    .line 128
    .line 129
    .line 130
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    move-result-object v6

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, v3, v6}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 138
    move-result-object v1

    .line 139
    .line 140
    iput-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    .line 141
    goto :goto_1

    .line 142
    .line 143
    :cond_6
    if-ne v6, v1, :cond_8

    .line 144
    .line 145
    .line 146
    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest;->edit()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 147
    move-result-object v1

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->pageSize()I

    .line 151
    move-result v3

    .line 152
    .line 153
    const-string v6, "pagingType"

    .line 154
    .line 155
    const-string v8, "t"

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v6, v8}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 159
    .line 160
    iget-object v6, p0, Lcom/narvii/list/NVPagedAdapter;->_refreshPageToken:Ljava/lang/String;

    .line 161
    .line 162
    if-eqz v6, :cond_7

    .line 163
    .line 164
    const-string v8, "pageToken"

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1, v8, v6}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 168
    .line 169
    .line 170
    :cond_7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 171
    move-result-object v6

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1, v7, v6}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 175
    .line 176
    sget-object v6, Lcom/narvii/list/NVPagedAdapter;->REQ_TAG_FROM_START:Lcom/narvii/util/Tag;

    .line 177
    .line 178
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1, v6, v7}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 182
    .line 183
    sget-object v6, Lcom/narvii/list/NVPagedAdapter;->REQ_TAG_SIZE:Lcom/narvii/util/Tag;

    .line 184
    .line 185
    .line 186
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 187
    move-result-object v3

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1, v6, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 191
    .line 192
    sget-object v3, Lcom/narvii/list/NVPagedAdapter;->REQ_TAG_REFRESH_FLAG:Lcom/narvii/util/Tag;

    .line 193
    .line 194
    .line 195
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 196
    move-result-object v6

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1, v3, v6}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 203
    move-result-object v1

    .line 204
    .line 205
    iput-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    .line 206
    goto :goto_1

    .line 207
    .line 208
    :cond_8
    iput-object v3, p0, Lcom/narvii/list/NVPagedAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    .line 209
    .line 210
    :goto_1
    iget-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->requestCallback:Lcom/narvii/util/Callback;

    .line 211
    .line 212
    if-eqz v1, :cond_9

    .line 213
    .line 214
    .line 215
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 216
    move-result-object v3

    .line 217
    .line 218
    .line 219
    invoke-interface {v1, v3}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 220
    .line 221
    :cond_9
    iget-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    .line 222
    .line 223
    const-wide/16 v6, 0x0

    .line 224
    .line 225
    if-nez v1, :cond_a

    .line 226
    .line 227
    iput v2, p0, Lcom/narvii/list/NVPagedAdapter;->direction:I

    .line 228
    .line 229
    iput v2, p0, Lcom/narvii/list/NVPagedAdapter;->refreshFlag:I

    .line 230
    .line 231
    iput-object v5, p0, Lcom/narvii/list/NVPagedAdapter;->requestCallback:Lcom/narvii/util/Callback;

    .line 232
    .line 233
    iput-wide v6, p0, Lcom/narvii/list/NVPagedAdapter;->requestTime:J

    .line 234
    .line 235
    iput-wide v6, p0, Lcom/narvii/list/NVPagedAdapter;->requestWaitTime:J

    .line 236
    goto :goto_2

    .line 237
    .line 238
    :cond_a
    iput v4, p0, Lcom/narvii/list/NVPagedAdapter;->direction:I

    .line 239
    .line 240
    iput p1, p0, Lcom/narvii/list/NVPagedAdapter;->refreshFlag:I

    .line 241
    .line 242
    iput-object p2, p0, Lcom/narvii/list/NVPagedAdapter;->requestCallback:Lcom/narvii/util/Callback;

    .line 243
    .line 244
    .line 245
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 246
    move-result-wide p1

    .line 247
    .line 248
    iput-wide p1, p0, Lcom/narvii/list/NVPagedAdapter;->requestTime:J

    .line 249
    .line 250
    iput-wide v6, p0, Lcom/narvii/list/NVPagedAdapter;->requestWaitTime:J

    .line 251
    .line 252
    iget-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    .line 253
    .line 254
    iget-object p2, p0, Lcom/narvii/list/NVPagedAdapter;->requestListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0, p1, p2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 258
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->removeId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public removeIdEqualsObjectId(Ljava/lang/String;)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->removeId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public resetEmptyList()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    iput v0, p0, Lcom/narvii/list/NVPagedAdapter;->_start:I

    .line 11
    const/4 v1, 0x1

    .line 12
    .line 13
    iput-boolean v1, p0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    iput-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_stopTime:Ljava/lang/String;

    .line 17
    .line 18
    iput-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_prevPageToken:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_nextPageToken:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_errorMsg:Ljava/lang/String;

    .line 23
    .line 24
    const-string v2, "api"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 31
    .line 32
    iget-object v3, p0, Lcom/narvii/list/NVPagedAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    .line 33
    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 38
    .line 39
    iput-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    .line 40
    .line 41
    :cond_0
    iget-object v2, p0, Lcom/narvii/list/NVPagedAdapter;->requestCallback:Lcom/narvii/util/Callback;

    .line 42
    .line 43
    if-eqz v2, :cond_1

    .line 44
    const/4 v3, 0x2

    .line 45
    .line 46
    .line 47
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    move-result-object v3

    .line 49
    .line 50
    .line 51
    invoke-interface {v2, v3}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 52
    .line 53
    :cond_1
    iput v0, p0, Lcom/narvii/list/NVPagedAdapter;->direction:I

    .line 54
    .line 55
    iput v0, p0, Lcom/narvii/list/NVPagedAdapter;->refreshFlag:I

    .line 56
    .line 57
    iput-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->requestCallback:Lcom/narvii/util/Callback;

    .line 58
    .line 59
    const-wide/16 v0, 0x0

    .line 60
    .line 61
    iput-wide v0, p0, Lcom/narvii/list/NVPagedAdapter;->requestTime:J

    .line 62
    .line 63
    iput-wide v0, p0, Lcom/narvii/list/NVPagedAdapter;->requestWaitTime:J

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 67
    return-void
.end method

.method public resetList()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    iput v0, p0, Lcom/narvii/list/NVPagedAdapter;->_start:I

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    iput-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_stopTime:Ljava/lang/String;

    .line 16
    .line 17
    iput-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_prevPageToken:Ljava/lang/String;

    .line 18
    .line 19
    iput-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_nextPageToken:Ljava/lang/String;

    .line 20
    .line 21
    iput-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_refreshPageToken:Ljava/lang/String;

    .line 22
    .line 23
    iput-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_errorMsg:Ljava/lang/String;

    .line 24
    .line 25
    const-string v2, "api"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 32
    .line 33
    iget-object v3, p0, Lcom/narvii/list/NVPagedAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    .line 34
    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 39
    .line 40
    iput-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    .line 41
    .line 42
    :cond_0
    iget-object v2, p0, Lcom/narvii/list/NVPagedAdapter;->requestCallback:Lcom/narvii/util/Callback;

    .line 43
    .line 44
    if-eqz v2, :cond_1

    .line 45
    const/4 v3, 0x2

    .line 46
    .line 47
    .line 48
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object v3

    .line 50
    .line 51
    .line 52
    invoke-interface {v2, v3}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 53
    .line 54
    :cond_1
    iput v0, p0, Lcom/narvii/list/NVPagedAdapter;->direction:I

    .line 55
    .line 56
    iput v0, p0, Lcom/narvii/list/NVPagedAdapter;->refreshFlag:I

    .line 57
    .line 58
    iput-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->requestCallback:Lcom/narvii/util/Callback;

    .line 59
    .line 60
    const-wide/16 v1, 0x0

    .line 61
    .line 62
    iput-wide v1, p0, Lcom/narvii/list/NVPagedAdapter;->requestTime:J

    .line 63
    .line 64
    iput-wide v1, p0, Lcom/narvii/list/NVPagedAdapter;->requestWaitTime:J

    .line 65
    .line 66
    iget-boolean v1, p0, Lcom/narvii/list/NVPagedAdapter;->attached:Z

    .line 67
    .line 68
    if-eqz v1, :cond_2

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVPagedAdapter;->loadNextPage(Z)V

    .line 72
    .line 73
    :cond_2
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->mainIpc:Lcom/narvii/logging/Impression/ImpressionCollector;

    .line 74
    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 78
    .line 79
    .line 80
    invoke-static {v0, v1}, Lcom/narvii/logging/Impression/ImpressionUtils;->clearImpression(Lcom/narvii/logging/Impression/ImpressionCollector;Lcom/narvii/app/NVContext;)V

    .line 81
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

    iput-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    return-void
.end method

.method public setRefreshWaitTime(J)V
    .locals 0

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
