.class final Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2$errorDialog$2;
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
        "Lcom/narvii/widget/ACMAlertDialog;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSceneMediaPickerCallback.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SceneMediaPickerCallback.kt\ncom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2$errorDialog$2\n*L\n1#1,141:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;


# direct methods
.method constructor <init>(Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2$errorDialog$2;->this$0:Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/narvii/widget/ACMAlertDialog;
    .locals 3

    .line 65
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    iget-object v1, p0, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2$errorDialog$2;->this$0:Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;

    iget-object v1, v1, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;->$activity:Lcom/narvii/app/NVActivity;

    invoke-direct {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 66
    sget v1, Lcom/narvii/mediaeditor/R$string;->got_it:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2$errorDialog$2;->invoke()Lcom/narvii/widget/ACMAlertDialog;

    move-result-object v0

    return-object v0
.end method
