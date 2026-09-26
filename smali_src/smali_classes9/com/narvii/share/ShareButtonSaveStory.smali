.class public abstract Lcom/narvii/share/ShareButtonSaveStory;
.super Lcom/narvii/share/ShareButtonCustomInfo;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/permisson/PermissionListener;


# instance fields
.field private pending:Lcom/narvii/share/SharePayload;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1
    .param p1    # Lcom/narvii/app/NVContext;
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
    invoke-direct {p0, p1}, Lcom/narvii/share/ShareButtonCustomInfo;-><init>(Lcom/narvii/app/NVContext;)V

    .line 9
    return-void
.end method


# virtual methods
.method public getActSemantic()Lcom/narvii/logging/ActSemantic;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/logging/ActSemantic;->save:Lcom/narvii/logging/ActSemantic;

    .line 3
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    const-string v1, "saveType"

    .line 8
    .line 9
    const-string v2, "firstClick"

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    return-object v0
.end method

.method public getIcon()I
    .locals 1

    sget v0, Lcom/narvii/lib/R$drawable;->ic_share_dialog_save_image:I

    return v0
.end method

.method public final getPending$Lib_release()Lcom/narvii/share/SharePayload;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/share/ShareButtonSaveStory;->pending:Lcom/narvii/share/SharePayload;

    return-object v0
.end method

.method public getStatSelectionForShare()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "Save Image"

    return-object v0
.end method

.method public getTargetName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "SaveArea"

    return-object v0
.end method

.method public getTextString()I
    .locals 1

    sget v0, Lcom/narvii/lib/R$string;->save:I

    return v0
.end method

.method public onClick(Lcom/narvii/share/SharePayload;)V
    .locals 3
    .param p1    # Lcom/narvii/share/SharePayload;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "sharePayload"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/share/ShareButtonSaveStory;->pending:Lcom/narvii/share/SharePayload;

    .line 8
    .line 9
    iget-object p1, p0, Lcom/narvii/share/ShareButtonCustomInfo;->nvContext:Lcom/narvii/app/NVContext;

    .line 10
    .line 11
    instance-of v0, p1, Lcom/narvii/app/NVFragment;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    check-cast p1, Lcom/narvii/app/NVFragment;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    check-cast p1, Lcom/narvii/app/NVActivity;

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lcom/narvii/permisson/NVPermission;->builder(Landroid/app/Activity;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 25
    move-result-object p1

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_0
    instance-of v0, p1, Lcom/narvii/app/NVActivity;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    const-string v0, "null cannot be cast to non-null type android.app.Activity"

    .line 33
    .line 34
    .line 35
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

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
    :cond_1
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
    const/16 v2, 0xcb

    .line 50
    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    const-string v1, "null cannot be cast to non-null type com.narvii.app.IPermissionResultDispatcher"

    .line 54
    .line 55
    .line 56
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    check-cast v0, Lcom/narvii/app/IPermissionResultDispatcher;

    .line 59
    .line 60
    .line 61
    invoke-interface {v0, v2, p0}, Lcom/narvii/app/IPermissionResultDispatcher;->registerPermissionResult(ILcom/narvii/permisson/PermissionListener;)V

    .line 62
    .line 63
    :cond_2
    if-eqz p1, :cond_3

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, p0}, Lcom/narvii/permisson/NVPermission$Builder;->permissionListener(Lcom/narvii/permisson/PermissionListener;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    if-eqz p1, :cond_3

    .line 70
    .line 71
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v0}, Lcom/narvii/permisson/NVPermission$Builder;->permission(Ljava/lang/String;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    if-eqz p1, :cond_3

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v2}, Lcom/narvii/permisson/NVPermission$Builder;->requestCode(I)Lcom/narvii/permisson/NVPermission$Builder;

    .line 81
    move-result-object p1

    .line 82
    .line 83
    if-eqz p1, :cond_3

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/narvii/permisson/NVPermission$Builder;->request()V

    .line 87
    :cond_3
    return-void
.end method

.method public abstract onClickWithPermissionGranted(Lcom/narvii/share/SharePayload;)V
    .param p1    # Lcom/narvii/share/SharePayload;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public onPermissionDenied(IZLjava/util/ArrayList;)V
    .locals 0
    .param p3    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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
    const-string p1, "deniedPermissions"

    .line 3
    .line 4
    .line 5
    invoke-static {p3, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/narvii/share/ShareButtonCustomInfo;->nvContext:Lcom/narvii/app/NVContext;

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lcom/narvii/permisson/NVPermission;->showDeniedDialog(Landroid/content/Context;)V

    .line 17
    :cond_0
    return-void
.end method

.method public onPermissionGranted(I)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/share/ShareButtonSaveStory;->pending:Lcom/narvii/share/SharePayload;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/narvii/share/ShareButtonSaveStory;->onClickWithPermissionGranted(Lcom/narvii/share/SharePayload;)V

    .line 8
    :cond_0
    return-void
.end method

.method public final setPending$Lib_release(Lcom/narvii/share/SharePayload;)V
    .locals 0
    .param p1    # Lcom/narvii/share/SharePayload;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/share/ShareButtonSaveStory;->pending:Lcom/narvii/share/SharePayload;

    return-void
.end method
