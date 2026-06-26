.class public abstract Lcom/narvii/share/ShareButtonSaveStory;
.super Lcom/narvii/share/ShareButtonCustomInfo;
.source "ShareButtonSaveStory.kt"

# interfaces
.implements Lcom/narvii/permisson/PermissionListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShareButtonSaveStory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShareButtonSaveStory.kt\ncom/narvii/share/ShareButtonSaveStory\n*L\n1#1,78:1\n*E\n"
.end annotation


# instance fields
.field private pending:Lcom/narvii/share/SharePayload;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1}, Lcom/narvii/share/ShareButtonCustomInfo;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getActSemantic()Lcom/narvii/logging/ActSemantic;
    .locals 1

    .line 70
    sget-object v0, Lcom/narvii/logging/ActSemantic;->save:Lcom/narvii/logging/ActSemantic;

    return-object v0
.end method

.method public getExtraInfo()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "saveType"

    const-string v2, "firstClick"

    .line 75
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getIcon()I
    .locals 1

    .line 28
    sget v0, Lcom/narvii/lib/R$drawable;->ic_share_dialog_save_image:I

    return v0
.end method

.method public final getPending$Lib_release()Lcom/narvii/share/SharePayload;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/narvii/share/ShareButtonSaveStory;->pending:Lcom/narvii/share/SharePayload;

    return-object v0
.end method

.method public getStatSelectionForShare()Ljava/lang/String;
    .locals 1

    const-string v0, "Save Image"

    return-object v0
.end method

.method public getTargetName()Ljava/lang/String;
    .locals 1

    const-string v0, "SaveArea"

    return-object v0
.end method

.method public getTextString()I
    .locals 1

    .line 24
    sget v0, Lcom/narvii/lib/R$string;->save:I

    return v0
.end method

.method public onClick(Lcom/narvii/share/SharePayload;)V
    .locals 3

    const-string v0, "sharePayload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lcom/narvii/share/ShareButtonSaveStory;->pending:Lcom/narvii/share/SharePayload;

    .line 38
    iget-object p1, p0, Lcom/narvii/share/ShareButtonCustomInfo;->nvContext:Lcom/narvii/app/NVContext;

    instance-of v0, p1, Lcom/narvii/app/NVFragment;

    if-eqz v0, :cond_0

    .line 39
    check-cast p1, Lcom/narvii/app/NVFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/NVActivity;

    invoke-static {p1}, Lcom/narvii/permisson/NVPermission;->builder(Landroid/app/Activity;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object p1

    goto :goto_0

    .line 40
    :cond_0
    instance-of v0, p1, Lcom/narvii/app/NVActivity;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 41
    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/narvii/permisson/NVPermission;->builder(Landroid/app/Activity;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.app.Activity"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 p1, 0x0

    .line 44
    :goto_0
    iget-object v0, p0, Lcom/narvii/share/ShareButtonCustomInfo;->nvContext:Lcom/narvii/app/NVContext;

    instance-of v1, v0, Lcom/narvii/app/IPermissionResultDispatcher;

    const/16 v2, 0xcb

    if-eqz v1, :cond_4

    if-eqz v0, :cond_3

    .line 45
    check-cast v0, Lcom/narvii/app/IPermissionResultDispatcher;

    invoke-interface {v0, v2, p0}, Lcom/narvii/app/IPermissionResultDispatcher;->registerPermissionResult(ILcom/narvii/permisson/PermissionListener;)V

    goto :goto_1

    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.narvii.app.IPermissionResultDispatcher"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    if-eqz p1, :cond_5

    .line 48
    invoke-virtual {p1, p0}, Lcom/narvii/permisson/NVPermission$Builder;->permissionListener(Lcom/narvii/permisson/PermissionListener;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p1, v0}, Lcom/narvii/permisson/NVPermission$Builder;->permission(Ljava/lang/String;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1, v2}, Lcom/narvii/permisson/NVPermission$Builder;->requestCode(I)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/narvii/permisson/NVPermission$Builder;->request()V

    :cond_5
    return-void
.end method

.method public abstract onClickWithPermissionGranted(Lcom/narvii/share/SharePayload;)V
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

    const-string p1, "deniedPermissions"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 61
    iget-object p1, p0, Lcom/narvii/share/ShareButtonCustomInfo;->nvContext:Lcom/narvii/app/NVContext;

    const-string p2, "nvContext"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/permisson/NVPermission;->showDeniedDialog(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onPermissionGranted(I)V
    .locals 0

    .line 52
    iget-object p1, p0, Lcom/narvii/share/ShareButtonSaveStory;->pending:Lcom/narvii/share/SharePayload;

    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {p0, p1}, Lcom/narvii/share/ShareButtonSaveStory;->onClickWithPermissionGranted(Lcom/narvii/share/SharePayload;)V

    :cond_0
    return-void
.end method

.method public final setPending$Lib_release(Lcom/narvii/share/SharePayload;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/narvii/share/ShareButtonSaveStory;->pending:Lcom/narvii/share/SharePayload;

    return-void
.end method
