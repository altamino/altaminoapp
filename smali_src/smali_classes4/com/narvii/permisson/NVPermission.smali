.class public Lcom/narvii/permisson/NVPermission;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/permisson/NVPermission$Builder;
    }
.end annotation


# static fields
.field public static final REQ_AUDIO_RECORD:I = 0xc8

.field public static final REQ_CODE_ACCESS_COARSE_LOCATION:I = 0x6a

.field public static final REQ_CODE_ACCESS_FINE_LOCATION:I = 0x69

.field public static final REQ_CODE_CALL_PHONE:I = 0x67

.field public static final REQ_CODE_CAMERA:I = 0x68

.field public static final REQ_CODE_GET_ACCOUNTS:I = 0x65

.field public static final REQ_CODE_GIPHY:I = 0x12e

.field public static final REQ_CODE_MULTI_PERMISSION:I = 0x6d

.field public static final REQ_CODE_MUSIC:I = 0x12f

.field public static final REQ_CODE_PHONE_IMAGE:I = 0x12d

.field public static final REQ_CODE_READ_CONTACT:I = 0x6e

.field public static final REQ_CODE_READ_EXTERNAL_STORAGE:I = 0x6b

.field public static final REQ_CODE_READ_PHONE_STATE:I = 0x66

.field public static final REQ_CODE_RECORD_AUDIO:I = 0x64

.field public static final REQ_CODE_WRITE_EXTERNAL_STORAGE:I = 0x6c

.field public static final REQ_PLAY_LOCAL_VIDEO:I = 0xca

.field public static final REQ_SCREEN_PLAY_OLD_VIDEO:I = 0x133

.field public static final REQ_SHARE_BUTTON_SAVE_IMAGE:I = 0xc9

.field public static final REQ_SHARE_BUTTON_SAVE_STORY:I = 0xcb

.field public static final REQ_VV_CHAT_CAMERA_PREVIEW:I = 0x134

.field public static final REQ_VV_CHAT_LAUNCH_AS_PRESENTER:I = 0x132

.field public static final REQ_VV_CHAT_LAUNCH_SCREENROOM:I = 0x131

.field public static final REQ_VV_CHAT_REQUEST_BE_PRESENTER:I = 0x130


# instance fields
.field private activity:Landroid/app/Activity;

.field private context:Landroid/content/Context;

.field private fragment:Landroidx/fragment/app/Fragment;

.field public listener:Lcom/narvii/permisson/PermissionListener;

.field public pendingPermissions:[Ljava/lang/String;

.field public rationaleDenyCallback:Lcom/narvii/util/Callback;

.field public rationaleMessage:Ljava/lang/String;

.field public rationaleTitle:Ljava/lang/String;

.field public requestCode:I


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/permisson/NVPermission;->activity:Landroid/app/Activity;

    iput-object p1, p0, Lcom/narvii/permisson/NVPermission;->context:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Activity;Lcom/narvii/permisson/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/permisson/NVPermission;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method private constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/permisson/NVPermission;->fragment:Landroidx/fragment/app/Fragment;

    .line 5
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/permisson/NVPermission;->context:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/fragment/app/Fragment;Lcom/narvii/permisson/f;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/narvii/permisson/NVPermission;-><init>(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public static synthetic a(Lcom/narvii/permisson/NVPermission;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/permisson/NVPermission;->lambda$request$2(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic b(Lcom/narvii/permisson/NVPermission;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/permisson/NVPermission;->lambda$request$3(Ljava/lang/Object;)V

    return-void
.end method

.method public static builder(Landroid/app/Activity;)Lcom/narvii/permisson/NVPermission$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/narvii/permisson/NVPermission$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/narvii/permisson/NVPermission$Builder;-><init>(Landroid/app/Activity;Lcom/narvii/permisson/e;)V

    return-object v0
.end method

.method public static builder(Landroidx/fragment/app/Fragment;)Lcom/narvii/permisson/NVPermission$Builder;
    .locals 2

    .line 2
    new-instance v0, Lcom/narvii/permisson/NVPermission$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/narvii/permisson/NVPermission$Builder;-><init>(Landroidx/fragment/app/Fragment;Lcom/narvii/permisson/e;)V

    return-object v0
.end method

.method public static synthetic c(Lcom/narvii/permisson/NVPermission;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/permisson/NVPermission;->lambda$request$1(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic d(Lcom/narvii/permisson/NVPermission;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/permisson/NVPermission;->lambda$request$0(Ljava/lang/Object;)V

    return-void
.end method

.method private static handleRequestPermissionResult(Ljava/lang/Object;Lcom/narvii/permisson/PermissionListener;I[Ljava/lang/String;[I)V
    .locals 6
    .param p3    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    :goto_0
    array-length v4, p3

    .line 14
    .line 15
    if-ge v3, v4, :cond_1

    .line 16
    .line 17
    aget-object v4, p3, v3

    .line 18
    .line 19
    aget v5, p4, v3

    .line 20
    .line 21
    if-nez v5, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    goto :goto_1

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 31
    goto :goto_0

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 35
    move-result p4

    .line 36
    .line 37
    if-lez p4, :cond_2

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 41
    move-result p4

    .line 42
    .line 43
    if-nez p4, :cond_2

    .line 44
    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, p2}, Lcom/narvii/permisson/PermissionListener;->onPermissionGranted(I)V

    .line 49
    .line 50
    .line 51
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 52
    move-result p4

    .line 53
    .line 54
    if-lez p4, :cond_5

    .line 55
    .line 56
    instance-of p4, p0, Landroid/app/Activity;

    .line 57
    const/4 v0, 0x1

    .line 58
    .line 59
    if-eqz p4, :cond_3

    .line 60
    .line 61
    check-cast p0, Landroid/app/Activity;

    .line 62
    .line 63
    .line 64
    invoke-static {p0, p3}, Lcom/narvii/permisson/PermissionUtils;->shouldShowRequestPermissionRationale(Landroid/app/Activity;[Ljava/lang/String;)Z

    .line 65
    move-result p0

    .line 66
    .line 67
    if-nez p0, :cond_4

    .line 68
    :goto_2
    move v2, v0

    .line 69
    goto :goto_3

    .line 70
    .line 71
    :cond_3
    instance-of p4, p0, Landroidx/fragment/app/Fragment;

    .line 72
    .line 73
    if-eqz p4, :cond_4

    .line 74
    .line 75
    check-cast p0, Landroidx/fragment/app/Fragment;

    .line 76
    .line 77
    .line 78
    invoke-static {p0, p3}, Lcom/narvii/permisson/PermissionUtils;->shouldShowRequestPermissionRationale(Landroidx/fragment/app/Fragment;[Ljava/lang/String;)Z

    .line 79
    move-result p0

    .line 80
    .line 81
    if-nez p0, :cond_4

    .line 82
    goto :goto_2

    .line 83
    .line 84
    .line 85
    :cond_4
    :goto_3
    invoke-interface {p1, p2, v2, v1}, Lcom/narvii/permisson/PermissionListener;->onPermissionDenied(IZLjava/util/ArrayList;)V

    .line 86
    :cond_5
    return-void
.end method

.method private synthetic lambda$request$0(Ljava/lang/Object;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/permisson/NVPermission;->activity:Landroid/app/Activity;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/permisson/NVPermission;->pendingPermissions:[Ljava/lang/String;

    .line 5
    .line 6
    iget v1, p0, Lcom/narvii/permisson/NVPermission;->requestCode:I

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0, v1}, Landroidx/core/app/ActivityCompat;->g(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 10
    return-void
.end method

.method private synthetic lambda$request$1(Ljava/lang/Object;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/permisson/NVPermission;->rationaleDenyCallback:Lcom/narvii/util/Callback;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    .line 8
    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 9
    :cond_0
    return-void
.end method

.method private synthetic lambda$request$2(Ljava/lang/Object;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/permisson/NVPermission;->fragment:Landroidx/fragment/app/Fragment;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/permisson/NVPermission;->pendingPermissions:[Ljava/lang/String;

    .line 5
    .line 6
    iget v1, p0, Lcom/narvii/permisson/NVPermission;->requestCode:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    .line 10
    return-void
.end method

.method private synthetic lambda$request$3(Ljava/lang/Object;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/permisson/NVPermission;->rationaleDenyCallback:Lcom/narvii/util/Callback;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    .line 8
    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 9
    :cond_0
    return-void
.end method

.method public static onRequestPermissionResult(Landroid/app/Activity;Lcom/narvii/permisson/PermissionListener;I[Ljava/lang/String;[I)V
    .locals 0
    .param p3    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-static {p0, p1, p2, p3, p4}, Lcom/narvii/permisson/NVPermission;->handleRequestPermissionResult(Ljava/lang/Object;Lcom/narvii/permisson/PermissionListener;I[Ljava/lang/String;[I)V

    return-void
.end method

.method public static onRequestPermissionResult(Landroidx/fragment/app/Fragment;Lcom/narvii/permisson/PermissionListener;I[Ljava/lang/String;[I)V
    .locals 0
    .param p3    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/narvii/permisson/NVPermission;->handleRequestPermissionResult(Ljava/lang/Object;Lcom/narvii/permisson/PermissionListener;I[Ljava/lang/String;[I)V

    return-void
.end method

.method public static showDeniedDialog(Landroid/content/Context;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/permisson/PermissionUtils;->showPermissionDeniedDialog(Landroid/content/Context;)V

    .line 4
    return-void
.end method

.method public static showDeniedSnackBar(Landroid/content/Context;)V
    .locals 1

    sget v0, Lcom/narvii/lib/R$string;->decline_permission_hint:I

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/narvii/permisson/NVPermission;->showDeniedSnackBar(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static showDeniedSnackBar(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-static {p0, p1, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p0

    invoke-virtual {p0}, Lcom/narvii/util/NVToast;->show()V

    return-void
.end method

.method private showRantionalDialog(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/Callback;)V
    .locals 0

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    .line 3
    .line 4
    iget-object p2, p0, Lcom/narvii/permisson/NVPermission;->context:Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    invoke-direct {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    iget-object p2, p0, Lcom/narvii/permisson/NVPermission;->rationaleTitle:Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    iget-object p2, p0, Lcom/narvii/permisson/NVPermission;->rationaleMessage:Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    new-instance p2, Lcom/narvii/permisson/NVPermission$3;

    .line 20
    .line 21
    .line 22
    invoke-direct {p2, p0, p3}, Lcom/narvii/permisson/NVPermission$3;-><init>(Lcom/narvii/permisson/NVPermission;Lcom/narvii/util/Callback;)V

    .line 23
    .line 24
    .line 25
    const p3, 0x104000a

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p3, p2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 32
    return-void
.end method

.method private showRantionaleDialog(Lcom/narvii/util/Callback;Lcom/narvii/util/Callback;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/permisson/NVPermission;->pendingPermissions:[Ljava/lang/String;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    array-length v0, v0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    goto :goto_1

    .line 9
    .line 10
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    :goto_0
    iget-object v2, p0, Lcom/narvii/permisson/NVPermission;->pendingPermissions:[Ljava/lang/String;

    .line 17
    array-length v3, v2

    .line 18
    .line 19
    if-ge v1, v3, :cond_1

    .line 20
    .line 21
    aget-object v2, v2, v1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    add-int/lit8 v1, v1, 0x1

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_1
    iget-object v1, p0, Lcom/narvii/permisson/NVPermission;->context:Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    invoke-static {v1}, Lcom/narvii/permisson/PermissionRationaleDialog;->builder(Landroid/content/Context;)Lcom/narvii/permisson/PermissionRationaleDialog$Builder;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v0}, Lcom/narvii/permisson/PermissionRationaleDialog$Builder;->setRationalePermissionList(Ljava/util/List;)Lcom/narvii/permisson/PermissionRationaleDialog$Builder;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    new-instance v1, Lcom/narvii/permisson/NVPermission$2;

    .line 40
    .line 41
    .line 42
    invoke-direct {v1, p0, p2}, Lcom/narvii/permisson/NVPermission$2;-><init>(Lcom/narvii/permisson/NVPermission;Lcom/narvii/util/Callback;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/narvii/permisson/PermissionRationaleDialog$Builder;->setCancelCallback(Lcom/narvii/util/Callback;)Lcom/narvii/permisson/PermissionRationaleDialog$Builder;

    .line 46
    move-result-object p2

    .line 47
    .line 48
    new-instance v0, Lcom/narvii/permisson/NVPermission$1;

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, p0, p1}, Lcom/narvii/permisson/NVPermission$1;-><init>(Lcom/narvii/permisson/NVPermission;Lcom/narvii/util/Callback;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, v0}, Lcom/narvii/permisson/PermissionRationaleDialog$Builder;->setCallback(Lcom/narvii/util/Callback;)Lcom/narvii/permisson/PermissionRationaleDialog$Builder;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/narvii/permisson/PermissionRationaleDialog$Builder;->show()V

    .line 59
    return-void

    .line 60
    .line 61
    :cond_2
    :goto_1
    iget-object p2, p0, Lcom/narvii/permisson/NVPermission;->rationaleTitle:Ljava/lang/String;

    .line 62
    .line 63
    iget-object v0, p0, Lcom/narvii/permisson/NVPermission;->rationaleMessage:Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    invoke-direct {p0, p2, v0, p1}, Lcom/narvii/permisson/NVPermission;->showRantionalDialog(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/Callback;)V

    .line 67
    return-void
.end method


# virtual methods
.method public request()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/permisson/NVPermission;->pendingPermissions:[Ljava/lang/String;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/narvii/permisson/NVPermission;->rationaleTitle:Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/permisson/NVPermission;->context:Landroid/content/Context;

    .line 16
    .line 17
    sget v1, Lcom/narvii/lib/R$string;->permission_request:I

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/permisson/NVPermission;->rationaleTitle:Ljava/lang/String;

    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lcom/narvii/permisson/NVPermission;->rationaleMessage:Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    move-result v0

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/permisson/NVPermission;->context:Landroid/content/Context;

    .line 34
    .line 35
    sget v1, Lcom/narvii/lib/R$string;->permission_request_message:I

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    iput-object v0, p0, Lcom/narvii/permisson/NVPermission;->rationaleMessage:Ljava/lang/String;

    .line 42
    .line 43
    :cond_2
    sget-object v0, Lcom/narvii/permisson/PermissionUtilsV2;->INSTANCE:Lcom/narvii/permisson/PermissionUtilsV2;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/narvii/permisson/NVPermission;->context:Landroid/content/Context;

    .line 46
    .line 47
    iget-object v2, p0, Lcom/narvii/permisson/NVPermission;->pendingPermissions:[Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1, v2}, Lcom/narvii/permisson/PermissionUtilsV2;->hasSelfPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    .line 51
    move-result v1

    .line 52
    .line 53
    if-eqz v1, :cond_3

    .line 54
    .line 55
    iget-object v0, p0, Lcom/narvii/permisson/NVPermission;->listener:Lcom/narvii/permisson/PermissionListener;

    .line 56
    .line 57
    if-eqz v0, :cond_7

    .line 58
    .line 59
    iget v1, p0, Lcom/narvii/permisson/NVPermission;->requestCode:I

    .line 60
    .line 61
    .line 62
    invoke-interface {v0, v1}, Lcom/narvii/permisson/PermissionListener;->onPermissionGranted(I)V

    .line 63
    goto :goto_0

    .line 64
    .line 65
    :cond_3
    iget-object v1, p0, Lcom/narvii/permisson/NVPermission;->activity:Landroid/app/Activity;

    .line 66
    .line 67
    if-eqz v1, :cond_5

    .line 68
    .line 69
    iget-object v2, p0, Lcom/narvii/permisson/NVPermission;->pendingPermissions:[Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1, v2}, Lcom/narvii/permisson/PermissionUtilsV2;->shouldShowRequestPermissionRationale(Landroid/app/Activity;[Ljava/lang/String;)Z

    .line 73
    move-result v0

    .line 74
    .line 75
    if-eqz v0, :cond_4

    .line 76
    .line 77
    new-instance v0, Lcom/narvii/permisson/a;

    .line 78
    .line 79
    .line 80
    invoke-direct {v0, p0}, Lcom/narvii/permisson/a;-><init>(Lcom/narvii/permisson/NVPermission;)V

    .line 81
    .line 82
    new-instance v1, Lcom/narvii/permisson/b;

    .line 83
    .line 84
    .line 85
    invoke-direct {v1, p0}, Lcom/narvii/permisson/b;-><init>(Lcom/narvii/permisson/NVPermission;)V

    .line 86
    .line 87
    .line 88
    invoke-direct {p0, v0, v1}, Lcom/narvii/permisson/NVPermission;->showRantionaleDialog(Lcom/narvii/util/Callback;Lcom/narvii/util/Callback;)V

    .line 89
    goto :goto_0

    .line 90
    .line 91
    :cond_4
    iget-object v0, p0, Lcom/narvii/permisson/NVPermission;->activity:Landroid/app/Activity;

    .line 92
    .line 93
    iget-object v1, p0, Lcom/narvii/permisson/NVPermission;->pendingPermissions:[Ljava/lang/String;

    .line 94
    .line 95
    iget v2, p0, Lcom/narvii/permisson/NVPermission;->requestCode:I

    .line 96
    .line 97
    .line 98
    invoke-static {v0, v1, v2}, Landroidx/core/app/ActivityCompat;->g(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 99
    goto :goto_0

    .line 100
    .line 101
    :cond_5
    iget-object v1, p0, Lcom/narvii/permisson/NVPermission;->fragment:Landroidx/fragment/app/Fragment;

    .line 102
    .line 103
    if-eqz v1, :cond_7

    .line 104
    .line 105
    iget-object v2, p0, Lcom/narvii/permisson/NVPermission;->pendingPermissions:[Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v1, v2}, Lcom/narvii/permisson/PermissionUtilsV2;->shouldShowRequestPermissionRationale(Landroidx/fragment/app/Fragment;[Ljava/lang/String;)Z

    .line 109
    move-result v0

    .line 110
    .line 111
    if-eqz v0, :cond_6

    .line 112
    .line 113
    iget-object v0, p0, Lcom/narvii/permisson/NVPermission;->rationaleTitle:Ljava/lang/String;

    .line 114
    .line 115
    if-eqz v0, :cond_6

    .line 116
    .line 117
    iget-object v0, p0, Lcom/narvii/permisson/NVPermission;->rationaleMessage:Ljava/lang/String;

    .line 118
    .line 119
    if-eqz v0, :cond_6

    .line 120
    .line 121
    new-instance v0, Lcom/narvii/permisson/c;

    .line 122
    .line 123
    .line 124
    invoke-direct {v0, p0}, Lcom/narvii/permisson/c;-><init>(Lcom/narvii/permisson/NVPermission;)V

    .line 125
    .line 126
    new-instance v1, Lcom/narvii/permisson/d;

    .line 127
    .line 128
    .line 129
    invoke-direct {v1, p0}, Lcom/narvii/permisson/d;-><init>(Lcom/narvii/permisson/NVPermission;)V

    .line 130
    .line 131
    .line 132
    invoke-direct {p0, v0, v1}, Lcom/narvii/permisson/NVPermission;->showRantionaleDialog(Lcom/narvii/util/Callback;Lcom/narvii/util/Callback;)V

    .line 133
    goto :goto_0

    .line 134
    .line 135
    :cond_6
    iget-object v0, p0, Lcom/narvii/permisson/NVPermission;->fragment:Landroidx/fragment/app/Fragment;

    .line 136
    .line 137
    iget-object v1, p0, Lcom/narvii/permisson/NVPermission;->pendingPermissions:[Ljava/lang/String;

    .line 138
    .line 139
    iget v2, p0, Lcom/narvii/permisson/NVPermission;->requestCode:I

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    .line 143
    :cond_7
    :goto_0
    return-void
.end method
