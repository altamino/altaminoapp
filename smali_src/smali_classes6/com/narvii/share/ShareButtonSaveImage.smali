.class public Lcom/narvii/share/ShareButtonSaveImage;
.super Lcom/narvii/share/ShareButtonCustomInfo;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/permisson/PermissionListener;


# instance fields
.field pending:Lcom/narvii/share/SharePayload;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/share/ShareButtonCustomInfo;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    return-void
.end method

.method private saveImage()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/share/ShareButtonSaveImage;->pending:Lcom/narvii/share/SharePayload;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    new-instance v1, Lcom/narvii/media/SaveImageHelper;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/narvii/share/ShareButtonCustomInfo;->nvContext:Lcom/narvii/app/NVContext;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Lcom/narvii/media/SaveImageHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 13
    .line 14
    iget-object v2, v0, Lcom/narvii/share/SharePayload;->bitmap:Landroid/graphics/Bitmap;

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Lcom/narvii/media/SaveImageHelper;->save(Landroid/graphics/Bitmap;)V

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_1
    iget-object v0, v0, Lcom/narvii/share/SharePayload;->mediaUrl:Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v0}, Lcom/narvii/media/SaveImageHelper;->save(Ljava/lang/String;)V

    .line 26
    :goto_0
    return-void
.end method


# virtual methods
.method public getIcon()I
    .locals 1

    sget v0, Lcom/narvii/lib/R$drawable;->ic_share_dialog_save_image:I

    return v0
.end method

.method public getStatSelectionForShare()Ljava/lang/String;
    .locals 1

    const-string v0, "Save Image"

    return-object v0
.end method

.method public getTextString()I
    .locals 1

    sget v0, Lcom/narvii/lib/R$string;->save_image:I

    return v0
.end method

.method public onClick(Lcom/narvii/share/SharePayload;)V
    .locals 3

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/share/ShareButtonSaveImage;->pending:Lcom/narvii/share/SharePayload;

    .line 3
    .line 4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v0, 0x1e

    .line 7
    .line 8
    if-lt p1, v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/narvii/share/ShareButtonSaveImage;->saveImage()V

    .line 12
    goto :goto_1

    .line 13
    .line 14
    :cond_0
    iget-object p1, p0, Lcom/narvii/share/ShareButtonCustomInfo;->nvContext:Lcom/narvii/app/NVContext;

    .line 15
    .line 16
    instance-of v0, p1, Lcom/narvii/app/NVFragment;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    check-cast p1, Lcom/narvii/app/NVFragment;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    check-cast p1, Lcom/narvii/app/NVActivity;

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Lcom/narvii/permisson/NVPermission;->builder(Landroid/app/Activity;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 30
    move-result-object p1

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_1
    instance-of v0, p1, Lcom/narvii/app/NVActivity;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    check-cast p1, Landroid/app/Activity;

    .line 38
    .line 39
    .line 40
    invoke-static {p1}, Lcom/narvii/permisson/NVPermission;->builder(Landroid/app/Activity;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 41
    move-result-object p1

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const/4 p1, 0x0

    .line 44
    .line 45
    :goto_0
    iget-object v0, p0, Lcom/narvii/share/ShareButtonCustomInfo;->nvContext:Lcom/narvii/app/NVContext;

    .line 46
    .line 47
    instance-of v1, v0, Lcom/narvii/app/IPermissionResultDispatcher;

    .line 48
    .line 49
    const/16 v2, 0xc9

    .line 50
    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    check-cast v0, Lcom/narvii/app/IPermissionResultDispatcher;

    .line 54
    .line 55
    .line 56
    invoke-interface {v0, v2, p0}, Lcom/narvii/app/IPermissionResultDispatcher;->registerPermissionResult(ILcom/narvii/permisson/PermissionListener;)V

    .line 57
    .line 58
    :cond_3
    if-eqz p1, :cond_4

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p0}, Lcom/narvii/permisson/NVPermission$Builder;->permissionListener(Lcom/narvii/permisson/PermissionListener;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 62
    move-result-object p1

    .line 63
    .line 64
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Lcom/narvii/permisson/NVPermission$Builder;->permission(Ljava/lang/String;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v2}, Lcom/narvii/permisson/NVPermission$Builder;->requestCode(I)Lcom/narvii/permisson/NVPermission$Builder;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/narvii/permisson/NVPermission$Builder;->request()V

    .line 76
    :cond_4
    :goto_1
    return-void
.end method

.method public onPermissionDenied(IZLjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/share/ShareButtonCustomInfo;->nvContext:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/narvii/permisson/NVPermission;->showDeniedDialog(Landroid/content/Context;)V

    .line 12
    :cond_0
    return-void
.end method

.method public onPermissionGranted(I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/share/ShareButtonSaveImage;->saveImage()V

    .line 4
    return-void
.end method
