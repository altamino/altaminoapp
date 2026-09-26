.class public Lcom/narvii/util/statistics/TeaManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static account:Lcom/narvii/account/AccountService;

.field private static affiliations:Lcom/narvii/community/AffiliationsService;

.field private static final affiliationsListener:Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;

.field private static headersReady:Z

.field private static inited:Z

.field private static membership:Lcom/narvii/wallet/MembershipService;

.field private static prefs:Landroid/content/SharedPreferences;

.field private static prevCrashLog:Lcom/narvii/util/crashlytics/CrashlyticsUtils$CrashLog;

.field private static final receiver:Landroid/content/BroadcastReceiver;

.field private static teaInited:Z

.field private static teaUserId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/statistics/TeaManager$2;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/util/statistics/TeaManager$2;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/narvii/util/statistics/TeaManager;->receiver:Landroid/content/BroadcastReceiver;

    .line 8
    .line 9
    new-instance v0, Lcom/narvii/util/statistics/TeaManager$3;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Lcom/narvii/util/statistics/TeaManager$3;-><init>()V

    .line 13
    .line 14
    sput-object v0, Lcom/narvii/util/statistics/TeaManager;->affiliationsListener:Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method static bridge synthetic a(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/narvii/util/statistics/TeaManager;->headersReady:Z

    return-void
.end method

.method static bridge synthetic b(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/util/statistics/TeaManager;->prepareTea(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .line 1
    .line 2
    sget-boolean v0, Lcom/narvii/util/statistics/TeaManager;->inited:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    move-result-object p0

    .line 9
    .line 10
    check-cast p0, Landroid/app/Application;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/util/statistics/TeaManager$1;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Lcom/narvii/util/statistics/TeaManager$1;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 19
    const/4 p0, 0x1

    .line 20
    .line 21
    sput-boolean p0, Lcom/narvii/util/statistics/TeaManager;->inited:Z

    .line 22
    .line 23
    sget-object p0, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->prevCrashLog:Lcom/narvii/util/crashlytics/CrashlyticsUtils$CrashLog;

    .line 24
    .line 25
    sput-object p0, Lcom/narvii/util/statistics/TeaManager;->prevCrashLog:Lcom/narvii/util/crashlytics/CrashlyticsUtils$CrashLog;

    .line 26
    :cond_0
    return-void
.end method

.method public static logEvent(Lcom/narvii/app/NVContext;Lcom/narvii/util/statistics/StatisticsEventBuilder;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/narvii/util/statistics/StatisticsEventBuilder;->eventName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/narvii/util/statistics/TeaManager;->prepareTea(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 2
    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    iget-object v0, p1, Lcom/narvii/util/statistics/StatisticsEventBuilder;->params:Ljava/util/HashMap;

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

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/narvii/util/statistics/TeaManager;->teaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/statistics/TeaManager;->teaValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p1, Lcom/narvii/util/statistics/StatisticsEventBuilder;->eventName:Ljava/lang/String;

    invoke-static {p1}, Lcom/narvii/util/statistics/TeaManager;->teaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Ls6/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public static logEvent(Lcom/narvii/app/NVContext;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 13
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/narvii/util/statistics/TeaManager;->prepareTea(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 14
    :try_start_0
    invoke-static {p1, p2}, Ls6/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static logEvent(Lcom/narvii/app/NVContext;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/narvii/util/statistics/TeaManager;->prepareTea(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 7
    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const/4 v0, 0x0

    .line 8
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 9
    aget-object v1, p2, v0

    add-int/lit8 v2, v0, 0x1

    .line 10
    aget-object v2, p2, v2

    .line 11
    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/narvii/util/statistics/TeaManager;->teaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Lcom/narvii/util/statistics/TeaManager;->teaValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 12
    :cond_0
    invoke-static {p1}, Lcom/narvii/util/statistics/TeaManager;->teaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Ls6/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method private static prepareTea(Landroid/content/Context;)Z
    .locals 9

    .line 1
    .line 2
    sget-boolean v0, Lcom/narvii/util/statistics/TeaManager;->inited:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_13

    .line 6
    .line 7
    sget-object v0, Lcom/narvii/util/statistics/TeaManager;->account:Lcom/narvii/account/AccountService;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    const-string v2, "account"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v2}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 22
    .line 23
    sput-object v0, Lcom/narvii/util/statistics/TeaManager;->account:Lcom/narvii/account/AccountService;

    .line 24
    .line 25
    :cond_0
    sget-object v0, Lcom/narvii/util/statistics/TeaManager;->affiliations:Lcom/narvii/community/AffiliationsService;

    .line 26
    .line 27
    const-string v2, "affiliations"

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v2}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    check-cast v0, Lcom/narvii/community/AffiliationsService;

    .line 40
    .line 41
    sput-object v0, Lcom/narvii/util/statistics/TeaManager;->affiliations:Lcom/narvii/community/AffiliationsService;

    .line 42
    .line 43
    :cond_1
    sget-object v0, Lcom/narvii/util/statistics/TeaManager;->membership:Lcom/narvii/wallet/MembershipService;

    .line 44
    .line 45
    if-nez v0, :cond_2

    .line 46
    .line 47
    .line 48
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    const-string v3, "membership"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v3}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    check-cast v0, Lcom/narvii/wallet/MembershipService;

    .line 58
    .line 59
    sput-object v0, Lcom/narvii/util/statistics/TeaManager;->membership:Lcom/narvii/wallet/MembershipService;

    .line 60
    .line 61
    :cond_2
    sget-object v0, Lcom/narvii/util/statistics/TeaManager;->prefs:Landroid/content/SharedPreferences;

    .line 62
    .line 63
    if-nez v0, :cond_3

    .line 64
    .line 65
    .line 66
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    const-string v3, "prefs"

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v3}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    check-cast v0, Landroid/content/SharedPreferences;

    .line 76
    .line 77
    sput-object v0, Lcom/narvii/util/statistics/TeaManager;->prefs:Landroid/content/SharedPreferences;

    .line 78
    .line 79
    :cond_3
    sget-boolean v0, Lcom/narvii/util/statistics/TeaManager;->teaInited:Z

    .line 80
    const/4 v3, 0x1

    .line 81
    const/4 v4, 0x0

    .line 82
    .line 83
    if-nez v0, :cond_4

    .line 84
    .line 85
    .line 86
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 87
    move-result-object v0

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 91
    move-result-object v5

    .line 92
    .line 93
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 97
    move-result-object v5

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 101
    move-result-object v0

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 105
    move-result-object v0

    .line 106
    .line 107
    .line 108
    invoke-static {p0}, Lcom/ss/android/tea/common/applog/g;->a(Landroid/content/Context;)Lcom/ss/android/tea/common/applog/g;

    .line 109
    move-result-object v6

    .line 110
    .line 111
    .line 112
    const v7, 0x7f1211a4

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 116
    move-result-object v7

    .line 117
    .line 118
    .line 119
    invoke-virtual {v6, v7}, Lcom/ss/android/tea/common/applog/g;->d(Ljava/lang/String;)Lcom/ss/android/tea/common/applog/g;

    .line 120
    move-result-object v6

    .line 121
    .line 122
    const-string v7, "default"

    .line 123
    .line 124
    .line 125
    invoke-virtual {v6, v7}, Lcom/ss/android/tea/common/applog/g;->e(Ljava/lang/String;)Lcom/ss/android/tea/common/applog/g;

    .line 126
    move-result-object v6

    .line 127
    .line 128
    .line 129
    const v7, 0x7f1211a3

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 133
    move-result-object v7

    .line 134
    .line 135
    .line 136
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 137
    move-result v7

    .line 138
    .line 139
    .line 140
    invoke-virtual {v6, v7}, Lcom/ss/android/tea/common/applog/g;->c(I)Lcom/ss/android/tea/common/applog/g;

    .line 141
    move-result-object v6

    .line 142
    .line 143
    sget-object v7, Lcom/ss/android/tea/common/applog/h;->AMERICA:Lcom/ss/android/tea/common/applog/h;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v6, v7}, Lcom/ss/android/tea/common/applog/g;->g(Lcom/ss/android/tea/common/applog/h;)Lcom/ss/android/tea/common/applog/g;

    .line 147
    move-result-object v6

    .line 148
    .line 149
    new-instance v7, Lcom/ss/android/tea/common/applog/c;

    .line 150
    .line 151
    .line 152
    invoke-direct {v7, v4, v5, v0}, Lcom/ss/android/tea/common/applog/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v6, v7}, Lcom/ss/android/tea/common/applog/g;->f(Lcom/ss/android/tea/common/applog/c;)Lcom/ss/android/tea/common/applog/g;

    .line 156
    move-result-object v0

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0}, Lcom/ss/android/tea/common/applog/g;->b()Lcom/ss/android/tea/common/applog/f;

    .line 160
    move-result-object v0

    .line 161
    .line 162
    .line 163
    invoke-static {v0}, Lcom/ss/android/tea/common/applog/d;->e(Lcom/ss/android/tea/common/applog/f;)V

    .line 164
    .line 165
    sput-boolean v3, Lcom/narvii/util/statistics/TeaManager;->teaInited:Z

    .line 166
    .line 167
    .line 168
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 169
    move-result-object p0

    .line 170
    .line 171
    sget-object v0, Lcom/narvii/util/statistics/TeaManager;->receiver:Landroid/content/BroadcastReceiver;

    .line 172
    .line 173
    new-instance v5, Landroid/content/IntentFilter;

    .line 174
    .line 175
    const-string v6, "com.narvii.action.ACCOUNT_CHANGED"

    .line 176
    .line 177
    .line 178
    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0, v0, v5}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 182
    .line 183
    new-instance v5, Landroid/content/IntentFilter;

    .line 184
    .line 185
    const-string v6, "com.narvii.action.MEMBERSHIP_CHANGED"

    .line 186
    .line 187
    .line 188
    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0, v0, v5}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 192
    .line 193
    sget-object p0, Lcom/narvii/util/statistics/TeaManager;->affiliations:Lcom/narvii/community/AffiliationsService;

    .line 194
    .line 195
    if-eqz p0, :cond_4

    .line 196
    .line 197
    iget-object p0, p0, Lcom/narvii/community/AffiliationsService;->affiliationChangeListeners:Lcom/narvii/util/EventDispatcher;

    .line 198
    .line 199
    sget-object v0, Lcom/narvii/util/statistics/TeaManager;->affiliationsListener:Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0, v0}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 203
    .line 204
    :cond_4
    sget-object p0, Lcom/narvii/util/statistics/TeaManager;->account:Lcom/narvii/account/AccountService;

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 208
    move-result-object p0

    .line 209
    .line 210
    sget-object v0, Lcom/narvii/util/statistics/TeaManager;->teaUserId:Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    invoke-static {p0, v0}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 214
    move-result v0

    .line 215
    .line 216
    if-nez v0, :cond_5

    .line 217
    .line 218
    .line 219
    invoke-static {p0}, Lcom/ss/android/tea/common/applog/d;->k(Ljava/lang/String;)V

    .line 220
    .line 221
    sput-object p0, Lcom/narvii/util/statistics/TeaManager;->teaUserId:Ljava/lang/String;

    .line 222
    .line 223
    sput-boolean v1, Lcom/narvii/util/statistics/TeaManager;->headersReady:Z

    .line 224
    .line 225
    :cond_5
    sget-boolean p0, Lcom/narvii/util/statistics/TeaManager;->headersReady:Z

    .line 226
    .line 227
    if-nez p0, :cond_11

    .line 228
    .line 229
    new-instance p0, Ljava/util/HashMap;

    .line 230
    .line 231
    .line 232
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 233
    .line 234
    const-string v0, "client_type"

    .line 235
    .line 236
    const-string v5, "Android"

    .line 237
    .line 238
    .line 239
    invoke-virtual {p0, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .line 241
    sget-object v0, Lcom/narvii/util/statistics/TeaManager;->account:Lcom/narvii/account/AccountService;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 245
    move-result v0

    .line 246
    .line 247
    const-string v5, "False"

    .line 248
    .line 249
    const-string v6, "True"

    .line 250
    .line 251
    if-eqz v0, :cond_6

    .line 252
    move-object v0, v6

    .line 253
    goto :goto_0

    .line 254
    :cond_6
    move-object v0, v5

    .line 255
    .line 256
    :goto_0
    const-string v7, "login_status"

    .line 257
    .line 258
    .line 259
    invoke-virtual {p0, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    .line 261
    sget v0, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    .line 262
    .line 263
    const/16 v7, 0x64

    .line 264
    .line 265
    if-ne v0, v7, :cond_7

    .line 266
    .line 267
    const-string v0, "installed_master"

    .line 268
    .line 269
    .line 270
    invoke-virtual {p0, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    .line 272
    const-string v0, "latest_app"

    .line 273
    .line 274
    const-string v7, "Master"

    .line 275
    .line 276
    .line 277
    invoke-virtual {p0, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    .line 279
    :cond_7
    sget v0, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    .line 280
    .line 281
    const/16 v7, 0xc8

    .line 282
    .line 283
    if-ne v0, v7, :cond_8

    .line 284
    .line 285
    const-string v0, "installed_acm"

    .line 286
    .line 287
    .line 288
    invoke-virtual {p0, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    .line 290
    :cond_8
    sget-object v0, Lcom/narvii/util/statistics/TeaManager;->affiliations:Lcom/narvii/community/AffiliationsService;

    .line 291
    .line 292
    if-eqz v0, :cond_a

    .line 293
    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    .line 299
    sget-object v7, Lcom/narvii/util/statistics/TeaManager;->affiliations:Lcom/narvii/community/AffiliationsService;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v7}, Lcom/narvii/community/AffiliationsService;->affiliations()Ljava/util/List;

    .line 303
    move-result-object v7

    .line 304
    .line 305
    .line 306
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 307
    move-result-object v7

    .line 308
    .line 309
    .line 310
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 311
    move-result v8

    .line 312
    .line 313
    if-eqz v8, :cond_9

    .line 314
    .line 315
    .line 316
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 317
    move-result-object v8

    .line 318
    .line 319
    check-cast v8, Ljava/lang/Integer;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    const/16 v8, 0x2c

    .line 325
    .line 326
    .line 327
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 328
    goto :goto_1

    .line 329
    .line 330
    .line 331
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    move-result-object v0

    .line 333
    .line 334
    .line 335
    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    .line 337
    :cond_a
    sget-object v0, Lcom/narvii/util/statistics/TeaManager;->account:Lcom/narvii/account/AccountService;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasEmailActivation()Z

    .line 341
    move-result v0

    .line 342
    .line 343
    if-eqz v0, :cond_b

    .line 344
    move-object v0, v6

    .line 345
    goto :goto_2

    .line 346
    :cond_b
    move-object v0, v5

    .line 347
    .line 348
    :goto_2
    const-string v2, "email_activated"

    .line 349
    .line 350
    .line 351
    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    .line 353
    sget-object v0, Lcom/narvii/util/statistics/TeaManager;->membership:Lcom/narvii/wallet/MembershipService;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    .line 357
    move-result v0

    .line 358
    .line 359
    if-eqz v0, :cond_c

    .line 360
    move-object v0, v6

    .line 361
    goto :goto_3

    .line 362
    :cond_c
    move-object v0, v5

    .line 363
    .line 364
    :goto_3
    const-string v2, "amino_plus_membership"

    .line 365
    .line 366
    .line 367
    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    .line 369
    sget-object v0, Lcom/narvii/util/statistics/TeaManager;->membership:Lcom/narvii/wallet/MembershipService;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->hasMemberShipExpired()Z

    .line 373
    move-result v0

    .line 374
    .line 375
    if-eqz v0, :cond_d

    .line 376
    move-object v0, v6

    .line 377
    goto :goto_4

    .line 378
    :cond_d
    move-object v0, v5

    .line 379
    .line 380
    :goto_4
    const-string v2, "amino_plus_expired"

    .line 381
    .line 382
    .line 383
    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    .line 385
    sget-object v0, Lcom/narvii/util/statistics/TeaManager;->membership:Lcom/narvii/wallet/MembershipService;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->isAutoRenew()Z

    .line 389
    move-result v0

    .line 390
    .line 391
    if-eqz v0, :cond_e

    .line 392
    move-object v0, v6

    .line 393
    goto :goto_5

    .line 394
    :cond_e
    move-object v0, v5

    .line 395
    .line 396
    :goto_5
    const-string v2, "amino_plus_autorenew"

    .line 397
    .line 398
    .line 399
    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    .line 401
    sget-object v0, Lcom/narvii/util/statistics/TeaManager;->account:Lcom/narvii/account/AccountService;

    .line 402
    .line 403
    .line 404
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->optinAdsLevel()I

    .line 405
    move-result v0

    .line 406
    .line 407
    if-lez v0, :cond_f

    .line 408
    move-object v5, v6

    .line 409
    .line 410
    :cond_f
    const-string v0, "optin_ads_on"

    .line 411
    .line 412
    .line 413
    invoke-virtual {p0, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    invoke-static {}, La0/b;->q()Z

    .line 417
    move-result v0

    .line 418
    .line 419
    if-eqz v0, :cond_10

    .line 420
    .line 421
    .line 422
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 423
    move-result-object v0

    .line 424
    .line 425
    .line 426
    invoke-static {v0, p0}, Lcom/narvii/util/ABTest2;->logTea(Lcom/narvii/app/NVContext;Ljava/util/Map;)Z

    .line 427
    move-result v1

    .line 428
    .line 429
    .line 430
    :cond_10
    invoke-static {p0}, Lcom/ss/android/tea/common/applog/d;->j(Ljava/util/Map;)V

    .line 431
    .line 432
    sput-boolean v1, Lcom/narvii/util/statistics/TeaManager;->headersReady:Z

    .line 433
    .line 434
    :cond_11
    sget-object p0, Lcom/narvii/util/statistics/TeaManager;->prevCrashLog:Lcom/narvii/util/crashlytics/CrashlyticsUtils$CrashLog;

    .line 435
    .line 436
    if-eqz p0, :cond_12

    .line 437
    .line 438
    new-instance p0, Lorg/json/JSONObject;

    .line 439
    .line 440
    .line 441
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 442
    .line 443
    .line 444
    :try_start_0
    const-string/jumbo v0, "type"

    .line 445
    .line 446
    sget-object v1, Lcom/narvii/util/statistics/TeaManager;->prevCrashLog:Lcom/narvii/util/crashlytics/CrashlyticsUtils$CrashLog;

    .line 447
    .line 448
    iget v1, v1, Lcom/narvii/util/crashlytics/CrashlyticsUtils$CrashLog;->crashType:I

    .line 449
    .line 450
    .line 451
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 452
    .line 453
    const-string v0, "name"

    .line 454
    .line 455
    sget-object v1, Lcom/narvii/util/statistics/TeaManager;->prevCrashLog:Lcom/narvii/util/crashlytics/CrashlyticsUtils$CrashLog;

    .line 456
    .line 457
    iget-object v1, v1, Lcom/narvii/util/crashlytics/CrashlyticsUtils$CrashLog;->errorType:Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    invoke-static {v1}, Lcom/narvii/util/statistics/TeaManager;->teaValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    move-result-object v1

    .line 462
    .line 463
    .line 464
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 465
    .line 466
    const-string v0, "message"

    .line 467
    .line 468
    sget-object v1, Lcom/narvii/util/statistics/TeaManager;->prevCrashLog:Lcom/narvii/util/crashlytics/CrashlyticsUtils$CrashLog;

    .line 469
    .line 470
    iget-object v1, v1, Lcom/narvii/util/crashlytics/CrashlyticsUtils$CrashLog;->errorMessage:Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    invoke-static {v1}, Lcom/narvii/util/statistics/TeaManager;->teaValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    move-result-object v1

    .line 475
    .line 476
    .line 477
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 478
    .line 479
    const-string v0, "stack"

    .line 480
    .line 481
    sget-object v1, Lcom/narvii/util/statistics/TeaManager;->prevCrashLog:Lcom/narvii/util/crashlytics/CrashlyticsUtils$CrashLog;

    .line 482
    .line 483
    iget-object v1, v1, Lcom/narvii/util/crashlytics/CrashlyticsUtils$CrashLog;->errorStack:Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    invoke-static {v1}, Lcom/narvii/util/statistics/TeaManager;->teaValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    move-result-object v1

    .line 488
    .line 489
    .line 490
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 491
    .line 492
    const-string v0, "states"

    .line 493
    .line 494
    sget-object v1, Lcom/narvii/util/statistics/TeaManager;->prevCrashLog:Lcom/narvii/util/crashlytics/CrashlyticsUtils$CrashLog;

    .line 495
    .line 496
    iget-object v1, v1, Lcom/narvii/util/crashlytics/CrashlyticsUtils$CrashLog;->states:Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    invoke-static {v1}, Lcom/narvii/util/statistics/TeaManager;->teaValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    move-result-object v1

    .line 501
    .line 502
    .line 503
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    .line 505
    :catch_0
    const-string v0, "crash"

    .line 506
    .line 507
    .line 508
    invoke-static {v0, p0}, Ls6/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 509
    .line 510
    sput-object v4, Lcom/narvii/util/statistics/TeaManager;->prevCrashLog:Lcom/narvii/util/crashlytics/CrashlyticsUtils$CrashLog;

    .line 511
    :cond_12
    return v3

    .line 512
    :cond_13
    return v1
.end method

.method private static teaName(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    move v4, v3

    .line 13
    .line 14
    :goto_0
    if-ge v2, v1, :cond_6

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 18
    move-result v5

    .line 19
    .line 20
    const/16 v6, 0x30

    .line 21
    .line 22
    if-lt v5, v6, :cond_0

    .line 23
    .line 24
    const/16 v6, 0x39

    .line 25
    .line 26
    if-le v5, v6, :cond_1

    .line 27
    .line 28
    :cond_0
    const/16 v6, 0x7a

    .line 29
    .line 30
    const/16 v7, 0x61

    .line 31
    .line 32
    if-lt v5, v7, :cond_2

    .line 33
    .line 34
    if-gt v5, v6, :cond_2

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    move v3, v5

    .line 39
    goto :goto_1

    .line 40
    .line 41
    :cond_2
    const/16 v8, 0x41

    .line 42
    .line 43
    const/16 v9, 0x5f

    .line 44
    .line 45
    if-lt v5, v8, :cond_4

    .line 46
    .line 47
    const/16 v8, 0x5a

    .line 48
    .line 49
    if-gt v5, v8, :cond_4

    .line 50
    .line 51
    if-lt v4, v7, :cond_3

    .line 52
    .line 53
    if-gt v4, v6, :cond_3

    .line 54
    .line 55
    if-eq v3, v9, :cond_3

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    :cond_3
    add-int/lit8 v3, v5, 0x20

    .line 61
    int-to-char v3, v3

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    goto :goto_1

    .line 66
    .line 67
    :cond_4
    if-eq v3, v9, :cond_5

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    move v3, v9

    .line 72
    .line 73
    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 74
    move v4, v5

    .line 75
    goto :goto_0

    .line 76
    .line 77
    .line 78
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object p0

    .line 80
    return-object p0
.end method

.method private static teaValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    instance-of v0, p0, Ljava/lang/Double;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p0, Ljava/lang/Double;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Double;->floatValue()F

    .line 10
    move-result p0

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    .line 17
    :cond_0
    instance-of v0, p0, Ljava/lang/Boolean;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    check-cast p0, Ljava/lang/Boolean;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 25
    move-result p0

    .line 26
    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    const-string p0, "True"

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_1
    const-string p0, "False"

    .line 33
    :goto_0
    return-object p0

    .line 34
    .line 35
    :cond_2
    const-string v0, ""

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    move-result v0

    .line 40
    .line 41
    const-string v1, "null"

    .line 42
    .line 43
    if-eqz v0, :cond_3

    .line 44
    return-object v1

    .line 45
    .line 46
    :cond_3
    if-nez p0, :cond_4

    .line 47
    return-object v1

    .line 48
    :cond_4
    return-object p0
.end method
