.class final Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2$progressDialog$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SceneMediaPickerCallback.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;-><init>(Lcom/narvii/scene/model/SceneInfo;ZLcom/narvii/app/NVActivity;Ljava/lang/String;Lcom/narvii/scene/template/SceneTemplateHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/narvii/scene/view/ProgressRingDialog;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSceneMediaPickerCallback.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SceneMediaPickerCallback.kt\ncom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2$progressDialog$2\n*L\n1#1,141:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;


# direct methods
.method constructor <init>(Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2$progressDialog$2;->this$0:Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/narvii/scene/view/ProgressRingDialog;
    .locals 2

    .line 53
    new-instance v0, Lcom/narvii/scene/view/ProgressRingDialog;

    iget-object v1, p0, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2$progressDialog$2;->this$0:Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;

    iget-object v1, v1, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;->$activity:Lcom/narvii/app/NVActivity;

    invoke-direct {v0, v1}, Lcom/narvii/scene/view/ProgressRingDialog;-><init>(Landroid/content/Context;)V

    .line 54
    sget v1, Lcom/narvii/mediaeditor/R$string;->normal_loading:I

    invoke-virtual {v0, v1}, Lcom/narvii/scene/view/ProgressRingDialog;->setPromptTitle(I)V

    .line 55
    sget v1, Lcom/narvii/mediaeditor/R$string;->do_not_close_and_lock_your_device:I

    invoke-virtual {v0, v1}, Lcom/narvii/scene/view/ProgressRingDialog;->setPromptText(I)V

    const/4 v1, 0x1

    .line 56
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 57
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 58
    new-instance v1, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2$progressDialog$2$$special$$inlined$apply$lambda$1;

    invoke-direct {v1, p0}, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2$progressDialog$2$$special$$inlined$apply$lambda$1;-><init>(Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2$progressDialog$2;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2$progressDialog$2;->invoke()Lcom/narvii/scene/view/ProgressRingDialog;

    move-result-object v0

    return-object v0
.end method
