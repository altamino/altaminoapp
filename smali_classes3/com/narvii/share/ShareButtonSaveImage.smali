.class public Lcom/narvii/share/ShareButtonSaveImage;
.super Lcom/narvii/share/ShareButtonCustomInfo;
.source "ShareButtonSaveImage.java"

# interfaces
.implements Lcom/narvii/permisson/PermissionListener;


# instance fields
.field pending:Lcom/narvii/share/SharePayload;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/narvii/share/ShareButtonCustomInfo;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getIcon()I
    .locals 1

    .line 38
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

    .line 33
    sget v0, Lcom/narvii/lib/R$string;->save_image:I

    return v0
.end method

.method public onClick(Lcom/narvii/share/SharePayload;)V
    .locals 3

    .line 48
    iput-object p1, p0, Lcom/narvii/share/ShareButtonSaveImage;->pending:Lcom/narvii/share/SharePayload;

    .line 50
    iget-object p1, p0, Lcom/narvii/share/ShareButtonCustomInfo;->nvContext:Lcom/narvii/app/NVContext;

    instance-of v0, p1, Lcom/narvii/app/NVFragment;

    if-eqz v0, :cond_0

    .line 51
    check-cast p1, Lcom/narvii/app/NVFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/NVActivity;

    invoke-static {p1}, Lcom/narvii/permisson/NVPermission;->builder(Landroid/app/Activity;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object p1

    goto :goto_0

    .line 52
    :cond_0
    instance-of v0, p1, Lcom/narvii/app/NVActivity;

    if-eqz v0, :cond_1

    .line 53
    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/narvii/permisson/NVPermission;->builder(Landroid/app/Activity;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 56
    :goto_0
    iget-object v0, p0, Lcom/narvii/share/ShareButtonCustomInfo;->nvContext:Lcom/narvii/app/NVContext;

    instance-of v1, v0, Lcom/narvii/app/IPermissionResultDispatcher;

    const/16 v2, 0xc9

    if-eqz v1, :cond_2

    .line 57
    check-cast v0, Lcom/narvii/app/IPermissionResultDispatcher;

    invoke-interface {v0, v2, p0}, Lcom/narvii/app/IPermissionResultDispatcher;->registerPermissionResult(ILcom/narvii/permisson/PermissionListener;)V

    :cond_2
    if-eqz p1, :cond_3

    .line 61
    invoke-virtual {p1, p0}, Lcom/narvii/permisson/NVPermission$Builder;->permissionListener(Lcom/narvii/permisson/PermissionListener;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object p1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p1, v0}, Lcom/narvii/permisson/NVPermission$Builder;->permission(Ljava/lang/String;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/narvii/permisson/NVPermission$Builder;->requestCode(I)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/permisson/NVPermission$Builder;->request()V

    :cond_3
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

    if-eqz p2, :cond_0

    .line 83
    iget-object p1, p0, Lcom/narvii/share/ShareButtonCustomInfo;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/permisson/NVPermission;->showDeniedDialog(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onPermissionGranted(I)V
    .locals 3

    .line 68
    iget-object p1, p0, Lcom/narvii/share/ShareButtonSaveImage;->pending:Lcom/narvii/share/SharePayload;

    if-nez p1, :cond_0

    return-void

    .line 72
    :cond_0
    new-instance v0, Lcom/narvii/media/SaveImageHelper;

    iget-object v1, p0, Lcom/narvii/share/ShareButtonCustomInfo;->nvContext:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v1}, Lcom/narvii/media/SaveImageHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 73
    iget-object v1, p1, Lcom/narvii/share/SharePayload;->bitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 74
    invoke-virtual {v0, v1, v2}, Lcom/narvii/media/SaveImageHelper;->save(Landroid/graphics/Bitmap;Z)V

    goto :goto_0

    .line 76
    :cond_1
    iget-object p1, p1, Lcom/narvii/share/SharePayload;->mediaUrl:Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Lcom/narvii/media/SaveImageHelper;->save(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method
