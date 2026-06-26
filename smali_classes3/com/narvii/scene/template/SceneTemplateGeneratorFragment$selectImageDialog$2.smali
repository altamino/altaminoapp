.class final Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$selectImageDialog$2;
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
        "Lcom/narvii/widget/ACMAlertDialog;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSceneTemplateGeneratorFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SceneTemplateGeneratorFragment.kt\ncom/narvii/scene/template/SceneTemplateGeneratorFragment$selectImageDialog$2\n*L\n1#1,914:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;


# direct methods
.method constructor <init>(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$selectImageDialog$2;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/narvii/widget/ACMAlertDialog;
    .locals 3

    .line 112
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    iget-object v1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$selectImageDialog$2;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 113
    iget-object v1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$selectImageDialog$2;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    sget v2, Lcom/narvii/mediaeditor/R$string;->select_image_or_video_hint:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 114
    sget v1, Lcom/narvii/mediaeditor/R$string;->got_it:I

    sget-object v2, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$selectImageDialog$2$1$1;->INSTANCE:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$selectImageDialog$2$1$1;

    invoke-virtual {v0, v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$selectImageDialog$2;->invoke()Lcom/narvii/widget/ACMAlertDialog;

    move-result-object v0

    return-object v0
.end method
