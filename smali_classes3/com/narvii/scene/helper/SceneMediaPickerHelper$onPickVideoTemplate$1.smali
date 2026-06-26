.class public final Lcom/narvii/scene/helper/SceneMediaPickerHelper$onPickVideoTemplate$1;
.super Ljava/lang/Object;
.source "SceneMediaPickerHelper.kt"

# interfaces
.implements Lcom/narvii/scene/TemplateListFragment$OnChooseTemplateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/helper/SceneMediaPickerHelper;->onPickVideoTemplate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/helper/SceneMediaPickerHelper;


# direct methods
.method constructor <init>(Lcom/narvii/scene/helper/SceneMediaPickerHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lcom/narvii/scene/helper/SceneMediaPickerHelper$onPickVideoTemplate$1;->this$0:Lcom/narvii/scene/helper/SceneMediaPickerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChoose(Lcom/narvii/scene/model/TemplateConfig;)V
    .locals 3

    const-string v0, "template"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ndc://fragment/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 99
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "templateConfig"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    iget-object p1, p0, Lcom/narvii/scene/helper/SceneMediaPickerHelper$onPickVideoTemplate$1;->this$0:Lcom/narvii/scene/helper/SceneMediaPickerHelper;

    invoke-virtual {p1}, Lcom/narvii/scene/helper/SceneMediaPickerHelper;->getDraftId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "draftId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    iget-object p1, p0, Lcom/narvii/scene/helper/SceneMediaPickerHelper$onPickVideoTemplate$1;->this$0:Lcom/narvii/scene/helper/SceneMediaPickerHelper;

    invoke-virtual {p1}, Lcom/narvii/scene/helper/SceneMediaPickerHelper;->getSceneInfo()Lcom/narvii/scene/model/SceneInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "sceneInfo"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    iget-object p1, p0, Lcom/narvii/scene/helper/SceneMediaPickerHelper$onPickVideoTemplate$1;->this$0:Lcom/narvii/scene/helper/SceneMediaPickerHelper;

    invoke-virtual {p1}, Lcom/narvii/scene/helper/SceneMediaPickerHelper;->getCtx()Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onDismiss()V
    .locals 0

    return-void
.end method
