.class public Lcom/narvii/permisson/NVPermission;
.super Ljava/lang/Object;
.source "NVPermission.java"


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

.field private fragment:Landroid/support/v4/app/Fragment;

.field public listener:Lcom/narvii/permisson/PermissionListener;

.field public pendingPermissions:[Ljava/lang/String;

.field public rationaleDenyCallback:Lcom/narvii/util/Callback;

.field public rationaleMessage:Ljava/lang/String;

.field public rationaleTitle:Ljava/lang/String;

.field public requestCode:I


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/narvii/permisson/NVPermission;->activity:Landroid/app/Activity;

    .line 72
    iput-object p1, p0, Lcom/narvii/permisson/NVPermission;->context:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Activity;Lcom/narvii/permisson/NVPermission$1;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/narvii/permisson/NVPermission;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method private constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/narvii/permisson/NVPermission;->fragment:Landroid/support/v4/app/Fragment;

    .line 77
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/permisson/NVPermission;->context:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/app/Fragment;Lcom/narvii/permisson/NVPermission$1;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/narvii/permisson/NVPermission;-><init>(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/permisson/NVPermission;)Landroid/app/Activity;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/narvii/permisson/NVPermission;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/permisson/NVPermission;)Landroid/support/v4/app/Fragment;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/narvii/permisson/NVPermission;->fragment:Landroid/support/v4/app/Fragment;

    return-object p0
.end method

.method public static builder(Landroid/app/Activity;)Lcom/narvii/permisson/NVPermission$Builder;
    .locals 2

    .line 248
    new-instance v0, Lcom/narvii/permisson/NVPermission$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/narvii/permisson/NVPermission$Builder;-><init>(Landroid/app/Activity;Lcom/narvii/permisson/NVPermission$1;)V

    return-object v0
.end method

.method public static builder(Landroid/support/v4/app/Fragment;)Lcom/narvii/permisson/NVPermission$Builder;
    .locals 2

    .line 252
    new-instance v0, Lcom/narvii/permisson/NVPermission$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/narvii/permisson/NVPermission$Builder;-><init>(Landroid/support/v4/app/Fragment;Lcom/narvii/permisson/NVPermission$1;)V

    return-object v0
.end method

.method private static handleRequestPermissionResult(Ljava/lang/Object;Lcom/narvii/permisson/PermissionListener;I[Ljava/lang/String;[I)V
    .locals 6

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 218
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 219
    :goto_0
    array-length v4, p3

    if-ge v3, v4, :cond_1

    .line 220
    aget-object v4, p3, v3

    .line 221
    aget v5, p4, v3

    if-nez v5, :cond_0

    .line 222
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 224
    :cond_0
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 227
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p4

    const/4 v0, 0x1

    if-lez p4, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-nez p4, :cond_2

    const/4 p4, 0x1

    goto :goto_2

    :cond_2
    const/4 p4, 0x0

    :goto_2
    if-eqz p4, :cond_3

    if-eqz p1, :cond_3

    .line 229
    invoke-interface {p1, p2}, Lcom/narvii/permisson/PermissionListener;->onPermissionGranted(I)V

    .line 231
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-lez p4, :cond_6

    .line 234
    instance-of p4, p0, Landroid/app/Activity;

    if-eqz p4, :cond_4

    .line 235
    check-cast p0, Landroid/app/Activity;

    invoke-static {p0, p3}, Lcom/narvii/permisson/PermissionUtils;->shouldShowRequestPermissionRationale(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_3

    .line 238
    :cond_4
    instance-of p4, p0, Landroid/support/v4/app/Fragment;

    if-eqz p4, :cond_5

    .line 239
    check-cast p0, Landroid/support/v4/app/Fragment;

    invoke-static {p0, p3}, Lcom/narvii/permisson/PermissionUtils;->shouldShowRequestPermissionRationale(Landroid/support/v4/app/Fragment;[Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    .line 243
    :goto_3
    invoke-interface {p1, p2, v0, v1}, Lcom/narvii/permisson/PermissionListener;->onPermissionDenied(IZLjava/util/ArrayList;)V

    :cond_6
    return-void
.end method

.method public static onRequestPermissionResult(Landroid/app/Activity;Lcom/narvii/permisson/PermissionListener;I[Ljava/lang/String;[I)V
    .locals 0

    .line 213
    invoke-static {p0, p1, p2, p3, p4}, Lcom/narvii/permisson/NVPermission;->handleRequestPermissionResult(Ljava/lang/Object;Lcom/narvii/permisson/PermissionListener;I[Ljava/lang/String;[I)V

    return-void
.end method

.method public static onRequestPermissionResult(Landroid/support/v4/app/Fragment;Lcom/narvii/permisson/PermissionListener;I[Ljava/lang/String;[I)V
    .locals 0

    .line 209
    invoke-static {p0, p1, p2, p3, p4}, Lcom/narvii/permisson/NVPermission;->handleRequestPermissionResult(Ljava/lang/Object;Lcom/narvii/permisson/PermissionListener;I[Ljava/lang/String;[I)V

    return-void
.end method

.method public static showDeniedDialog(Landroid/content/Context;)V
    .locals 0

    .line 199
    invoke-static {p0}, Lcom/narvii/permisson/PermissionUtils;->showPermissionDeniedDialog(Landroid/content/Context;)V

    return-void
.end method

.method public static showDeniedSnackBar(Landroid/content/Context;)V
    .locals 1

    .line 191
    sget v0, Lcom/narvii/lib/R$string;->decline_permission_hint:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/narvii/permisson/NVPermission;->showDeniedSnackBar(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static showDeniedSnackBar(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 195
    invoke-static {p0, p1, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p0

    invoke-virtual {p0}, Lcom/narvii/util/NVToast;->show()V

    return-void
.end method

.method private showRantionalDialog(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/Callback;)V
    .locals 0

    .line 171
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    iget-object p2, p0, Lcom/narvii/permisson/NVPermission;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 172
    iget-object p2, p0, Lcom/narvii/permisson/NVPermission;->rationaleTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 173
    iget-object p2, p0, Lcom/narvii/permisson/NVPermission;->rationaleMessage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 174
    new-instance p2, Lcom/narvii/permisson/NVPermission$7;

    invoke-direct {p2, p0, p3}, Lcom/narvii/permisson/NVPermission$7;-><init>(Lcom/narvii/permisson/NVPermission;Lcom/narvii/util/Callback;)V

    const p3, 0x104000a

    invoke-virtual {p1, p3, p2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 182
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method

.method private showRantionaleDialog(Lcom/narvii/util/Callback;Lcom/narvii/util/Callback;)V
    .locals 4

    .line 141
    iget-object v0, p0, Lcom/narvii/permisson/NVPermission;->pendingPermissions:[Ljava/lang/String;

    if-eqz v0, :cond_2

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 145
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 146
    :goto_0
    iget-object v2, p0, Lcom/narvii/permisson/NVPermission;->pendingPermissions:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 147
    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    :cond_1
    iget-object v1, p0, Lcom/narvii/permisson/NVPermission;->context:Landroid/content/Context;

    .line 150
    invoke-static {v1}, Lcom/narvii/permisson/PermissionRationaleDialog;->builder(Landroid/content/Context;)Lcom/narvii/permisson/PermissionRationaleDialog$Builder;

    move-result-object v1

    .line 151
    invoke-virtual {v1, v0}, Lcom/narvii/permisson/PermissionRationaleDialog$Builder;->setRationalePermissionList(Ljava/util/List;)Lcom/narvii/permisson/PermissionRationaleDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/narvii/permisson/NVPermission$6;

    invoke-direct {v1, p0, p2}, Lcom/narvii/permisson/NVPermission$6;-><init>(Lcom/narvii/permisson/NVPermission;Lcom/narvii/util/Callback;)V

    .line 152
    invoke-virtual {v0, v1}, Lcom/narvii/permisson/PermissionRationaleDialog$Builder;->setCancelCallback(Lcom/narvii/util/Callback;)Lcom/narvii/permisson/PermissionRationaleDialog$Builder;

    move-result-object p2

    new-instance v0, Lcom/narvii/permisson/NVPermission$5;

    invoke-direct {v0, p0, p1}, Lcom/narvii/permisson/NVPermission$5;-><init>(Lcom/narvii/permisson/NVPermission;Lcom/narvii/util/Callback;)V

    .line 160
    invoke-virtual {p2, v0}, Lcom/narvii/permisson/PermissionRationaleDialog$Builder;->setCallback(Lcom/narvii/util/Callback;)Lcom/narvii/permisson/PermissionRationaleDialog$Builder;

    move-result-object p1

    .line 167
    invoke-virtual {p1}, Lcom/narvii/permisson/PermissionRationaleDialog$Builder;->show()V

    return-void

    .line 142
    :cond_2
    :goto_1
    iget-object p2, p0, Lcom/narvii/permisson/NVPermission;->rationaleTitle:Ljava/lang/String;

    iget-object v0, p0, Lcom/narvii/permisson/NVPermission;->rationaleMessage:Ljava/lang/String;

    invoke-direct {p0, p2, v0, p1}, Lcom/narvii/permisson/NVPermission;->showRantionalDialog(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/Callback;)V

    return-void
.end method


# virtual methods
.method public request()V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/narvii/permisson/NVPermission;->pendingPermissions:[Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/narvii/permisson/NVPermission;->rationaleTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/narvii/permisson/NVPermission;->context:Landroid/content/Context;

    sget v1, Lcom/narvii/lib/R$string;->permission_request:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/permisson/NVPermission;->rationaleTitle:Ljava/lang/String;

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/narvii/permisson/NVPermission;->rationaleMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    iget-object v0, p0, Lcom/narvii/permisson/NVPermission;->context:Landroid/content/Context;

    sget v1, Lcom/narvii/lib/R$string;->permission_request_message:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/permisson/NVPermission;->rationaleMessage:Ljava/lang/String;

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/narvii/permisson/NVPermission;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/narvii/permisson/NVPermission;->pendingPermissions:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/narvii/permisson/PermissionUtils;->hasSelfPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 94
    iget-object v0, p0, Lcom/narvii/permisson/NVPermission;->listener:Lcom/narvii/permisson/PermissionListener;

    if-eqz v0, :cond_7

    .line 95
    iget v1, p0, Lcom/narvii/permisson/NVPermission;->requestCode:I

    invoke-interface {v0, v1}, Lcom/narvii/permisson/PermissionListener;->onPermissionGranted(I)V

    goto :goto_0

    .line 99
    :cond_3
    iget-object v0, p0, Lcom/narvii/permisson/NVPermission;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_5

    .line 100
    iget-object v1, p0, Lcom/narvii/permisson/NVPermission;->pendingPermissions:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/narvii/permisson/PermissionUtils;->shouldShowRequestPermissionRationale(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 101
    new-instance v0, Lcom/narvii/permisson/NVPermission$1;

    invoke-direct {v0, p0}, Lcom/narvii/permisson/NVPermission$1;-><init>(Lcom/narvii/permisson/NVPermission;)V

    new-instance v1, Lcom/narvii/permisson/NVPermission$2;

    invoke-direct {v1, p0}, Lcom/narvii/permisson/NVPermission$2;-><init>(Lcom/narvii/permisson/NVPermission;)V

    invoke-direct {p0, v0, v1}, Lcom/narvii/permisson/NVPermission;->showRantionaleDialog(Lcom/narvii/util/Callback;Lcom/narvii/util/Callback;)V

    goto :goto_0

    .line 115
    :cond_4
    iget-object v0, p0, Lcom/narvii/permisson/NVPermission;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/narvii/permisson/NVPermission;->pendingPermissions:[Ljava/lang/String;

    iget v2, p0, Lcom/narvii/permisson/NVPermission;->requestCode:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 117
    :cond_5
    iget-object v0, p0, Lcom/narvii/permisson/NVPermission;->fragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_7

    .line 118
    iget-object v1, p0, Lcom/narvii/permisson/NVPermission;->pendingPermissions:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/narvii/permisson/PermissionUtils;->shouldShowRequestPermissionRationale(Landroid/support/v4/app/Fragment;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/narvii/permisson/NVPermission;->rationaleTitle:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/narvii/permisson/NVPermission;->rationaleMessage:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 119
    new-instance v0, Lcom/narvii/permisson/NVPermission$3;

    invoke-direct {v0, p0}, Lcom/narvii/permisson/NVPermission$3;-><init>(Lcom/narvii/permisson/NVPermission;)V

    new-instance v1, Lcom/narvii/permisson/NVPermission$4;

    invoke-direct {v1, p0}, Lcom/narvii/permisson/NVPermission$4;-><init>(Lcom/narvii/permisson/NVPermission;)V

    invoke-direct {p0, v0, v1}, Lcom/narvii/permisson/NVPermission;->showRantionaleDialog(Lcom/narvii/util/Callback;Lcom/narvii/util/Callback;)V

    goto :goto_0

    .line 133
    :cond_6
    iget-object v0, p0, Lcom/narvii/permisson/NVPermission;->fragment:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcom/narvii/permisson/NVPermission;->pendingPermissions:[Ljava/lang/String;

    iget v2, p0, Lcom/narvii/permisson/NVPermission;->requestCode:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    :cond_7
    :goto_0
    return-void
.end method
