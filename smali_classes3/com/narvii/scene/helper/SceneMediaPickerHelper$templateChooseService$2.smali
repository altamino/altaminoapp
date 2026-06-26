.class final Lcom/narvii/scene/helper/SceneMediaPickerHelper$templateChooseService$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SceneMediaPickerHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/helper/SceneMediaPickerHelper;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;Lcom/narvii/media/MediaPickerFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/narvii/scene/service/ChooseSceneTemplateService;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSceneMediaPickerHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SceneMediaPickerHelper.kt\ncom/narvii/scene/helper/SceneMediaPickerHelper$templateChooseService$2\n*L\n1#1,122:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/helper/SceneMediaPickerHelper;


# direct methods
.method constructor <init>(Lcom/narvii/scene/helper/SceneMediaPickerHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/scene/helper/SceneMediaPickerHelper$templateChooseService$2;->this$0:Lcom/narvii/scene/helper/SceneMediaPickerHelper;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/narvii/scene/service/ChooseSceneTemplateService;
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/narvii/scene/helper/SceneMediaPickerHelper$templateChooseService$2;->this$0:Lcom/narvii/scene/helper/SceneMediaPickerHelper;

    invoke-virtual {v0}, Lcom/narvii/scene/helper/SceneMediaPickerHelper;->getCtx()Lcom/narvii/app/NVContext;

    move-result-object v0

    const-string v1, "chooseSceneTemplate"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/scene/service/ChooseSceneTemplateService;

    const/4 v1, 0x2

    .line 26
    invoke-virtual {v0, v1}, Lcom/narvii/scene/service/ChooseSceneTemplateService;->setFrom(I)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/narvii/scene/helper/SceneMediaPickerHelper$templateChooseService$2;->invoke()Lcom/narvii/scene/service/ChooseSceneTemplateService;

    move-result-object v0

    return-object v0
.end method
