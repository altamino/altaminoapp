.class final Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$progressDialog$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


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
        "Lkotlin/jvm/internal/v;",
        "Le8/a<",
        "Lcom/narvii/scene/view/ProgressRingDialog;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;


# direct methods
.method constructor <init>(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$progressDialog$2;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/narvii/scene/view/ProgressRingDialog;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/narvii/scene/view/ProgressRingDialog;

    iget-object v1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$progressDialog$2;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/narvii/scene/view/ProgressRingDialog;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$progressDialog$2;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

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
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$progressDialog$2;->invoke()Lcom/narvii/scene/view/ProgressRingDialog;

    move-result-object v0

    return-object v0
.end method
