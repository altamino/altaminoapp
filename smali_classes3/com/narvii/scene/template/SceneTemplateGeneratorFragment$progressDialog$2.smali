.class final Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$progressDialog$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SceneTemplateGeneratorFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;-><init>()V
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
    value = "SMAP\nSceneTemplateGeneratorFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SceneTemplateGeneratorFragment.kt\ncom/narvii/scene/template/SceneTemplateGeneratorFragment$progressDialog$2\n*L\n1#1,914:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;


# direct methods
.method constructor <init>(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$progressDialog$2;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/narvii/scene/view/ProgressRingDialog;
    .locals 3

    .line 166
    new-instance v0, Lcom/narvii/scene/view/ProgressRingDialog;

    iget-object v1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$progressDialog$2;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "context!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/narvii/scene/view/ProgressRingDialog;-><init>(Landroid/content/Context;)V

    .line 167
    sget v1, Lcom/narvii/mediaeditor/R$string;->normal_loading:I

    invoke-virtual {v0, v1}, Lcom/narvii/scene/view/ProgressRingDialog;->setPromptTitle(I)V

    .line 168
    sget v1, Lcom/narvii/mediaeditor/R$string;->do_not_close_and_lock_your_device:I

    invoke-virtual {v0, v1}, Lcom/narvii/scene/view/ProgressRingDialog;->setPromptText(I)V

    const/4 v1, 0x1

    .line 169
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 170
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 171
    iget-object v1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$progressDialog$2;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-object v0

    .line 166
    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 v0, 0x0

    throw v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$progressDialog$2;->invoke()Lcom/narvii/scene/view/ProgressRingDialog;

    move-result-object v0

    return-object v0
.end method
