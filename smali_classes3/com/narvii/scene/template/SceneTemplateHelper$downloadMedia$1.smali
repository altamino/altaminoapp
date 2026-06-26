.class public final Lcom/narvii/scene/template/SceneTemplateHelper$downloadMedia$1;
.super Ljava/lang/Object;
.source "SceneTemplateHelper.kt"

# interfaces
.implements Lcom/narvii/pre_editing/TrimVideoGenerator$TrimCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/template/SceneTemplateHelper;->downloadMedia(Ljava/lang/String;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $trimEndTime:J

.field final synthetic $trimStartTime:J

.field final synthetic $videoUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/scene/template/SceneTemplateHelper;


# direct methods
.method constructor <init>(Lcom/narvii/scene/template/SceneTemplateHelper;Ljava/lang/String;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)V"
        }
    .end annotation

    .line 196
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper$downloadMedia$1;->this$0:Lcom/narvii/scene/template/SceneTemplateHelper;

    iput-object p2, p0, Lcom/narvii/scene/template/SceneTemplateHelper$downloadMedia$1;->$videoUrl:Ljava/lang/String;

    iput-wide p3, p0, Lcom/narvii/scene/template/SceneTemplateHelper$downloadMedia$1;->$trimEndTime:J

    iput-wide p5, p0, Lcom/narvii/scene/template/SceneTemplateHelper$downloadMedia$1;->$trimStartTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onError()V
    .locals 5

    .line 207
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper$downloadMedia$1;->this$0:Lcom/narvii/scene/template/SceneTemplateHelper;

    invoke-virtual {v0}, Lcom/narvii/scene/template/SceneTemplateHelper;->isExecuting()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper$downloadMedia$1;->this$0:Lcom/narvii/scene/template/SceneTemplateHelper;

    invoke-static {v0}, Lcom/narvii/scene/template/SceneTemplateHelper;->access$getCtx$p(Lcom/narvii/scene/template/SceneTemplateHelper;)Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/narvii/mediaeditor/R$string;->media_could_not_processed:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 211
    iget-object v1, p0, Lcom/narvii/scene/template/SceneTemplateHelper$downloadMedia$1;->this$0:Lcom/narvii/scene/template/SceneTemplateHelper;

    invoke-virtual {v1}, Lcom/narvii/scene/template/SceneTemplateHelper;->getOnCompileListener()Lcom/narvii/scene/template/SceneTemplateHelper$OnCompileListener;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/narvii/scene/template/SceneTemplateHelper$downloadMedia$1;->this$0:Lcom/narvii/scene/template/SceneTemplateHelper;

    const/4 v4, 0x0

    invoke-interface {v1, v3, v2, v0, v4}, Lcom/narvii/scene/template/SceneTemplateHelper$OnCompileListener;->onCompileFail(Lcom/narvii/scene/template/SceneTemplateHelper;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper$downloadMedia$1;->this$0:Lcom/narvii/scene/template/SceneTemplateHelper;

    invoke-virtual {v0, v2}, Lcom/narvii/scene/template/SceneTemplateHelper;->setExecuting(Z)V

    return-void
.end method

.method public onProgress(F)V
    .locals 0

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 6

    const-string v0, "outputFilePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper$downloadMedia$1;->this$0:Lcom/narvii/scene/template/SceneTemplateHelper;

    invoke-virtual {v0}, Lcom/narvii/scene/template/SceneTemplateHelper;->isExecuting()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper$downloadMedia$1;->this$0:Lcom/narvii/scene/template/SceneTemplateHelper;

    invoke-virtual {v0}, Lcom/narvii/scene/template/SceneTemplateHelper;->getDownloadMediaCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper$downloadMedia$1;->this$0:Lcom/narvii/scene/template/SceneTemplateHelper;

    iget-object v1, p0, Lcom/narvii/scene/template/SceneTemplateHelper$downloadMedia$1;->$videoUrl:Ljava/lang/String;

    iget-wide v2, p0, Lcom/narvii/scene/template/SceneTemplateHelper$downloadMedia$1;->$trimEndTime:J

    iget-wide v4, p0, Lcom/narvii/scene/template/SceneTemplateHelper$downloadMedia$1;->$trimStartTime:J

    sub-long/2addr v2, v4

    invoke-static {v0, v1, p1, v2, v3}, Lcom/narvii/scene/template/SceneTemplateHelper;->access$downloadMediaSuccess(Lcom/narvii/scene/template/SceneTemplateHelper;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_1
    :goto_0
    return-void
.end method
