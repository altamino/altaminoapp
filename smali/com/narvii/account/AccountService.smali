.class public Lcom/narvii/account/AccountService;
.super Ljava/lang/Object;
.source "AccountService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/account/AccountService$RecentVisitorListener;,
        Lcom/narvii/account/AccountService$FanClubListListener;,
        Lcom/narvii/account/AccountService$CommunityReminderChangeInGlobalListener;,
        Lcom/narvii/account/AccountService$ProfileListener;
    }
.end annotation


# static fields
.field public static final ACTION_ACCOUNT_CHANGED:Ljava/lang/String; = "com.narvii.action.ACCOUNT_CHANGED"

.field public static final ACTION_PRIVACY_MODE_CHANGED:Ljava/lang/String; = "com.narvii.action.PRIVACY_CHANGED"

.field public static final ACTION_SID_CHANGED:Ljava/lang/String; = "com.narvii.action.SID_CHANGED"

.field public static final FINISH_LOGIN_PAGE:Ljava/lang/String; = "com.narvii.action.FINISH_LOGIN_PAGE"

.field public static final KEYCHAIN_CHECKING:I = 0x1

.field public static final KEYCHAIN_FAILED:I = -0x2

.field public static final KEYCHAIN_IDLE:I = 0x0

.field public static final KEYCHAIN_LOGINING:I = 0x2

.field public static final KEYCHAIN_STATUS_CHANGED:Ljava/lang/String; = "com.narvii.action.KEYCHAIN_STATUS_CHANGED"

.field public static final KEYCHAIN_TIMEOUT:I = -0x1

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

.field private isResumed:Z

.field private keychainStatus:I

.field private lastRequestRecentVisitorCountTime:J

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

.field private final recentVisitorListeners:Lcom/narvii/util/EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/account/AccountService$RecentVisitorListener;",
            ">;"
        }
    .end annotation
.end field

.field private type:I

.field private final visitPrivacyReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;II)V
    .locals 3

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    iput-object v0, p0, Lcom/narvii/account/AccountService;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 177
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    iput-object v0, p0, Lcom/narvii/account/AccountService;->communityReminderDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 178
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    iput-object v0, p0, Lcom/narvii/account/AccountService;->fanClubListListeners:Lcom/narvii/util/EventDispatcher;

    .line 179
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    iput-object v0, p0, Lcom/narvii/account/AccountService;->recentVisitorListeners:Lcom/narvii/util/EventDispatcher;

    .line 1407
    new-instance v0, Lcom/narvii/account/AccountService$13;

    invoke-direct {v0, p0}, Lcom/narvii/account/AccountService$13;-><init>(Lcom/narvii/account/AccountService;)V

    iput-object v0, p0, Lcom/narvii/account/AccountService;->visitPrivacyReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    .line 1416
    iput-boolean v0, p0, Lcom/narvii/account/AccountService;->isResumed:Z

    const-wide/16 v1, 0x0

    .line 1417
    iput-wide v1, p0, Lcom/narvii/account/AccountService;->lastRequestRecentVisitorCountTime:J

    .line 182
    iput-object p1, p0, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    .line 183
    iput p2, p0, Lcom/narvii/account/AccountService;->type:I

    .line 184
    iput p3, p0, Lcom/narvii/account/AccountService;->communityId:I

    .line 185
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "account"

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    .line 186
    iget-object p1, p0, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    .line 187
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/narvii/account/AccountService;->dir:Ljava/io/File;

    .line 188
    iget-object p1, p0, Lcom/narvii/account/AccountService;->dir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/account/AccountService;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/account/AccountService;I)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/narvii/account/AccountService;->dispatchKeychainStatus(I)V

    return-void
.end method

.method static synthetic access$202(Lcom/narvii/account/AccountService;J)J
    .locals 0

    .line 57
    iput-wide p1, p0, Lcom/narvii/account/AccountService;->lastRequestRecentVisitorCountTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/narvii/account/AccountService;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/narvii/account/AccountService;->isResumed:Z

    return p0
.end method

.method static synthetic access$400(Lcom/narvii/account/AccountService;)I
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/narvii/account/AccountService;->getLocalRecentVisitorCount()I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/narvii/account/AccountService;I)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/narvii/account/AccountService;->setLocalRecentVisitorCount(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/narvii/account/AccountService;)Lcom/narvii/util/EventDispatcher;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/narvii/account/AccountService;->recentVisitorListeners:Lcom/narvii/util/EventDispatcher;

    return-object p0
.end method

.method private crossAppReadMasterKeychain()Lcom/narvii/account/AccountKeychain;
    .locals 13

    .line 1215
    invoke-direct {p0}, Lcom/narvii/account/AccountService;->crossAppsRead()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1217
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1219
    iget-object v0, p0, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "EMAIL"

    aput-object v5, v6, v0

    const/4 v10, 0x1

    const-string v5, "SECRET"

    aput-object v5, v6, v10

    .line 1221
    new-instance v5, Lcom/narvii/util/PackageUtils;

    iget-object v7, p0, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v7}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 1222
    iget-object v7, p0, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v7}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1223
    invoke-virtual {v5}, Lcom/narvii/util/PackageUtils;->getMasterPackageName()Ljava/lang/String;

    move-result-object v11

    .line 1224
    invoke-static {v7, v11}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    const-string v12, "ms"

    if-nez v7, :cond_2

    invoke-virtual {v5, v11}, Lcom/narvii/util/PackageUtils;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1226
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v8, 0x2e

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "content://"

    .line 1227
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Lcom/narvii/util/PackageUtils$AminoPackage;

    invoke-virtual {v5}, Lcom/narvii/util/PackageUtils;->getMasterPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v0, v0, v9}, Lcom/narvii/util/PackageUtils$AminoPackage;-><init>(IILjava/lang/String;)V

    invoke-virtual {v5, v8}, Lcom/narvii/util/PackageUtils;->getKeychainAuthorities(Lcom/narvii/util/PackageUtils$AminoPackage;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/keychain"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1228
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1229
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1230
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1231
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1232
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1234
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v1

    goto :goto_0

    .line 1237
    :cond_1
    new-instance v5, Lcom/narvii/account/AccountKeychain;

    invoke-direct {v5, v1, v0, v4}, Lcom/narvii/account/AccountKeychain;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v2

    .line 1240
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cross-apps get "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from package "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " in "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :catch_0
    move-exception v0

    .line 1245
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cross-apps get fail from package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1248
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 1249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cross-apps get no account keychain in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    return-object v1
.end method

.method private crossAppsRead()Z
    .locals 3

    .line 192
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

    move-object/from16 v1, p0

    .line 1154
    invoke-direct/range {p0 .. p0}, Lcom/narvii/account/AccountService;->crossAppsRead()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    .line 1156
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 1158
    iget-object v0, v1, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const/4 v12, 0x2

    new-array v13, v12, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v0, "EMAIL"

    aput-object v0, v13, v14

    const/4 v15, 0x1

    const-string v0, "SECRET"

    aput-object v0, v13, v15

    .line 1160
    new-instance v10, Lcom/narvii/util/PackageUtils;

    iget-object v0, v1, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 1161
    iget-object v0, v1, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 1162
    invoke-virtual {v10}, Lcom/narvii/util/PackageUtils;->listAminoPackages()[Lcom/narvii/util/PackageUtils$AminoPackage;

    move-result-object v8

    .line 1169
    array-length v7, v8

    move-object v0, v2

    move-object/from16 v19, v0

    const/4 v6, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_0
    if-ge v6, v7, :cond_4

    aget-object v5, v8, v6

    .line 1170
    iget-object v12, v5, Lcom/narvii/util/PackageUtils$AminoPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    move/from16 v23, v6

    move-object/from16 v24, v8

    move-object v12, v9

    move-object/from16 v20, v10

    move-object v8, v2

    move v2, v7

    goto/16 :goto_4

    .line 1173
    :cond_1
    :try_start_0
    new-instance v12, Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    const/16 v2, 0x2e

    :try_start_1
    invoke-direct {v12, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "content://"

    .line 1174
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Lcom/narvii/util/PackageUtils;->getKeychainAuthorities(Lcom/narvii/util/PackageUtils$AminoPackage;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/keychain"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1175
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    const/4 v12, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v22, v5

    move-object v5, v11

    move/from16 v23, v6

    move-object v6, v2

    move v2, v7

    move-object v7, v13

    move-object/from16 v24, v8

    move-object v8, v12

    move-object v12, v9

    move-object/from16 v9, v20

    move-object/from16 v20, v10

    move-object/from16 v10, v21

    .line 1176
    :try_start_2
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 1177
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_3

    add-int/lit8 v17, v17, 0x1

    .line 1179
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1180
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1181
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object/from16 v5, v22

    const/4 v8, 0x0

    const/16 v19, 0x0

    goto :goto_1

    .line 1184
    :cond_2
    new-instance v7, Lcom/narvii/account/AccountKeychain;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v8, 0x0

    :try_start_3
    invoke-direct {v7, v8, v6, v5}, Lcom/narvii/account/AccountKeychain;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v19, v7

    move-object/from16 v5, v22

    .line 1186
    :goto_1
    :try_start_4
    iget-object v2, v5, Lcom/narvii/util/PackageUtils$AminoPackage;->packageName:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-object v5, v2

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v5, v22

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v5, v22

    goto :goto_2

    :catch_3
    move-exception v0

    move/from16 v23, v6

    move v2, v7

    move-object/from16 v24, v8

    move-object v12, v9

    move-object/from16 v20, v10

    :goto_2
    const/4 v8, 0x0

    goto :goto_3

    :catch_4
    move-exception v0

    move/from16 v23, v6

    move-object/from16 v24, v8

    move-object v12, v9

    move-object/from16 v20, v10

    move-object v8, v2

    move v2, v7

    :goto_3
    add-int/lit8 v18, v18, 0x1

    .line 1194
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cross-apps get fail from package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lcom/narvii/util/PackageUtils$AminoPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    add-int/lit8 v6, v23, 0x1

    move v7, v2

    move-object v2, v8

    move-object v9, v12

    move-object/from16 v10, v20

    move-object/from16 v8, v24

    const/4 v12, 0x2

    goto/16 :goto_0

    :cond_4
    move-object v8, v2

    move-object v5, v8

    :goto_5
    move-object/from16 v2, v19

    .line 1197
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v3

    const-string v3, "ms"

    if-lez v17, :cond_6

    .line 1199
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cross-apps get "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_5

    move-object v9, v8

    goto :goto_6

    :cond_5
    iget-object v9, v2, Lcom/narvii/account/AccountKeychain;->email:Ljava/lang/String;

    :goto_6
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " from package "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    goto :goto_7

    .line 1201
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cross-apps get no account keychain in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    :goto_7
    if-eqz v0, :cond_7

    .line 1206
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_7
    move-object v0, v8

    .line 1208
    :goto_8
    iget-object v3, v1, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    const-string v4, "logging"

    invoke-interface {v3, v4}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/util/logging/LoggingService;

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "method"

    aput-object v5, v4, v14

    const-string/jumbo v5, "read"

    aput-object v5, v4, v15

    const-string/jumbo v5, "success"

    const/4 v6, 0x2

    aput-object v5, v4, v6

    const/4 v5, 0x3

    .line 1209
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "fails"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "errors"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "message"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    aput-object v0, v4, v5

    const-string v0, "AndroidKeychain"

    invoke-interface {v3, v0, v4}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2
.end method

.method private crossAppsWrite()Z
    .locals 3

    .line 196
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

    .line 1084
    invoke-direct {p0}, Lcom/narvii/account/AccountService;->crossAppsWrite()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1086
    :cond_0
    new-instance v0, Lcom/narvii/account/AccountService$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/account/AccountService$10;-><init>(Lcom/narvii/account/AccountService;Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private dispatchKeychainStatus(I)V
    .locals 2

    .line 1377
    iget v0, p0, Lcom/narvii/account/AccountService;->keychainStatus:I

    if-eq p1, v0, :cond_0

    .line 1378
    iput p1, p0, Lcom/narvii/account/AccountService;->keychainStatus:I

    .line 1379
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.narvii.action.KEYCHAIN_STATUS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "status"

    .line 1380
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1381
    iget-object p1, p0, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method private getAccountValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 337
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getAccountJson()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getLocalRecentVisitorCount()I
    .locals 3

    .line 1468
    iget-object v0, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "visitorCount"

    invoke-virtual {p0, v1}, Lcom/narvii/account/AccountService;->getPrefsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getUserProfileKey()Ljava/lang/String;
    .locals 1

    .line 269
    iget v0, p0, Lcom/narvii/account/AccountService;->communityId:I

    invoke-direct {p0, v0}, Lcom/narvii/account/AccountService;->getUserProfileKey(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUserProfileKey(I)Ljava/lang/String;
    .locals 2

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "profile_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private isMasterGlobal()Z
    .locals 2

    .line 486
    sget v0, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/narvii/account/AccountService;->communityId:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$markRecentVisitorAsRead$2(Lcom/narvii/account/AccountService$RecentVisitorListener;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 1464
    invoke-interface {p0, v0, v1}, Lcom/narvii/account/AccountService$RecentVisitorListener;->onVisitorCountChanged(II)V

    return-void
.end method

.method static synthetic lambda$updateProfile$0(ILcom/narvii/model/User;Lcom/narvii/account/AccountService$ProfileListener;)V
    .locals 0

    .line 549
    invoke-virtual {p2, p0, p1}, Lcom/narvii/account/AccountService$ProfileListener;->onProfileChanged(ILcom/narvii/model/User;)V

    return-void
.end method

.method static synthetic lambda$updateProfile$1(Lcom/narvii/model/User;Lcom/narvii/account/AccountService$FanClubListListener;)V
    .locals 0

    .line 561
    iget-object p0, p0, Lcom/narvii/model/User;->fanClubList:Ljava/util/List;

    invoke-interface {p1, p0}, Lcom/narvii/account/AccountService$FanClubListListener;->onFanClubListChanged(Ljava/util/List;)V

    return-void
.end method

.method private sendReminderStatRequest(Z)V
    .locals 3

    .line 1439
    iget-object v0, p0, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    const-string v1, "api"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 1440
    new-instance v1, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    const-string/jumbo v2, "user-profile/reminder-stat"

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1443
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v2, "forceUpdate"

    invoke-virtual {v1, v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 1445
    :cond_0
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    .line 1446
    new-instance v1, Lcom/narvii/account/AccountService$14;

    const-class v2, Lcom/narvii/account/RecentVisitorCountResponse;

    invoke-direct {v1, p0, v2}, Lcom/narvii/account/AccountService$14;-><init>(Lcom/narvii/account/AccountService;Ljava/lang/Class;)V

    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private setLocalRecentVisitorCount(I)V
    .locals 2

    .line 1472
    iget-object v0, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "visitorCount"

    invoke-virtual {p0, v1}, Lcom/narvii/account/AccountService;->getPrefsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public addCommunityReminderChangeListener(Lcom/narvii/account/AccountService$CommunityReminderChangeInGlobalListener;)V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/narvii/account/AccountService;->communityReminderDispatcher:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    return-void
.end method

.method public addFanClubListListener(Lcom/narvii/account/AccountService$FanClubListListener;)V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/narvii/account/AccountService;->fanClubListListeners:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    return-void
.end method

.method public addProfileListener(Lcom/narvii/account/AccountService$ProfileListener;)V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/narvii/account/AccountService;->listeners:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    return-void
.end method

.method public addRecentVisitorListener(Lcom/narvii/account/AccountService$RecentVisitorListener;)V
    .locals 2

    .line 224
    invoke-direct {p0}, Lcom/narvii/account/AccountService;->getLocalRecentVisitorCount()I

    move-result v0

    const/4 v1, -0x1

    .line 225
    invoke-interface {p1, v0, v1}, Lcom/narvii/account/AccountService$RecentVisitorListener;->onVisitorCountChanged(II)V

    .line 226
    iget-object v0, p0, Lcom/narvii/account/AccountService;->recentVisitorListeners:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    return-void
.end method

.method protected declared-synchronized crossAppsCheck()V
    .locals 6

    monitor-enter p0

    .line 1276
    :try_start_0
    invoke-direct {p0}, Lcom/narvii/account/AccountService;->crossAppsRead()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1277
    monitor-exit p0

    return-void

    .line 1281
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getKeychain()Lcom/narvii/account/AccountKeychain;

    move-result-object v0

    .line 1282
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 1283
    iget v2, p0, Lcom/narvii/account/AccountService;->type:I

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v2, v3, :cond_3

    .line 1284
    invoke-direct {p0, v4}, Lcom/narvii/account/AccountService;->dispatchKeychainStatus(I)V

    .line 1285
    invoke-direct {p0}, Lcom/narvii/account/AccountService;->crossAppReadMasterKeychain()Lcom/narvii/account/AccountKeychain;

    move-result-object v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    .line 1287
    iget-object v3, v2, Lcom/narvii/account/AccountKeychain;->email:Ljava/lang/String;

    iget-object v5, v0, Lcom/narvii/account/AccountKeychain;->email:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/narvii/account/AccountKeychain;->secret:Ljava/lang/String;

    iget-object v5, v0, Lcom/narvii/account/AccountKeychain;->secret:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1289
    :cond_1
    iget-object v0, p0, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/narvii/account/AccountKeychain;->writeTo(Landroid/content/Context;)V

    goto :goto_0

    .line 1293
    :cond_2
    iget-object v0, p0, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/account/AccountKeychain;->remove(Landroid/content/Context;)Z

    :goto_0
    move-object v0, v2

    goto :goto_1

    :cond_3
    if-nez v0, :cond_5

    if-nez v1, :cond_5

    .line 1297
    iget-object v2, p0, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/narvii/account/AccountKeychain;->inited(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1298
    invoke-direct {p0, v4}, Lcom/narvii/account/AccountService;->dispatchKeychainStatus(I)V

    .line 1299
    invoke-direct {p0}, Lcom/narvii/account/AccountService;->crossAppsReadKeychain()Lcom/narvii/account/AccountKeychain;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1301
    iget-object v2, p0, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/narvii/account/AccountKeychain;->writeTo(Landroid/content/Context;)V

    goto :goto_1

    .line 1303
    :cond_4
    iget-object v2, p0, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/narvii/account/AccountKeychain;->remove(Landroid/content/Context;)Z

    :cond_5
    :goto_1
    const/4 v2, 0x2

    const/4 v3, 0x0

    if-nez v0, :cond_6

    if-nez v1, :cond_6

    goto :goto_2

    :cond_6
    if-nez v0, :cond_7

    if-eqz v1, :cond_7

    const-string v1, "cross-apps logout"

    .line 1312
    invoke-static {v1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    .line 1313
    invoke-direct {p0, v2}, Lcom/narvii/account/AccountService;->dispatchKeychainStatus(I)V

    .line 1314
    invoke-virtual {p0, v3}, Lcom/narvii/account/AccountService;->logout(Z)V

    goto :goto_2

    :cond_7
    if-eqz v0, :cond_8

    if-nez v1, :cond_8

    .line 1317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cross-apps login using "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/narvii/account/AccountKeychain;->email:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    goto :goto_3

    .line 1319
    :cond_8
    iget-object v5, v0, Lcom/narvii/account/AccountKeychain;->uid:Ljava/lang/String;

    invoke-static {v1, v5}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "keychain does not match uid, try to switch user"

    .line 1321
    invoke-static {v1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 1322
    invoke-virtual {p0, v3}, Lcom/narvii/account/AccountService;->logout(Z)V

    .line 1323
    iget-object v1, p0, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/account/AccountKeychain;->writeTo(Landroid/content/Context;)V

    goto :goto_3

    :cond_9
    :goto_2
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_a

    .line 1328
    new-instance v1, Lcom/narvii/util/http/ApiService;

    iget-object v3, p0, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v1, v3}, Lcom/narvii/util/http/ApiService;-><init>(Lcom/narvii/app/NVContext;)V

    .line 1329
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v3

    .line 1330
    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v4

    const-string v5, "/auth/login"

    invoke-virtual {v4, v5}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v4, "deviceID"

    .line 1331
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v4, "email"

    .line 1332
    iget-object v5, v0, Lcom/narvii/account/AccountKeychain;->email:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string/jumbo v4, "secret"

    .line 1333
    iget-object v5, v0, Lcom/narvii/account/AccountKeychain;->secret:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v4, "clientType"

    .line 1334
    sget v5, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v4, "action"

    const-string v5, "auto"

    .line 1335
    invoke-virtual {v3, v4, v5}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 1336
    invoke-virtual {v0}, Lcom/narvii/account/AccountKeychain;->clone()Lcom/narvii/account/AccountKeychain;

    move-result-object v0

    .line 1337
    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v3

    new-instance v4, Lcom/narvii/account/AccountService$12;

    iget-object v5, p0, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v4, p0, v5, v0}, Lcom/narvii/account/AccountService$12;-><init>(Lcom/narvii/account/AccountService;Lcom/narvii/app/NVContext;Lcom/narvii/account/AccountKeychain;)V

    invoke-virtual {v1, v3, v4}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    const-string v0, "cross-apps login start.."

    .line 1364
    invoke-static {v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    .line 1366
    invoke-direct {p0, v2}, Lcom/narvii/account/AccountService;->dispatchKeychainStatus(I)V

    goto :goto_4

    .line 1368
    :cond_a
    invoke-direct {p0, v3}, Lcom/narvii/account/AccountService;->dispatchKeychainStatus(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1370
    :goto_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public crossAppsCheckInBackground()V
    .locals 2

    .line 1258
    invoke-direct {p0}, Lcom/narvii/account/AccountService;->crossAppsRead()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1260
    :cond_0
    iget v0, p0, Lcom/narvii/account/AccountService;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/account/AccountKeychain;->inited(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1266
    :cond_1
    new-instance v0, Lcom/narvii/account/AccountService$11;

    invoke-direct {v0, p0}, Lcom/narvii/account/AccountService$11;-><init>(Lcom/narvii/account/AccountService;)V

    .line 1271
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 1263
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->crossAppsCheck()V

    :goto_1
    return-void
.end method

.method public deleteFanClub(ILcom/narvii/influencer/FanClub;)V
    .locals 6

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 871
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 872
    iget-object v0, v1, Lcom/narvii/model/User;->fanClubList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 873
    iget-object p2, p2, Lcom/narvii/influencer/FanClub;->targetUid:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/narvii/util/Utils;->removeId(Ljava/util/Collection;Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_1

    .line 875
    iget-object p2, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v0, "profile_t"

    invoke-virtual {p0, p1, v0}, Lcom/narvii/account/AccountService;->getPrefsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-interface {p2, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const/4 v5, 0x0

    move-object v0, p0

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;JIZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public forceUpdateRecentVisitorCount()V
    .locals 1

    .line 1432
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1435
    invoke-direct {p0, v0}, Lcom/narvii/account/AccountService;->sendReminderStatRequest(Z)V

    return-void
.end method

.method public getAccountJson()Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 3

    .line 313
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 315
    :try_start_0
    iget-object v0, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "account"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 316
    sget-object v2, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readTree(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/node/ObjectNode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string/jumbo v0, "unable to read account as json"

    .line 319
    invoke-static {v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    :cond_0
    return-object v1
.end method

.method public getAminoId()Ljava/lang/String;
    .locals 1

    const-string v0, "aminoId"

    .line 349
    invoke-direct {p0, v0}, Lcom/narvii/account/AccountService;->getAccountValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCheckInHistory()Lcom/narvii/model/CheckInHistory;
    .locals 3

    .line 797
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 799
    :try_start_0
    iget-object v0, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "checkInHistory"

    invoke-virtual {p0, v2}, Lcom/narvii/account/AccountService;->getPrefsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/narvii/model/CheckInHistory;

    invoke-static {v0, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/CheckInHistory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "json"

    .line 801
    invoke-static {v2, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-object v1
.end method

.method public getCommunityUserProfile()Lcom/narvii/model/User;
    .locals 3

    .line 448
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    iget v2, p0, Lcom/narvii/account/AccountService;->communityId:I

    invoke-direct {p0, v2}, Lcom/narvii/account/AccountService;->getUserProfileKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 450
    const-class v1, Lcom/narvii/model/User;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/User;

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getConsecutiveCheckInDays()I
    .locals 3

    .line 781
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 782
    iget-object v0, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "checkInDays"

    invoke-virtual {p0, v2}, Lcom/narvii/account/AccountService;->getPrefsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public getDevOptions()Ljava/lang/String;
    .locals 3

    .line 478
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "dev-option"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 2

    .line 1386
    iget-object v0, p0, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    const-string v1, "deviceid"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/deviceid/DeviceIDService;

    .line 1387
    invoke-virtual {v0}, Lcom/narvii/util/deviceid/DeviceIDService;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDir()Ljava/io/File;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/narvii/account/AccountService;->dir:Ljava/io/File;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    const-string v0, "email"

    .line 341
    invoke-direct {p0, v0}, Lcom/narvii/account/AccountService;->getAccountValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFanClub(ILjava/lang/String;)Lcom/narvii/influencer/FanClub;
    .locals 1

    const/4 v0, 0x0

    if-lez p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 895
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/account/AccountService;->getUserProfile(I)Lcom/narvii/model/User;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 896
    iget-object p1, p1, Lcom/narvii/model/User;->fanClubList:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 897
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

    .line 881
    invoke-direct {p0}, Lcom/narvii/account/AccountService;->isMasterGlobal()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 884
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 885
    iget-object v0, v0, Lcom/narvii/model/User;->fanClubList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 886
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->searchForId(Ljava/util/Collection;Ljava/lang/String;)Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/influencer/FanClub;

    return-object p1

    :cond_1
    return-object v1
.end method

.method public getKeychain()Lcom/narvii/account/AccountKeychain;
    .locals 1

    .line 1063
    iget-object v0, p0, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/account/AccountKeychain;->readFrom(Landroid/content/Context;)Lcom/narvii/account/AccountKeychain;

    move-result-object v0

    return-object v0
.end method

.method public getKeychainStatus()I
    .locals 1

    .line 1373
    iget v0, p0, Lcom/narvii/account/AccountService;->keychainStatus:I

    return v0
.end method

.method public getNoticeCount()I
    .locals 1

    .line 666
    iget v0, p0, Lcom/narvii/account/AccountService;->communityId:I

    invoke-virtual {p0, v0}, Lcom/narvii/account/AccountService;->getNoticeCount(I)I

    move-result v0

    return v0
.end method

.method public getNoticeCount(I)I
    .locals 3

    .line 670
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "noticeCount"

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

    .line 654
    iget v0, p0, Lcom/narvii/account/AccountService;->communityId:I

    invoke-virtual {p0, v0}, Lcom/narvii/account/AccountService;->getNotificationCount(I)I

    move-result v0

    return v0
.end method

.method public getNotificationCount(I)I
    .locals 3

    .line 658
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "notificationCount"

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

    .line 678
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "notificationCount_t"

    invoke-virtual {p0, v3}, Lcom/narvii/account/AccountService;->getPrefsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    return-wide v1
.end method

.method public getOnlineStatus()I
    .locals 3

    .line 942
    iget-object v0, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "onlineStatus"

    invoke-virtual {p0, v1}, Lcom/narvii/account/AccountService;->getPrefsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "phoneNumber"

    .line 345
    invoke-direct {p0, v0}, Lcom/narvii/account/AccountService;->getAccountValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefs()Landroid/content/SharedPreferences;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getPrefsKey(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 254
    iget v0, p0, Lcom/narvii/account/AccountService;->type:I

    const-string v1, "_"

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    if-nez p1, :cond_1

    return-object p2

    .line 260
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object p2
.end method

.method public getPrefsKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 250
    iget v0, p0, Lcom/narvii/account/AccountService;->communityId:I

    invoke-virtual {p0, v0, p1}, Lcom/narvii/account/AccountService;->getPrefsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPrivilegeOfMaxVideoDuration()I
    .locals 4

    .line 408
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getAccountJson()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "extensions"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "privilegeOfMaxVideoDuration"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    invoke-static {v0, v2, v1}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;I[Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

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

    .line 234
    iget-object v0, p0, Lcom/narvii/account/AccountService;->listeners:Lcom/narvii/util/EventDispatcher;

    return-object v0
.end method

.method public getSecurityLevel()I
    .locals 4

    .line 404
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getAccountJson()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "securityLevel"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 3

    .line 292
    iget-object v0, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "sid"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserAccount()Lcom/narvii/model/User;
    .locals 3

    .line 327
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "account"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 329
    const-class v1, Lcom/narvii/model/User;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/User;

    if-nez v0, :cond_0

    .line 330
    new-instance v0, Lcom/narvii/model/User;

    invoke-direct {v0}, Lcom/narvii/model/User;-><init>()V

    :cond_0
    return-object v0

    :cond_1
    return-object v1
.end method

.method public getUserId()Ljava/lang/String;
    .locals 5

    .line 296
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "uid"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 300
    iget-object v3, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "profile"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v3, Lcom/narvii/model/User;

    invoke-static {v1, v3}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/User;

    if-eqz v1, :cond_0

    .line 302
    iget-object v0, v1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 303
    iget-object v1, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-object v0

    :cond_1
    return-object v1
.end method

.method public getUserProfile()Lcom/narvii/model/User;
    .locals 1

    .line 443
    iget v0, p0, Lcom/narvii/account/AccountService;->communityId:I

    invoke-virtual {p0, v0}, Lcom/narvii/account/AccountService;->getUserProfile(I)Lcom/narvii/model/User;

    move-result-object v0

    return-object v0
.end method

.method public getUserProfile(I)Lcom/narvii/model/User;
    .locals 2

    .line 457
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 458
    iget-object v0, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    invoke-direct {p0, p1}, Lcom/narvii/account/AccountService;->getUserProfileKey(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 461
    iget-object p1, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/narvii/account/AccountService;->getUserProfileKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-nez p1, :cond_1

    .line 464
    iget-object p1, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    const-string v0, "account"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 466
    :cond_1
    const-class v0, Lcom/narvii/model/User;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/User;

    if-nez p1, :cond_2

    .line 467
    new-instance p1, Lcom/narvii/model/User;

    invoke-direct {p1}, Lcom/narvii/model/User;-><init>()V

    :cond_2
    return-object p1

    :cond_3
    return-object v1
.end method

.method public getUserProfileTimestamp()J
    .locals 4

    .line 428
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "profile_t"

    invoke-virtual {p0, v3}, Lcom/narvii/account/AccountService;->getPrefsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    return-wide v1
.end method

.method public getVisitorNotificationStatus()I
    .locals 4

    .line 357
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getAccountJson()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "extensions"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "visitSettings"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "notificationStatus"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getVisitorPrivacyMode()I
    .locals 4

    .line 353
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getAccountJson()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "extensions"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "visitSettings"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "privacyMode"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public hasAccount()Z
    .locals 3

    .line 288
    iget-object v0, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "sid"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasActivation()Z
    .locals 5

    .line 374
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getAccountJson()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getAccountJson()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    const-string v3, "activation"

    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getAccountJson()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/String;

    aput-object v3, v4, v1

    invoke-static {v0, v4}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hasCheckInToday()Z
    .locals 3

    .line 789
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "checkInToday"

    invoke-virtual {p0, v2}, Lcom/narvii/account/AccountService;->getPrefsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public hasEmailActivation()Z
    .locals 5

    .line 378
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getAccountJson()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "emailActivation"

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasPhoneActivation()Z
    .locals 5

    .line 400
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getAccountJson()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "phoneNumberActivation"

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isAminoIdEditable()Z
    .locals 4

    .line 361
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getAccountJson()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "aminoIdEditable"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeBoolean(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isFacebookConnected()Z
    .locals 1

    const-string v0, "facebookID"

    .line 366
    invoke-direct {p0, v0}, Lcom/narvii/account/AccountService;->getAccountValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isGoogleConnected()Z
    .locals 1

    const-string v0, "googleID"

    .line 370
    invoke-direct {p0, v0}, Lcom/narvii/account/AccountService;->getAccountValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isUserProfileReady()Z
    .locals 3

    .line 416
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/narvii/account/AccountService;->getUserProfileKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 418
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public logout(Z)V
    .locals 4

    const-string v0, "logout..."

    .line 978
    invoke-static {v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 980
    iget-object p1, p0, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    .line 981
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 980
    invoke-static {p1}, Lcom/narvii/account/AccountKeychain;->readFrom(Landroid/content/Context;)Lcom/narvii/account/AccountKeychain;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 983
    :cond_0
    iget-object p1, p0, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    invoke-static {p1, v0}, Lcom/narvii/post/DraftManager;->archiveDrafts(Lcom/narvii/app/NVContext;Z)V

    .line 984
    iget-object p1, p0, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/post/DraftManager;->removeOldDrafts(Landroid/content/Context;)V

    .line 985
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getDir()Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->deleteDir(Ljava/io/File;)Z

    .line 986
    iget-object p1, p0, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/account/AccountKeychain;->remove(Landroid/content/Context;)Z

    .line 987
    iget-object p1, p0, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    const-string/jumbo v0, "stats"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/stats/StatsService;

    if-eqz p1, :cond_1

    .line 989
    invoke-virtual {p1}, Lcom/narvii/util/stats/StatsService;->clearAll()V

    .line 991
    :cond_1
    iget-object p1, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 993
    new-instance p1, Lcom/narvii/account/AccountService$8;

    invoke-direct {p1, p0}, Lcom/narvii/account/AccountService$8;-><init>(Lcom/narvii/account/AccountService;)V

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x0

    .line 1001
    iput-wide v2, p0, Lcom/narvii/account/AccountService;->lastRequestRecentVisitorCountTime:J

    if-eqz v1, :cond_2

    const/4 p1, 0x0

    .line 1004
    invoke-direct {p0, p1, p1}, Lcom/narvii/account/AccountService;->crossAppsWriteKeychain(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public markRecentVisitorAsRead()V
    .locals 2

    .line 1460
    invoke-direct {p0}, Lcom/narvii/account/AccountService;->getLocalRecentVisitorCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1463
    invoke-direct {p0, v0}, Lcom/narvii/account/AccountService;->setLocalRecentVisitorCount(I)V

    .line 1464
    iget-object v0, p0, Lcom/narvii/account/AccountService;->recentVisitorListeners:Lcom/narvii/util/EventDispatcher;

    sget-object v1, Lcom/narvii/account/-$$Lambda$AccountService$AbhuuljI8LVh9E4HVfVheuUaQow;->INSTANCE:Lcom/narvii/account/-$$Lambda$AccountService$AbhuuljI8LVh9E4HVfVheuUaQow;

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->safeDispatch(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public optinAdsFlags()I
    .locals 5

    .line 391
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getAccountJson()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "extensions"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    const-string v4, "adsFlags"

    aput-object v4, v1, v3

    const/4 v3, -0x1

    invoke-static {v0, v3, v1}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;I[Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    .line 393
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->optinAdsLevel()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x1b

    :goto_0
    return v2

    :cond_1
    return v0
.end method

.method public optinAdsLevel()I
    .locals 7

    .line 382
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getAccountJson()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "extensions"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v5, 0x1

    const-string v6, "adsLevel"

    aput-object v6, v2, v5

    const/4 v6, -0x1

    invoke-static {v0, v6, v2}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;I[Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    .line 384
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getAccountJson()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/String;

    aput-object v3, v2, v4

    const-string v3, "adsEnabled"

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Lcom/narvii/util/JacksonUtils;->nodeBoolean(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    return v0
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x0

    .line 1395
    iput-boolean v0, p0, Lcom/narvii/account/AccountService;->isResumed:Z

    return-void
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

    .line 1009
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 1010
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getKeychain()Lcom/narvii/account/AccountKeychain;

    move-result-object v1

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1016
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 1017
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    const-string v3, "/auth/login"

    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 1018
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "deviceID"

    invoke-virtual {v0, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 1019
    iget-object v2, v1, Lcom/narvii/account/AccountKeychain;->email:Ljava/lang/String;

    const-string v3, "email"

    invoke-virtual {v0, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 1020
    iget-object v1, v1, Lcom/narvii/account/AccountKeychain;->secret:Ljava/lang/String;

    const-string/jumbo v2, "secret"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 1021
    sget v1, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "clientType"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 1022
    sget-object v1, Lcom/narvii/util/http/ApiService;->DISABLE_RELOGIN_TAG:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 1023
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 1025
    new-instance v1, Lcom/narvii/account/AccountService$9;

    iget-object v2, p0, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v1, p0, v2, p1}, Lcom/narvii/account/AccountService$9;-><init>(Lcom/narvii/account/AccountService;Lcom/narvii/app/NVContext;Lcom/narvii/util/Callback;)V

    .line 1050
    iget-object p1, p0, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    const-string v2, "api"

    invoke-interface {p1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 1051
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 1012
    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    return-void
.end method

.method public removeCommunityReminderChangeListener(Lcom/narvii/account/AccountService$CommunityReminderChangeInGlobalListener;)V
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/narvii/account/AccountService;->communityReminderDispatcher:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    return-void
.end method

.method public removeFanClubListListener(Lcom/narvii/account/AccountService$FanClubListListener;)V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/narvii/account/AccountService;->fanClubListListeners:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    return-void
.end method

.method public removeProfileListener(Lcom/narvii/account/AccountService$ProfileListener;)V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/narvii/account/AccountService;->listeners:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    return-void
.end method

.method public removeRecentVisitorListener(Lcom/narvii/account/AccountService$RecentVisitorListener;)V
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/narvii/account/AccountService;->recentVisitorListeners:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    return-void
.end method

.method public resume()V
    .locals 1

    const/4 v0, 0x1

    .line 1391
    iput-boolean v0, p0, Lcom/narvii/account/AccountService;->isResumed:Z

    return-void
.end method

.method public saveDevOptions(Ljava/lang/String;)V
    .locals 2

    .line 474
    iget-object v0, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    :cond_0
    const-string v1, "dev-option"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setKeychain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1068
    new-instance v0, Lcom/narvii/account/AccountKeychain;

    invoke-direct {v0, p1, p2, p3}, Lcom/narvii/account/AccountKeychain;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getKeychain()Lcom/narvii/account/AccountKeychain;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1070
    invoke-virtual {p1, v0}, Lcom/narvii/account/AccountKeychain;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1071
    :cond_0
    iget-object v1, p0, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/account/AccountKeychain;->writeTo(Landroid/content/Context;)V

    .line 1074
    invoke-direct {p0}, Lcom/narvii/account/AccountService;->crossAppsWrite()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/narvii/account/AccountKeychain;->email:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/narvii/account/AccountKeychain;->secret:Ljava/lang/String;

    .line 1075
    invoke-static {p3, p1}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1076
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/narvii/account/AccountService;->crossAppsWriteKeychain(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public start()V
    .locals 4

    .line 1399
    iget-object v0, p0, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/account/AccountService;->visitPrivacyReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.narvii.action.PRIVACY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1400
    iget-object v0, p0, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/account/AccountService;->visitPrivacyReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 1404
    iget-object v0, p0, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/account/AccountService;->visitPrivacyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public updateAccountJsonSilence(Ljava/lang/String;)V
    .locals 2

    .line 591
    iget-object v0, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "account"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public updateAccountSilently(Lcom/narvii/model/User;)V
    .locals 2

    .line 595
    iget-object v0, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "account"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public updateAminoId(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    const/4 v0, 0x0

    .line 600
    invoke-virtual {p0, v0}, Lcom/narvii/account/AccountService;->getUserProfile(I)Lcom/narvii/model/User;

    move-result-object v1

    .line 601
    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/User;

    .line 602
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getAminoId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->isAminoIdEditable()Z

    move-result v2

    if-eq v2, p3, :cond_2

    .line 603
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getAccountJson()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    const-string v3, "aminoId"

    .line 607
    invoke-virtual {v2, v3, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v3, "aminoIdEditable"

    .line 608
    invoke-virtual {v2, v3, p3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 609
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/narvii/account/AccountService;->updateAccountJsonSilence(Ljava/lang/String;)V

    .line 611
    :cond_2
    iget-object p3, v1, Lcom/narvii/model/User;->aminoId:Ljava/lang/String;

    invoke-static {p3, p1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 612
    iput-object p1, v1, Lcom/narvii/model/User;->aminoId:Ljava/lang/String;

    const/4 p1, 0x1

    .line 613
    invoke-virtual {p0, v1, p2, v0, p1}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;Ljava/lang/String;IZ)V

    :cond_3
    return-void
.end method

.method public updateCheckInHistoryInfo(Lcom/narvii/model/CheckInHistory;JZ)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 911
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 913
    :cond_1
    iget-object v0, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "checkInHistory_t"

    invoke-virtual {p0, v1}, Lcom/narvii/account/AccountService;->getPrefsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {p2, p3, v2, v3}, Lcom/narvii/util/Utils;->shouldUpdateTimestamp(JJ)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 916
    :cond_2
    iget-object v0, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 917
    invoke-virtual {p0, v1}, Lcom/narvii/account/AccountService;->getPrefsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const/4 p2, 0x0

    .line 920
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 921
    iget-object v1, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "checkInHistory"

    invoke-virtual {p0, v2}, Lcom/narvii/account/AccountService;->getPrefsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 922
    invoke-virtual {p0, v2}, Lcom/narvii/account/AccountService;->getPrefsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 p2, 0x1

    .line 926
    :cond_3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz p2, :cond_4

    if-eqz p4, :cond_4

    .line 928
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

    .line 903
    invoke-static {p2}, Lcom/narvii/util/DateTimeFormatter;->parseISO8601(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/narvii/account/AccountService;->updateCheckInHistoryInfo(Lcom/narvii/model/CheckInHistory;JZ)V

    return-void
.end method

.method public updateCheckInInfo(ZIJZ)V
    .locals 5

    .line 810
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 812
    :cond_0
    iget-object v0, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "checkIn_t"

    invoke-virtual {p0, v1}, Lcom/narvii/account/AccountService;->getPrefsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {p3, p4, v2, v3}, Lcom/narvii/util/Utils;->shouldUpdateTimestamp(JJ)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 815
    :cond_1
    iget-object v0, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 816
    invoke-virtual {p0, v1}, Lcom/narvii/account/AccountService;->getPrefsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 818
    iget-object p3, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    const-string p4, "checkInToday"

    invoke-virtual {p0, p4}, Lcom/narvii/account/AccountService;->getPrefsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p3, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    const/4 v1, 0x1

    if-eq p1, p3, :cond_2

    .line 819
    invoke-virtual {p0, p4}, Lcom/narvii/account/AccountService;->getPrefsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/4 p3, 0x1

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    .line 822
    :goto_0
    iget-object p4, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "checkInDays"

    invoke-virtual {p0, v3}, Lcom/narvii/account/AccountService;->getPrefsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p4, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p4

    if-eq p2, p4, :cond_3

    .line 823
    invoke-virtual {p0, v3}, Lcom/narvii/account/AccountService;->getPrefsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p3, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const/4 p3, 0x1

    .line 827
    :cond_3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz p3, :cond_4

    if-eqz p5, :cond_4

    .line 829
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

    .line 938
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

    if-nez p1, :cond_0

    return-void

    .line 842
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 843
    iget-object v0, v1, Lcom/narvii/model/User;->fanClubList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 844
    invoke-virtual {p2}, Lcom/narvii/influencer/FanClub;->id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 846
    iget-object v2, v1, Lcom/narvii/model/User;->fanClubList:Ljava/util/List;

    invoke-interface {v2, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 847
    iget-object p2, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v0, "profile_t"

    invoke-virtual {p0, p1, v0}, Lcom/narvii/account/AccountService;->getPrefsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-interface {p2, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const/4 v5, 0x0

    move-object v0, p0

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;JIZ)V

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

    if-nez p1, :cond_0

    return-void

    .line 856
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v1

    if-eqz v1, :cond_2

    if-nez p2, :cond_1

    .line 859
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, v1, Lcom/narvii/model/User;->fanClubList:Ljava/util/List;

    goto :goto_0

    .line 861
    :cond_1
    iput-object p2, v1, Lcom/narvii/model/User;->fanClubList:Ljava/util/List;

    .line 863
    :goto_0
    iget-object p2, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v0, "profile_t"

    invoke-virtual {p0, p1, v0}, Lcom/narvii/account/AccountService;->getPrefsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-interface {p2, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const/4 v5, 0x0

    move-object v0, p0

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;JIZ)V

    :cond_2
    return-void
.end method

.method public updateNoticeCount(IILjava/lang/String;Z)V
    .locals 7

    .line 739
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 741
    :cond_0
    invoke-static {p3}, Lcom/narvii/util/DateTimeFormatter;->parseISO8601(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "noticeCount_t"

    .line 742
    invoke-virtual {p0, p1, v3}, Lcom/narvii/account/AccountService;->getPrefsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-interface {v2, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 741
    invoke-static {v0, v1, v4, v5}, Lcom/narvii/util/Utils;->shouldUpdateTimestamp(JJ)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 745
    :cond_1
    invoke-static {p3}, Lcom/narvii/util/DateTimeFormatter;->parseISO8601(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 746
    iget-object p3, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    .line 747
    invoke-virtual {p0, p1, v3}, Lcom/narvii/account/AccountService;->getPrefsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 748
    iget-object v0, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "noticeCount"

    invoke-virtual {p0, p1, v1}, Lcom/narvii/account/AccountService;->getPrefsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq p2, v0, :cond_2

    .line 749
    invoke-virtual {p0, p1, v1}, Lcom/narvii/account/AccountService;->getPrefsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 750
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz p4, :cond_3

    .line 752
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object p3

    const-string p4, "account"

    invoke-virtual {p3, p1, p4}, Lcom/narvii/app/NVApplication;->getService(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/account/AccountService;

    if-eqz p3, :cond_3

    .line 754
    invoke-virtual {p3}, Lcom/narvii/account/AccountService;->getProfileDispatcher()Lcom/narvii/util/EventDispatcher;

    move-result-object p3

    new-instance p4, Lcom/narvii/account/AccountService$3;

    invoke-direct {p4, p0, p2}, Lcom/narvii/account/AccountService$3;-><init>(Lcom/narvii/account/AccountService;I)V

    invoke-virtual {p3, p4}, Lcom/narvii/util/EventDispatcher;->safeDispatch(Lcom/narvii/util/Callback;)V

    goto :goto_0

    .line 763
    :cond_2
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 766
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/narvii/account/AccountService;->isMasterGlobal()Z

    move-result p3

    if-eqz p3, :cond_4

    if-lez p1, :cond_4

    .line 767
    iget-object p3, p0, Lcom/narvii/account/AccountService;->communityReminderDispatcher:Lcom/narvii/util/EventDispatcher;

    new-instance p4, Lcom/narvii/account/AccountService$4;

    invoke-direct {p4, p0, p1, p2}, Lcom/narvii/account/AccountService$4;-><init>(Lcom/narvii/account/AccountService;II)V

    invoke-virtual {p3, p4}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    :cond_4
    return-void
.end method

.method public updateNoticeCount(ILjava/lang/String;Z)V
    .locals 1

    .line 735
    iget v0, p0, Lcom/narvii/account/AccountService;->communityId:I

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/narvii/account/AccountService;->updateNoticeCount(IILjava/lang/String;Z)V

    return-void
.end method

.method public updateNotificationCount(IIJZ)V
    .locals 5

    .line 694
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 696
    :cond_0
    iget-object v0, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "notificationCount_t"

    invoke-virtual {p0, p1, v1}, Lcom/narvii/account/AccountService;->getPrefsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {p3, p4, v2, v3}, Lcom/narvii/util/Utils;->shouldUpdateTimestamp(JJ)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 699
    :cond_1
    iget-object v0, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 700
    invoke-virtual {p0, p1, v1}, Lcom/narvii/account/AccountService;->getPrefsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 701
    iget-object p3, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    const-string p4, "notificationCount"

    invoke-virtual {p0, p1, p4}, Lcom/narvii/account/AccountService;->getPrefsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p3, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p3

    if-eq p2, p3, :cond_2

    .line 702
    invoke-virtual {p0, p1, p4}, Lcom/narvii/account/AccountService;->getPrefsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p3, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 703
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz p5, :cond_3

    .line 705
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object p3

    const-string p4, "account"

    invoke-virtual {p3, p1, p4}, Lcom/narvii/app/NVApplication;->getService(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/account/AccountService;

    if-eqz p3, :cond_3

    .line 707
    invoke-virtual {p3}, Lcom/narvii/account/AccountService;->getProfileDispatcher()Lcom/narvii/util/EventDispatcher;

    move-result-object p3

    new-instance p4, Lcom/narvii/account/AccountService$1;

    invoke-direct {p4, p0, p2}, Lcom/narvii/account/AccountService$1;-><init>(Lcom/narvii/account/AccountService;I)V

    invoke-virtual {p3, p4}, Lcom/narvii/util/EventDispatcher;->safeDispatch(Lcom/narvii/util/Callback;)V

    goto :goto_0

    .line 716
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 720
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/narvii/account/AccountService;->isMasterGlobal()Z

    move-result p3

    if-eqz p3, :cond_4

    if-lez p1, :cond_4

    .line 721
    iget-object p3, p0, Lcom/narvii/account/AccountService;->communityReminderDispatcher:Lcom/narvii/util/EventDispatcher;

    new-instance p4, Lcom/narvii/account/AccountService$2;

    invoke-direct {p4, p0, p1, p2}, Lcom/narvii/account/AccountService$2;-><init>(Lcom/narvii/account/AccountService;II)V

    invoke-virtual {p3, p4}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    :cond_4
    return-void
.end method

.method public updateNotificationCount(IILjava/lang/String;Z)V
    .locals 6

    .line 690
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

    .line 686
    iget v1, p0, Lcom/narvii/account/AccountService;->communityId:I

    move-object v0, p0

    move v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/narvii/account/AccountService;->updateNotificationCount(IIJZ)V

    return-void
.end method

.method public updateNotificationCount(ILjava/lang/String;Z)V
    .locals 2

    .line 731
    invoke-static {p2}, Lcom/narvii/util/DateTimeFormatter;->parseISO8601(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/narvii/account/AccountService;->updateNotificationCount(IJZ)V

    return-void
.end method

.method public updateOnlineStatus(IJZ)V
    .locals 5

    .line 947
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 949
    :cond_0
    iget-object v0, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "onlineStatus_t"

    invoke-virtual {p0, v1}, Lcom/narvii/account/AccountService;->getPrefsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {p2, p3, v2, v3}, Lcom/narvii/util/Utils;->shouldUpdateTimestamp(JJ)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 952
    :cond_1
    iget-object v0, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 953
    invoke-virtual {p0, v1}, Lcom/narvii/account/AccountService;->getPrefsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 955
    iget-object p2, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    const-string p3, "onlineStatus"

    invoke-virtual {p0, p3}, Lcom/narvii/account/AccountService;->getPrefsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    if-eq p1, p2, :cond_2

    .line 956
    invoke-virtual {p0, p3}, Lcom/narvii/account/AccountService;->getPrefsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const/4 v2, 0x1

    .line 959
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz v2, :cond_3

    if-eqz p4, :cond_3

    .line 961
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

    .line 971
    invoke-static {p2}, Lcom/narvii/util/DateTimeFormatter;->parseISO8601(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/narvii/account/AccountService;->updateOnlineStatus(IJZ)V

    return-void
.end method

.method public updateProfile(Lcom/narvii/model/User;JIZ)V
    .locals 9

    .line 510
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 513
    :cond_0
    iget-object v0, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo p1, "update profile which doesnot match the current user"

    .line 514
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    return-void

    .line 517
    :cond_1
    sget-object v0, Lcom/narvii/account/AccountService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "try to update profile x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/narvii/account/AccountService;->communityId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    iget-object v0, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "profile_t"

    invoke-virtual {p0, p4, v1}, Lcom/narvii/account/AccountService;->getPrefsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 519
    invoke-static {p2, p3, v2, v3}, Lcom/narvii/util/Utils;->shouldUpdateTimestamp(JJ)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_d

    .line 520
    invoke-virtual {p0, p4}, Lcom/narvii/account/AccountService;->getUserProfile(I)Lcom/narvii/model/User;

    move-result-object v0

    .line 522
    iget-object v4, p0, Lcom/narvii/account/AccountService;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 523
    invoke-virtual {p0, p4, v1}, Lcom/narvii/account/AccountService;->getPrefsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 524
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/User;

    .line 526
    iget-object v5, v1, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v6, 0x0

    if-nez v5, :cond_4

    if-eqz v0, :cond_3

    .line 529
    iget-object v5, v0, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz v5, :cond_3

    .line 530
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->size()I

    move-result v5

    if-ne v5, v3, :cond_2

    iget-object v5, v0, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    new-array v7, v3, [Ljava/lang/String;

    const-string v8, "hideUserProfile"

    aput-object v8, v7, v2

    invoke-static {v5, v7}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 533
    :cond_2
    iget-object v5, v0, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    iput-object v5, v1, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto :goto_1

    .line 531
    :cond_3
    :goto_0
    iput-object v6, v1, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 538
    :cond_4
    :goto_1
    iget-object v5, v1, Lcom/narvii/model/User;->fanClubList:Ljava/util/List;

    if-nez v5, :cond_6

    if-nez v0, :cond_5

    move-object v5, v6

    goto :goto_2

    .line 539
    :cond_5
    iget-object v5, v0, Lcom/narvii/model/User;->fanClubList:Ljava/util/List;

    :goto_2
    iput-object v5, v1, Lcom/narvii/model/User;->fanClubList:Ljava/util/List;

    .line 541
    :cond_6
    iget-object v5, v1, Lcom/narvii/model/User;->fanClubList:Ljava/util/List;

    if-nez v0, :cond_7

    goto :goto_3

    :cond_7
    iget-object v6, v0, Lcom/narvii/model/User;->fanClubList:Ljava/util/List;

    :goto_3
    invoke-static {v5, v6}, Lcom/narvii/util/Utils;->isListObjectEquals(Ljava/util/List;Ljava/util/List;)Z

    move-result v5

    xor-int/2addr v5, v3

    .line 542
    invoke-virtual {v1, v0}, Lcom/narvii/model/User;->checkEqual(Ljava/lang/Object;)I

    move-result v0

    const/4 v6, 0x2

    if-ne v0, v6, :cond_8

    const/4 v6, 0x1

    goto :goto_4

    :cond_8
    const/4 v6, 0x0

    :goto_4
    if-nez v0, :cond_9

    if-eqz v5, :cond_a

    .line 545
    :cond_9
    invoke-direct {p0, p4}, Lcom/narvii/account/AccountService;->getUserProfileKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v0, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_a
    if-eqz v6, :cond_c

    .line 549
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getProfileDispatcher()Lcom/narvii/util/EventDispatcher;

    move-result-object v0

    new-instance v4, Lcom/narvii/account/-$$Lambda$AccountService$WtESRpYWVn4nv1CQfSifJwy7kzc;

    invoke-direct {v4, p4, v1}, Lcom/narvii/account/-$$Lambda$AccountService$WtESRpYWVn4nv1CQfSifJwy7kzc;-><init>(ILcom/narvii/model/User;)V

    invoke-virtual {v0, v4}, Lcom/narvii/util/EventDispatcher;->safeDispatch(Lcom/narvii/util/Callback;)V

    if-eqz p5, :cond_b

    .line 551
    iget v0, p0, Lcom/narvii/account/AccountService;->communityId:I

    if-ne v0, p4, :cond_b

    .line 552
    iget-object p4, p0, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    const-string v0, "notification"

    invoke-interface {p4, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/narvii/notification/NotificationCenter;

    .line 553
    new-instance v0, Lcom/narvii/notification/Notification;

    const-string/jumbo v4, "update"

    invoke-direct {v0, v4, v1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 554
    invoke-virtual {p4, v0}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 556
    :cond_b
    sget-object p4, Lcom/narvii/account/AccountService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatch profile change x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/narvii/account/AccountService;->communityId:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
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
    if-eqz v5, :cond_d

    .line 561
    iget-object p4, p0, Lcom/narvii/account/AccountService;->fanClubListListeners:Lcom/narvii/util/EventDispatcher;

    new-instance v0, Lcom/narvii/account/-$$Lambda$AccountService$wiR6pJPgcKzNkwkTzDNc4Nfk-L8;

    invoke-direct {v0, v1}, Lcom/narvii/account/-$$Lambda$AccountService$wiR6pJPgcKzNkwkTzDNc4Nfk-L8;-><init>(Lcom/narvii/model/User;)V

    invoke-virtual {p4, v0}, Lcom/narvii/util/EventDispatcher;->safeDispatch(Lcom/narvii/util/Callback;)V

    .line 564
    :cond_d
    iget-object p1, p1, Lcom/narvii/model/User;->settings:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz p1, :cond_e

    new-array p4, v3, [Ljava/lang/String;

    const-string v0, "onlineStatus"

    aput-object v0, p4, v2

    .line 565
    invoke-static {p1, p4}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/narvii/account/AccountService;->updateOnlineStatus(IJZ)V

    :cond_e
    return-void
.end method

.method public updateProfile(Lcom/narvii/model/User;JZ)V
    .locals 6

    .line 495
    iget v4, p0, Lcom/narvii/account/AccountService;->communityId:I

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;JIZ)V

    return-void
.end method

.method public updateProfile(Lcom/narvii/model/User;Ljava/lang/String;IZ)V
    .locals 6

    .line 499
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

    .line 573
    :cond_0
    invoke-virtual {p0, p3}, Lcom/narvii/account/AccountService;->getUserProfile(I)Lcom/narvii/model/User;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    .line 574
    :cond_1
    iget-object v0, v0, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    :goto_0
    if-eqz p5, :cond_3

    .line 577
    iget-object p5, p1, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-static {p5}, Lcom/narvii/post/BackgroundUtils;->getBackgroundMediaArray(Lcom/fasterxml/jackson/databind/node/ObjectNode;)[Lcom/narvii/model/Media;

    move-result-object p5

    if-eqz p5, :cond_2

    .line 580
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 581
    invoke-static {v1, p5}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 583
    :cond_2
    invoke-static {v0, v1}, Lcom/narvii/post/BackgroundUtils;->setBackgroundMediaList(Lcom/fasterxml/jackson/databind/node/ObjectNode;Ljava/util/List;)V

    .line 586
    :cond_3
    iput-object v0, p1, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 587
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;Ljava/lang/String;IZ)V

    return-void
.end method

.method public updateProfile(Lcom/narvii/model/User;Ljava/lang/String;Z)V
    .locals 2

    .line 491
    invoke-static {p2}, Lcom/narvii/util/DateTimeFormatter;->parseISO8601(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;JZ)V

    return-void
.end method

.method public updateRecentVisitorCount()V
    .locals 7

    .line 1420
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1423
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1424
    sget-boolean v2, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x2710

    goto :goto_0

    :cond_1
    const-wide/32 v2, 0x927c0

    .line 1425
    :goto_0
    iget-wide v4, p0, Lcom/narvii/account/AccountService;->lastRequestRecentVisitorCountTime:J

    sub-long v4, v0, v4

    cmp-long v6, v4, v2

    if-lez v6, :cond_2

    .line 1426
    iput-wide v0, p0, Lcom/narvii/account/AccountService;->lastRequestRecentVisitorCountTime:J

    const/4 v0, 0x0

    .line 1427
    invoke-direct {p0, v0}, Lcom/narvii/account/AccountService;->sendReminderStatRequest(Z)V

    :cond_2
    return-void
.end method

.method public updateVisitorSetting(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 10

    .line 618
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getAccountJson()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "extensions"

    .line 623
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez v2, :cond_1

    .line 625
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v2

    :cond_1
    const-string/jumbo v3, "visitSettings"

    .line 628
    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez v4, :cond_2

    .line 630
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v4

    :cond_2
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz p1, :cond_3

    .line 632
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    new-array v8, v6, [Ljava/lang/String;

    const-string/jumbo v9, "privacyMode"

    aput-object v9, v8, v5

    invoke-static {v4, v8}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result v8

    if-eq v7, v8, :cond_3

    .line 633
    invoke-virtual {v4, v9, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-eqz p2, :cond_4

    .line 636
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    new-array v8, v6, [Ljava/lang/String;

    const-string v9, "notificationStatus"

    aput-object v9, v8, v5

    invoke-static {v4, v8}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result v5

    if-eq v7, v5, :cond_4

    .line 637
    invoke-virtual {v4, v9, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 p1, 0x1

    .line 640
    :cond_4
    invoke-virtual {v2, v3, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 641
    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    if-eqz p1, :cond_5

    .line 643
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.narvii.action.PRIVACY_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 644
    iget-object p2, p0, Lcom/narvii/account/AccountService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 646
    :cond_5
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/account/AccountService;->updateAccountJsonSilence(Ljava/lang/String;)V

    return-void
.end method
