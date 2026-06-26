.class public Lcom/narvii/account/LoginActivity;
.super Lcom/narvii/app/NVActivity;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/account/LoginActivity$SEL;,
        Lcom/narvii/account/LoginActivity$PromptType;
    }
.end annotation


# static fields
.field static final JOIN_REQUEST:I = 0x2

.field public static final NOTIFY_ID:I = 0x1201

.field public static instance:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/narvii/account/LoginActivity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field accMax:[F

.field accMin:[F

.field account:Lcom/narvii/account/AccountService;

.field authPromptLogged:Z

.field autoSignuped:Z

.field private creatingAccount:Z

.field private crossAppFinishing:Z

.field private density:F

.field private eventLogProfileListener:Lcom/narvii/services/EventLogProfileService$EventLogProfileListener;

.field fadeIn:Landroid/view/animation/Animation;

.field fadeOut:Landroid/view/animation/Animation;

.field private finishPageFinishing:Z

.field private final finishPageReceiver:Landroid/content/BroadcastReceiver;

.field gyoMax:[F

.field gyoMin:[F

.field private ic:I

.field public isFinishingCreateAccount:Z

.field private isRequesting:Z

.field public joiningCommunity:Z

.field lightMax:[F

.field lightMin:[F

.field loggingMethod:Ljava/lang/String;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mc:I

.field private md:Ljava/security/MessageDigest;

.field private final receiver:Landroid/content/BroadcastReceiver;

.field private final scheduleSignupWakeup:Ljava/lang/Runnable;

.field private sel:Landroid/hardware/SensorEventListener;

.field signupWakeup:Z

.field startingActivity:Z

.field startingRequestCodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field statEmailVerificationSkipped:Ljava/lang/Boolean;

.field statErrorCode:I

.field statMaxLoginStep:I

.field statMaxSignupSetp:I

.field statType:I

.field submittingFragment:Lcom/narvii/account/AccountBaseFragment;

.field final updateViewsR:Ljava/lang/Runnable;

.field private ut:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 110
    invoke-direct {p0}, Lcom/narvii/app/NVActivity;-><init>()V

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/account/LoginActivity;->startingRequestCodes:Ljava/util/ArrayList;

    .line 454
    new-instance v0, Lcom/narvii/account/LoginActivity$1;

    invoke-direct {v0, p0}, Lcom/narvii/account/LoginActivity$1;-><init>(Lcom/narvii/account/LoginActivity;)V

    iput-object v0, p0, Lcom/narvii/account/LoginActivity;->scheduleSignupWakeup:Ljava/lang/Runnable;

    .line 465
    new-instance v0, Lcom/narvii/account/LoginActivity$2;

    invoke-direct {v0, p0}, Lcom/narvii/account/LoginActivity$2;-><init>(Lcom/narvii/account/LoginActivity;)V

    iput-object v0, p0, Lcom/narvii/account/LoginActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 486
    new-instance v0, Lcom/narvii/account/LoginActivity$3;

    invoke-direct {v0, p0}, Lcom/narvii/account/LoginActivity$3;-><init>(Lcom/narvii/account/LoginActivity;)V

    iput-object v0, p0, Lcom/narvii/account/LoginActivity;->finishPageReceiver:Landroid/content/BroadcastReceiver;

    .line 792
    new-instance v0, Lcom/narvii/account/LoginActivity$5;

    invoke-direct {v0, p0}, Lcom/narvii/account/LoginActivity$5;-><init>(Lcom/narvii/account/LoginActivity;)V

    iput-object v0, p0, Lcom/narvii/account/LoginActivity;->updateViewsR:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$102(Lcom/narvii/account/LoginActivity;Z)Z
    .locals 0

    .line 110
    iput-boolean p1, p0, Lcom/narvii/account/LoginActivity;->crossAppFinishing:Z

    return p1
.end method

.method static synthetic access$202(Lcom/narvii/account/LoginActivity;Z)Z
    .locals 0

    .line 110
    iput-boolean p1, p0, Lcom/narvii/account/LoginActivity;->finishPageFinishing:Z

    return p1
.end method

.method static synthetic access$300(Lcom/narvii/account/LoginActivity;)Lcom/narvii/services/EventLogProfileService$EventLogProfileListener;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/narvii/account/LoginActivity;->eventLogProfileListener:Lcom/narvii/services/EventLogProfileService$EventLogProfileListener;

    return-object p0
.end method

.method static synthetic access$302(Lcom/narvii/account/LoginActivity;Lcom/narvii/services/EventLogProfileService$EventLogProfileListener;)Lcom/narvii/services/EventLogProfileService$EventLogProfileListener;
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/narvii/account/LoginActivity;->eventLogProfileListener:Lcom/narvii/services/EventLogProfileService$EventLogProfileListener;

    return-object p1
.end method

.method static synthetic access$400(Lcom/narvii/account/LoginActivity;Z)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lcom/narvii/account/LoginActivity;->finishWithResult(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/narvii/account/LoginActivity;ZLjava/lang/String;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/narvii/account/LoginActivity;->checkWhetherNeedToJoin(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/narvii/account/LoginActivity;ZLjava/lang/String;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/narvii/account/LoginActivity;->joinCommunity(ZLjava/lang/String;)V

    return-void
.end method

.method private checkWhetherNeedToJoin(ZLjava/lang/String;)V
    .locals 4

    .line 1220
    sget v0, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    .line 1222
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    const-string v1, "config"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 1223
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "community/info"

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->scopeCommunityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    const-string v1, "api"

    .line 1224
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 1225
    new-instance v2, Lcom/narvii/account/LoginActivity$7;

    const-class v3, Lcom/narvii/community/FullCommunityResponse;

    invoke-direct {v2, p0, v3, p1, p2}, Lcom/narvii/account/LoginActivity$7;-><init>(Lcom/narvii/account/LoginActivity;Ljava/lang/Class;ZLjava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    goto :goto_0

    .line 1247
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/narvii/account/LoginActivity;->joinCommunity(ZLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private finishWithResult(Z)V
    .locals 2

    .line 719
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "newAccount"

    .line 720
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 721
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 722
    invoke-virtual {p0}, Lcom/narvii/account/LoginActivity;->finish()V

    return-void
.end method

.method private getIds(I)[B
    .locals 13

    const/4 v0, 0x0

    const-string v1, "SHA-1"

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq p1, v3, :cond_8

    const/16 v6, 0x10

    if-eq p1, v2, :cond_4

    const/4 v7, 0x4

    if-eq p1, v7, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    goto/16 :goto_5

    .line 973
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/narvii/account/LoginActivity;->md:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    return-object p1

    .line 948
    :cond_1
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-array v9, v2, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v9, v5

    const-string/jumbo v1, "width"

    aput-object v1, v9, v4

    const-string v1, "height"

    aput-object v1, v9, v3

    .line 955
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 956
    sget-object v8, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 958
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    iput v2, p0, Lcom/narvii/account/LoginActivity;->ic:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/security/MessageDigest;->update([B)V

    if-eqz v1, :cond_3

    .line 959
    invoke-interface {v1}, Landroid/database/Cursor;->moveToLast()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    .line 962
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/security/MessageDigest;->update([B)V

    add-int/2addr v2, v4

    if-ge v2, v6, :cond_3

    .line 963
    invoke-interface {v1}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v7

    if-nez v7, :cond_2

    .line 965
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 969
    :catch_0
    :try_start_2
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    return-object p1

    .line 926
    :cond_4
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    .line 927
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    .line 928
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 929
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v6, :cond_6

    .line 931
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x20000

    .line 932
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 933
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 934
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v3, :cond_5

    move-object v2, v0

    goto :goto_1

    :cond_5
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 935
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/security/MessageDigest;->update([B)V

    goto :goto_0

    .line 938
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 939
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/security/MessageDigest;->update([B)V

    goto :goto_2

    .line 943
    :cond_7
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    return-object p1

    .line 897
    :cond_8
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 900
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/security/MessageDigest;->update([B)V

    new-array v2, v2, [Ljava/lang/String;

    const-string v6, "/proc/cpuinfo"

    aput-object v6, v2, v5

    const-string v6, "/proc/partitions"

    aput-object v6, v2, v4

    const-string v4, "/proc/version"

    aput-object v4, v2, v3

    .line 904
    array-length v3, v2

    const/4 v4, 0x0

    :goto_3
    const/4 v6, -0x1

    if-ge v4, v3, :cond_a

    aget-object v7, v2, v4

    .line 905
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 907
    :goto_4
    invoke-virtual {v8, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    if-eq v7, v6, :cond_9

    .line 908
    invoke-virtual {p1, v1, v5, v7}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_4

    .line 910
    :cond_9
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 913
    :cond_a
    new-instance v2, Ljava/io/FileInputStream;

    const-string v3, "/proc/meminfo"

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 914
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .line 915
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 916
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1, v5, v3}, Ljava/lang/String;-><init>([BII)V

    const-string v1, "MemTotal:"

    .line 917
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v1, 0xa

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v6, :cond_b

    .line 918
    invoke-virtual {v2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 921
    :cond_b
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object p1

    :catch_1
    :goto_5
    return-object v0
.end method

.method private getVals()[I
    .locals 14

    .line 987
    iget-object v0, p0, Lcom/narvii/account/LoginActivity;->lightMin:[F

    const/high16 v1, -0x3e600000    # -20.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x2

    const/high16 v4, 0x41700000    # 15.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v0, :cond_3

    iget-object v7, p0, Lcom/narvii/account/LoginActivity;->lightMax:[F

    if-eqz v7, :cond_3

    .line 988
    aget v8, v7, v5

    aget v0, v0, v5

    sub-float/2addr v8, v0

    cmpl-float v0, v8, v6

    if-nez v0, :cond_1

    .line 990
    aget v0, v7, v5

    cmpl-float v0, v0, v6

    if-nez v0, :cond_0

    const/high16 v0, -0x3e600000    # -20.0f

    goto :goto_0

    :cond_0
    const/high16 v0, -0x3f600000    # -5.0f

    :goto_0
    const/4 v7, 0x2

    goto :goto_1

    :cond_1
    mul-float v8, v8, v2

    .line 997
    invoke-static {v4, v8}, Ljava/lang/Math;->min(FF)F

    move-result v0

    cmpg-float v7, v0, v4

    if-gez v7, :cond_2

    const/4 v7, 0x4

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    add-float/2addr v0, v6

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 1005
    :goto_2
    iget-object v8, p0, Lcom/narvii/account/LoginActivity;->accMin:[F

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/narvii/account/LoginActivity;->accMax:[F

    if-eqz v8, :cond_7

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1007
    :goto_3
    iget-object v10, p0, Lcom/narvii/account/LoginActivity;->accMax:[F

    array-length v11, v10

    if-ge v8, v11, :cond_4

    .line 1008
    aget v10, v10, v8

    iget-object v11, p0, Lcom/narvii/account/LoginActivity;->accMin:[F

    aget v11, v11, v8

    sub-float/2addr v10, v11

    add-float/2addr v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    cmpl-float v8, v9, v6

    if-nez v8, :cond_5

    const/high16 v8, -0x3e100000    # -30.0f

    or-int/lit8 v7, v7, 0x8

    const/high16 v9, -0x3e100000    # -30.0f

    goto :goto_4

    :cond_5
    const/high16 v8, 0x40400000    # 3.0f

    mul-float v9, v9, v8

    const/high16 v8, 0x41f00000    # 30.0f

    .line 1014
    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    cmpg-float v8, v9, v8

    if-gez v8, :cond_6

    or-int/lit8 v7, v7, 0x10

    :cond_6
    :goto_4
    add-float/2addr v0, v9

    .line 1022
    :cond_7
    iget-object v8, p0, Lcom/narvii/account/LoginActivity;->gyoMin:[F

    const/high16 v9, -0x3ee00000    # -10.0f

    const/high16 v10, 0x41200000    # 10.0f

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/narvii/account/LoginActivity;->gyoMax:[F

    if-eqz v8, :cond_b

    const/4 v8, 0x0

    const/4 v11, 0x0

    .line 1024
    :goto_5
    iget-object v12, p0, Lcom/narvii/account/LoginActivity;->gyoMax:[F

    array-length v13, v12

    if-ge v8, v13, :cond_8

    .line 1025
    aget v12, v12, v8

    iget-object v13, p0, Lcom/narvii/account/LoginActivity;->gyoMin:[F

    aget v13, v13, v8

    sub-float/2addr v12, v13

    add-float/2addr v11, v12

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_8
    cmpl-float v8, v11, v6

    if-nez v8, :cond_9

    or-int/lit8 v4, v7, 0x20

    move v7, v4

    const/high16 v8, -0x3ee00000    # -10.0f

    goto :goto_6

    :cond_9
    mul-float v11, v11, v10

    .line 1031
    invoke-static {v4, v11}, Ljava/lang/Math;->min(FF)F

    move-result v8

    cmpg-float v4, v8, v4

    if-gez v4, :cond_a

    or-int/lit8 v4, v7, 0x40

    move v7, v4

    :cond_a
    :goto_6
    add-float/2addr v0, v8

    .line 1039
    :cond_b
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v8, "android.hardware.bluetooth"

    .line 1041
    invoke-virtual {v4, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    add-float/2addr v0, v10

    goto :goto_7

    :cond_c
    or-int/lit16 v7, v7, 0x400

    :goto_7
    const-string v8, "android.hardware.bluetooth_le"

    .line 1047
    invoke-virtual {v4, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    const/high16 v11, 0x40a00000    # 5.0f

    if-eqz v8, :cond_d

    add-float/2addr v0, v11

    goto :goto_8

    :cond_d
    or-int/lit16 v7, v7, 0x800

    :goto_8
    const-string v8, "android.hardware.camera.autofocus"

    .line 1053
    invoke-virtual {v4, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    add-float/2addr v0, v10

    goto :goto_9

    :cond_e
    or-int/lit16 v7, v7, 0x1000

    :goto_9
    const-string v8, "android.hardware.camera.flash"

    .line 1059
    invoke-virtual {v4, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    add-float/2addr v0, v10

    goto :goto_a

    :cond_f
    or-int/lit16 v7, v7, 0x2000

    :goto_a
    const-string v8, "android.hardware.sensor.barometer"

    .line 1065
    invoke-virtual {v4, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10

    add-float/2addr v0, v11

    goto :goto_b

    :cond_10
    or-int/lit16 v7, v7, 0x4000

    :goto_b
    const-string v8, "android.hardware.sensor.compass"

    .line 1071
    invoke-virtual {v4, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_11

    add-float/2addr v0, v10

    goto :goto_c

    :cond_11
    const v8, 0x8000

    or-int/2addr v7, v8

    :goto_c
    const-string v8, "android.hardware.sensor.gyroscope"

    .line 1077
    invoke-virtual {v4, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    add-float/2addr v0, v10

    goto :goto_d

    :cond_12
    const/high16 v8, 0x10000

    or-int/2addr v7, v8

    :goto_d
    const-string v8, "android.hardware.sensor.light"

    .line 1083
    invoke-virtual {v4, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13

    add-float/2addr v0, v10

    goto :goto_e

    :cond_13
    const/high16 v8, 0x20000

    or-int/2addr v7, v8

    :goto_e
    const-string v8, "android.hardware.sensor.proximity"

    .line 1089
    invoke-virtual {v4, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    add-float/2addr v0, v11

    goto :goto_f

    :cond_14
    const/high16 v4, 0x40000

    or-int/2addr v7, v4

    :goto_f
    const/4 v4, 0x0

    const/4 v8, -0x1

    .line 1098
    :try_start_0
    new-instance v12, Landroid/content/IntentFilter;

    const-string v13, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v12, v13}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v12}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v4

    const-string v12, "level"

    .line 1099
    invoke-virtual {v4, v12, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v13, "scale"

    .line 1100
    invoke-virtual {v4, v13, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_10

    :catch_0
    nop

    goto :goto_10

    :catch_1
    const/4 v12, -0x1

    :goto_10
    const/16 v4, 0x32

    const/16 v13, 0x64

    if-ne v12, v4, :cond_15

    if-ne v8, v13, :cond_15

    const/high16 v4, 0x100000

    :goto_11
    or-int/2addr v7, v4

    const/4 v11, 0x0

    goto :goto_12

    :cond_15
    if-gez v12, :cond_16

    if-gez v8, :cond_16

    const/high16 v4, 0x200000

    goto :goto_11

    :cond_16
    if-ne v12, v13, :cond_17

    if-ne v8, v13, :cond_17

    goto :goto_12

    :cond_17
    const/high16 v11, 0x41200000    # 10.0f

    :goto_12
    add-float/2addr v0, v11

    .line 1118
    iget v4, p0, Lcom/narvii/account/LoginActivity;->ut:I

    const/16 v8, 0x7530

    const/high16 v11, 0x41a00000    # 20.0f

    if-ge v4, v8, :cond_18

    const/high16 v2, 0x400000

    :goto_13
    or-int/2addr v7, v2

    goto :goto_14

    :cond_18
    add-int/lit8 v4, v4, -0x1e

    int-to-float v1, v4

    mul-float v1, v1, v2

    const/high16 v2, 0x42b40000    # 90.0f

    div-float/2addr v1, v2

    .line 1122
    invoke-static {v11, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    cmpg-float v2, v1, v11

    if-gez v2, :cond_19

    const/high16 v2, 0x800000

    goto :goto_13

    :cond_19
    :goto_14
    add-float/2addr v0, v1

    .line 1131
    iget v1, p0, Lcom/narvii/account/LoginActivity;->ic:I

    if-ge v1, v3, :cond_1a

    const/high16 v1, 0x1000000

    :goto_15
    or-int/2addr v7, v1

    goto :goto_16

    :cond_1a
    const/16 v2, 0xa

    sub-int/2addr v1, v3

    .line 1135
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v9, v1

    cmpg-float v1, v9, v10

    if-gez v1, :cond_1b

    const/high16 v1, 0x2000000

    goto :goto_15

    :cond_1b
    :goto_16
    add-float/2addr v0, v9

    const/16 v1, 0x14

    .line 1144
    iget v2, p0, Lcom/narvii/account/LoginActivity;->mc:I

    add-int/lit8 v2, v2, -0x6

    mul-int/lit8 v2, v2, 0x5

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v2, v1, v6

    if-gez v2, :cond_1c

    const/high16 v2, 0x4000000

    :goto_17
    or-int/2addr v7, v2

    goto :goto_18

    :cond_1c
    cmpg-float v2, v1, v11

    if-gez v2, :cond_1d

    const/high16 v2, 0x8000000

    goto :goto_17

    :cond_1d
    :goto_18
    add-float/2addr v0, v1

    new-array v1, v3, [I

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v0, v0, v2

    const/high16 v2, 0x43430000    # 195.0f

    div-float/2addr v0, v2

    float-to-int v0, v0

    sub-int/2addr v13, v0

    aput v13, v1, v5

    const/4 v0, 0x1

    aput v7, v1, v0

    return-object v1
.end method

.method private joinCommunity(ZLjava/lang/String;)V
    .locals 9

    .line 1252
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    const-string v1, "config"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/narvii/config/ConfigService;

    .line 1253
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v4}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/community/join"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    if-eqz p2, :cond_0

    const-string v1, "invitationId"

    .line 1255
    invoke-virtual {v0, v1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 1257
    :cond_0
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v1

    const-string v2, "api"

    invoke-virtual {v1, v2}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/narvii/util/http/ApiService;

    .line 1258
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    new-instance v8, Lcom/narvii/account/LoginActivity$8;

    const-class v3, Lcom/narvii/model/api/UserResponse;

    move-object v1, v8

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/narvii/account/LoginActivity$8;-><init>(Lcom/narvii/account/LoginActivity;Ljava/lang/Class;Lcom/narvii/config/ConfigService;ZLjava/lang/String;)V

    invoke-virtual {v7, v0, v8}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private setVisibilityAnim(Landroid/view/View;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 800
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    .line 801
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 802
    iget-object p2, p0, Lcom/narvii/account/LoginActivity;->fadeIn:Landroid/view/animation/Animation;

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 803
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_1

    const/16 p2, 0x8

    .line 804
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 805
    iget-object p2, p0, Lcom/narvii/account/LoginActivity;->fadeOut:Landroid/view/animation/Animation;

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private tryToJoinCommunity(Z)V
    .locals 4

    const/4 v0, 0x1

    .line 1175
    iput-boolean v0, p0, Lcom/narvii/account/LoginActivity;->joiningCommunity:Z

    const-string v0, "invitationId"

    .line 1176
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1177
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/narvii/account/LoginActivity;->checkWhetherNeedToJoin(ZLjava/lang/String;)V

    return-void

    .line 1180
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/account/LoginActivity;->getPasteBoardLink()Ljava/lang/String;

    move-result-object v0

    .line 1181
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v1

    const-string v2, "pasteBoard"

    invoke-virtual {v1, v2}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/master/invitation/PasteBoardService;

    .line 1182
    invoke-static {v0}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 1183
    invoke-direct {p0, p1, v3}, Lcom/narvii/account/LoginActivity;->checkWhetherNeedToJoin(ZLjava/lang/String;)V

    return-void

    :cond_1
    if-eqz v1, :cond_2

    .line 1186
    invoke-virtual {v1, v0}, Lcom/narvii/master/invitation/PasteBoardService;->canCheckUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1187
    :cond_2
    invoke-static {v0}, Lcom/narvii/app/ForwardActivity;->isInviteCode(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0}, Lcom/narvii/app/ForwardActivity;->isInviteLink(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1188
    :cond_3
    invoke-direct {p0, p1, v3}, Lcom/narvii/account/LoginActivity;->checkWhetherNeedToJoin(ZLjava/lang/String;)V

    return-void

    .line 1192
    :cond_4
    new-instance v1, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "/community/link-identify"

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "q"

    .line 1193
    invoke-virtual {v1, v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 1194
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v1

    const-string v2, "api"

    invoke-virtual {v1, v2}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 1195
    new-instance v2, Lcom/narvii/account/LoginActivity$6;

    const-class v3, Lcom/narvii/master/invitation/CommunityInviteResponse;

    invoke-direct {v2, p0, v3, p1}, Lcom/narvii/account/LoginActivity$6;-><init>(Lcom/narvii/account/LoginActivity;Ljava/lang/Class;Z)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method


# virtual methods
.method autoSignup()V
    .locals 5

    .line 272
    iget-boolean v0, p0, Lcom/narvii/account/LoginActivity;->autoSignuped:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 275
    iput-boolean v0, p0, Lcom/narvii/account/LoginActivity;->autoSignuped:Z

    const-string v1, "prefs"

    .line 277
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    const-string v3, "last_email"

    .line 278
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    const-string v3, "last_phoneNumber"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_3

    .line 279
    invoke-static {p0}, Lcom/narvii/account/AccountKeychain;->inited(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    return-void

    :cond_3
    if-nez v1, :cond_4

    .line 283
    invoke-static {p0}, Lcom/narvii/account/AccountKeychain;->readFrom(Landroid/content/Context;)Lcom/narvii/account/AccountKeychain;

    move-result-object v1

    if-nez v1, :cond_4

    const/4 v4, 0x1

    :cond_4
    if-eqz v4, :cond_5

    .line 286
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0904d9

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/GoogleLoginFragment;

    .line 287
    invoke-virtual {v1, v0}, Lcom/narvii/account/GoogleLoginFragment;->requestLogin(I)V

    :cond_5
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 872
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 876
    :cond_0
    iget-object v0, p0, Lcom/narvii/account/LoginActivity;->md:Ljava/security/MessageDigest;

    if-eqz v0, :cond_1

    .line 877
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update(B)V

    .line 878
    iget-object v0, p0, Lcom/narvii/account/LoginActivity;->md:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/narvii/account/LoginActivity;->density:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 879
    iget-object v0, p0, Lcom/narvii/account/LoginActivity;->md:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/narvii/account/LoginActivity;->density:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 881
    :cond_1
    iget v0, p0, Lcom/narvii/account/LoginActivity;->mc:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/narvii/account/LoginActivity;->mc:I

    .line 884
    :goto_0
    invoke-super {p0, p1}, Lcom/narvii/app/NVActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public finish()V
    .locals 4

    .line 537
    sget v0, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/narvii/account/LoginActivity;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x100020

    .line 538
    invoke-static {v0}, Lcom/narvii/amino/MainActivity;->setPendingCommand(I)V

    .line 539
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    const-string v1, "_enterCommunityHelper"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/services/EnterCommunityHelper;

    if-eqz v0, :cond_0

    .line 541
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/services/EnterCommunityHelper;->logEnterCommunity(Lcom/narvii/app/NVContext;J)V

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/narvii/account/LoginActivity;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "logging"

    .line 545
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/logging/LoggingService;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "SkipSignup"

    .line 546
    invoke-interface {v0, v2, v1}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 547
    :cond_1
    iget-boolean v0, p0, Lcom/narvii/account/LoginActivity;->finishPageFinishing:Z

    if-nez v0, :cond_2

    .line 548
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.narvii.action.FINISH_LOGIN_PAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 549
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 551
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/narvii/account/LoginActivity;->startingRequestCodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finish login activity with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/account/LoginActivity;->startingRequestCodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " childs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 553
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/narvii/account/LoginActivity;->startingRequestCodes:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 555
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->finishActivity(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    goto :goto_1

    .line 560
    :cond_3
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->finish()V

    return-void
.end method

.method finishWithResult(Lcom/narvii/account/AccountBaseFragment;ZILjava/lang/String;)V
    .locals 7

    .line 564
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isDestoryed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_f

    const/4 p2, 0x1

    if-ne p3, p2, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    .line 568
    :goto_0
    sget p4, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v3, 0x65

    if-ne p4, v3, :cond_2

    const-string p4, "communityJoinLogin"

    invoke-virtual {p0, p4}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_2

    .line 569
    invoke-direct {p0, p3}, Lcom/narvii/account/LoginActivity;->tryToJoinCommunity(Z)V

    goto :goto_2

    .line 572
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p4

    if-eqz p4, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p4

    if-eqz p4, :cond_3

    .line 573
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p4

    const-string v3, "skipInterestPicker"

    invoke-virtual {p4, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p4

    goto :goto_1

    :cond_3
    const/4 p4, 0x0

    .line 576
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 577
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "loginIntent"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    if-eqz v3, :cond_4

    .line 579
    invoke-virtual {p0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 583
    :cond_4
    iget-boolean v3, p0, Lcom/narvii/account/LoginActivity;->crossAppFinishing:Z

    .line 587
    new-instance v4, Lcom/narvii/account/LoginActivity$4;

    invoke-direct {v4, p0, p4, v3, p3}, Lcom/narvii/account/LoginActivity$4;-><init>(Lcom/narvii/account/LoginActivity;ZZZ)V

    const-wide/16 v5, 0x78

    invoke-static {v4, v5, v6}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 642
    :goto_2
    iget p4, p0, Lcom/narvii/account/LoginActivity;->statType:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/16 v5, 0xa

    if-ne p4, p2, :cond_5

    const-string p1, "Phone Number"

    goto :goto_3

    :cond_5
    if-ne p4, v0, :cond_6

    const-string p1, "Email"

    goto :goto_3

    :cond_6
    if-ne p4, v4, :cond_7

    const-string p1, "Facebook"

    goto :goto_3

    :cond_7
    if-ne p4, v3, :cond_8

    const-string p1, "Google"

    goto :goto_3

    :cond_8
    if-nez p1, :cond_9

    if-ne p4, v5, :cond_9

    const-string p1, "Auto Login"

    goto :goto_3

    :cond_9
    move-object p1, v1

    :goto_3
    if-nez p3, :cond_e

    .line 656
    iget p4, p0, Lcom/narvii/account/LoginActivity;->statType:I

    if-eq p4, p2, :cond_d

    if-eq p4, v0, :cond_c

    if-eq p4, v4, :cond_b

    if-eq p4, v3, :cond_a

    goto :goto_4

    :cond_a
    const-string p4, "google"

    goto :goto_5

    :cond_b
    const-string p4, "facebook"

    goto :goto_5

    :cond_c
    const-string p4, "email"

    goto :goto_5

    :cond_d
    const-string p4, "phone"

    goto :goto_5

    :cond_e
    :goto_4
    move-object p4, v1

    :goto_5
    if-eqz p4, :cond_f

    .line 673
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/logging/LogEvent;->builder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->allowNoPage()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->actClick()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    sget-object v3, Lcom/narvii/logging/ActSemantic;->loginSuccess:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {v0, v3}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v3, "loginType"

    invoke-virtual {v0, v3, p4}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p4

    invoke-virtual {p4}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    :cond_f
    return-void
.end method

.method public getPasteBoardLink()Ljava/lang/String;
    .locals 3

    .line 1324
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 1325
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1326
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1328
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    .line 1329
    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1331
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v2
.end method

.method public isGlobal()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method logAuthPrompt()V
    .locals 6

    .line 254
    iget-boolean v0, p0, Lcom/narvii/account/LoginActivity;->authPromptLogged:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "prefs"

    .line 258
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const-string v2, "last_email"

    .line 259
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_2

    const-string v2, "last_phoneNumber"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    .line 260
    invoke-static {p0}, Lcom/narvii/account/AccountKeychain;->inited(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    if-nez v0, :cond_4

    .line 264
    invoke-static {p0}, Lcom/narvii/account/AccountKeychain;->readFrom(Landroid/content/Context;)Lcom/narvii/account/AccountKeychain;

    move-result-object v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    const-string v1, "logging"

    .line 266
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/logging/LoggingService;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v5, "type"

    aput-object v5, v2, v3

    const-string v3, "promptType"

    .line 267
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x2

    const-string v5, "newDevice"

    aput-object v5, v2, v3

    const/4 v3, 0x3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "AuthPrompt"

    invoke-interface {v1, v0, v2}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    iput-boolean v4, p0, Lcom/narvii/account/LoginActivity;->authPromptLogged:Z

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 727
    iget-object v0, p0, Lcom/narvii/account/LoginActivity;->startingRequestCodes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, -0x1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 730
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 731
    invoke-virtual {p0}, Lcom/narvii/account/LoginActivity;->finish()V

    goto :goto_0

    :cond_0
    const/16 v1, 0x4f

    if-ne p1, v1, :cond_2

    if-ne p2, v0, :cond_2

    if-eqz p3, :cond_2

    const/4 v0, 0x0

    const-string v1, "accountVerified"

    .line 734
    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 735
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0904ba

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 736
    instance-of v1, v0, Lcom/narvii/account/EmailLoginFragment;

    if-eqz v1, :cond_1

    .line 737
    check-cast v0, Lcom/narvii/account/EmailLoginFragment;

    invoke-virtual {v0}, Lcom/narvii/account/LoginBaseFragment;->loginBtnClick()V

    goto :goto_0

    .line 738
    :cond_1
    instance-of v1, v0, Lcom/narvii/account/MobileLoginFragment;

    if-eqz v1, :cond_2

    .line 739
    check-cast v0, Lcom/narvii/account/MobileLoginFragment;

    invoke-virtual {v0}, Lcom/narvii/account/LoginBaseFragment;->loginBtnClick()V

    .line 743
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 501
    iget-boolean v0, p0, Lcom/narvii/account/LoginActivity;->joiningCommunity:Z

    if-eqz v0, :cond_0

    return-void

    .line 504
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/account/LoginActivity;->creatingAccount:Z

    if-eqz v0, :cond_1

    return-void

    .line 507
    :cond_1
    iget-boolean v0, p0, Lcom/narvii/account/LoginActivity;->isFinishingCreateAccount:Z

    if-eqz v0, :cond_2

    return-void

    .line 510
    :cond_2
    iget-object v0, p0, Lcom/narvii/account/LoginActivity;->submittingFragment:Lcom/narvii/account/AccountBaseFragment;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/narvii/account/AccountBaseFragment;->cancel()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 511
    invoke-virtual {p0, v0}, Lcom/narvii/account/LoginActivity;->setSubmitting(Lcom/narvii/account/AccountBaseFragment;)V

    return-void

    .line 514
    :cond_3
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 515
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 517
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-result-object v0

    .line 518
    invoke-interface {v0}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 520
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 521
    instance-of v1, v0, Lcom/narvii/app/FragmentOnBackListener;

    if-eqz v1, :cond_5

    check-cast v0, Lcom/narvii/app/FragmentOnBackListener;

    invoke-interface {v0, p0}, Lcom/narvii/app/FragmentOnBackListener;->onBackPressed(Lcom/narvii/app/NVActivity;)Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    .line 526
    :cond_4
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "loginOrSignUp"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/LoginOrSignupFragment;

    if-eqz v0, :cond_5

    .line 527
    invoke-virtual {v0, p0}, Lcom/narvii/account/LoginOrSignupFragment;->onBackPressed(Lcom/narvii/app/NVActivity;)Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    .line 532
    :cond_5
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 167
    invoke-super {p0, p1}, Lcom/narvii/app/NVActivity;->onCreate(Landroid/os/Bundle;)V

    .line 170
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/narvii/account/LoginActivity;->instance:Ljava/lang/ref/WeakReference;

    const-string v0, "account"

    .line 171
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    iput-object v0, p0, Lcom/narvii/account/LoginActivity;->account:Lcom/narvii/account/AccountService;

    const v0, 0x7f0b0023

    .line 172
    invoke-virtual {p0, v0}, Lcom/narvii/app/theme/NVThemeActivity;->setContentView(I)V

    .line 174
    invoke-static {p0}, Lcom/narvii/util/AndroidBug5497Workaround;->assistActivity(Landroid/app/Activity;)V

    const v0, 0x10a0001

    .line 176
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/account/LoginActivity;->fadeOut:Landroid/view/animation/Animation;

    const/high16 v0, 0x10a0000

    .line 177
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/account/LoginActivity;->fadeIn:Landroid/view/animation/Animation;

    const v0, 0x7f0907a0

    .line 179
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/mmin18/widget/RealtimeBlurLayout;

    const v1, 0x7f09012c

    .line 182
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/NVImageView;

    .line 183
    sget v2, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x65

    if-ne v2, v5, :cond_2

    const/4 v2, 0x0

    .line 184
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 185
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 186
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    const-string v5, "imageLoader"

    .line 187
    invoke-virtual {p0, v5}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/util/image/NVImageLoader;

    .line 188
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    const-string v7, "assets://icon-community.jpg"

    invoke-virtual {v5, v7, v6, v2, v4}, Lcom/narvii/util/image/NVImageLoader;->getLocal(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v1, :cond_1

    if-nez v2, :cond_0

    move-object v5, v3

    goto :goto_0

    .line 190
    :cond_0
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    :goto_0
    invoke-virtual {v1, v5}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    if-eqz v2, :cond_3

    .line 193
    invoke-static {v2}, Lcom/narvii/util/PaletteUtils;->isLightTone(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/high16 v1, 0x22000000

    .line 194
    invoke-virtual {v0, v1}, Lcom/github/mmin18/widget/RealtimeBlurLayout;->setOverlayColor(I)V

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    const v0, 0x7f0805cb

    .line 199
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_3
    :goto_1
    if-nez p1, :cond_5

    .line 205
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    const v0, 0x7f0904ba

    if-eqz p1, :cond_4

    const-string/jumbo p1, "user"

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "pass"

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 206
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    new-instance v1, Lcom/narvii/account/UrlLoginFragment;

    invoke-direct {v1}, Lcom/narvii/account/UrlLoginFragment;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_2

    .line 208
    :cond_4
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    new-instance v1, Lcom/narvii/account/SignupLocationFragment;

    invoke-direct {v1}, Lcom/narvii/account/SignupLocationFragment;-><init>()V

    const-string v2, "signupLocation"

    .line 209
    invoke-virtual {p1, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 210
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    new-instance v1, Lcom/narvii/account/LoginOrSignupFragment;

    invoke-direct {v1}, Lcom/narvii/account/LoginOrSignupFragment;-><init>()V

    const-string v2, "loginOrSignUp"

    invoke-virtual {p1, v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_2

    :cond_5
    const-string v0, "authPromptLogged"

    .line 213
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/account/LoginActivity;->authPromptLogged:Z

    const-string v0, "autoSignuped"

    .line 214
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/account/LoginActivity;->autoSignuped:Z

    const-string v0, "startingRequestCodes"

    .line 215
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/account/LoginActivity;->startingRequestCodes:Ljava/util/ArrayList;

    .line 216
    iget-object p1, p0, Lcom/narvii/account/LoginActivity;->startingRequestCodes:Ljava/util/ArrayList;

    if-nez p1, :cond_6

    .line 217
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/account/LoginActivity;->startingRequestCodes:Ljava/util/ArrayList;

    .line 221
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/narvii/account/LoginActivity;->updateViews()V

    .line 223
    iget-object p1, p0, Lcom/narvii/account/LoginActivity;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.narvii.action.KEYCHAIN_STATUS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVActivity;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 224
    iget-object p1, p0, Lcom/narvii/account/LoginActivity;->finishPageReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.narvii.action.FINISH_LOGIN_PAGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVActivity;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 226
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    const-string p1, "signupWakeup"

    .line 228
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/account/LoginActivity;->signupWakeup:Z

    .line 231
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lcom/narvii/account/LoginActivity;->ut:I

    :try_start_0
    const-string p1, "sensor"

    .line 233
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/narvii/account/LoginActivity;->mSensorManager:Landroid/hardware/SensorManager;

    .line 234
    new-instance p1, Lcom/narvii/account/LoginActivity$SEL;

    invoke-direct {p1, p0, v3}, Lcom/narvii/account/LoginActivity$SEL;-><init>(Lcom/narvii/account/LoginActivity;Lcom/narvii/account/LoginActivity$1;)V

    iput-object p1, p0, Lcom/narvii/account/LoginActivity;->sel:Landroid/hardware/SensorEventListener;

    .line 235
    iget-object p1, p0, Lcom/narvii/account/LoginActivity;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    .line 236
    iget-object v0, p0, Lcom/narvii/account/LoginActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/narvii/account/LoginActivity;->sel:Landroid/hardware/SensorEventListener;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, p1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 237
    iget-object p1, p0, Lcom/narvii/account/LoginActivity;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {p1, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    .line 238
    iget-object v0, p0, Lcom/narvii/account/LoginActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/narvii/account/LoginActivity;->sel:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1, p1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 239
    iget-object p1, p0, Lcom/narvii/account/LoginActivity;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    .line 240
    iget-object v0, p0, Lcom/narvii/account/LoginActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/narvii/account/LoginActivity;->sel:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1, p1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :try_start_1
    const-string p1, "SHA-1"

    .line 245
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/account/LoginActivity;->md:Ljava/security/MessageDigest;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 248
    :catch_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/narvii/account/LoginActivity;->density:F

    .line 250
    invoke-virtual {p0}, Lcom/narvii/account/LoginActivity;->logAuthPrompt()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v0, 0x0

    .line 388
    sput-object v0, Lcom/narvii/account/LoginActivity;->instance:Ljava/lang/ref/WeakReference;

    .line 389
    iget-object v0, p0, Lcom/narvii/account/LoginActivity;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/narvii/account/LoginActivity;->sel:Landroid/hardware/SensorEventListener;

    if-eqz v1, :cond_0

    .line 390
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/narvii/account/LoginActivity;->finishPageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 393
    iget-object v0, p0, Lcom/narvii/account/LoginActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 394
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 395
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/account/LoginActivity;->scheduleSignupWakeup:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 397
    :cond_1
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    .line 412
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 413
    iget-boolean v0, p0, Lcom/narvii/account/LoginActivity;->signupWakeup:Z

    const-string v1, "signupWakeup"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    or-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/narvii/account/LoginActivity;->signupWakeup:Z

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 311
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onResume()V

    const/4 v0, 0x0

    .line 312
    iput-boolean v0, p0, Lcom/narvii/account/LoginActivity;->startingActivity:Z

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 293
    invoke-super {p0, p1}, Lcom/narvii/app/NVActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 294
    iget-boolean v0, p0, Lcom/narvii/account/LoginActivity;->authPromptLogged:Z

    const-string v1, "authPromptLogged"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 295
    iget-boolean v0, p0, Lcom/narvii/account/LoginActivity;->autoSignuped:Z

    const-string v1, "autoSignuped"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 296
    iget-object v0, p0, Lcom/narvii/account/LoginActivity;->startingRequestCodes:Ljava/util/ArrayList;

    const-string v1, "startingRequestCodes"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onStart()V
    .locals 3

    const-string v0, "alarm"

    .line 301
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 302
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/narvii/account/FinishSignupNotificationService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 303
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const-string v0, "notification"

    .line 304
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x1201

    .line 305
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 306
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 11

    .line 317
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onStop()V

    const/4 v0, 0x0

    .line 374
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/Fragment;

    .line 375
    instance-of v4, v3, Lcom/narvii/account/EmailSignupFragment;

    if-nez v4, :cond_1

    instance-of v3, v3, Lcom/narvii/account/SignUpAddProfileFragment;

    if-eqz v3, :cond_0

    :cond_1
    const/4 v0, 0x1

    :cond_2
    if-eqz v0, :cond_3

    .line 382
    iget-object v0, p0, Lcom/narvii/account/LoginActivity;->scheduleSignupWakeup:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_3
    return-void
.end method

.method procReq(Lcom/narvii/util/http/ApiRequest$Builder;)V
    .locals 10

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 1157
    fill-array-data v0, :array_0

    const v1, 0x7f0f039a

    .line 1158
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0f039b

    .line 1159
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1160
    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    aget v6, v0, v5

    .line 1161
    invoke-direct {p0, v6}, Lcom/narvii/account/LoginActivity;->getIds(I)[B

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1163
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v7, v1, v8}, Lcom/narvii/util/NativeHelper;->C([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 1164
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deviceID"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6, v7}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1167
    :cond_1
    invoke-direct {p0}, Lcom/narvii/account/LoginActivity;->getVals()[I

    move-result-object v0

    .line 1168
    :goto_1
    array-length v1, v0

    if-ge v4, v1, :cond_2

    .line 1169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "val"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v4, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aget v3, v0, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move v4, v2

    goto :goto_1

    :cond_2
    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x3
        0x4
        0x5
    .end array-data
.end method

.method setCreatingAccount(Z)V
    .locals 1

    .line 751
    iget-boolean v0, p0, Lcom/narvii/account/LoginActivity;->creatingAccount:Z

    iput-boolean v0, p0, Lcom/narvii/account/LoginActivity;->creatingAccount:Z

    .line 752
    invoke-virtual {p0, p1}, Lcom/narvii/account/LoginActivity;->setRequesting(Z)V

    return-void
.end method

.method setRequesting(Z)V
    .locals 0

    .line 747
    iput-boolean p1, p0, Lcom/narvii/account/LoginActivity;->isRequesting:Z

    return-void
.end method

.method setSubmitting(Lcom/narvii/account/AccountBaseFragment;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 757
    invoke-static {p0}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    .line 759
    :cond_0
    iput-object p1, p0, Lcom/narvii/account/LoginActivity;->submittingFragment:Lcom/narvii/account/AccountBaseFragment;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 760
    :goto_0
    invoke-virtual {p0, p1}, Lcom/narvii/account/LoginActivity;->setRequesting(Z)V

    .line 761
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/narvii/account/LoginActivity;->updateViewsR:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 762
    iget-object p1, p0, Lcom/narvii/account/LoginActivity;->updateViewsR:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2

    const/4 v0, 0x1

    .line 428
    iput-boolean v0, p0, Lcom/narvii/account/LoginActivity;->startingActivity:Z

    if-eqz p2, :cond_0

    .line 429
    iget-object v0, p0, Lcom/narvii/account/LoginActivity;->startingRequestCodes:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/narvii/account/LoginActivity;->startingRequestCodes:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    const/4 v0, 0x1

    .line 419
    iput-boolean v0, p0, Lcom/narvii/account/LoginActivity;->startingActivity:Z

    if-eqz p2, :cond_0

    .line 420
    iget-object v0, p0, Lcom/narvii/account/LoginActivity;->startingRequestCodes:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/narvii/account/LoginActivity;->startingRequestCodes:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 447
    iput-boolean v0, p0, Lcom/narvii/account/LoginActivity;->startingActivity:Z

    if-eqz p2, :cond_0

    .line 448
    iget-object v0, p0, Lcom/narvii/account/LoginActivity;->startingRequestCodes:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/narvii/account/LoginActivity;->startingRequestCodes:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    :cond_0
    invoke-super/range {p0 .. p6}, Landroid/support/v4/app/FragmentActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 438
    iput-boolean v0, p0, Lcom/narvii/account/LoginActivity;->startingActivity:Z

    if-eqz p2, :cond_0

    .line 439
    iget-object v0, p0, Lcom/narvii/account/LoginActivity;->startingRequestCodes:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/narvii/account/LoginActivity;->startingRequestCodes:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    :cond_0
    invoke-super/range {p0 .. p7}, Landroid/support/v4/app/FragmentActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method updateViews()V
    .locals 5

    const v0, 0x7f0904ba

    .line 766
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090b17

    .line 767
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0908d2

    .line 768
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 770
    iget-object v3, p0, Lcom/narvii/account/LoginActivity;->submittingFragment:Lcom/narvii/account/AccountBaseFragment;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/narvii/account/LoginActivity;->account:Lcom/narvii/account/AccountService;

    .line 771
    invoke-virtual {v3}, Lcom/narvii/account/AccountService;->getKeychainStatus()I

    move-result v3

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    xor-int/lit8 v4, v3, 0x1

    .line 773
    invoke-direct {p0, v0, v4}, Lcom/narvii/account/LoginActivity;->setVisibilityAnim(Landroid/view/View;Z)V

    .line 776
    invoke-direct {p0, v1, v3}, Lcom/narvii/account/LoginActivity;->setVisibilityAnim(Landroid/view/View;Z)V

    .line 777
    iget-object v0, p0, Lcom/narvii/account/LoginActivity;->submittingFragment:Lcom/narvii/account/AccountBaseFragment;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/narvii/account/AccountBaseFragment;->getProgressText()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
