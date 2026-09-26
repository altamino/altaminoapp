.class public Lcom/narvii/account/AccountService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/account/AccountService$FanClubListListener;,
        Lcom/narvii/account/AccountService$ProfileListener;,
        Lcom/narvii/account/AccountService$CommunityReminderChangeInGlobalListener;,
        Lcom/narvii/account/AccountService$LiveEligibleStatus;
    }
.end annotation


# static fields
.field public static final ACTION_ACCOUNT_CHANGED:Ljava/lang/String; = "com.narvii.action.ACCOUNT_CHANGED"

.field public static final ACTION_SID_CHANGED:Ljava/lang/String; = "com.narvii.action.SID_CHANGED"

.field public static final FINISH_LOGIN_PAGE:Ljava/lang/String; = "com.narvii.action.FINISH_LOGIN_PAGE"

.field public static final GENDER_TYPE_FEMALE:I = 0x2

.field public static final GENDER_TYPE_MALE:I = 0x1

.field public static final GENDER_TYPE_OTHER:I = 0xff

.field public static final GENDER_TYPE_UNKNOWN:I = 0x0

.field public static final GLOBAL_USER_PROFILE:I = 0x0

.field public static final KEYCHAIN_CHECKING:I = 0x1

.field public static final KEYCHAIN_FAILED:I = -0x2

.field public static final KEYCHAIN_IDLE:I = 0x0

.field public static final KEYCHAIN_LOGINING:I = 0x2

.field public static final KEYCHAIN_STATUS_CHANGED:Ljava/lang/String; = "com.narvii.action.KEYCHAIN_STATUS_CHANGED"

.field public static final KEYCHAIN_TIMEOUT:I = -0x1

.field public static final PREFS_AGE:Ljava/lang/String; = "age"

.field public static final PREFS_GENDER:Ljava/lang/String; = "gender"

.field public static final PREFS_LIVE_ELIGIBILITY:Ljava/lang/String; = "live_eligibility"

.field public static final PREFS_LIVE_ELIGIBLE_AGE:Ljava/lang/String; = "live_eligible_age"

.field public static final PREFS_LIVE_LAST_TIME_CHECK_OUT:Ljava/lang/String; = "live_last_time_checkout"

.field public static final TAG:Ljava/lang/String; = "AccountService"

.field public static final TYPE_DISABLED:I = 0x0

.field public static final TYPE_INCUBATOR_AUXILIARY:I = 0x3

.field public static final TYPE_INCUBATOR_GLOBAL:I = 0x1

.field public static final TYPE_INCUBATOR_PER_COMMUNITY:I = 0x2

.field public static final TYPE_STANDALONE_COMMUNITY:I = 0x4


# instance fields
.field private communityId:I

.field private final communityReminderDispatcher:Lcom/narvii/util/EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/account/AccountService$CommunityReminderChangeInGlobalListener;",
            ">;"
        }
    .end annotation
.end field

.field private context:Lcom/narvii/app/NVContext;

.field private dir:Ljava/io/File;

.field private final fanClubListListeners:Lcom/narvii/util/EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/account/AccountService$FanClubListListener;",
            ">;"
        }
    .end annotation
.end field

.field private keychainStatus:I

.field private final listeners:Lcom/narvii/util/EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/account/AccountService$ProfileListener;",
            ">;"
        }
    .end annotation
.end field

.field private prefs:Landroid/content/SharedPreferences;

.field private prefsHelper:Lcom/narvii/util/PreferencesHelper;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;II)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/account/AccountService;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/account/AccountService;->communityReminderDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 18
    .line 19
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/account/AccountService;->fanClubListListeners:Lcom/narvii/util/EventDispatcher;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    .line 27
    .line 28
    iput p2, p0, Lcom/narvii/account/AccountService;->type:I

    .line 29
    .line 30
    iput p3, p0, Lcom/narvii/account/AccountService;->communityId:I

    .line 31
    .line 32
    .line 33
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 34
    move-result-object p1

    .line 35
    const/4 p2, 0x0

    .line 36
    .line 37
    const-string p3, "account"

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    iput-object p1, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    .line 44
    .line 45
    new-instance p1, Lcom/narvii/util/PreferencesHelper;

    .line 46
    .line 47
    iget-object p2, p0, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    .line 48
    .line 49
    .line 50
    invoke-direct {p1, p2}, Lcom/narvii/util/PreferencesHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 51
    .line 52
    iput-object p1, p0, Lcom/narvii/account/AccountService;->prefsHelper:Lcom/narvii/util/PreferencesHelper;

    .line 53
    .line 54
    iget-object p1, p0, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    .line 55
    .line 56
    .line 57
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 62
    move-result-object p1

    .line 63
    .line 64
    new-instance p2, Ljava/io/File;

    .line 65
    .line 66
    .line 67
    invoke-direct {p2, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 68
    .line 69
    iput-object p2, p0, Lcom/narvii/account/AccountService;->dir:Ljava/io/File;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Ljava/io/File;->mkdir()Z

    .line 73
    return-void
.end method

.method public static synthetic a(Lcom/narvii/account/AccountService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/account/AccountService;->lambda$logout$2()V

    return-void
.end method

.method public static synthetic b(Lcom/narvii/model/User;Lcom/narvii/account/AccountService$FanClubListListener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/account/AccountService;->lambda$updateProfile$1(Lcom/narvii/model/User;Lcom/narvii/account/AccountService$FanClubListListener;)V

    return-void
.end method

.method public static synthetic c(ILcom/narvii/model/User;Lcom/narvii/account/AccountService$ProfileListener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/account/AccountService;->lambda$updateProfile$0(ILcom/narvii/model/User;Lcom/narvii/account/AccountService$ProfileListener;)V

    return-void
.end method

.method private crossAppReadMasterKeychain()Lcom/narvii/account/AccountKeychain;
    .locals 13

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/account/AccountService;->crossAppsRead()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    return-object v1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 12
    move-result-wide v2

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 22
    move-result-object v4

    .line 23
    .line 24
    const-string v0, "EMAIL"

    .line 25
    .line 26
    const-string v5, "SECRET"

    .line 27
    .line 28
    .line 29
    filled-new-array {v0, v5}, [Ljava/lang/String;

    .line 30
    move-result-object v6

    .line 31
    .line 32
    new-instance v0, Lcom/narvii/util/PackageUtils;

    .line 33
    .line 34
    iget-object v5, p0, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    .line 35
    .line 36
    .line 37
    invoke-interface {v5}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 38
    move-result-object v5

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, v5}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 42
    .line 43
    iget-object v5, p0, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    .line 44
    .line 45
    .line 46
    invoke-interface {v5}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 47
    move-result-object v5

    .line 48
    .line 49
    .line 50
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 51
    move-result-object v5

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/narvii/util/PackageUtils;->getMasterPackageName()Ljava/lang/String;

    .line 55
    move-result-object v10

    .line 56
    .line 57
    .line 58
    invoke-static {v5, v10}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    move-result v5

    .line 60
    .line 61
    const-string v11, "ms"

    .line 62
    .line 63
    if-nez v5, :cond_2

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v10}, Lcom/narvii/util/PackageUtils;->isPackageInstalled(Ljava/lang/String;)Z

    .line 67
    move-result v5

    .line 68
    .line 69
    if-eqz v5, :cond_2

    .line 70
    .line 71
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const/16 v7, 0x2e

    .line 74
    .line 75
    .line 76
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 77
    .line 78
    const-string v7, "content://"

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    new-instance v7, Lcom/narvii/util/PackageUtils$AminoPackage;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/narvii/util/PackageUtils;->getMasterPackageName()Ljava/lang/String;

    .line 87
    move-result-object v8

    .line 88
    const/4 v12, 0x0

    .line 89
    .line 90
    .line 91
    invoke-direct {v7, v12, v12, v8}, Lcom/narvii/util/PackageUtils$AminoPackage;-><init>(IILjava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v7}, Lcom/narvii/util/PackageUtils;->getKeychainAuthorities(Lcom/narvii/util/PackageUtils$AminoPackage;)Ljava/lang/String;

    .line 95
    move-result-object v0

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string v0, "/keychain"

    .line 101
    .line 102
    .line 103
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object v0

    .line 108
    .line 109
    .line 110
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 111
    move-result-object v5

    .line 112
    const/4 v7, 0x0

    .line 113
    const/4 v8, 0x0

    .line 114
    const/4 v9, 0x0

    .line 115
    .line 116
    .line 117
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 118
    move-result-object v0

    .line 119
    .line 120
    if-eqz v0, :cond_2

    .line 121
    .line 122
    .line 123
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 124
    move-result v4

    .line 125
    .line 126
    if-eqz v4, :cond_2

    .line 127
    .line 128
    .line 129
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 130
    move-result-object v4

    .line 131
    const/4 v5, 0x1

    .line 132
    .line 133
    .line 134
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 135
    move-result-object v0

    .line 136
    .line 137
    .line 138
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 139
    move-result v5

    .line 140
    .line 141
    if-eqz v5, :cond_1

    .line 142
    move-object v5, v1

    .line 143
    goto :goto_0

    .line 144
    .line 145
    :cond_1
    new-instance v5, Lcom/narvii/account/AccountKeychain;

    .line 146
    .line 147
    .line 148
    invoke-direct {v5, v1, v4, v0}, Lcom/narvii/account/AccountKeychain;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 152
    move-result-wide v6

    .line 153
    sub-long/2addr v6, v2

    .line 154
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .line 160
    const-string v8, "cross-apps get "

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    const-string v4, " from package "

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    const-string v4, " in "

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    move-result-object v0

    .line 190
    .line 191
    .line 192
    invoke-static {v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    return-object v5

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .line 196
    new-instance v4, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .line 201
    const-string v5, "cross-apps get fail from package "

    .line 202
    .line 203
    .line 204
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    move-result-object v4

    .line 212
    .line 213
    .line 214
    invoke-static {v4, v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 215
    .line 216
    .line 217
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 218
    move-result-wide v4

    .line 219
    sub-long/2addr v4, v2

    .line 220
    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .line 226
    const-string v2, "cross-apps get no account keychain in "

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    move-result-object v0

    .line 240
    .line 241
    .line 242
    invoke-static {v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    .line 243
    return-object v1
.end method

.method private crossAppsRead()Z
    .locals 3

    iget v0, p0, Lcom/narvii/account/AccountService;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private crossAppsReadKeychain()Lcom/narvii/account/AccountKeychain;
    .locals 25

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    .line 5
    invoke-direct/range {p0 .. p0}, Lcom/narvii/account/AccountService;->crossAppsRead()Z

    .line 6
    move-result v0

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    return-object v2

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 14
    move-result-wide v3

    .line 15
    .line 16
    iget-object v0, v1, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 24
    move-result-object v11

    .line 25
    .line 26
    const-string v0, "EMAIL"

    .line 27
    .line 28
    const-string v5, "SECRET"

    .line 29
    .line 30
    .line 31
    filled-new-array {v0, v5}, [Ljava/lang/String;

    .line 32
    move-result-object v12

    .line 33
    .line 34
    new-instance v13, Lcom/narvii/util/PackageUtils;

    .line 35
    .line 36
    iget-object v0, v1, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    .line 37
    .line 38
    .line 39
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    invoke-direct {v13, v0}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 44
    .line 45
    iget-object v0, v1, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    .line 46
    .line 47
    .line 48
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 53
    move-result-object v14

    .line 54
    .line 55
    .line 56
    invoke-virtual {v13}, Lcom/narvii/util/PackageUtils;->listAminoPackages()[Lcom/narvii/util/PackageUtils$AminoPackage;

    .line 57
    move-result-object v15

    .line 58
    array-length v10, v15

    .line 59
    const/4 v9, 0x0

    .line 60
    move-object v0, v2

    .line 61
    .line 62
    move-object/from16 v19, v0

    .line 63
    move v8, v9

    .line 64
    .line 65
    move/from16 v16, v8

    .line 66
    .line 67
    move/from16 v17, v16

    .line 68
    .line 69
    move/from16 v18, v17

    .line 70
    .line 71
    :goto_0
    if-ge v8, v10, :cond_4

    .line 72
    .line 73
    aget-object v6, v15, v8

    .line 74
    .line 75
    iget-object v5, v6, Lcom/narvii/util/PackageUtils$AminoPackage;->packageName:Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    move-result v5

    .line 80
    .line 81
    if-eqz v5, :cond_1

    .line 82
    .line 83
    move/from16 v20, v8

    .line 84
    .line 85
    move/from16 v22, v10

    .line 86
    move-object v8, v2

    .line 87
    move v2, v9

    .line 88
    .line 89
    goto/16 :goto_4

    .line 90
    .line 91
    :cond_1
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const/16 v7, 0x2e

    .line 94
    .line 95
    .line 96
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 97
    .line 98
    const-string v7, "content://"

    .line 99
    .line 100
    .line 101
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v13, v6}, Lcom/narvii/util/PackageUtils;->getKeychainAuthorities(Lcom/narvii/util/PackageUtils$AminoPackage;)Ljava/lang/String;

    .line 105
    move-result-object v7

    .line 106
    .line 107
    .line 108
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    const-string v7, "/keychain"

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object v5

    .line 118
    .line 119
    .line 120
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 121
    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 122
    .line 123
    const/16 v21, 0x0

    .line 124
    .line 125
    const/16 v22, 0x0

    .line 126
    .line 127
    const/16 v23, 0x0

    .line 128
    move-object v5, v11

    .line 129
    .line 130
    move-object/from16 v24, v6

    .line 131
    move-object v6, v7

    .line 132
    const/4 v2, 0x1

    .line 133
    move-object v7, v12

    .line 134
    .line 135
    move/from16 v20, v8

    .line 136
    .line 137
    move-object/from16 v8, v21

    .line 138
    move v2, v9

    .line 139
    .line 140
    move-object/from16 v9, v22

    .line 141
    .line 142
    move/from16 v22, v10

    .line 143
    .line 144
    move-object/from16 v10, v23

    .line 145
    .line 146
    .line 147
    :try_start_1
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 148
    move-result-object v5

    .line 149
    .line 150
    if-eqz v5, :cond_3

    .line 151
    .line 152
    .line 153
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 154
    move-result v6

    .line 155
    .line 156
    if-eqz v6, :cond_3

    .line 157
    .line 158
    add-int/lit8 v17, v17, 0x1

    .line 159
    .line 160
    .line 161
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 162
    move-result-object v6

    .line 163
    const/4 v7, 0x1

    .line 164
    .line 165
    .line 166
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 167
    move-result-object v5

    .line 168
    .line 169
    .line 170
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 171
    move-result v7

    .line 172
    .line 173
    if-eqz v7, :cond_2

    .line 174
    .line 175
    move-object/from16 v5, v24

    .line 176
    const/4 v8, 0x0

    .line 177
    .line 178
    const/16 v19, 0x0

    .line 179
    goto :goto_1

    .line 180
    .line 181
    :cond_2
    new-instance v7, Lcom/narvii/account/AccountKeychain;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 182
    const/4 v8, 0x0

    .line 183
    .line 184
    .line 185
    :try_start_2
    invoke-direct {v7, v8, v6, v5}, Lcom/narvii/account/AccountKeychain;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 186
    .line 187
    move-object/from16 v19, v7

    .line 188
    .line 189
    move-object/from16 v5, v24

    .line 190
    .line 191
    :goto_1
    :try_start_3
    iget-object v5, v5, Lcom/narvii/util/PackageUtils$AminoPackage;->packageName:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 192
    .line 193
    :goto_2
    move-object/from16 v6, v19

    .line 194
    goto :goto_5

    .line 195
    :catch_0
    move-exception v0

    .line 196
    goto :goto_3

    .line 197
    :catch_1
    move-exception v0

    .line 198
    .line 199
    move-object/from16 v5, v24

    .line 200
    goto :goto_3

    .line 201
    :catch_2
    move-exception v0

    .line 202
    .line 203
    move-object/from16 v5, v24

    .line 204
    const/4 v8, 0x0

    .line 205
    goto :goto_3

    .line 206
    :cond_3
    const/4 v8, 0x0

    .line 207
    .line 208
    add-int/lit8 v16, v16, 0x1

    .line 209
    goto :goto_4

    .line 210
    :catch_3
    move-exception v0

    .line 211
    move-object v5, v6

    .line 212
    .line 213
    move/from16 v20, v8

    .line 214
    .line 215
    move/from16 v22, v10

    .line 216
    move-object v8, v2

    .line 217
    move v2, v9

    .line 218
    .line 219
    :goto_3
    add-int/lit8 v18, v18, 0x1

    .line 220
    .line 221
    new-instance v6, Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .line 226
    const-string v7, "cross-apps get fail from package "

    .line 227
    .line 228
    .line 229
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    iget-object v5, v5, Lcom/narvii/util/PackageUtils$AminoPackage;->packageName:Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    move-result-object v5

    .line 239
    .line 240
    .line 241
    invoke-static {v5, v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 242
    .line 243
    :goto_4
    add-int/lit8 v5, v20, 0x1

    .line 244
    move v9, v2

    .line 245
    move-object v2, v8

    .line 246
    .line 247
    move/from16 v10, v22

    .line 248
    move v8, v5

    .line 249
    .line 250
    goto/16 :goto_0

    .line 251
    :cond_4
    move-object v8, v2

    .line 252
    move v2, v9

    .line 253
    move-object v5, v8

    .line 254
    goto :goto_2

    .line 255
    .line 256
    .line 257
    :goto_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 258
    move-result-wide v9

    .line 259
    sub-long/2addr v9, v3

    .line 260
    .line 261
    const-string v3, "ms"

    .line 262
    .line 263
    if-lez v17, :cond_6

    .line 264
    .line 265
    new-instance v4, Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    .line 270
    const-string v7, "cross-apps get "

    .line 271
    .line 272
    .line 273
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    if-nez v6, :cond_5

    .line 276
    move-object v7, v8

    .line 277
    goto :goto_6

    .line 278
    .line 279
    :cond_5
    iget-object v7, v6, Lcom/narvii/account/AccountKeychain;->email:Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    :goto_6
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    const-string v7, " from package "

    .line 285
    .line 286
    .line 287
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    const-string v5, " in "

    .line 293
    .line 294
    .line 295
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 305
    move-result-object v3

    .line 306
    .line 307
    .line 308
    invoke-static {v3}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    .line 309
    goto :goto_7

    .line 310
    .line 311
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 315
    .line 316
    const-string v5, "cross-apps get no account keychain in "

    .line 317
    .line 318
    .line 319
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 329
    move-result-object v3

    .line 330
    .line 331
    .line 332
    invoke-static {v3}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    .line 333
    .line 334
    :goto_7
    if-eqz v0, :cond_7

    .line 335
    .line 336
    new-instance v3, Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 343
    move-result-object v4

    .line 344
    .line 345
    .line 346
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 347
    move-result-object v4

    .line 348
    .line 349
    .line 350
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    const-string v4, " "

    .line 353
    .line 354
    .line 355
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 359
    move-result-object v0

    .line 360
    .line 361
    .line 362
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 366
    move-result-object v0

    .line 367
    goto :goto_8

    .line 368
    :cond_7
    move-object v0, v8

    .line 369
    .line 370
    :goto_8
    iget-object v3, v1, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    .line 371
    .line 372
    const-string v4, "logging"

    .line 373
    .line 374
    .line 375
    invoke-interface {v3, v4}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 376
    move-result-object v3

    .line 377
    .line 378
    check-cast v3, Lcom/narvii/util/logging/LoggingService;

    .line 379
    .line 380
    const/16 v4, 0xa

    .line 381
    .line 382
    new-array v4, v4, [Ljava/lang/Object;

    .line 383
    .line 384
    const-string v5, "method"

    .line 385
    .line 386
    aput-object v5, v4, v2

    .line 387
    .line 388
    const-string v2, "read"

    .line 389
    const/4 v5, 0x1

    .line 390
    .line 391
    aput-object v2, v4, v5

    .line 392
    const/4 v2, 0x2

    .line 393
    .line 394
    const-string/jumbo v5, "success"

    .line 395
    .line 396
    aput-object v5, v4, v2

    .line 397
    const/4 v2, 0x3

    .line 398
    .line 399
    .line 400
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 401
    move-result-object v5

    .line 402
    .line 403
    aput-object v5, v4, v2

    .line 404
    const/4 v2, 0x4

    .line 405
    .line 406
    const-string v5, "fails"

    .line 407
    .line 408
    aput-object v5, v4, v2

    .line 409
    const/4 v2, 0x5

    .line 410
    .line 411
    .line 412
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 413
    move-result-object v5

    .line 414
    .line 415
    aput-object v5, v4, v2

    .line 416
    const/4 v2, 0x6

    .line 417
    .line 418
    const-string v5, "errors"

    .line 419
    .line 420
    aput-object v5, v4, v2

    .line 421
    const/4 v2, 0x7

    .line 422
    .line 423
    .line 424
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 425
    move-result-object v5

    .line 426
    .line 427
    aput-object v5, v4, v2

    .line 428
    .line 429
    const/16 v2, 0x8

    .line 430
    .line 431
    const-string v5, "message"

    .line 432
    .line 433
    aput-object v5, v4, v2

    .line 434
    .line 435
    const/16 v2, 0x9

    .line 436
    .line 437
    aput-object v0, v4, v2

    .line 438
    .line 439
    const-string v0, "AndroidKeychain"

    .line 440
    .line 441
    .line 442
    invoke-interface {v3, v0, v4}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 443
    return-object v6
.end method

.method private crossAppsWrite()Z
    .locals 3

    iget v0, p0, Lcom/narvii/account/AccountService;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private crossAppsWriteKeychain(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/account/AccountService;->crossAppsWrite()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    new-instance v0, Lcom/narvii/account/AccountService$10;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/account/AccountService$10;-><init>(Lcom/narvii/account/AccountService;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 16
    return-void
.end method

.method static bridge synthetic d(Lcom/narvii/account/AccountService;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method private dispatchKeychainStatus(I)V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/account/AccountService;->keychainStatus:I

    .line 3
    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    iput p1, p0, Lcom/narvii/account/AccountService;->keychainStatus:I

    .line 7
    .line 8
    new-instance v0, Landroid/content/Intent;

    .line 9
    .line 10
    const-string v1, "com.narvii.action.KEYCHAIN_STATUS_CHANGED"

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    const-string/jumbo v1, "status"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 19
    .line 20
    iget-object p1, p0, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->d(Landroid/content/Intent;)Z

    .line 32
    :cond_0
    return-void
.end method

.method static bridge synthetic e(Lcom/narvii/account/AccountService;)Landroid/content/SharedPreferences;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/narvii/account/AccountService;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/account/AccountService;->dispatchKeychainStatus(I)V

    return-void
.end method

.method static bridge synthetic g(Lcom/narvii/account/AccountService;Lcom/narvii/model/api/BasicProfileResponse;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/account/AccountService;->saveAgeAndGender(Lcom/narvii/model/api/BasicProfileResponse;)V

    return-void
.end method

.method private getAccountValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getAccountJson()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    filled-new-array {p1}, [Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-static {v0, p1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method private getUserProfileKey()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/narvii/account/AccountService;->communityId:I

    .line 1
    invoke-direct {p0, v0}, Lcom/narvii/account/AccountService;->getUserProfileKey(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUserProfileKey(I)Ljava/lang/String;
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "profile_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private isMasterGlobal()Z
    .locals 2

    .line 1
    .line 2
    sget v0, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    .line 3
    .line 4
    const/16 v1, 0x64

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget v0, p0, Lcom/narvii/account/AccountService;->communityId:I

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method private synthetic lambda$logout$2()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/content/Intent;

    .line 3
    .line 4
    const-string v1, "com.narvii.action.ACCOUNT_CHANGED"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    .line 10
    .line 11
    .line 12
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->d(Landroid/content/Intent;)Z

    .line 21
    return-void
.end method

.method private static synthetic lambda$updateProfile$0(ILcom/narvii/model/User;Lcom/narvii/account/AccountService$ProfileListener;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2, p0, p1}, Lcom/narvii/account/AccountService$ProfileListener;->onProfileChanged(ILcom/narvii/model/User;)V

    .line 4
    return-void
.end method

.method private static synthetic lambda$updateProfile$1(Lcom/narvii/model/User;Lcom/narvii/account/AccountService$FanClubListListener;)V
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/model/User;->fanClubList:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, p0}, Lcom/narvii/account/AccountService$FanClubListListener;->onFanClubListChanged(Ljava/util/List;)V

    .line 6
    return-void
.end method

.method private saveAgeAndGender(Lcom/narvii/model/api/BasicProfileResponse;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/model/api/BasicProfileResponse;->basicProfile:Lcom/narvii/model/api/BasicProfile;

    .line 3
    .line 4
    iget v1, v0, Lcom/narvii/model/api/BasicProfile;->age:I

    .line 5
    .line 6
    if-lez v1, :cond_2

    .line 7
    .line 8
    iget v0, v0, Lcom/narvii/model/api/BasicProfile;->gender:I

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    const/4 v1, 0x2

    .line 13
    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    const-string v0, "nonBinary"

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    const-string v0, "female"

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_1
    const-string v0, "male"

    .line 23
    .line 24
    :goto_0
    iget-object v1, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    .line 25
    .line 26
    .line 27
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    iget-object v2, p1, Lcom/narvii/model/api/BasicProfileResponse;->basicProfile:Lcom/narvii/model/api/BasicProfile;

    .line 31
    .line 32
    iget v2, v2, Lcom/narvii/model/api/BasicProfile;->age:I

    .line 33
    .line 34
    const-string v3, "age"

    .line 35
    .line 36
    .line 37
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 42
    .line 43
    iget-object v1, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    .line 44
    .line 45
    .line 46
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    const-string v2, "gender"

    .line 50
    .line 51
    .line 52
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    .line 56
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 57
    .line 58
    iget-object v0, p0, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    .line 59
    .line 60
    .line 61
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    .line 65
    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    iget-object p1, p1, Lcom/narvii/model/api/BasicProfileResponse;->basicProfile:Lcom/narvii/model/api/BasicProfile;

    .line 69
    .line 70
    iget p1, p1, Lcom/narvii/model/api/BasicProfile;->age:I

    .line 71
    .line 72
    .line 73
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 74
    move-result-object p1

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v3, p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_2
    return-void
.end method


# virtual methods
.method public adWatched(Ljava/lang/String;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    const-string v3, "/external/offer-reward/tapdaq-mobile"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 22
    .line 23
    const-string/jumbo v2, "uid"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 27
    .line 28
    const-string v0, "eventId"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    .line 38
    .line 39
    const-string v1, "api"

    .line 40
    .line 41
    .line 42
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 46
    .line 47
    new-instance v1, Lcom/narvii/account/AccountService$8;

    .line 48
    .line 49
    iget-object v2, p0, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    .line 50
    .line 51
    .line 52
    invoke-direct {v1, p0, v2}, Lcom/narvii/account/AccountService$8;-><init>(Lcom/narvii/account/AccountService;Lcom/narvii/app/NVContext;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 56
    return-void
.end method

.method public addCommunityReminderChangeListener(Lcom/narvii/account/AccountService$CommunityReminderChangeInGlobalListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/AccountService;->communityReminderDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public addFanClubListListener(Lcom/narvii/account/AccountService$FanClubListListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/AccountService;->fanClubListListeners:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public addProfileListener(Lcom/narvii/account/AccountService$ProfileListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/AccountService;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method protected declared-synchronized crossAppsCheck()V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/narvii/account/AccountService;->crossAppsRead()Z

    .line 5
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    .line 11
    .line 12
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getKeychain()Lcom/narvii/account/AccountKeychain;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    iget v2, p0, Lcom/narvii/account/AccountService;->type:I

    .line 20
    const/4 v3, 0x3

    .line 21
    const/4 v4, 0x1

    .line 22
    .line 23
    if-ne v2, v3, :cond_3

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, v4}, Lcom/narvii/account/AccountService;->dispatchKeychainStatus(I)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Lcom/narvii/account/AccountService;->crossAppReadMasterKeychain()Lcom/narvii/account/AccountKeychain;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget-object v3, v2, Lcom/narvii/account/AccountKeychain;->email:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v4, v0, Lcom/narvii/account/AccountKeychain;->email:Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    move-result v3

    .line 43
    .line 44
    if-eqz v3, :cond_1

    .line 45
    .line 46
    iget-object v3, v2, Lcom/narvii/account/AccountKeychain;->secret:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v4, v0, Lcom/narvii/account/AccountKeychain;->secret:Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    move-result v3

    .line 53
    .line 54
    if-nez v3, :cond_5

    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    .line 57
    .line 58
    goto/16 :goto_6

    .line 59
    .line 60
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    .line 61
    .line 62
    .line 63
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v0}, Lcom/narvii/account/AccountKeychain;->writeTo(Landroid/content/Context;)V

    .line 68
    goto :goto_1

    .line 69
    .line 70
    :cond_2
    iget-object v0, p0, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    .line 71
    .line 72
    .line 73
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    .line 77
    invoke-static {v0}, Lcom/narvii/account/AccountKeychain;->remove(Landroid/content/Context;)Z

    .line 78
    :goto_1
    move-object v0, v2

    .line 79
    goto :goto_2

    .line 80
    .line 81
    :cond_3
    if-nez v0, :cond_5

    .line 82
    .line 83
    if-nez v1, :cond_5

    .line 84
    .line 85
    iget-object v2, p0, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    .line 86
    .line 87
    .line 88
    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 89
    move-result-object v2

    .line 90
    .line 91
    .line 92
    invoke-static {v2}, Lcom/narvii/account/AccountKeychain;->inited(Landroid/content/Context;)Z

    .line 93
    move-result v2

    .line 94
    .line 95
    if-nez v2, :cond_5

    .line 96
    .line 97
    .line 98
    invoke-direct {p0, v4}, Lcom/narvii/account/AccountService;->dispatchKeychainStatus(I)V

    .line 99
    .line 100
    .line 101
    invoke-direct {p0}, Lcom/narvii/account/AccountService;->crossAppsReadKeychain()Lcom/narvii/account/AccountKeychain;

    .line 102
    move-result-object v0

    .line 103
    .line 104
    if-eqz v0, :cond_4

    .line 105
    .line 106
    iget-object v2, p0, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    .line 107
    .line 108
    .line 109
    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 110
    move-result-object v2

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v2}, Lcom/narvii/account/AccountKeychain;->writeTo(Landroid/content/Context;)V

    .line 114
    goto :goto_2

    .line 115
    .line 116
    :cond_4
    iget-object v2, p0, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    .line 117
    .line 118
    .line 119
    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 120
    move-result-object v2

    .line 121
    .line 122
    .line 123
    invoke-static {v2}, Lcom/narvii/account/AccountKeychain;->remove(Landroid/content/Context;)Z

    .line 124
    :cond_5
    :goto_2
    const/4 v2, 0x0

    .line 125
    .line 126
    if-nez v0, :cond_6

    .line 127
    .line 128
    if-nez v1, :cond_6

    .line 129
    .line 130
    goto/16 :goto_4

    .line 131
    :cond_6
    const/4 v3, 0x2

    .line 132
    .line 133
    if-nez v0, :cond_7

    .line 134
    .line 135
    if-eqz v1, :cond_7

    .line 136
    .line 137
    const-string v0, "cross-apps logout"

    .line 138
    .line 139
    .line 140
    invoke-static {v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-direct {p0, v3}, Lcom/narvii/account/AccountService;->dispatchKeychainStatus(I)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, v2}, Lcom/narvii/account/AccountService;->logout(Z)V

    .line 147
    .line 148
    goto/16 :goto_4

    .line 149
    .line 150
    :cond_7
    if-eqz v0, :cond_8

    .line 151
    .line 152
    if-nez v1, :cond_8

    .line 153
    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .line 159
    const-string v2, "cross-apps login using "

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    iget-object v2, v0, Lcom/narvii/account/AccountKeychain;->email:Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    move-result-object v1

    .line 172
    .line 173
    .line 174
    invoke-static {v1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    .line 175
    goto :goto_3

    .line 176
    .line 177
    :cond_8
    iget-object v4, v0, Lcom/narvii/account/AccountKeychain;->uid:Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    invoke-static {v1, v4}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 181
    move-result v1

    .line 182
    .line 183
    if-nez v1, :cond_9

    .line 184
    .line 185
    const-string v1, "keychain does not match uid, try to switch user"

    .line 186
    .line 187
    .line 188
    invoke-static {v1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0, v2}, Lcom/narvii/account/AccountService;->logout(Z)V

    .line 192
    .line 193
    iget-object v1, p0, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    .line 194
    .line 195
    .line 196
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 197
    move-result-object v1

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0, v1}, Lcom/narvii/account/AccountKeychain;->writeTo(Landroid/content/Context;)V

    .line 201
    .line 202
    :goto_3
    new-instance v1, Lcom/narvii/util/http/ApiService;

    .line 203
    .line 204
    iget-object v2, p0, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    .line 205
    .line 206
    .line 207
    invoke-direct {v1, v2}, Lcom/narvii/util/http/ApiService;-><init>(Lcom/narvii/app/NVContext;)V

    .line 208
    .line 209
    .line 210
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 211
    move-result-object v2

    .line 212
    .line 213
    .line 214
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 215
    move-result-object v4

    .line 216
    .line 217
    .line 218
    invoke-virtual {v4}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 219
    move-result-object v4

    .line 220
    .line 221
    .line 222
    invoke-virtual {v4}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 223
    move-result-object v4

    .line 224
    .line 225
    const-string v5, "/auth/login"

    .line 226
    .line 227
    .line 228
    invoke-virtual {v4, v5}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 229
    .line 230
    sget-object v4, La0/a;->o:Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getDeviceId()Ljava/lang/String;

    .line 234
    move-result-object v5

    .line 235
    .line 236
    .line 237
    invoke-virtual {v2, v4, v5}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 238
    .line 239
    const-string v4, "email"

    .line 240
    .line 241
    iget-object v5, v0, Lcom/narvii/account/AccountKeychain;->email:Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v2, v4, v5}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 245
    .line 246
    const-string/jumbo v4, "secret"

    .line 247
    .line 248
    iget-object v5, v0, Lcom/narvii/account/AccountKeychain;->secret:Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v2, v4, v5}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 252
    .line 253
    const-string v4, "clientType"

    .line 254
    .line 255
    sget v5, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    .line 256
    .line 257
    .line 258
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 259
    move-result-object v5

    .line 260
    .line 261
    .line 262
    invoke-virtual {v2, v4, v5}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 263
    .line 264
    const-string v4, "action"

    .line 265
    .line 266
    const-string v5, "auto"

    .line 267
    .line 268
    .line 269
    invoke-virtual {v2, v4, v5}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0}, Lcom/narvii/account/AccountKeychain;->clone()Lcom/narvii/account/AccountKeychain;

    .line 273
    move-result-object v0

    .line 274
    .line 275
    .line 276
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 277
    move-result-object v2

    .line 278
    .line 279
    new-instance v4, Lcom/narvii/account/AccountService$12;

    .line 280
    .line 281
    iget-object v5, p0, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    .line 282
    .line 283
    .line 284
    invoke-direct {v4, p0, v5, v0}, Lcom/narvii/account/AccountService$12;-><init>(Lcom/narvii/account/AccountService;Lcom/narvii/app/NVContext;Lcom/narvii/account/AccountKeychain;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v1, v2, v4}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 288
    .line 289
    const-string v0, "cross-apps login start.."

    .line 290
    .line 291
    .line 292
    invoke-static {v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    invoke-direct {p0, v3}, Lcom/narvii/account/AccountService;->dispatchKeychainStatus(I)V

    .line 296
    goto :goto_5

    .line 297
    .line 298
    .line 299
    :cond_9
    :goto_4
    invoke-direct {p0, v2}, Lcom/narvii/account/AccountService;->dispatchKeychainStatus(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 300
    :goto_5
    monitor-exit p0

    .line 301
    return-void

    .line 302
    :goto_6
    monitor-exit p0

    .line 303
    throw v0
.end method

.method public crossAppsCheckInBackground()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/account/AccountService;->crossAppsRead()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget v0, p0, Lcom/narvii/account/AccountService;->type:I

    .line 10
    const/4 v1, 0x3

    .line 11
    .line 12
    if-eq v0, v1, :cond_2

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lcom/narvii/account/AccountKeychain;->inited(Landroid/content/Context;)Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_1
    new-instance v0, Lcom/narvii/account/AccountService$11;

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, p0}, Lcom/narvii/account/AccountService$11;-><init>(Lcom/narvii/account/AccountService;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 34
    goto :goto_1

    .line 35
    .line 36
    .line 37
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->crossAppsCheck()V

    .line 38
    :goto_1
    return-void
.end method

.method public deleteFanClub(ILcom/narvii/influencer/FanClub;)V
    .locals 6

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    goto :goto_0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    iget-object v0, v1, Lcom/narvii/model/User;->fanClubList:Ljava/util/List;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object p2, p2, Lcom/narvii/influencer/FanClub;->targetUid:Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    invoke-static {v0, p2}, Lcom/narvii/util/Utils;->removeId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 21
    move-result p2

    .line 22
    .line 23
    if-lez p2, :cond_1

    .line 24
    .line 25
    iget-object p2, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    .line 26
    .line 27
    const-string v0, "profile_t"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1, v0}, Lcom/narvii/account/AccountService;->getPrefsKey(ILjava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    const-wide/16 v2, 0x0

    .line 34
    .line 35
    .line 36
    invoke-interface {p2, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 37
    move-result-wide v2

    .line 38
    const/4 v5, 0x0

    .line 39
    move-object v0, p0

    .line 40
    move v4, p1

    .line 41
    .line 42
    .line 43
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;JIZ)V

    .line 44
    :cond_1
    :goto_0
    return-void
.end method

.method public getAccountJson()Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    .line 10
    .line 11
    const-string v2, "account"

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    sget-object v2, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readTree(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Lcom/fasterxml/jackson/databind/node/ObjectNode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    return-object v0

    .line 25
    .line 26
    :catch_0
    const-string/jumbo v0, "unable to read account as json"

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 30
    :cond_0
    return-object v1
.end method

.method public getAminoId()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    const-string v0, "aminoId"

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/narvii/account/AccountService;->getAccountValue(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getCheckInHistory()Lcom/narvii/model/CheckInHistory;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    .line 10
    .line 11
    const-string v2, "checkInHistory"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v2}, Lcom/narvii/account/AccountService;->getPrefsKey(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    const-class v2, Lcom/narvii/model/CheckInHistory;

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    check-cast v0, Lcom/narvii/model/CheckInHistory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    return-object v0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .line 31
    const-string v2, "json"

    .line 32
    .line 33
    .line 34
    invoke-static {v2, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    :cond_0
    return-object v1
.end method

.method public getCommunityUserProfile()Lcom/narvii/model/User;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    .line 10
    .line 11
    iget v2, p0, Lcom/narvii/account/AccountService;->communityId:I

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v2}, Lcom/narvii/account/AccountService;->getUserProfileKey(I)Ljava/lang/String;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    const-class v1, Lcom/narvii/model/User;

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    check-cast v0, Lcom/narvii/model/User;

    .line 28
    return-object v0

    .line 29
    :cond_0
    return-object v1
.end method

.method public getConsecutiveCheckInDays()I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    .line 10
    .line 11
    const-string v2, "checkInDays"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v2}, Lcom/narvii/account/AccountService;->getPrefsKey(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 19
    move-result v0

    .line 20
    return v0

    .line 21
    :cond_0
    return v1
.end method

.method public getDevOptions()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    .line 10
    .line 11
    const-string v2, "dev-option"

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    return-object v0

    .line 17
    :cond_0
    return-object v1
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, La0/b;->k()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getDir()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/narvii/account/AccountService;->dir:Ljava/io/File;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    const-string v0, "email"

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/narvii/account/AccountService;->getAccountValue(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getFanClub(ILjava/lang/String;)Lcom/narvii/influencer/FanClub;
    .locals 1

    const/4 v0, 0x0

    if-lez p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/account/AccountService;->getUserProfile(I)Lcom/narvii/model/User;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p1, Lcom/narvii/model/User;->fanClubList:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 7
    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->searchForId(Ljava/util/Collection;Ljava/lang/String;)Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/influencer/FanClub;

    return-object p1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getFanClub(Ljava/lang/String;)Lcom/narvii/influencer/FanClub;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/narvii/account/AccountService;->isMasterGlobal()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, v0, Lcom/narvii/model/User;->fanClubList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 4
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->searchForId(Ljava/util/Collection;Ljava/lang/String;)Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/influencer/FanClub;

    return-object p1

    :cond_1
    return-object v1
.end method

.method public getGlobalUserProfile()Lcom/narvii/model/User;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/narvii/account/AccountService;->getUserProfile(I)Lcom/narvii/model/User;

    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method public getKeychain()Lcom/narvii/account/AccountKeychain;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/narvii/account/AccountKeychain;->readFrom(Landroid/content/Context;)Lcom/narvii/account/AccountKeychain;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getKeychainStatus()I
    .locals 1

    iget v0, p0, Lcom/narvii/account/AccountService;->keychainStatus:I

    return v0
.end method

.method public getNoticeCount()I
    .locals 1

    iget v0, p0, Lcom/narvii/account/AccountService;->communityId:I

    .line 1
    invoke-virtual {p0, v0}, Lcom/narvii/account/AccountService;->getNoticeCount(I)I

    move-result v0

    return v0
.end method

.method public getNoticeCount(I)I
    .locals 3

    .line 2
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "noticeCount"

    .line 3
    invoke-virtual {p0, p1, v2}, Lcom/narvii/account/AccountService;->getPrefsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method public getNotificationCount()I
    .locals 1

    iget v0, p0, Lcom/narvii/account/AccountService;->communityId:I

    .line 1
    invoke-virtual {p0, v0}, Lcom/narvii/account/AccountService;->getNotificationCount(I)I

    move-result v0

    return v0
.end method

.method public getNotificationCount(I)I
    .locals 3

    .line 2
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "notificationCount"

    .line 3
    invoke-virtual {p0, p1, v2}, Lcom/narvii/account/AccountService;->getPrefsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method public getNotificationCountTimestamp()J
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    .line 11
    .line 12
    const-string v3, "notificationCount_t"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v3}, Lcom/narvii/account/AccountService;->getPrefsKey(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v3

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 20
    move-result-wide v0

    .line 21
    return-wide v0

    .line 22
    :cond_0
    return-wide v1
.end method

.method public getOnlineStatus()I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    const-string v1, "onlineStatus"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v1}, Lcom/narvii/account/AccountService;->getPrefsKey(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    const-string v0, "phoneNumber"

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/narvii/account/AccountService;->getAccountValue(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getPrefs()Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getPrefsKey(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/narvii/account/AccountService;->type:I

    const/4 v1, 0x2

    const-string v2, "_"

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    if-nez p1, :cond_1

    return-object p2

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object p2
.end method

.method public getPrefsKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/narvii/account/AccountService;->communityId:I

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/narvii/account/AccountService;->getPrefsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPrivilegeOfMaxVideoDuration()I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getAccountJson()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "extensions"

    .line 7
    .line 8
    const-string v2, "privilegeOfMaxVideoDuration"

    .line 9
    .line 10
    .line 11
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    const/16 v2, 0xf

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v2, v1}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;I[Ljava/lang/String;)I

    .line 18
    move-result v0

    .line 19
    .line 20
    mul-int/lit16 v0, v0, 0x3e8

    .line 21
    return v0
.end method

.method public getProfileDispatcher()Lcom/narvii/util/EventDispatcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/account/AccountService$ProfileListener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/account/AccountService;->listeners:Lcom/narvii/util/EventDispatcher;

    return-object v0
.end method

.method public getSecurityLevel()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getAccountJson()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string/jumbo v1, "securityLevel"

    .line 7
    .line 8
    .line 9
    filled-new-array {v1}, [Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    const-string/jumbo v1, "sid"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public getUserAccount()Lcom/narvii/model/User;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    .line 10
    .line 11
    const-string v2, "account"

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    const-class v1, Lcom/narvii/model/User;

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Lcom/narvii/model/User;

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    new-instance v0, Lcom/narvii/model/User;

    .line 28
    .line 29
    .line 30
    invoke-direct {v0}, Lcom/narvii/model/User;-><init>()V

    .line 31
    :cond_0
    return-object v0

    .line 32
    :cond_1
    return-object v1
.end method

.method public getUserId()Ljava/lang/String;
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    .line 10
    .line 11
    const-string/jumbo v2, "uid"

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iget-object v3, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    .line 20
    .line 21
    const-string v4, "profile"

    .line 22
    .line 23
    .line 24
    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    const-class v3, Lcom/narvii/model/User;

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v3}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    check-cast v1, Lcom/narvii/model/User;

    .line 34
    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    iget-object v0, v1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    .line 40
    .line 41
    .line 42
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    .line 46
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    .line 50
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 51
    :cond_0
    return-object v0

    .line 52
    :cond_1
    return-object v1
.end method

.method public getUserProfile()Lcom/narvii/model/User;
    .locals 1

    iget v0, p0, Lcom/narvii/account/AccountService;->communityId:I

    .line 1
    invoke-virtual {p0, v0}, Lcom/narvii/account/AccountService;->getUserProfile(I)Lcom/narvii/model/User;

    move-result-object v0

    return-object v0
.end method

.method public getUserProfile(I)Lcom/narvii/model/User;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/account/AccountService;->getUserProfileKey(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Lcom/narvii/account/AccountService;->getUserProfileKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    const-string v0, "account"

    .line 5
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    const-class v0, Lcom/narvii/model/User;

    .line 6
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/User;

    if-nez p1, :cond_2

    .line 7
    new-instance p1, Lcom/narvii/model/User;

    invoke-direct {p1}, Lcom/narvii/model/User;-><init>()V

    :cond_2
    return-object p1

    :cond_3
    return-object v1
.end method

.method public getUserProfileTimestamp()J
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    .line 11
    .line 12
    const-string v3, "profile_t"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v3}, Lcom/narvii/account/AccountService;->getPrefsKey(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v3

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 20
    move-result-wide v0

    .line 21
    return-wide v0

    .line 22
    :cond_0
    return-wide v1
.end method

.method public hasAccount()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    const-string/jumbo v1, "sid"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return v0
.end method

.method public hasActivation()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getAccountJson()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getAccountJson()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    const-string v1, "activation"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getAccountJson()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    filled-new-array {v1}, [Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    .line 30
    move-result v0

    .line 31
    .line 32
    if-lez v0, :cond_0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 37
    :goto_1
    return v0
.end method

.method public hasBirthday(Lcom/narvii/util/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    const-string v1, "age"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 16
    goto :goto_0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    const-string v1, "/persona/profile/basic"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    iget-object v1, p0, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    .line 33
    .line 34
    const-string v2, "api"

    .line 35
    .line 36
    .line 37
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 41
    .line 42
    new-instance v2, Lcom/narvii/account/AccountService$13;

    .line 43
    .line 44
    const-class v3, Lcom/narvii/model/api/BasicProfileResponse;

    .line 45
    .line 46
    .line 47
    invoke-direct {v2, p0, v3, p1}, Lcom/narvii/account/AccountService$13;-><init>(Lcom/narvii/account/AccountService;Ljava/lang/Class;Lcom/narvii/util/Callback;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 51
    :goto_0
    return-void
.end method

.method public hasCheckInToday()Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    .line 10
    .line 11
    const-string v2, "checkInToday"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v2}, Lcom/narvii/account/AccountService;->getPrefsKey(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 19
    move-result v0

    .line 20
    return v0

    .line 21
    :cond_0
    return v1
.end method

.method public hasEmailActivation()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getAccountJson()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "emailActivation"

    .line 7
    .line 8
    .line 9
    filled-new-array {v1}, [Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    .line 14
    move-result v0

    .line 15
    .line 16
    if-lez v0, :cond_0

    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method public hasPhoneActivation()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getAccountJson()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "phoneNumberActivation"

    .line 7
    .line 8
    .line 9
    filled-new-array {v1}, [Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    .line 14
    move-result v0

    .line 15
    .line 16
    if-lez v0, :cond_0

    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method public initAgeAndGender()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    .line 9
    .line 10
    const-string v1, "age"

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    .line 19
    .line 20
    const-string v1, "gender"

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    const-string v1, "/persona/profile/basic"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    iget-object v1, p0, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    .line 43
    .line 44
    const-string v2, "api"

    .line 45
    .line 46
    .line 47
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 51
    .line 52
    new-instance v2, Lcom/narvii/account/AccountService$14;

    .line 53
    .line 54
    const-class v3, Lcom/narvii/model/api/BasicProfileResponse;

    .line 55
    .line 56
    .line 57
    invoke-direct {v2, p0, v3}, Lcom/narvii/account/AccountService$14;-><init>(Lcom/narvii/account/AccountService;Ljava/lang/Class;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 61
    :cond_1
    return-void
.end method

.method public isAminoIdEditable()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getAccountJson()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "aminoIdEditable"

    .line 7
    .line 8
    .line 9
    filled-new-array {v1}, [Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeBoolean(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Z

    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public isFacebookConnected()Z
    .locals 1

    .line 1
    .line 2
    const-string v0, "facebookID"

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/narvii/account/AccountService;->getAccountValue(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    xor-int/lit8 v0, v0, 0x1

    .line 13
    return v0
.end method

.method public isGoogleConnected()Z
    .locals 1

    .line 1
    .line 2
    const-string v0, "googleID"

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/narvii/account/AccountService;->getAccountValue(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    xor-int/lit8 v0, v0, 0x1

    .line 13
    return v0
.end method

.method public isUserProfileReady()Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/narvii/account/AccountService;->getUserProfileKey()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    move-result v0

    .line 22
    .line 23
    xor-int/lit8 v0, v0, 0x1

    .line 24
    return v0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    return v0
.end method

.method public logout(Z)V
    .locals 2

    .line 1
    .line 2
    const-string v0, "logout..."

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x0

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    .line 12
    .line 13
    .line 14
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lcom/narvii/account/AccountKeychain;->readFrom(Landroid/content/Context;)Lcom/narvii/account/AccountKeychain;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    move v0, v1

    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    .line 25
    .line 26
    .line 27
    invoke-static {p1, v1}, Lcom/narvii/post/DraftManager;->archiveDrafts(Lcom/narvii/app/NVContext;Z)V

    .line 28
    .line 29
    iget-object p1, p0, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    .line 30
    .line 31
    .line 32
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Lcom/narvii/post/DraftManager;->removeOldDrafts(Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getDir()Ljava/io/File;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Lcom/narvii/util/Utils;->deleteDir(Ljava/io/File;)Z

    .line 44
    .line 45
    iget-object p1, p0, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    .line 46
    .line 47
    .line 48
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    .line 52
    invoke-static {p1}, Lcom/narvii/account/AccountKeychain;->remove(Landroid/content/Context;)Z

    .line 53
    .line 54
    iget-object p1, p0, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    .line 55
    .line 56
    const-string/jumbo v1, "stats"

    .line 57
    .line 58
    .line 59
    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    check-cast p1, Lcom/narvii/util/stats/StatsService;

    .line 63
    .line 64
    if-eqz p1, :cond_1

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/narvii/util/stats/StatsService;->clearAll()V

    .line 68
    .line 69
    :cond_1
    iget-object p1, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    .line 70
    .line 71
    .line 72
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 73
    move-result-object p1

    .line 74
    .line 75
    .line 76
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 77
    move-result-object p1

    .line 78
    .line 79
    .line 80
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 81
    .line 82
    new-instance p1, Lcom/narvii/account/f;

    .line 83
    .line 84
    .line 85
    invoke-direct {p1, p0}, Lcom/narvii/account/f;-><init>(Lcom/narvii/account/AccountService;)V

    .line 86
    .line 87
    .line 88
    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 89
    .line 90
    if-eqz v0, :cond_2

    .line 91
    const/4 p1, 0x0

    .line 92
    .line 93
    .line 94
    invoke-direct {p0, p1, p1}, Lcom/narvii/account/AccountService;->crossAppsWriteKeychain(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_2
    return-void
.end method

.method public optinAdsFlags()I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getAccountJson()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "extensions"

    .line 7
    .line 8
    const-string v2, "adsFlags"

    .line 9
    .line 10
    .line 11
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    const/4 v2, -0x1

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v2, v1}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;I[Ljava/lang/String;)I

    .line 17
    move-result v0

    .line 18
    .line 19
    if-ltz v0, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/narvii/wallet/optinads/OptinAds;->forceAds()Z

    .line 23
    move-result v1

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return v0

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->optinAdsLevel()I

    .line 31
    move-result v0

    .line 32
    .line 33
    if-nez v0, :cond_2

    .line 34
    const/4 v0, 0x0

    .line 35
    goto :goto_1

    .line 36
    .line 37
    :cond_2
    const/16 v0, 0x1b

    .line 38
    :goto_1
    return v0
.end method

.method public optinAdsLevel()I
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "account"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x2

    .line 16
    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lcom/narvii/wallet/optinads/OptinAds;->forceAds()Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    goto :goto_1

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getAccountJson()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    const-string v2, "adsLevel"

    .line 31
    .line 32
    const-string v3, "extensions"

    .line 33
    .line 34
    .line 35
    filled-new-array {v3, v2}, [Ljava/lang/String;

    .line 36
    move-result-object v2

    .line 37
    const/4 v4, -0x1

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v4, v2}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;I[Ljava/lang/String;)I

    .line 41
    move-result v0

    .line 42
    .line 43
    if-gez v0, :cond_2

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getAccountJson()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    const-string v2, "adsEnabled"

    .line 50
    .line 51
    .line 52
    filled-new-array {v3, v2}, [Ljava/lang/String;

    .line 53
    move-result-object v2

    .line 54
    .line 55
    .line 56
    invoke-static {v0, v2}, Lcom/narvii/util/JacksonUtils;->nodeBoolean(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Z

    .line 57
    move-result v0

    .line 58
    .line 59
    if-eqz v0, :cond_1

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    const/4 v1, 0x0

    .line 62
    :goto_0
    return v1

    .line 63
    :cond_2
    return v0

    .line 64
    :cond_3
    :goto_1
    return v1
.end method

.method public relogin(Lcom/narvii/util/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/model/User;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getKeychain()Lcom/narvii/account/AccountKeychain;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    const-string v3, "/auth/login"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 35
    .line 36
    sget-object v2, La0/a;->o:Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getDeviceId()Ljava/lang/String;

    .line 40
    move-result-object v3

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 44
    .line 45
    const-string v2, "email"

    .line 46
    .line 47
    iget-object v3, v1, Lcom/narvii/account/AccountKeychain;->email:Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 51
    .line 52
    const-string/jumbo v2, "secret"

    .line 53
    .line 54
    iget-object v3, v1, Lcom/narvii/account/AccountKeychain;->secret:Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 58
    .line 59
    sget v2, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    .line 60
    .line 61
    .line 62
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    move-result-object v2

    .line 64
    .line 65
    const-string v3, "clientType"

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 69
    .line 70
    sget-object v2, Lcom/narvii/util/http/ApiService;->DISABLE_RELOGIN_TAG:Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 77
    move-result-object v0

    .line 78
    .line 79
    new-instance v2, Lcom/narvii/account/AccountService$9;

    .line 80
    .line 81
    iget-object v3, p0, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    .line 82
    .line 83
    .line 84
    invoke-direct {v2, p0, v3, v1, p1}, Lcom/narvii/account/AccountService$9;-><init>(Lcom/narvii/account/AccountService;Lcom/narvii/app/NVContext;Lcom/narvii/account/AccountKeychain;Lcom/narvii/util/Callback;)V

    .line 85
    .line 86
    iget-object p1, p0, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    .line 87
    .line 88
    const-string v1, "api"

    .line 89
    .line 90
    .line 91
    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 92
    move-result-object p1

    .line 93
    .line 94
    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 98
    return-void

    .line 99
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 100
    .line 101
    .line 102
    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 103
    return-void
.end method

.method public removeCommunityReminderChangeListener(Lcom/narvii/account/AccountService$CommunityReminderChangeInGlobalListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/AccountService;->communityReminderDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public removeFanClubListListener(Lcom/narvii/account/AccountService$FanClubListListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/AccountService;->fanClubListListeners:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public removeProfileListener(Lcom/narvii/account/AccountService$ProfileListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/AccountService;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public saveDevOptions(Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    const/4 p1, 0x0

    .line 14
    .line 15
    :cond_0
    const-string v1, "dev-option"

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 23
    return-void
.end method

.method public setKeychain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/account/AccountKeychain;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1, p2, p3}, Lcom/narvii/account/AccountKeychain;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getKeychain()Lcom/narvii/account/AccountKeychain;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/narvii/account/AccountKeychain;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result v1

    .line 16
    .line 17
    if-nez v1, :cond_2

    .line 18
    .line 19
    :cond_0
    iget-object v1, p0, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    .line 20
    .line 21
    .line 22
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/narvii/account/AccountKeychain;->writeTo(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Lcom/narvii/account/AccountService;->crossAppsWrite()Z

    .line 30
    move-result v0

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    iget-object v0, p1, Lcom/narvii/account/AccountKeychain;->email:Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    invoke-static {p2, v0}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    .line 40
    move-result v0

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    iget-object p1, p1, Lcom/narvii/account/AccountKeychain;->secret:Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    invoke-static {p3, p1}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    .line 48
    move-result p1

    .line 49
    .line 50
    if-nez p1, :cond_2

    .line 51
    .line 52
    .line 53
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/narvii/account/AccountService;->crossAppsWriteKeychain(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_2
    return-void
.end method

.method public updateAccountJsonSilence(Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "account"

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 16
    return-void
.end method

.method public updateAccountSilently(Lcom/narvii/model/User;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "account"

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 20
    return-void
.end method

.method public updateAminoId(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/narvii/account/AccountService;->getUserProfile(I)Lcom/narvii/model/User;

    .line 5
    move-result-object v1

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    check-cast v1, Lcom/narvii/model/User;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getAminoId()Ljava/lang/String;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    .line 18
    invoke-static {v2, p1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    move-result v2

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->isAminoIdEditable()Z

    .line 25
    move-result v2

    .line 26
    .line 27
    if-eq v2, p3, :cond_2

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getAccountJson()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    if-nez v2, :cond_1

    .line 34
    return-void

    .line 35
    .line 36
    :cond_1
    const-string v3, "aminoId"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v3, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 40
    .line 41
    const-string v3, "aminoIdEditable"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v3, p3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->toString()Ljava/lang/String;

    .line 48
    move-result-object p3

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p3}, Lcom/narvii/account/AccountService;->updateAccountJsonSilence(Ljava/lang/String;)V

    .line 52
    .line 53
    :cond_2
    iget-object p3, v1, Lcom/narvii/model/User;->aminoId:Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    invoke-static {p3, p1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    move-result p3

    .line 58
    .line 59
    if-nez p3, :cond_3

    .line 60
    .line 61
    iput-object p1, v1, Lcom/narvii/model/User;->aminoId:Ljava/lang/String;

    .line 62
    const/4 p1, 0x1

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v1, p2, v0, p1}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;Ljava/lang/String;IZ)V

    .line 66
    :cond_3
    return-void
.end method

.method public updateCheckInHistoryInfo(Lcom/narvii/model/CheckInHistory;JZ)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "checkInHistory_t"

    .line 3
    invoke-virtual {p0, v1}, Lcom/narvii/account/AccountService;->getPrefsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {p2, p3, v2, v3}, Lcom/narvii/util/Utils;->shouldUpdateTimestamp(JJ)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5
    invoke-virtual {p0, v1}, Lcom/narvii/account/AccountService;->getPrefsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 6
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "checkInHistory"

    .line 7
    invoke-virtual {p0, v1}, Lcom/narvii/account/AccountService;->getPrefsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p3, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 8
    invoke-virtual {p0, v1}, Lcom/narvii/account/AccountService;->getPrefsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 p2, 0x1

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    .line 9
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz p2, :cond_4

    if-eqz p4, :cond_4

    .line 10
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getProfileDispatcher()Lcom/narvii/util/EventDispatcher;

    move-result-object p2

    new-instance p3, Lcom/narvii/account/AccountService$6;

    invoke-direct {p3, p0, p1}, Lcom/narvii/account/AccountService$6;-><init>(Lcom/narvii/account/AccountService;Lcom/narvii/model/CheckInHistory;)V

    invoke-virtual {p2, p3}, Lcom/narvii/util/EventDispatcher;->safeDispatch(Lcom/narvii/util/Callback;)V

    :cond_4
    return-void
.end method

.method public updateCheckInHistoryInfo(Lcom/narvii/model/CheckInHistory;Ljava/lang/String;Z)V
    .locals 2

    .line 1
    invoke-static {p2}, Lcom/narvii/util/DateTimeFormatter;->parseISO8601(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/narvii/account/AccountService;->updateCheckInHistoryInfo(Lcom/narvii/model/CheckInHistory;JZ)V

    return-void
.end method

.method public updateCheckInInfo(ZIJZ)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "checkIn_t"

    .line 2
    invoke-virtual {p0, v1}, Lcom/narvii/account/AccountService;->getPrefsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {p3, p4, v2, v3}, Lcom/narvii/util/Utils;->shouldUpdateTimestamp(JJ)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4
    invoke-virtual {p0, v1}, Lcom/narvii/account/AccountService;->getPrefsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget-object p3, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    const-string p4, "checkInToday"

    .line 5
    invoke-virtual {p0, p4}, Lcom/narvii/account/AccountService;->getPrefsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p3, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    const/4 v1, 0x1

    if-eq p1, p3, :cond_2

    .line 6
    invoke-virtual {p0, p4}, Lcom/narvii/account/AccountService;->getPrefsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move p3, v1

    goto :goto_0

    :cond_2
    move p3, v2

    :goto_0
    iget-object p4, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "checkInDays"

    .line 7
    invoke-virtual {p0, v3}, Lcom/narvii/account/AccountService;->getPrefsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p4, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p4

    if-eq p2, p4, :cond_3

    .line 8
    invoke-virtual {p0, v3}, Lcom/narvii/account/AccountService;->getPrefsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p3, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_3
    move v1, p3

    .line 9
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz v1, :cond_4

    if-eqz p5, :cond_4

    .line 10
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getProfileDispatcher()Lcom/narvii/util/EventDispatcher;

    move-result-object p3

    new-instance p4, Lcom/narvii/account/AccountService$5;

    invoke-direct {p4, p0, p1, p2}, Lcom/narvii/account/AccountService$5;-><init>(Lcom/narvii/account/AccountService;ZI)V

    invoke-virtual {p3, p4}, Lcom/narvii/util/EventDispatcher;->safeDispatch(Lcom/narvii/util/Callback;)V

    :cond_4
    return-void
.end method

.method public updateCheckInInfo(ZILjava/lang/String;Z)V
    .locals 6

    .line 11
    invoke-static {p3}, Lcom/narvii/util/DateTimeFormatter;->parseISO8601(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/narvii/account/AccountService;->updateCheckInInfo(ZIJZ)V

    return-void
.end method

.method public updateFanClub(ILcom/narvii/influencer/FanClub;)V
    .locals 6

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 7
    move-result-object v1

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    iget-object v0, v1, Lcom/narvii/model/User;->fanClubList:Ljava/util/List;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/narvii/influencer/FanClub;->id()Ljava/lang/String;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 21
    move-result v0

    .line 22
    .line 23
    if-ltz v0, :cond_1

    .line 24
    .line 25
    iget-object v2, v1, Lcom/narvii/model/User;->fanClubList:Ljava/util/List;

    .line 26
    .line 27
    .line 28
    invoke-interface {v2, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    iget-object p2, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    .line 31
    .line 32
    const-string v0, "profile_t"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1, v0}, Lcom/narvii/account/AccountService;->getPrefsKey(ILjava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    const-wide/16 v2, 0x0

    .line 39
    .line 40
    .line 41
    invoke-interface {p2, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 42
    move-result-wide v2

    .line 43
    const/4 v5, 0x0

    .line 44
    move-object v0, p0

    .line 45
    move v4, p1

    .line 46
    .line 47
    .line 48
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;JIZ)V

    .line 49
    :cond_1
    return-void
.end method

.method public updateFanClubList(ILjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/narvii/influencer/FanClub;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 7
    move-result-object v1

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    if-nez p2, :cond_1

    .line 12
    .line 13
    new-instance p2, Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    iput-object p2, v1, Lcom/narvii/model/User;->fanClubList:Ljava/util/List;

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_1
    iput-object p2, v1, Lcom/narvii/model/User;->fanClubList:Ljava/util/List;

    .line 22
    .line 23
    :goto_0
    iget-object p2, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    .line 24
    .line 25
    const-string v0, "profile_t"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1, v0}, Lcom/narvii/account/AccountService;->getPrefsKey(ILjava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    const-wide/16 v2, 0x0

    .line 32
    .line 33
    .line 34
    invoke-interface {p2, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 35
    move-result-wide v2

    .line 36
    const/4 v5, 0x0

    .line 37
    move-object v0, p0

    .line 38
    move v4, p1

    .line 39
    .line 40
    .line 41
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;JIZ)V

    .line 42
    :cond_2
    return-void
.end method

.method public updateLiveLastTimeCheckout()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    new-instance v1, Ljava/util/Date;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    .line 15
    move-result-wide v1

    .line 16
    .line 17
    const-string v3, "live_last_time_checkout"

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 25
    return-void
.end method

.method public updateNoticeCount(IILjava/lang/String;Z)V
    .locals 7

    .line 2
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {p3}, Lcom/narvii/util/DateTimeFormatter;->parseISO8601(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "noticeCount_t"

    .line 4
    invoke-virtual {p0, p1, v3}, Lcom/narvii/account/AccountService;->getPrefsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-interface {v2, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 5
    invoke-static {v0, v1, v4, v5}, Lcom/narvii/util/Utils;->shouldUpdateTimestamp(JJ)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 6
    :cond_1
    invoke-static {p3}, Lcom/narvii/util/DateTimeFormatter;->parseISO8601(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object p3, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    .line 7
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    .line 8
    invoke-virtual {p0, p1, v3}, Lcom/narvii/account/AccountService;->getPrefsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "noticeCount"

    .line 9
    invoke-virtual {p0, p1, v1}, Lcom/narvii/account/AccountService;->getPrefsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq p2, v0, :cond_2

    .line 10
    invoke-virtual {p0, p1, v1}, Lcom/narvii/account/AccountService;->getPrefsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 11
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz p4, :cond_3

    .line 12
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object p3

    const-string p4, "account"

    invoke-virtual {p3, p1, p4}, Lcom/narvii/app/NVApplication;->getService(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/account/AccountService;

    if-eqz p3, :cond_3

    .line 13
    invoke-virtual {p3}, Lcom/narvii/account/AccountService;->getProfileDispatcher()Lcom/narvii/util/EventDispatcher;

    move-result-object p3

    new-instance p4, Lcom/narvii/account/AccountService$3;

    invoke-direct {p4, p0, p2}, Lcom/narvii/account/AccountService$3;-><init>(Lcom/narvii/account/AccountService;I)V

    invoke-virtual {p3, p4}, Lcom/narvii/util/EventDispatcher;->safeDispatch(Lcom/narvii/util/Callback;)V

    goto :goto_0

    .line 14
    :cond_2
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 15
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/narvii/account/AccountService;->isMasterGlobal()Z

    move-result p3

    if-eqz p3, :cond_4

    if-lez p1, :cond_4

    iget-object p3, p0, Lcom/narvii/account/AccountService;->communityReminderDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 16
    new-instance p4, Lcom/narvii/account/AccountService$4;

    invoke-direct {p4, p0, p1, p2}, Lcom/narvii/account/AccountService$4;-><init>(Lcom/narvii/account/AccountService;II)V

    invoke-virtual {p3, p4}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    :cond_4
    return-void
.end method

.method public updateNoticeCount(ILjava/lang/String;Z)V
    .locals 1

    iget v0, p0, Lcom/narvii/account/AccountService;->communityId:I

    .line 1
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/narvii/account/AccountService;->updateNoticeCount(IILjava/lang/String;Z)V

    return-void
.end method

.method public updateNotificationCount(IIJZ)V
    .locals 5

    .line 3
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "notificationCount_t"

    .line 4
    invoke-virtual {p0, p1, v1}, Lcom/narvii/account/AccountService;->getPrefsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {p3, p4, v2, v3}, Lcom/narvii/util/Utils;->shouldUpdateTimestamp(JJ)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 6
    invoke-virtual {p0, p1, v1}, Lcom/narvii/account/AccountService;->getPrefsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget-object p3, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    const-string p4, "notificationCount"

    .line 7
    invoke-virtual {p0, p1, p4}, Lcom/narvii/account/AccountService;->getPrefsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p3, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p3

    if-eq p2, p3, :cond_2

    .line 8
    invoke-virtual {p0, p1, p4}, Lcom/narvii/account/AccountService;->getPrefsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p3, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 9
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz p5, :cond_3

    .line 10
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object p3

    const-string p4, "account"

    invoke-virtual {p3, p1, p4}, Lcom/narvii/app/NVApplication;->getService(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/account/AccountService;

    if-eqz p3, :cond_3

    .line 11
    invoke-virtual {p3}, Lcom/narvii/account/AccountService;->getProfileDispatcher()Lcom/narvii/util/EventDispatcher;

    move-result-object p3

    new-instance p4, Lcom/narvii/account/AccountService$1;

    invoke-direct {p4, p0, p2}, Lcom/narvii/account/AccountService$1;-><init>(Lcom/narvii/account/AccountService;I)V

    invoke-virtual {p3, p4}, Lcom/narvii/util/EventDispatcher;->safeDispatch(Lcom/narvii/util/Callback;)V

    goto :goto_0

    .line 12
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 13
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/narvii/account/AccountService;->isMasterGlobal()Z

    move-result p3

    if-eqz p3, :cond_4

    if-lez p1, :cond_4

    iget-object p3, p0, Lcom/narvii/account/AccountService;->communityReminderDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 14
    new-instance p4, Lcom/narvii/account/AccountService$2;

    invoke-direct {p4, p0, p1, p2}, Lcom/narvii/account/AccountService$2;-><init>(Lcom/narvii/account/AccountService;II)V

    invoke-virtual {p3, p4}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    :cond_4
    return-void
.end method

.method public updateNotificationCount(IILjava/lang/String;Z)V
    .locals 6

    .line 2
    invoke-static {p3}, Lcom/narvii/util/DateTimeFormatter;->parseISO8601(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/narvii/account/AccountService;->updateNotificationCount(IIJZ)V

    return-void
.end method

.method public updateNotificationCount(IJZ)V
    .locals 6

    iget v1, p0, Lcom/narvii/account/AccountService;->communityId:I

    move-object v0, p0

    move v2, p1

    move-wide v3, p2

    move v5, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/account/AccountService;->updateNotificationCount(IIJZ)V

    return-void
.end method

.method public updateNotificationCount(ILjava/lang/String;Z)V
    .locals 2

    .line 15
    invoke-static {p2}, Lcom/narvii/util/DateTimeFormatter;->parseISO8601(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/narvii/account/AccountService;->updateNotificationCount(IJZ)V

    return-void
.end method

.method public updateOnlineStatus(IJZ)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "onlineStatus_t"

    .line 2
    invoke-virtual {p0, v1}, Lcom/narvii/account/AccountService;->getPrefsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {p2, p3, v2, v3}, Lcom/narvii/util/Utils;->shouldUpdateTimestamp(JJ)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4
    invoke-virtual {p0, v1}, Lcom/narvii/account/AccountService;->getPrefsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget-object p2, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    const-string p3, "onlineStatus"

    .line 5
    invoke-virtual {p0, p3}, Lcom/narvii/account/AccountService;->getPrefsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    if-eq p1, p2, :cond_2

    .line 6
    invoke-virtual {p0, p3}, Lcom/narvii/account/AccountService;->getPrefsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const/4 v2, 0x1

    .line 7
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz v2, :cond_3

    if-eqz p4, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getProfileDispatcher()Lcom/narvii/util/EventDispatcher;

    move-result-object p2

    new-instance p3, Lcom/narvii/account/AccountService$7;

    invoke-direct {p3, p0, p1}, Lcom/narvii/account/AccountService$7;-><init>(Lcom/narvii/account/AccountService;I)V

    invoke-virtual {p2, p3}, Lcom/narvii/util/EventDispatcher;->safeDispatch(Lcom/narvii/util/Callback;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public updateOnlineStatus(ILjava/lang/String;Z)V
    .locals 2

    .line 9
    invoke-static {p2}, Lcom/narvii/util/DateTimeFormatter;->parseISO8601(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/narvii/account/AccountService;->updateOnlineStatus(IJZ)V

    return-void
.end method

.method public updateProfile(Lcom/narvii/model/User;JIZ)V
    .locals 8

    .line 4
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo p1, "update profile which doesnot match the current user"

    .line 6
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v0, Lcom/narvii/account/AccountService;->TAG:Ljava/lang/String;

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "try to update profile x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/narvii/account/AccountService;->communityId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "profile_t"

    .line 8
    invoke-virtual {p0, p4, v2}, Lcom/narvii/account/AccountService;->getPrefsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 9
    invoke-static {p2, p3, v3, v4}, Lcom/narvii/util/Utils;->shouldUpdateTimestamp(JJ)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 10
    invoke-virtual {p0, p4}, Lcom/narvii/account/AccountService;->getUserProfile(I)Lcom/narvii/model/User;

    move-result-object v1

    iget-object v3, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    .line 11
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 12
    invoke-virtual {p0, p4, v2}, Lcom/narvii/account/AccountService;->getPrefsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 13
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/User;

    .line 14
    iget-object v4, v2, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_4

    if-eqz v1, :cond_3

    .line 15
    iget-object v4, v1, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz v4, :cond_3

    .line 16
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->size()I

    move-result v4

    if-ne v4, v6, :cond_2

    iget-object v4, v1, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v7, "hideUserProfile"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 17
    :cond_2
    iget-object v4, v1, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    iput-object v4, v2, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto :goto_1

    .line 18
    :cond_3
    :goto_0
    iput-object v5, v2, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 19
    :cond_4
    :goto_1
    iget-object v4, v2, Lcom/narvii/model/User;->fanClubList:Ljava/util/List;

    if-nez v4, :cond_6

    if-nez v1, :cond_5

    move-object v4, v5

    goto :goto_2

    .line 20
    :cond_5
    iget-object v4, v1, Lcom/narvii/model/User;->fanClubList:Ljava/util/List;

    :goto_2
    iput-object v4, v2, Lcom/narvii/model/User;->fanClubList:Ljava/util/List;

    .line 21
    :cond_6
    iget-object v4, v2, Lcom/narvii/model/User;->fanClubList:Ljava/util/List;

    if-nez v1, :cond_7

    goto :goto_3

    :cond_7
    iget-object v5, v1, Lcom/narvii/model/User;->fanClubList:Ljava/util/List;

    :goto_3
    invoke-static {v4, v5}, Lcom/narvii/util/Utils;->isListObjectEquals(Ljava/util/List;Ljava/util/List;)Z

    move-result v4

    xor-int/2addr v4, v6

    .line 22
    invoke-virtual {v2, v1}, Lcom/narvii/model/User;->checkEqual(Ljava/lang/Object;)I

    move-result v1

    const/4 v5, 0x2

    if-ne v1, v5, :cond_8

    goto :goto_4

    :cond_8
    const/4 v6, 0x0

    :goto_4
    if-nez v1, :cond_9

    if-eqz v4, :cond_a

    .line 23
    :cond_9
    invoke-direct {p0, p4}, Lcom/narvii/account/AccountService;->getUserProfileKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v1, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_a
    if-eqz v6, :cond_c

    .line 24
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getProfileDispatcher()Lcom/narvii/util/EventDispatcher;

    move-result-object v1

    new-instance v3, Lcom/narvii/account/d;

    invoke-direct {v3, p4, v2}, Lcom/narvii/account/d;-><init>(ILcom/narvii/model/User;)V

    invoke-virtual {v1, v3}, Lcom/narvii/util/EventDispatcher;->safeDispatch(Lcom/narvii/util/Callback;)V

    if-eqz p5, :cond_b

    iget v1, p0, Lcom/narvii/account/AccountService;->communityId:I

    if-ne v1, p4, :cond_b

    iget-object p4, p0, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    const-string v1, "notification"

    .line 25
    invoke-interface {p4, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/narvii/notification/NotificationCenter;

    .line 26
    new-instance v1, Lcom/narvii/notification/Notification;

    const-string/jumbo v3, "update"

    invoke-direct {v1, v3, v2}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 27
    invoke-virtual {p4, v1}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 28
    :cond_b
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatch profile change x"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/narvii/account/AccountService;->communityId:I

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "x"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/narvii/account/AccountService;->communityId:I

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " profile changed"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    :cond_c
    if-eqz v4, :cond_d

    iget-object p4, p0, Lcom/narvii/account/AccountService;->fanClubListListeners:Lcom/narvii/util/EventDispatcher;

    .line 30
    new-instance v0, Lcom/narvii/account/e;

    invoke-direct {v0, v2}, Lcom/narvii/account/e;-><init>(Lcom/narvii/model/User;)V

    invoke-virtual {p4, v0}, Lcom/narvii/util/EventDispatcher;->safeDispatch(Lcom/narvii/util/Callback;)V

    .line 31
    :cond_d
    iget-object p1, p1, Lcom/narvii/model/User;->settings:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz p1, :cond_e

    const-string p4, "onlineStatus"

    filled-new-array {p4}, [Ljava/lang/String;

    move-result-object p4

    .line 32
    invoke-static {p1, p4}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/narvii/account/AccountService;->updateOnlineStatus(IJZ)V

    :cond_e
    return-void
.end method

.method public updateProfile(Lcom/narvii/model/User;JZ)V
    .locals 6

    iget v4, p0, Lcom/narvii/account/AccountService;->communityId:I

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v5, p4

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;JIZ)V

    return-void
.end method

.method public updateProfile(Lcom/narvii/model/User;Ljava/lang/String;IZ)V
    .locals 6

    .line 3
    invoke-static {p2}, Lcom/narvii/util/DateTimeFormatter;->parseISO8601(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;JIZ)V

    return-void
.end method

.method public updateProfile(Lcom/narvii/model/User;Ljava/lang/String;IZZ)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 33
    :cond_0
    invoke-virtual {p0, p3}, Lcom/narvii/account/AccountService;->getUserProfile(I)Lcom/narvii/model/User;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    .line 34
    :cond_1
    iget-object v0, v0, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    :goto_0
    if-eqz p5, :cond_3

    .line 35
    iget-object p5, p1, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-static {p5}, Lcom/narvii/post/BackgroundUtils;->getBackgroundMediaArray(Lcom/fasterxml/jackson/databind/node/ObjectNode;)[Lcom/narvii/model/Media;

    move-result-object p5

    if-eqz p5, :cond_2

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    invoke-static {v1, p5}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 38
    :cond_2
    invoke-static {v0, v1}, Lcom/narvii/post/BackgroundUtils;->setBackgroundMediaList(Lcom/fasterxml/jackson/databind/node/ObjectNode;Ljava/util/List;)V

    .line 39
    :cond_3
    iput-object v0, p1, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 40
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;Ljava/lang/String;IZ)V

    return-void
.end method

.method public updateProfile(Lcom/narvii/model/User;Ljava/lang/String;Z)V
    .locals 2

    .line 1
    invoke-static {p2}, Lcom/narvii/util/DateTimeFormatter;->parseISO8601(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;JZ)V

    return-void
.end method
