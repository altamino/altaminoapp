.class public Lcom/narvii/post/LocationPickerFragment;
.super Lcom/narvii/app/NVFragment;
.source "LocationPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/post/LocationPickerFragment$LocationListener;
    }
.end annotation


# static fields
.field static final GOOGLE_MAP_PICKER:I = 0x7

.field private static final REQ_CODE_PERMISSION_LOCATION:I = 0xca


# instance fields
.field isLocating:Z

.field public listener:Lcom/narvii/post/LocationPickerFragment$LocationListener;

.field private final locationListener:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/location/GPSCoordinate;",
            ">;"
        }
    .end annotation
.end field

.field locationService:Lcom/narvii/location/LocationService;

.field preferMyLocation:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 75
    new-instance v0, Lcom/narvii/post/LocationPickerFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/post/LocationPickerFragment$1;-><init>(Lcom/narvii/post/LocationPickerFragment;)V

    iput-object v0, p0, Lcom/narvii/post/LocationPickerFragment;->locationListener:Lcom/narvii/util/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/post/LocationPickerFragment;Lcom/narvii/location/GPSCoordinate;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/narvii/post/LocationPickerFragment;->dispatchResult(Lcom/narvii/location/GPSCoordinate;)V

    return-void
.end method

.method private dispatchResult(Lcom/narvii/location/GPSCoordinate;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/narvii/post/LocationPickerFragment;->listener:Lcom/narvii/post/LocationPickerFragment$LocationListener;

    if-eqz v0, :cond_0

    .line 71
    invoke-interface {v0, p1}, Lcom/narvii/post/LocationPickerFragment$LocationListener;->onLocationResult(Lcom/narvii/location/GPSCoordinate;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public isLocating()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/narvii/post/LocationPickerFragment;->isLocating:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 138
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    const-string p2, "lat"

    .line 141
    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const-string v0, "lng"

    .line 142
    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 143
    invoke-static {p2, p1}, Lcom/narvii/location/GPSCoordinate;->create(II)Lcom/narvii/location/GPSCoordinate;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/narvii/post/LocationPickerFragment;->dispatchResult(Lcom/narvii/location/GPSCoordinate;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 46
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "location"

    .line 47
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/location/LocationService;

    iput-object p1, p0, Lcom/narvii/post/LocationPickerFragment;->locationService:Lcom/narvii/location/LocationService;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/narvii/post/LocationPickerFragment;->locationService:Lcom/narvii/location/LocationService;

    iget-object v1, p0, Lcom/narvii/post/LocationPickerFragment;->locationListener:Lcom/narvii/util/Callback;

    invoke-virtual {v0, v1}, Lcom/narvii/location/LocationService;->abort(Lcom/narvii/util/Callback;)V

    .line 53
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    return-void
.end method

.method public onPermissionGranted(I)V
    .locals 7

    const/16 v0, 0xca

    if-ne p1, v0, :cond_0

    .line 150
    iget-object v1, p0, Lcom/narvii/post/LocationPickerFragment;->locationService:Lcom/narvii/location/LocationService;

    iget-object v2, p0, Lcom/narvii/post/LocationPickerFragment;->locationListener:Lcom/narvii/util/Callback;

    const-wide/16 v3, 0xbb8

    sget-wide v5, Lcom/narvii/location/LocationService;->DEFAULT_TIMEOUT:J

    invoke-virtual/range {v1 .. v6}, Lcom/narvii/location/LocationService;->requireCoordinate(Lcom/narvii/util/Callback;JJ)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 151
    invoke-virtual {p0, p1}, Lcom/narvii/post/LocationPickerFragment;->setLocating(Z)V

    :cond_0
    return-void
.end method

.method public pickLocation(IIZ)V
    .locals 6

    if-nez p1, :cond_2

    if-nez p2, :cond_2

    .line 90
    iget-boolean p1, p0, Lcom/narvii/post/LocationPickerFragment;->isLocating:Z

    if-eqz p1, :cond_0

    return-void

    .line 92
    :cond_0
    iput-boolean p3, p0, Lcom/narvii/post/LocationPickerFragment;->preferMyLocation:Z

    .line 93
    iget-object p1, p0, Lcom/narvii/post/LocationPickerFragment;->locationService:Lcom/narvii/location/LocationService;

    invoke-virtual {p1}, Lcom/narvii/location/LocationService;->getCachedCoordinate()Lcom/narvii/location/GPSCoordinate;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 95
    new-instance p1, Lcom/narvii/post/LocationPickerFragment$2;

    invoke-direct {p1, p0, p3}, Lcom/narvii/post/LocationPickerFragment$2;-><init>(Lcom/narvii/post/LocationPickerFragment;Z)V

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 102
    :cond_1
    invoke-static {p0}, Lcom/narvii/permisson/NVPermission;->builder(Landroid/support/v4/app/Fragment;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object p1

    .line 103
    invoke-virtual {p1, p0}, Lcom/narvii/permisson/NVPermission$Builder;->permissionListener(Lcom/narvii/permisson/PermissionListener;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object p1

    const-string p2, "android.permission.ACCESS_COARSE_LOCATION"

    .line 104
    invoke-virtual {p1, p2}, Lcom/narvii/permisson/NVPermission$Builder;->permission(Ljava/lang/String;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object p1

    const/16 p2, 0xca

    .line 105
    invoke-virtual {p1, p2}, Lcom/narvii/permisson/NVPermission$Builder;->requestCode(I)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object p1

    .line 106
    invoke-virtual {p1}, Lcom/narvii/permisson/NVPermission$Builder;->request()V

    goto :goto_0

    .line 109
    :cond_2
    new-instance p3, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 112
    sget v2, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v3, 0x65

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_3

    const v2, 0x7f0f0dcf

    .line 113
    invoke-virtual {p3, v2, v4}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    aput v5, v1, v4

    const/4 v4, 0x1

    :cond_3
    const v2, 0x7f0f0def

    .line 116
    invoke-virtual {p3, v2, v5}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 117
    aput v0, v1, v4

    .line 118
    new-instance v0, Lcom/narvii/post/LocationPickerFragment$3;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/narvii/post/LocationPickerFragment$3;-><init>(Lcom/narvii/post/LocationPickerFragment;[III)V

    invoke-virtual {p3, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 132
    invoke-virtual {p3}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    :goto_0
    return-void
.end method

.method setLocating(Z)V
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/narvii/post/LocationPickerFragment;->isLocating:Z

    if-eq v0, p1, :cond_0

    .line 62
    iput-boolean p1, p0, Lcom/narvii/post/LocationPickerFragment;->isLocating:Z

    .line 63
    iget-object v0, p0, Lcom/narvii/post/LocationPickerFragment;->listener:Lcom/narvii/post/LocationPickerFragment$LocationListener;

    if-eqz v0, :cond_0

    .line 64
    invoke-interface {v0, p1}, Lcom/narvii/post/LocationPickerFragment$LocationListener;->onLocatingChanged(Z)V

    :cond_0
    return-void
.end method
