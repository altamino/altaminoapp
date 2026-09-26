.class final Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2$progressDialog$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;-><init>(Lcom/narvii/app/NVActivity;Lcom/narvii/scene/template/SceneTemplateHelper;Lcom/narvii/scene/model/SceneInfo;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/a<",
        "Lcom/narvii/scene/view/ProgressRingDialog;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $activity:Lcom/narvii/app/NVActivity;

.field final synthetic $sceneTemplateHelper:Lcom/narvii/scene/template/SceneTemplateHelper;


# direct methods
.method constructor <init>(Lcom/narvii/app/NVActivity;Lcom/narvii/scene/template/SceneTemplateHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2$progressDialog$2;->$activity:Lcom/narvii/app/NVActivity;

    iput-object p2, p0, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2$progressDialog$2;->$sceneTemplateHelper:Lcom/narvii/scene/template/SceneTemplateHelper;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcom/narvii/scene/template/SceneTemplateHelper;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2$progressDialog$2;->invoke$lambda$1$lambda$0(Lcom/narvii/scene/template/SceneTemplateHelper;Landroid/content/DialogInterface;)V

    return-void
.end method

.method private static final invoke$lambda$1$lambda$0(Lcom/narvii/scene/template/SceneTemplateHelper;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    .line 2
    const-string p1, "$sceneTemplateHelper"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateHelper;->cancel()V

    .line 9
    return-void
.end method


# virtual methods
.method public final invoke()Lcom/narvii/scene/view/ProgressRingDialog;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/narvii/scene/view/ProgressRingDialog;

    iget-object v1, p0, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2$progressDialog$2;->$activity:Lcom/narvii/app/NVActivity;

    invoke-direct {v0, v1}, Lcom/narvii/scene/view/ProgressRingDialog;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2$progressDialog$2;->$sceneTemplateHelper:Lcom/narvii/scene/template/SceneTemplateHelper;

    sget v2, Lcom/narvii/mediaeditor/R$string;->normal_loading:I

    .line 3
    invoke-virtual {v0, v2}, Lcom/narvii/scene/view/ProgressRingDialog;->setPromptTitle(I)V

    sget v2, Lcom/narvii/mediaeditor/R$string;->do_not_close_and_lock_your_device:I

    .line 4
    invoke-virtual {v0, v2}, Lcom/narvii/scene/view/ProgressRingDialog;->setPromptText(I)V

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 6
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 7
    new-instance v2, Lcom/narvii/scene/callback/b;

    invoke-direct {v2, v1}, Lcom/narvii/scene/callback/b;-><init>(Lcom/narvii/scene/template/SceneTemplateHelper;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2$progressDialog$2;->invoke()Lcom/narvii/scene/view/ProgressRingDialog;

    move-result-object v0

    return-object v0
.end method
