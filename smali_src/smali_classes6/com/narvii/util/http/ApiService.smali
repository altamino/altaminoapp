.class public Lcom/narvii/util/http/ApiService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/util/http/ApiService$WrappedRequest;,
        Lcom/narvii/util/http/ApiService$CallPostProgress;
    }
.end annotation


# static fields
.field public static final ACTION_ERROR_MEMBERSHIP_ISSUE:Ljava/lang/String; = "com.narvii.action.ERROR_MEMBERSHIP_ISSUE"

.field public static final API_ERR_USER_NOT_IN_COMMUNITY:I = 0xe6

.field public static ASYNC_CALL_TAG:Ljava/lang/Object; = null

.field private static final CRLF:[B

.field private static final DASHDASH:[B

.field public static final DEFAULT_BACKOFF_MULT:F = 0.5f

.field public static final DEFAULT_GET_RETRY:I = 0x0

.field public static final DEFAULT_GET_TIMEOUT_MS:I = 0x1770

.field public static final DEFAULT_POST_TIMEOUT_MS:I = 0x3a98

.field public static DISABLE_RELOGIN_TAG:Ljava/lang/Object; = null

.field public static DISABLE_RESEND_PUBLIC_KEY_TAG:Ljava/lang/Object; = null

.field public static final ERROR_ATO:I = 0x10e

.field public static final ERROR_MEMBERSHIP_ISSUE:I = 0x1068

.field public static FORCE_SCHEME:Ljava/lang/String; = "https"

.field private static final PUBLIC_KEY_LOGOUT_CODES:[Ljava/lang/Integer;

.field private static final SYNC_INTERVAL:J = 0x3a98L

.field private static final VERIFY_RESEND_PK_CODES:[Ljava/lang/Integer;

.field public static sendingPublicKeyInProgress:Z

.field private static syncAdd:J

.field private static syncTime:J

.field private static uaInited:Z

.field private static userAgent:Ljava/lang/String;


# instance fields
.field protected account:Lcom/narvii/account/AccountService;

.field protected final apiUrlPattern:Ljava/util/regex/Pattern;

.field private auidService:Lcom/narvii/account/AuidService;

.field protected config:Lcom/narvii/config/ConfigService;

.field private final contentLanguageService:Lcom/narvii/language/ContentLanguageService;

.field protected final context:Lcom/narvii/app/NVContext;

.field private final lang:Ljava/lang/String;

.field lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field protected queue:Lcom/android/volley/RequestQueue;

.field protected final resending105:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/narvii/util/http/ApiService$WrappedRequest;",
            ">;"
        }
    .end annotation
.end field

.field protected final resendingPublicKey:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/narvii/util/http/ApiService$WrappedRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final rsc:Ljava/lang/String;

.field private final rsv:I

.field private sessionMonitorsDirty:Z

.field private sessionMonitorsItr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/util/http/ApiSessionMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private sessionMonitorsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/util/http/ApiSessionMonitor;",
            ">;"
        }
    .end annotation
.end field

.field protected final sessions:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/narvii/util/http/ApiRequest;",
            "Lcom/narvii/util/http/ApiService$WrappedRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    sput-object v1, Lcom/narvii/util/http/ApiService;->CRLF:[B

    .line 9
    .line 10
    new-array v1, v0, [B

    .line 11
    .line 12
    .line 13
    fill-array-data v1, :array_1

    .line 14
    .line 15
    sput-object v1, Lcom/narvii/util/http/ApiService;->DASHDASH:[B

    .line 16
    const/4 v1, 0x4

    .line 17
    .line 18
    new-array v2, v1, [Ljava/lang/Integer;

    .line 19
    .line 20
    const/16 v3, 0x2b5d

    .line 21
    .line 22
    .line 23
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object v3

    .line 25
    const/4 v4, 0x0

    .line 26
    .line 27
    aput-object v3, v2, v4

    .line 28
    .line 29
    const/16 v3, 0x2b5e

    .line 30
    .line 31
    .line 32
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object v3

    .line 34
    const/4 v5, 0x1

    .line 35
    .line 36
    aput-object v3, v2, v5

    .line 37
    .line 38
    const/16 v3, 0x2b5f

    .line 39
    .line 40
    .line 41
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    move-result-object v3

    .line 43
    .line 44
    aput-object v3, v2, v0

    .line 45
    .line 46
    const/16 v3, 0x2b60

    .line 47
    .line 48
    .line 49
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    move-result-object v3

    .line 51
    const/4 v6, 0x3

    .line 52
    .line 53
    aput-object v3, v2, v6

    .line 54
    .line 55
    sput-object v2, Lcom/narvii/util/http/ApiService;->VERIFY_RESEND_PK_CODES:[Ljava/lang/Integer;

    .line 56
    const/4 v2, 0x6

    .line 57
    .line 58
    new-array v2, v2, [Ljava/lang/Integer;

    .line 59
    .line 60
    const/16 v3, 0x2af8

    .line 61
    .line 62
    .line 63
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    move-result-object v3

    .line 65
    .line 66
    aput-object v3, v2, v4

    .line 67
    .line 68
    const/16 v3, 0x2af9

    .line 69
    .line 70
    .line 71
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    move-result-object v3

    .line 73
    .line 74
    aput-object v3, v2, v5

    .line 75
    .line 76
    const/16 v3, 0x2afa

    .line 77
    .line 78
    .line 79
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    move-result-object v3

    .line 81
    .line 82
    aput-object v3, v2, v0

    .line 83
    .line 84
    const/16 v0, 0x2afb

    .line 85
    .line 86
    .line 87
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    move-result-object v0

    .line 89
    .line 90
    aput-object v0, v2, v6

    .line 91
    .line 92
    const/16 v0, 0x2afd

    .line 93
    .line 94
    .line 95
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    move-result-object v0

    .line 97
    .line 98
    aput-object v0, v2, v1

    .line 99
    .line 100
    const/16 v0, 0x2afe

    .line 101
    .line 102
    .line 103
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    move-result-object v0

    .line 105
    const/4 v1, 0x5

    .line 106
    .line 107
    aput-object v0, v2, v1

    .line 108
    .line 109
    sput-object v2, Lcom/narvii/util/http/ApiService;->PUBLIC_KEY_LOGOUT_CODES:[Ljava/lang/Integer;

    .line 110
    .line 111
    new-instance v0, Lcom/narvii/util/Tag;

    .line 112
    .line 113
    const-string v1, "disableRelogin"

    .line 114
    .line 115
    .line 116
    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    sput-object v0, Lcom/narvii/util/http/ApiService;->DISABLE_RELOGIN_TAG:Ljava/lang/Object;

    .line 119
    .line 120
    new-instance v0, Lcom/narvii/util/Tag;

    .line 121
    .line 122
    const-string v1, "disableResendPublicKey"

    .line 123
    .line 124
    .line 125
    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    sput-object v0, Lcom/narvii/util/http/ApiService;->DISABLE_RESEND_PUBLIC_KEY_TAG:Ljava/lang/Object;

    .line 128
    .line 129
    new-instance v0, Lcom/narvii/util/Tag;

    .line 130
    .line 131
    const-string v1, "asyncCallTag"

    .line 132
    .line 133
    .line 134
    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    sput-object v0, Lcom/narvii/util/http/ApiService;->ASYNC_CALL_TAG:Ljava/lang/Object;

    .line 137
    .line 138
    sput-boolean v4, Lcom/narvii/util/http/ApiService;->sendingPublicKeyInProgress:Z

    .line 139
    return-void

    .line 140
    nop

    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data

    .line 146
    nop

    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    :array_1
    .array-data 1
        0x2dt
        0x2dt
    .end array-data
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/util/http/ApiService;->context:Lcom/narvii/app/NVContext;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/narvii/util/http/ApiService;->initUserAgent(Lcom/narvii/app/NVContext;)V

    .line 9
    .line 10
    const-string v0, "apiRequestQueue"

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Lcom/android/volley/RequestQueue;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/narvii/util/http/ApiService;->queue:Lcom/android/volley/RequestQueue;

    .line 19
    .line 20
    const-string v0, "config"

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/narvii/util/http/ApiService;->config:Lcom/narvii/config/ConfigService;

    .line 29
    .line 30
    const-string v0, "account"

    .line 31
    .line 32
    .line 33
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/narvii/util/http/ApiService;->account:Lcom/narvii/account/AccountService;

    .line 39
    .line 40
    const-string v0, "auid"

    .line 41
    .line 42
    .line 43
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    check-cast v0, Lcom/narvii/account/AuidService;

    .line 47
    .line 48
    iput-object v0, p0, Lcom/narvii/util/http/ApiService;->auidService:Lcom/narvii/account/AuidService;

    .line 49
    .line 50
    const-string v0, "content_language"

    .line 51
    .line 52
    .line 53
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    check-cast v0, Lcom/narvii/language/ContentLanguageService;

    .line 57
    .line 58
    iput-object v0, p0, Lcom/narvii/util/http/ApiService;->contentLanguageService:Lcom/narvii/language/ContentLanguageService;

    .line 59
    .line 60
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 61
    .line 62
    .line 63
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 64
    .line 65
    iput-object v0, p0, Lcom/narvii/util/http/ApiService;->sessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 66
    .line 67
    new-instance v0, Ljava/util/LinkedList;

    .line 68
    .line 69
    .line 70
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 71
    .line 72
    iput-object v0, p0, Lcom/narvii/util/http/ApiService;->resending105:Ljava/util/LinkedList;

    .line 73
    .line 74
    new-instance v0, Ljava/util/LinkedList;

    .line 75
    .line 76
    .line 77
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 78
    .line 79
    iput-object v0, p0, Lcom/narvii/util/http/ApiService;->resendingPublicKey:Ljava/util/LinkedList;

    .line 80
    .line 81
    .line 82
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 83
    move-result-object v0

    .line 84
    .line 85
    sget v1, Lcom/narvii/lib/R$string;->rsv:I

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 89
    move-result-object v0

    .line 90
    .line 91
    .line 92
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 93
    move-result v0

    .line 94
    .line 95
    iput v0, p0, Lcom/narvii/util/http/ApiService;->rsv:I

    .line 96
    .line 97
    .line 98
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 99
    move-result-object v0

    .line 100
    .line 101
    sget v1, Lcom/narvii/lib/R$string;->rsc:I

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 105
    move-result-object v0

    .line 106
    .line 107
    iput-object v0, p0, Lcom/narvii/util/http/ApiService;->rsc:Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 111
    move-result-object v0

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 115
    move-result-object v1

    .line 116
    .line 117
    .line 118
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 119
    move-result v2

    .line 120
    .line 121
    if-nez v2, :cond_1

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 125
    move-result-object v0

    .line 126
    .line 127
    .line 128
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 129
    move-result v2

    .line 130
    .line 131
    if-eqz v2, :cond_0

    .line 132
    goto :goto_0

    .line 133
    .line 134
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    const-string v1, "-"

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    move-result-object v1

    .line 153
    .line 154
    :goto_0
    iput-object v1, p0, Lcom/narvii/util/http/ApiService;->lang:Ljava/lang/String;

    .line 155
    goto :goto_1

    .line 156
    :cond_1
    const/4 v0, 0x0

    .line 157
    .line 158
    iput-object v0, p0, Lcom/narvii/util/http/ApiService;->lang:Ljava/lang/String;

    .line 159
    .line 160
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .line 165
    const-string v1, "^(https?)://([a-zA-Z\\d-_]*)"

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    sget-object v1, Lcom/narvii/app/NVApplication;->mainHost:Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    const-string v1, "(/.*)$"

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    move-result-object v0

    .line 183
    .line 184
    .line 185
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 186
    move-result-object v0

    .line 187
    .line 188
    iput-object v0, p0, Lcom/narvii/util/http/ApiService;->apiUrlPattern:Ljava/util/regex/Pattern;

    .line 189
    .line 190
    .line 191
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 192
    move-result-object p1

    .line 193
    .line 194
    .line 195
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 196
    move-result-object p1

    .line 197
    .line 198
    iput-object p1, p0, Lcom/narvii/util/http/ApiService;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 199
    return-void
.end method

.method public static synthetic a(Lcom/narvii/util/http/ApiService;Lcom/narvii/util/Callback;Lcom/narvii/util/http/ApiRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/util/http/ApiService;->lambda$createResendPublicKeyRequest$0(Lcom/narvii/util/Callback;Lcom/narvii/util/http/ApiRequest;)V

    return-void
.end method

.method static bridge synthetic b(Lcom/narvii/util/http/ApiService;)Lcom/narvii/account/AuidService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/util/http/ApiService;->auidService:Lcom/narvii/account/AuidService;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/narvii/util/http/ApiService;)Lcom/narvii/language/ContentLanguageService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/util/http/ApiService;->contentLanguageService:Lcom/narvii/language/ContentLanguageService;

    return-object p0
.end method

.method private clearPendingRequests()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/model/api/ApiResponse;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/model/api/ApiResponse;-><init>()V

    .line 6
    .line 7
    :goto_0
    iget-object v1, p0, Lcom/narvii/util/http/ApiService;->resendingPublicKey:Ljava/util/LinkedList;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    check-cast v1, Lcom/narvii/util/http/ApiService$WrappedRequest;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v2, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->resendPublicKeyResponse:Lcom/narvii/model/api/ApiResponse;

    .line 18
    .line 19
    iput-object v0, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->resendPublicKeyResponse:Lcom/narvii/model/api/ApiResponse;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiService$WrappedRequest;->deliverResponse(Lcom/narvii/model/api/ApiResponse;)V

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method

.method private createReloginRequest(Lcom/narvii/account/AccountKeychain;)Lcom/narvii/util/http/ApiService$WrappedRequest;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/http/ApiService;->account:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 14
    move-result-object v2

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    const-string v3, "/auth/login"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 28
    .line 29
    sget-object v2, La0/a;->o:Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    invoke-static {}, La0/b;->k()Ljava/lang/String;

    .line 33
    move-result-object v3

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 37
    .line 38
    iget-object v2, p1, Lcom/narvii/account/AccountKeychain;->email:Ljava/lang/String;

    .line 39
    .line 40
    const-string v3, "email"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 44
    .line 45
    const-string v2, "secret"

    .line 46
    .line 47
    iget-object v3, p1, Lcom/narvii/account/AccountKeychain;->secret:Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 51
    .line 52
    sget v2, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    .line 53
    .line 54
    .line 55
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    move-result-object v2

    .line 57
    .line 58
    const-string v3, "clientType"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 62
    .line 63
    sget-object v2, Lcom/narvii/util/http/ApiService;->DISABLE_RELOGIN_TAG:Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 70
    move-result-object v1

    .line 71
    .line 72
    new-instance v2, Lcom/narvii/util/http/ApiService$3;

    .line 73
    .line 74
    iget-object v3, p0, Lcom/narvii/util/http/ApiService;->context:Lcom/narvii/app/NVContext;

    .line 75
    .line 76
    .line 77
    invoke-direct {v2, p0, v3, p1, v0}, Lcom/narvii/util/http/ApiService$3;-><init>(Lcom/narvii/util/http/ApiService;Lcom/narvii/app/NVContext;Lcom/narvii/account/AccountKeychain;Ljava/lang/String;)V

    .line 78
    .line 79
    new-instance p1, Lcom/narvii/util/http/ApiService$WrappedRequest;

    .line 80
    .line 81
    .line 82
    invoke-direct {p1, p0, v1, v2}, Lcom/narvii/util/http/ApiService$WrappedRequest;-><init>(Lcom/narvii/util/http/ApiService;Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 83
    .line 84
    new-instance v0, Lcom/narvii/model/api/ApiResponse;

    .line 85
    .line 86
    .line 87
    invoke-direct {v0}, Lcom/narvii/model/api/ApiResponse;-><init>()V

    .line 88
    .line 89
    iput-object v0, p1, Lcom/narvii/util/http/ApiService$WrappedRequest;->resend105Response:Lcom/narvii/model/api/ApiResponse;

    .line 90
    return-object p1
.end method

.method private createResendPublicKeyRequest(Lcom/narvii/util/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/util/http/ApiService$WrappedRequest;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/http/ApiService;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "keystore"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/security/KeyStoreService;

    .line 11
    .line 12
    new-instance v1, Lcom/narvii/util/http/a;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, p0, p1}, Lcom/narvii/util/http/a;-><init>(Lcom/narvii/util/http/ApiService;Lcom/narvii/util/Callback;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private createWrappedRequest(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)Lcom/narvii/util/http/ApiService$WrappedRequest;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/http/ApiService$WrappedRequest;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/util/http/ApiService$WrappedRequest;-><init>(Lcom/narvii/util/http/ApiService;Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 6
    return-object v0
.end method

.method static bridge synthetic d(Lcom/narvii/util/http/ApiService;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/util/http/ApiService;->lang:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/narvii/util/http/ApiService;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/util/http/ApiService;->rsc:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/narvii/util/http/ApiService;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/util/http/ApiService;->rsv:I

    return p0
.end method

.method static bridge synthetic g(Lcom/narvii/util/http/ApiService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/util/http/ApiService;->clearPendingRequests()V

    return-void
.end method

.method static bridge synthetic h(Lcom/narvii/util/http/ApiService;Lcom/narvii/account/AccountKeychain;)Lcom/narvii/util/http/ApiService$WrappedRequest;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/util/http/ApiService;->createReloginRequest(Lcom/narvii/account/AccountKeychain;)Lcom/narvii/util/http/ApiService$WrappedRequest;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic i(Lcom/narvii/util/http/ApiService;Lcom/narvii/util/Callback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/util/http/ApiService;->createResendPublicKeyRequest(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public static initUserAgent(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    .line 2
    sget-boolean v0, Lcom/narvii/util/http/ApiService;->uaInited:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    .line 7
    sput-boolean v0, Lcom/narvii/util/http/ApiService;->uaInited:Z

    .line 8
    .line 9
    const-string v0, "http.agent"

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Lcom/narvii/util/http/ApiService;->userAgent(Lcom/narvii/app/NVContext;)Ljava/lang/String;

    .line 13
    move-result-object p0

    .line 14
    .line 15
    .line 16
    invoke-static {v0, p0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    :cond_0
    return-void
.end method

.method public static isTimeSynced()Z
    .locals 4

    sget-wide v0, Lcom/narvii/util/http/ApiService;->syncTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static bridge synthetic j(Lcom/narvii/util/http/ApiService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/util/http/ApiService;->showPublicKeyFailed()V

    return-void
.end method

.method static bridge synthetic k()[B
    .locals 1

    .line 1
    sget-object v0, Lcom/narvii/util/http/ApiService;->CRLF:[B

    return-object v0
.end method

.method static bridge synthetic l()[B
    .locals 1

    .line 1
    sget-object v0, Lcom/narvii/util/http/ApiService;->DASHDASH:[B

    return-object v0
.end method

.method private synthetic lambda$createResendPublicKeyRequest$0(Lcom/narvii/util/Callback;Lcom/narvii/util/http/ApiRequest;)V
    .locals 2

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/util/http/ApiService;->showPublicKeyFailed()V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/util/http/ApiService;->account:Lcom/narvii/account/AccountService;

    .line 8
    const/4 p2, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Lcom/narvii/account/AccountService;->logout(Z)V

    .line 12
    return-void

    .line 13
    .line 14
    :cond_0
    new-instance v0, Lcom/narvii/util/http/ApiService$4;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/util/http/ApiService;->context:Lcom/narvii/app/NVContext;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p0, v1}, Lcom/narvii/util/http/ApiService$4;-><init>(Lcom/narvii/util/http/ApiService;Lcom/narvii/app/NVContext;)V

    .line 20
    .line 21
    new-instance v1, Lcom/narvii/util/http/ApiService$WrappedRequest;

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, p0, p2, v0}, Lcom/narvii/util/http/ApiService$WrappedRequest;-><init>(Lcom/narvii/util/http/ApiService;Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 25
    .line 26
    new-instance p2, Lcom/narvii/model/api/ApiResponse;

    .line 27
    .line 28
    .line 29
    invoke-direct {p2}, Lcom/narvii/model/api/ApiResponse;-><init>()V

    .line 30
    .line 31
    iput-object p2, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->resendPublicKeyResponse:Lcom/narvii/model/api/ApiResponse;

    .line 32
    .line 33
    .line 34
    invoke-interface {p1, v1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 35
    return-void
.end method

.method static bridge synthetic m()[Ljava/lang/Integer;
    .locals 1

    .line 1
    sget-object v0, Lcom/narvii/util/http/ApiService;->PUBLIC_KEY_LOGOUT_CODES:[Ljava/lang/Integer;

    return-object v0
.end method

.method static bridge synthetic n()[Ljava/lang/Integer;
    .locals 1

    .line 1
    sget-object v0, Lcom/narvii/util/http/ApiService;->VERIFY_RESEND_PK_CODES:[Ljava/lang/Integer;

    return-object v0
.end method

.method private static safeHeaderStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/util/http/ApiService;->validHeader(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    move v1, v0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 15
    move-result v1

    .line 16
    .line 17
    :goto_0
    const/16 v2, 0x14

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 21
    move-result v1

    .line 22
    .line 23
    if-nez p0, :cond_1

    .line 24
    const/4 p0, 0x0

    .line 25
    goto :goto_1

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 30
    :goto_1
    return-object p0

    .line 31
    .line 32
    :cond_2
    const-string p0, "?"

    .line 33
    return-object p0
.end method

.method public static shouldShowErrMessage(Landroid/content/Context;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x1

    .line 6
    .line 7
    if-eqz p0, :cond_1

    .line 8
    .line 9
    .line 10
    const-string/jumbo v1, "topActivity"

    .line 11
    .line 12
    .line 13
    invoke-interface {p0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 15
    .line 16
    check-cast p0, Lcom/narvii/util/services/TopActivityService;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/narvii/util/services/TopActivityService;->getTopActivity()Landroid/app/Activity;

    .line 20
    move-result-object p0

    .line 21
    .line 22
    instance-of v1, p0, Lcom/narvii/app/NVActivity;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    check-cast p0, Lcom/narvii/app/NVActivity;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isHandlingATO()Z

    .line 30
    move-result v1

    .line 31
    .line 32
    if-nez v1, :cond_0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isHandlingJoinCommunity()Z

    .line 36
    move-result p0

    .line 37
    .line 38
    if-nez p0, :cond_0

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v0, 0x0

    .line 41
    :cond_1
    :goto_0
    return v0
.end method

.method private showPublicKeyFailed()V
    .locals 3

    .line 1
    .line 2
    const-string v0, "api"

    .line 3
    .line 4
    const-string v1, "Resend public key failed"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/util/http/ApiService;->context:Lcom/narvii/app/NVContext;

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v0

    .line 18
    const/4 v2, 0x0

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    .line 26
    :cond_0
    return-void
.end method

.method public static timestamp()J
    .locals 4

    .line 1
    .line 2
    sget-wide v0, Lcom/narvii/util/http/ApiService;->syncTime:J

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v0, v0, v2

    .line 7
    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 12
    move-result-wide v0

    .line 13
    .line 14
    sget-wide v2, Lcom/narvii/util/http/ApiService;->syncTime:J

    .line 15
    sub-long/2addr v0, v2

    .line 16
    .line 17
    sget-wide v2, Lcom/narvii/util/http/ApiService;->syncAdd:J

    .line 18
    add-long/2addr v0, v2

    .line 19
    return-wide v0

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 23
    move-result-wide v0

    .line 24
    return-wide v0
.end method

.method public static userAgent(Lcom/narvii/app/NVContext;)Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/util/http/ApiService;->userAgent:Ljava/lang/String;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    const-string v1, "Dalvik/"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v1, "java.vm.version"

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v1, " (Linux; U; Android "

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    invoke-static {v1}, Lcom/narvii/util/http/ApiService;->safeHeaderStr(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v1, "; "

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    invoke-static {v2}, Lcom/narvii/util/http/ApiService;->safeHeaderStr(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    move-result-object v2

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v2, " Build/"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    sget-object v2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    invoke-static {v2}, Lcom/narvii/util/http/ApiService;->safeHeaderStr(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    move-result-object v2

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    new-instance v2, Lcom/narvii/util/PackageUtils;

    .line 68
    .line 69
    .line 70
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 71
    move-result-object v3

    .line 72
    .line 73
    .line 74
    invoke-direct {v2, v3}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 81
    move-result-object p0

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 85
    move-result-object p0

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string p0, "/"

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2}, Lcom/narvii/util/PackageUtils;->getVersionName()Ljava/lang/String;

    .line 97
    move-result-object p0

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string p0, ")"

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    move-result-object p0

    .line 110
    .line 111
    sput-object p0, Lcom/narvii/util/http/ApiService;->userAgent:Ljava/lang/String;

    .line 112
    .line 113
    :cond_0
    sget-object p0, Lcom/narvii/util/http/ApiService;->userAgent:Ljava/lang/String;

    .line 114
    return-object p0
.end method

.method private static validHeader(Ljava/lang/String;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    move v1, v0

    .line 5
    goto :goto_0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 9
    move-result v1

    .line 10
    :goto_0
    move v2, v0

    .line 11
    .line 12
    :goto_1
    if-ge v2, v1, :cond_4

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 16
    move-result v3

    .line 17
    .line 18
    const/16 v4, 0x1f

    .line 19
    .line 20
    if-gt v3, v4, :cond_1

    .line 21
    .line 22
    const/16 v4, 0x9

    .line 23
    .line 24
    if-ne v3, v4, :cond_2

    .line 25
    .line 26
    :cond_1
    const/16 v4, 0x7f

    .line 27
    .line 28
    if-lt v3, v4, :cond_3

    .line 29
    :cond_2
    return v0

    .line 30
    .line 31
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 32
    goto :goto_1

    .line 33
    :cond_4
    const/4 p0, 0x1

    .line 34
    return p0
.end method


# virtual methods
.method public abort(Lcom/narvii/util/http/ApiRequest;)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, p1, v0}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public abort(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "Lcom/narvii/util/http/ApiResponseListener<",
            "+",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/util/http/ApiService;->queue:Lcom/android/volley/RequestQueue;

    .line 1
    new-instance v1, Lcom/narvii/util/http/ApiService$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/narvii/util/http/ApiService$1;-><init>(Lcom/narvii/util/http/ApiService;Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->cancelAll(Lcom/android/volley/RequestQueue$RequestFilter;)V

    iget-object v0, p0, Lcom/narvii/util/http/ApiService;->resending105:Ljava/util/LinkedList;

    .line 2
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    const-string v1, "abort "

    const-string v2, "api"

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/narvii/util/http/ApiService;->resending105:Ljava/util/LinkedList;

    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/util/http/ApiService$WrappedRequest;

    .line 6
    iget-object v4, v3, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    if-ne v4, p1, :cond_0

    if-eqz p2, :cond_1

    iget-object v3, v3, Lcom/narvii/util/http/ApiService$WrappedRequest;->listener:Lcom/narvii/util/http/ApiResponseListener;

    if-ne v3, p2, :cond_0

    .line 7
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " (in 105-relogin queue)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/narvii/util/http/ApiService;->resendingPublicKey:Ljava/util/LinkedList;

    .line 9
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/narvii/util/http/ApiService;->resendingPublicKey:Ljava/util/LinkedList;

    .line 10
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 11
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/util/http/ApiService$WrappedRequest;

    .line 13
    iget-object v4, v3, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    if-ne v4, p1, :cond_3

    if-eqz p2, :cond_4

    iget-object v3, v3, Lcom/narvii/util/http/ApiService$WrappedRequest;->listener:Lcom/narvii/util/http/ApiResponseListener;

    if-ne v3, p2, :cond_3

    .line 14
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " (in resend public key queue)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method public abortAll(Z)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/http/ApiService;->queue:Lcom/android/volley/RequestQueue;

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/util/http/ApiService$2;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/narvii/util/http/ApiService$2;-><init>(Lcom/narvii/util/http/ApiService;Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->cancelAll(Lcom/android/volley/RequestQueue$RequestFilter;)V

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/util/http/ApiService;->sessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/util/http/ApiService;->resending105:Ljava/util/LinkedList;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    .line 21
    .line 22
    iget-object p1, p0, Lcom/narvii/util/http/ApiService;->resendingPublicKey:Ljava/util/LinkedList;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    .line 26
    return-void
.end method

.method public addSessionMonitor(Lcom/narvii/util/http/ApiSessionMonitor;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/http/ApiService;->sessionMonitorsList:Ljava/util/List;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/util/http/ApiService;->sessionMonitorsList:Ljava/util/List;

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    return-void

    .line 20
    .line 21
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/narvii/util/http/ApiService;->sessionMonitorsList:Ljava/util/List;

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    const/4 p1, 0x1

    .line 26
    .line 27
    iput-boolean p1, p0, Lcom/narvii/util/http/ApiService;->sessionMonitorsDirty:Z

    .line 28
    return-void
.end method

.method convertUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/http/ApiService;->config:Lcom/narvii/config/ConfigService;

    .line 3
    .line 4
    if-eqz v0, :cond_5

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/util/http/ApiService;->apiUrlPattern:Ljava/util/regex/Pattern;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_5

    .line 17
    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    sget-object v1, Lcom/narvii/util/http/ApiService;->FORCE_SCHEME:Ljava/lang/String;

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v1, 0x1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    :goto_0
    const-string v1, "service"

    .line 40
    const/4 v2, 0x2

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 44
    move-result-object v3

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    move-result v1

    .line 49
    .line 50
    const-string v3, "://"

    .line 51
    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    iget-object v1, p0, Lcom/narvii/util/http/ApiService;->config:Lcom/narvii/config/ConfigService;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getServiceHost()Ljava/lang/String;

    .line 61
    move-result-object v1

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    goto :goto_1

    .line 66
    .line 67
    .line 68
    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 72
    move-result-object v1

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    iget-object v1, p0, Lcom/narvii/util/http/ApiService;->config:Lcom/narvii/config/ConfigService;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getHost()Ljava/lang/String;

    .line 81
    move-result-object v1

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    :goto_1
    const/4 v1, 0x3

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 89
    move-result-object v0

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 93
    move-result v2

    .line 94
    .line 95
    if-nez v2, :cond_2

    .line 96
    .line 97
    const/16 v0, 0x2f

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101
    goto :goto_3

    .line 102
    .line 103
    :cond_2
    const-string v2, "/xx/"

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 107
    move-result v2

    .line 108
    .line 109
    if-gez v2, :cond_3

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    goto :goto_3

    .line 114
    .line 115
    :cond_3
    add-int/lit8 v3, v2, 0x1

    .line 116
    const/4 v4, 0x0

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 120
    move-result-object v3

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    iget-object v3, p0, Lcom/narvii/util/http/ApiService;->config:Lcom/narvii/config/ConfigService;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 129
    move-result v3

    .line 130
    .line 131
    if-nez v3, :cond_4

    .line 132
    .line 133
    const/16 v3, 0x67

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 137
    goto :goto_2

    .line 138
    .line 139
    :cond_4
    const/16 v4, 0x78

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    :goto_2
    add-int/2addr v2, v1

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 150
    move-result-object v0

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    :goto_3
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    move-result-object p1

    .line 158
    :cond_5
    return-object p1
.end method

.method public exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V
    .locals 1
    .param p2    # Lcom/narvii/util/http/ApiResponseListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "Lcom/narvii/util/http/ApiResponseListener<",
            "+",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/util/http/ApiService;->queue:Lcom/android/volley/RequestQueue;

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;Lcom/android/volley/RequestQueue;)V

    return-void
.end method

.method public exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;Lcom/android/volley/RequestQueue;)V
    .locals 1
    .param p2    # Lcom/narvii/util/http/ApiResponseListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "Lcom/narvii/util/http/ApiResponseListener<",
            "+",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;",
            "Lcom/android/volley/RequestQueue;",
            ")V"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/narvii/logging/LogUtils;->nextPageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    iput-object v0, p1, Lcom/narvii/util/http/ApiRequest;->nextPageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    iget-object v0, p0, Lcom/narvii/util/http/ApiService;->sessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService$WrappedRequest;

    if-eqz v0, :cond_1

    .line 4
    iget-object p3, v0, Lcom/narvii/util/http/ApiService$WrappedRequest;->listener:Lcom/narvii/util/http/ApiResponseListener;

    if-ne p3, p2, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "duplicated request "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " in context "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/narvii/util/http/ApiService;->context:Lcom/narvii/app/NVContext;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "api"

    invoke-static {p2, p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/narvii/util/http/ApiService;->createWrappedRequest(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)Lcom/narvii/util/http/ApiService$WrappedRequest;

    move-result-object p2

    iget-object v0, p0, Lcom/narvii/util/http/ApiService;->sessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_2

    .line 8
    invoke-virtual {p3, p2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_0

    :cond_2
    iget-object p3, p0, Lcom/narvii/util/http/ApiService;->queue:Lcom/android/volley/RequestQueue;

    .line 9
    invoke-virtual {p3, p2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 10
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/util/http/ApiService;->sessionMonitors()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 11
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/util/http/ApiSessionMonitor;

    .line 12
    invoke-interface {p3, p1}, Lcom/narvii/util/http/ApiSessionMonitor;->onNewRequest(Lcom/narvii/util/http/ApiRequest;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public removeSessionMonitor(Lcom/narvii/util/http/ApiSessionMonitor;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/http/ApiService;->sessionMonitorsList:Ljava/util/List;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 8
    move-result p1

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/util/http/ApiService;->sessionMonitorsList:Ljava/util/List;

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 16
    move-result p1

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    const/4 p1, 0x0

    .line 20
    .line 21
    iput-object p1, p0, Lcom/narvii/util/http/ApiService;->sessionMonitorsList:Ljava/util/List;

    .line 22
    :cond_0
    const/4 p1, 0x1

    .line 23
    .line 24
    iput-boolean p1, p0, Lcom/narvii/util/http/ApiService;->sessionMonitorsDirty:Z

    .line 25
    :cond_1
    return-void
.end method

.method sessionMonitors()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/util/http/ApiSessionMonitor;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/http/ApiService;->sessionMonitorsList:Ljava/util/List;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/util/http/ApiService;->sessionMonitorsItr:Ljava/util/List;

    .line 8
    return-object v0

    .line 9
    .line 10
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/util/http/ApiService;->sessionMonitorsDirty:Z

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/util/http/ApiService;->sessionMonitorsItr:Ljava/util/List;

    .line 15
    .line 16
    if-nez v0, :cond_2

    .line 17
    .line 18
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/narvii/util/http/ApiService;->sessionMonitorsList:Ljava/util/List;

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/util/http/ApiService;->sessionMonitorsItr:Ljava/util/List;

    .line 26
    const/4 v0, 0x0

    .line 27
    .line 28
    iput-boolean v0, p0, Lcom/narvii/util/http/ApiService;->sessionMonitorsDirty:Z

    .line 29
    .line 30
    :cond_2
    iget-object v0, p0, Lcom/narvii/util/http/ApiService;->sessionMonitorsItr:Ljava/util/List;

    .line 31
    return-object v0
.end method

.method syncTime(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    goto :goto_1

    .line 6
    .line 7
    :cond_0
    sget-wide v0, Lcom/narvii/util/http/ApiService;->syncTime:J

    .line 8
    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    cmp-long v0, v0, v2

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v0, 0x0

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 20
    move-result-wide v1

    .line 21
    .line 22
    sget-wide v3, Lcom/narvii/util/http/ApiService;->syncTime:J

    .line 23
    .line 24
    const-wide/16 v5, 0x3a98

    .line 25
    add-long/2addr v3, v5

    .line 26
    .line 27
    cmp-long v3, v1, v3

    .line 28
    .line 29
    if-lez v3, :cond_2

    .line 30
    .line 31
    :try_start_0
    iget-object v3, p0, Lcom/narvii/util/http/ApiService;->config:Lcom/narvii/config/ConfigService;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3}, Lcom/narvii/config/ConfigService;->getServiceHost()Ljava/lang/String;

    .line 35
    move-result-object v3

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    move-result p1

    .line 48
    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    .line 52
    invoke-static {p2}, Lcom/narvii/util/http/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 57
    move-result-wide p1

    .line 58
    .line 59
    sput-wide p1, Lcom/narvii/util/http/ApiService;->syncAdd:J

    .line 60
    .line 61
    sput-wide v1, Lcom/narvii/util/http/ApiService;->syncTime:J

    .line 62
    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    new-instance p1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string/jumbo p2, "time sync finish, diff="

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    sget-wide v3, Lcom/narvii/util/http/ApiService;->syncTime:J

    .line 77
    sub-long/2addr v1, v3

    .line 78
    .line 79
    sget-wide v3, Lcom/narvii/util/http/ApiService;->syncAdd:J

    .line 80
    add-long/2addr v1, v3

    .line 81
    .line 82
    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 84
    move-result-wide v3

    .line 85
    sub-long/2addr v1, v3

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string p2, "ms"

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object p1

    .line 98
    .line 99
    .line 100
    invoke-static {p1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    goto :goto_1

    .line 102
    :catch_0
    move-exception p1

    .line 103
    .line 104
    .line 105
    const-string/jumbo p2, "time sync fail"

    .line 106
    .line 107
    .line 108
    invoke-static {p2, p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    :cond_2
    :goto_1
    return-void
.end method
