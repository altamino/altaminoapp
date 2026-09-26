.class public final Lcom/narvii/permisson/PermissionUtilsV2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/permisson/PermissionUtilsV2$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPermissionUtilsV2.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PermissionUtilsV2.kt\ncom/narvii/permisson/PermissionUtilsV2\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,218:1\n12271#2,2:219\n12474#2,2:221\n12474#2,2:223\n1#3:225\n*S KotlinDebug\n*F\n+ 1 PermissionUtilsV2.kt\ncom/narvii/permisson/PermissionUtilsV2\n*L\n119#1:219,2\n168#1:221,2\n174#1:223,2\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/narvii/permisson/PermissionUtilsV2;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final minSdkPermissionList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/permisson/PermissionUtilsV2;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/permisson/PermissionUtilsV2;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/narvii/permisson/PermissionUtilsV2;->INSTANCE:Lcom/narvii/permisson/PermissionUtilsV2;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    new-array v0, v0, [Lw7/u;

    .line 12
    .line 13
    const/16 v1, 0xe

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    const-string v2, "com.android.voicemail.permission.ADD_VOICEMAIL"

    .line 20
    .line 21
    .line 22
    invoke-static {v2, v1}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x0

    .line 25
    .line 26
    aput-object v1, v0, v2

    .line 27
    .line 28
    const/16 v1, 0x14

    .line 29
    .line 30
    .line 31
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    const-string v2, "android.permission.BODY_SENSORS"

    .line 35
    .line 36
    .line 37
    invoke-static {v2, v1}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 38
    move-result-object v1

    .line 39
    const/4 v2, 0x1

    .line 40
    .line 41
    aput-object v1, v0, v2

    .line 42
    .line 43
    const/16 v1, 0x10

    .line 44
    .line 45
    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    const-string v2, "android.permission.READ_CALL_LOG"

    .line 50
    .line 51
    .line 52
    invoke-static {v2, v1}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 53
    move-result-object v2

    .line 54
    const/4 v3, 0x2

    .line 55
    .line 56
    aput-object v2, v0, v3

    .line 57
    .line 58
    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    .line 59
    .line 60
    .line 61
    invoke-static {v2, v1}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 62
    move-result-object v2

    .line 63
    const/4 v3, 0x3

    .line 64
    .line 65
    aput-object v2, v0, v3

    .line 66
    .line 67
    const/16 v2, 0x9

    .line 68
    .line 69
    .line 70
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    move-result-object v2

    .line 72
    .line 73
    const-string v3, "android.permission.USE_SIP"

    .line 74
    .line 75
    .line 76
    invoke-static {v3, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 77
    move-result-object v2

    .line 78
    const/4 v3, 0x4

    .line 79
    .line 80
    aput-object v2, v0, v3

    .line 81
    .line 82
    const-string v2, "android.permission.WRITE_CALL_LOG"

    .line 83
    .line 84
    .line 85
    invoke-static {v2, v1}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 86
    move-result-object v1

    .line 87
    const/4 v2, 0x5

    .line 88
    .line 89
    aput-object v1, v0, v2

    .line 90
    .line 91
    const/16 v1, 0x17

    .line 92
    .line 93
    .line 94
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    move-result-object v1

    .line 96
    .line 97
    const-string v2, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 98
    .line 99
    .line 100
    invoke-static {v2, v1}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 101
    move-result-object v2

    .line 102
    const/4 v3, 0x6

    .line 103
    .line 104
    aput-object v2, v0, v3

    .line 105
    .line 106
    const-string v2, "android.permission.WRITE_SETTINGS"

    .line 107
    .line 108
    .line 109
    invoke-static {v2, v1}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 110
    move-result-object v1

    .line 111
    const/4 v2, 0x7

    .line 112
    .line 113
    aput-object v1, v0, v2

    .line 114
    .line 115
    .line 116
    invoke-static {v0}, Lkotlin/collections/p0;->l([Lw7/u;)Ljava/util/Map;

    .line 117
    move-result-object v0

    .line 118
    .line 119
    sput-object v0, Lcom/narvii/permisson/PermissionUtilsV2;->minSdkPermissionList:Ljava/util/Map;

    .line 120
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static synthetic a(Le8/l;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/permisson/PermissionUtilsV2;->shoRationaleDialog$lambda$5(Le8/l;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/permisson/PermissionUtilsV2;->showPermissionDeniedDialog$lambda$3(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Le8/l;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/permisson/PermissionUtilsV2;->shoRationaleDialog$lambda$4(Le8/l;Landroid/view/View;)V

    return-void
.end method

.method private final checkSinglePermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/permisson/PermissionUtilsV2;->isApiLevel23OrHigher()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-direct {p0}, Lcom/narvii/permisson/PermissionUtilsV2;->isXiaomiManufacturer()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/narvii/permisson/PermissionUtilsV2;->checkSinglePermissionXiaomi(Landroid/content/Context;Ljava/lang/String;)Z

    .line 18
    move-result p1

    .line 19
    goto :goto_0

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/narvii/permisson/PermissionUtilsV2;->checkSinglePermissionDefault(Landroid/content/Context;Ljava/lang/String;)Z

    .line 23
    move-result p1

    .line 24
    :goto_0
    return p1
.end method

.method private final checkSinglePermissionDefault(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 4
    move-result p1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    return p1
.end method

.method private final checkSinglePermissionXiaomi(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p2}, Landroidx/core/app/AppOpsManagerCompat;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 12
    move-result v2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 16
    move-result-object v3

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v0, v2, v3}, Landroidx/core/app/AppOpsManagerCompat;->b(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)I

    .line 20
    move-result v0

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/narvii/permisson/PermissionUtilsV2;->checkSinglePermissionDefault(Landroid/content/Context;Ljava/lang/String;)Z

    .line 26
    move-result p1

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v1, 0x0

    .line 31
    :goto_0
    return v1
.end method

.method private final getPermissionName(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/permisson/PermissionUtils;->PERMISSION_NAMES:Landroidx/collection/SimpleArrayMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Ljava/lang/Integer;

    .line 9
    return-object p1
.end method

.method private final getPermissionRationale(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/permisson/PermissionUtils;->PERMISSION_RATIONALES:Landroidx/collection/SimpleArrayMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Ljava/lang/Integer;

    .line 9
    return-object p1
.end method

.method private final getRationalTitleOrDefault(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    if-nez p2, :cond_2

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p3}, Lcom/narvii/permisson/PermissionUtilsV2;->getPermissionName(Ljava/lang/String;)Ljava/lang/Integer;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 12
    move-result p2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    .line 20
    :goto_0
    if-nez p1, :cond_1

    .line 21
    .line 22
    const-string p1, ""

    .line 23
    :cond_1
    move-object p2, p1

    .line 24
    :cond_2
    return-object p2
.end method

.method private final getRationaleMessageOrDefault(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    if-nez p2, :cond_2

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p3}, Lcom/narvii/permisson/PermissionUtilsV2;->getPermissionRationale(Ljava/lang/String;)Ljava/lang/Integer;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 12
    move-result p2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    .line 20
    :goto_0
    if-nez p1, :cond_1

    .line 21
    .line 22
    const-string p1, ""

    .line 23
    :cond_1
    move-object p2, p1

    .line 24
    :cond_2
    return-object p2
.end method

.method private final hasSelfPermissionReadImages(Landroid/content/Context;)Z
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/permisson/GranularMediaPermissions;->READ_MEDIA_IMAGES:Lcom/narvii/permisson/GranularMediaPermissions;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/permisson/PermissionUtilsV2;->obtainPermissionName(Lcom/narvii/permisson/GranularMediaPermissions;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 10
    move-result p1

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    return p1
.end method

.method private final isApiLevel23OrHigher()Z
    .locals 1
    .annotation build Landroidx/annotation/ChecksSdkIntAtLeast;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method private final isXiaomiManufacturer()Z
    .locals 3

    .line 1
    .line 2
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 3
    .line 4
    const-string v1, "Xiaomi"

    .line 5
    const/4 v2, 0x1

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1, v2}, Lkotlin/text/k;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method private final obtainPermissionName(Lcom/narvii/permisson/NotificationPermissions;)Ljava/lang/String;
    .locals 1

    .line 1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-lt p1, v0, :cond_0

    const-string p1, "android.permission.POST_NOTIFICATIONS"

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private final permissionExistOnAndroidVersion(Ljava/lang/String;)Z
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/permisson/PermissionUtilsV2;->minSdkPermissionList:Ljava/util/Map;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Ljava/lang/Integer;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 14
    move-result p1

    .line 15
    .line 16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 17
    .line 18
    if-gt p1, v0, :cond_0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 23
    :goto_1
    return p1
.end method

.method public static safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroid/content/Context;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static final shoRationaleDialog$lambda$4(Le8/l;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p0, p1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    return-void
.end method

.method private static final shoRationaleDialog$lambda$5(Le8/l;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p0, p1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    return-void
.end method

.method private static final showPermissionDeniedDialog$lambda$3(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    const-string p1, "$ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance p1, Landroid/content/Intent;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 11
    .line 12
    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x0

    .line 21
    .line 22
    const-string v2, "package"

    .line 23
    .line 24
    .line 25
    invoke-static {v2, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    invoke-static {p0, p1}, Lcom/narvii/permisson/PermissionUtilsV2;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 33
    return-void
.end method


# virtual methods
.method public final varargs hasSelfPermission(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "permissions"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    array-length v0, p2

    .line 12
    const/4 v1, 0x0

    .line 13
    move v2, v1

    .line 14
    .line 15
    :goto_0
    if-ge v2, v0, :cond_0

    .line 16
    .line 17
    aget-object v3, p2, v2

    .line 18
    .line 19
    sget-object v4, Lcom/narvii/permisson/PermissionUtilsV2;->INSTANCE:Lcom/narvii/permisson/PermissionUtilsV2;

    .line 20
    .line 21
    .line 22
    invoke-direct {v4, v3}, Lcom/narvii/permisson/PermissionUtilsV2;->permissionExistOnAndroidVersion(Ljava/lang/String;)Z

    .line 23
    move-result v5

    .line 24
    .line 25
    if-eqz v5, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-direct {v4, p1, v3}, Lcom/narvii/permisson/PermissionUtilsV2;->checkSinglePermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 29
    move-result v3

    .line 30
    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    add-int/lit8 v2, v2, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v1, 0x1

    .line 36
    :cond_1
    return v1
.end method

.method public final hasSelfPermissionPushNotifications(Landroid/content/Context;)Z
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object v0, Lcom/narvii/permisson/NotificationPermissions;->POST_NOTIFICATIONS:Lcom/narvii/permisson/NotificationPermissions;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0}, Lcom/narvii/permisson/PermissionUtilsV2;->obtainPermissionName(Lcom/narvii/permisson/NotificationPermissions;)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x1

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    return v1

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 19
    move-result p1

    .line 20
    .line 21
    if-nez p1, :cond_1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v1, 0x0

    .line 24
    :goto_0
    return v1
.end method

.method public final hasSelfPermissionReadAudios(Landroid/content/Context;)Z
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object v0, Lcom/narvii/permisson/GranularMediaPermissions;->READ_MEDIA_AUDIO:Lcom/narvii/permisson/GranularMediaPermissions;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/narvii/permisson/PermissionUtilsV2;->obtainPermissionName(Lcom/narvii/permisson/GranularMediaPermissions;)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 15
    move-result p1

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    const/4 p1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    :goto_0
    return p1
.end method

.method public final hasSelfPermissionReadImagesAndVideos(Landroid/content/Context;)Z
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/narvii/permisson/PermissionUtilsV2;->hasSelfPermissionReadImages(Landroid/content/Context;)Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/narvii/permisson/PermissionUtilsV2;->hasSelfPermissionReadVideos(Landroid/content/Context;)Z

    .line 15
    move-result p1

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    const/4 p1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    :goto_0
    return p1
.end method

.method public final hasSelfPermissionReadVideos(Landroid/content/Context;)Z
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object v0, Lcom/narvii/permisson/GranularMediaPermissions;->READ_MEDIA_VIDEO:Lcom/narvii/permisson/GranularMediaPermissions;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/narvii/permisson/PermissionUtilsV2;->obtainPermissionName(Lcom/narvii/permisson/GranularMediaPermissions;)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 15
    move-result p1

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    const/4 p1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    :goto_0
    return p1
.end method

.method public final obtainPermissionName(Lcom/narvii/permisson/GranularMediaPermissions;)Ljava/lang/String;
    .locals 2
    .param p1    # Lcom/narvii/permisson/GranularMediaPermissions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "permission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_3

    .line 2
    sget-object v0, Lcom/narvii/permisson/PermissionUtilsV2$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const-string p1, "android.permission.READ_MEDIA_AUDIO"

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lw7/s;

    invoke-direct {p1}, Lw7/s;-><init>()V

    throw p1

    :cond_1
    const-string p1, "android.permission.READ_MEDIA_VIDEO"

    goto :goto_0

    :cond_2
    const-string p1, "android.permission.READ_MEDIA_IMAGES"

    goto :goto_0

    :cond_3
    const-string p1, "android.permission.READ_EXTERNAL_STORAGE"

    :goto_0
    return-object p1
.end method

.method public final shoRationaleDialog(Landroid/content/Context;Lcom/narvii/permisson/RationaleDialogConfig;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/permisson/RationaleDialogConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "config"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Lcom/narvii/permisson/RationaleDialogConfig;->getTitle()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Lcom/narvii/permisson/RationaleDialogConfig;->getPermissionName()Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p1, v1, v2}, Lcom/narvii/permisson/PermissionUtilsV2;->getRationalTitleOrDefault(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/narvii/permisson/RationaleDialogConfig;->getTitle()Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Lcom/narvii/permisson/RationaleDialogConfig;->getPermissionName()Ljava/lang/String;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, p1, v1, v2}, Lcom/narvii/permisson/PermissionUtilsV2;->getRationaleMessageOrDefault(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Lcom/narvii/permisson/RationaleDialogConfig;->getOnNegativeListener()Le8/l;

    .line 49
    move-result-object p1

    .line 50
    const/4 v1, 0x0

    .line 51
    .line 52
    if-eqz p1, :cond_0

    .line 53
    .line 54
    new-instance v2, Lcom/narvii/permisson/i;

    .line 55
    .line 56
    .line 57
    invoke-direct {v2, p1}, Lcom/narvii/permisson/i;-><init>(Le8/l;)V

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    move-object v2, v1

    .line 60
    .line 61
    :goto_0
    const/high16 p1, 0x1040000

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addNagativeButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2}, Lcom/narvii/permisson/RationaleDialogConfig;->getOnPositiveListener()Le8/l;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    if-eqz p1, :cond_1

    .line 71
    .line 72
    new-instance v1, Lcom/narvii/permisson/j;

    .line 73
    .line 74
    .line 75
    invoke-direct {v1, p1}, Lcom/narvii/permisson/j;-><init>(Le8/l;)V

    .line 76
    .line 77
    .line 78
    :cond_1
    const p1, 0x104000a

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, p1, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 85
    return-void
.end method

.method public final varargs shouldShowRequestPermissionRationale(Landroid/app/Activity;[Ljava/lang/String;)Z
    .locals 4
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p2, v2

    .line 2
    invoke-static {p1, v3}, Landroidx/core/app/ActivityCompat;->j(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public final varargs shouldShowRequestPermissionRationale(Landroidx/fragment/app/Fragment;[Ljava/lang/String;)Z
    .locals 4
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p2, v2

    .line 4
    invoke-virtual {p1, v3}, Landroidx/fragment/app/Fragment;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public final showPermissionDeniedDialog(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    sget v1, Lcom/narvii/lib/R$string;->decline_permission_hint:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 16
    .line 17
    sget v1, Lcom/narvii/lib/R$string;->cancel:I

    .line 18
    const/4 v2, 0x0

    .line 19
    .line 20
    .line 21
    const v3, -0x777778

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    .line 25
    .line 26
    new-instance v1, Lcom/narvii/permisson/h;

    .line 27
    .line 28
    .line 29
    invoke-direct {v1, p1}, Lcom/narvii/permisson/h;-><init>(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    const p1, 0x104000a

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 39
    return-void
.end method
