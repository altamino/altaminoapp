.class final Lcom/narvii/scene/BaseSceneListFragment$fileMisssingDialog$2;
.super Lkotlin/jvm/internal/Lambda;
.source "BaseSceneListFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/BaseSceneListFragment;-><init>()V
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
    value = "SMAP\nBaseSceneListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseSceneListFragment.kt\ncom/narvii/scene/BaseSceneListFragment$fileMisssingDialog$2\n*L\n1#1,1178:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/BaseSceneListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/scene/BaseSceneListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment$fileMisssingDialog$2;->this$0:Lcom/narvii/scene/BaseSceneListFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/narvii/widget/ACMAlertDialog;
    .locals 3

    .line 123
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    iget-object v1, p0, Lcom/narvii/scene/BaseSceneListFragment$fileMisssingDialog$2;->this$0:Lcom/narvii/scene/BaseSceneListFragment;

    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 124
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 125
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 126
    iget-object v1, p0, Lcom/narvii/scene/BaseSceneListFragment$fileMisssingDialog$2;->this$0:Lcom/narvii/scene/BaseSceneListFragment;

    sget v2, Lcom/narvii/mediaeditor/R$string;->original_file_missing:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 127
    sget v1, Lcom/narvii/mediaeditor/R$string;->yes:I

    new-instance v2, Lcom/narvii/scene/BaseSceneListFragment$fileMisssingDialog$2$$special$$inlined$apply$lambda$1;

    invoke-direct {v2, p0}, Lcom/narvii/scene/BaseSceneListFragment$fileMisssingDialog$2$$special$$inlined$apply$lambda$1;-><init>(Lcom/narvii/scene/BaseSceneListFragment$fileMisssingDialog$2;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment$fileMisssingDialog$2;->invoke()Lcom/narvii/widget/ACMAlertDialog;

    move-result-object v0

    return-object v0
.end method
