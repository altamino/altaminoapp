.class public Lcom/narvii/post/LocationPickerFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/post/LocationPickerFragment$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/post/LocationPickerFragment$1;-><init>(Lcom/narvii/post/LocationPickerFragment;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/post/LocationPickerFragment;->locationListener:Lcom/narvii/util/Callback;

    .line 11
    return-void
.end method

.method private dispatchResult(Lcom/narvii/location/GPSCoordinate;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/post/LocationPickerFragment;->listener:Lcom/narvii/post/LocationPickerFragment$LocationListener;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/narvii/post/LocationPickerFragment$LocationListener;->onLocationResult(Lcom/narvii/location/GPSCoordinate;)V

    .line 8
    :cond_0
    return-void
.end method

.method static bridge synthetic n(Lcom/narvii/post/LocationPickerFragment;Lcom/narvii/location/GPSCoordinate;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/post/LocationPickerFragment;->dispatchResult(Lcom/narvii/location/GPSCoordinate;)V

    return-void
.end method


# virtual methods
.method public isLocating()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/post/LocationPickerFragment;->isLocating:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 4
    const/4 v0, 0x7

    .line 5
    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    const/4 p1, -0x1

    .line 8
    .line 9
    if-ne p2, p1, :cond_0

    .line 10
    .line 11
    if-eqz p3, :cond_0

    .line 12
    .line 13
    const-string p1, "lat"

    .line 14
    const/4 p2, 0x0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 18
    move-result p1

    .line 19
    .line 20
    const-string v0, "lng"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 24
    move-result p2

    .line 25
    .line 26
    .line 27
    invoke-static {p1, p2}, Lcom/narvii/location/GPSCoordinate;->create(II)Lcom/narvii/location/GPSCoordinate;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, p1}, Lcom/narvii/post/LocationPickerFragment;->dispatchResult(Lcom/narvii/location/GPSCoordinate;)V

    .line 32
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string p1, "location"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    check-cast p1, Lcom/narvii/location/LocationService;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/narvii/post/LocationPickerFragment;->locationService:Lcom/narvii/location/LocationService;

    .line 14
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/post/LocationPickerFragment;->locationService:Lcom/narvii/location/LocationService;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/post/LocationPickerFragment;->locationListener:Lcom/narvii/util/Callback;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/narvii/location/LocationService;->abort(Lcom/narvii/util/Callback;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 11
    return-void
.end method

.method public onPermissionGranted(I)V
    .locals 7

    .line 1
    .line 2
    const/16 v0, 0xca

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/post/LocationPickerFragment;->locationService:Lcom/narvii/location/LocationService;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/narvii/post/LocationPickerFragment;->locationListener:Lcom/narvii/util/Callback;

    .line 9
    .line 10
    const-wide/16 v3, 0xbb8

    .line 11
    .line 12
    sget-wide v5, Lcom/narvii/location/LocationService;->DEFAULT_TIMEOUT:J

    .line 13
    .line 14
    .line 15
    invoke-virtual/range {v1 .. v6}, Lcom/narvii/location/LocationService;->requireCoordinate(Lcom/narvii/util/Callback;JJ)Z

    .line 16
    move-result p1

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    const/4 p1, 0x1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/narvii/post/LocationPickerFragment;->setLocating(Z)V

    .line 23
    :cond_0
    return-void
.end method

.method public pickLocation(IIZ)V
    .locals 4

    .line 1
    .line 2
    if-nez p1, :cond_2

    .line 3
    .line 4
    if-nez p2, :cond_2

    .line 5
    .line 6
    iget-boolean p1, p0, Lcom/narvii/post/LocationPickerFragment;->isLocating:Z

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iput-boolean p3, p0, Lcom/narvii/post/LocationPickerFragment;->preferMyLocation:Z

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/post/LocationPickerFragment;->locationService:Lcom/narvii/location/LocationService;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/narvii/location/LocationService;->getCachedCoordinate()Lcom/narvii/location/GPSCoordinate;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    new-instance p1, Lcom/narvii/post/LocationPickerFragment$2;

    .line 22
    .line 23
    .line 24
    invoke-direct {p1, p0, p3}, Lcom/narvii/post/LocationPickerFragment$2;-><init>(Lcom/narvii/post/LocationPickerFragment;Z)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 28
    goto :goto_0

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-static {p0}, Lcom/narvii/permisson/NVPermission;->builder(Landroidx/fragment/app/Fragment;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p0}, Lcom/narvii/permisson/NVPermission$Builder;->permissionListener(Lcom/narvii/permisson/PermissionListener;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    const-string p2, "android.permission.ACCESS_COARSE_LOCATION"

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2}, Lcom/narvii/permisson/NVPermission$Builder;->permission(Ljava/lang/String;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    const/16 p2, 0xca

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p2}, Lcom/narvii/permisson/NVPermission$Builder;->requestCode(I)Lcom/narvii/permisson/NVPermission$Builder;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/narvii/permisson/NVPermission$Builder;->request()V

    .line 52
    goto :goto_0

    .line 53
    .line 54
    :cond_2
    new-instance p3, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    .line 61
    invoke-direct {p3, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 62
    const/4 v0, 0x2

    .line 63
    .line 64
    new-array v1, v0, [I

    .line 65
    .line 66
    .line 67
    const v2, 0x7f120f1a

    .line 68
    const/4 v3, 0x1

    .line 69
    .line 70
    .line 71
    invoke-virtual {p3, v2, v3}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 72
    const/4 v2, 0x0

    .line 73
    .line 74
    aput v0, v1, v2

    .line 75
    .line 76
    new-instance v0, Lcom/narvii/post/LocationPickerFragment$3;

    .line 77
    .line 78
    .line 79
    invoke-direct {v0, p0, v1, p1, p2}, Lcom/narvii/post/LocationPickerFragment$3;-><init>(Lcom/narvii/post/LocationPickerFragment;[III)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p3, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p3}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 86
    :goto_0
    return-void
.end method

.method setLocating(Z)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/post/LocationPickerFragment;->isLocating:Z

    .line 3
    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    .line 6
    iput-boolean p1, p0, Lcom/narvii/post/LocationPickerFragment;->isLocating:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/post/LocationPickerFragment;->listener:Lcom/narvii/post/LocationPickerFragment$LocationListener;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, p1}, Lcom/narvii/post/LocationPickerFragment$LocationListener;->onLocatingChanged(Z)V

    .line 14
    :cond_0
    return-void
.end method
