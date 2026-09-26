.class final Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2$errorDialog$2;
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
        "Lcom/narvii/widget/ACMAlertDialog;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $activity:Lcom/narvii/app/NVActivity;


# direct methods
.method constructor <init>(Lcom/narvii/app/NVActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2$errorDialog$2;->$activity:Lcom/narvii/app/NVActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/narvii/widget/ACMAlertDialog;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    iget-object v1, p0, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2$errorDialog$2;->$activity:Lcom/narvii/app/NVActivity;

    invoke-direct {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/narvii/mediaeditor/R$string;->got_it:I

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2$errorDialog$2;->invoke()Lcom/narvii/widget/ACMAlertDialog;

    move-result-object v0

    return-object v0
.end method
