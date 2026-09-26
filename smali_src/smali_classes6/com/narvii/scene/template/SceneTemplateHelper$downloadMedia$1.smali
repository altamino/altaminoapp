.class public final Lcom/narvii/scene/template/SceneTemplateHelper$downloadMedia$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper$downloadMedia$1;->this$0:Lcom/narvii/scene/template/SceneTemplateHelper;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/scene/template/SceneTemplateHelper$downloadMedia$1;->$videoUrl:Ljava/lang/String;

    .line 5
    .line 6
    iput-wide p3, p0, Lcom/narvii/scene/template/SceneTemplateHelper$downloadMedia$1;->$trimEndTime:J

    .line 7
    .line 8
    iput-wide p5, p0, Lcom/narvii/scene/template/SceneTemplateHelper$downloadMedia$1;->$trimStartTime:J

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onError()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper$downloadMedia$1;->this$0:Lcom/narvii/scene/template/SceneTemplateHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/scene/template/SceneTemplateHelper;->isExecuting()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper$downloadMedia$1;->this$0:Lcom/narvii/scene/template/SceneTemplateHelper;

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/narvii/scene/template/SceneTemplateHelper;->access$getCtx$p(Lcom/narvii/scene/template/SceneTemplateHelper;)Lcom/narvii/app/NVContext;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    sget v1, Lcom/narvii/mediaeditor/R$string;->media_could_not_processed:I

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    const-string v1, "getString(...)"

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    iget-object v1, p0, Lcom/narvii/scene/template/SceneTemplateHelper$downloadMedia$1;->this$0:Lcom/narvii/scene/template/SceneTemplateHelper;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/narvii/scene/template/SceneTemplateHelper;->getOnCompileListener()Lcom/narvii/scene/template/SceneTemplateHelper$OnCompileListener;

    .line 36
    move-result-object v1

    .line 37
    const/4 v2, 0x0

    .line 38
    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    iget-object v3, p0, Lcom/narvii/scene/template/SceneTemplateHelper$downloadMedia$1;->this$0:Lcom/narvii/scene/template/SceneTemplateHelper;

    .line 42
    const/4 v4, 0x0

    .line 43
    .line 44
    .line 45
    invoke-interface {v1, v3, v2, v0, v4}, Lcom/narvii/scene/template/SceneTemplateHelper$OnCompileListener;->onCompileFail(Lcom/narvii/scene/template/SceneTemplateHelper;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    .line 47
    :cond_1
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper$downloadMedia$1;->this$0:Lcom/narvii/scene/template/SceneTemplateHelper;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v2}, Lcom/narvii/scene/template/SceneTemplateHelper;->setExecuting(Z)V

    .line 51
    return-void
.end method

.method public onProgress(F)V
    .locals 0

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "outputFilePath"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper$downloadMedia$1;->this$0:Lcom/narvii/scene/template/SceneTemplateHelper;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/scene/template/SceneTemplateHelper;->isExecuting()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper$downloadMedia$1;->this$0:Lcom/narvii/scene/template/SceneTemplateHelper;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/narvii/scene/template/SceneTemplateHelper;->getDownloadMediaCount()I

    .line 19
    move-result v0

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper$downloadMedia$1;->this$0:Lcom/narvii/scene/template/SceneTemplateHelper;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/narvii/scene/template/SceneTemplateHelper$downloadMedia$1;->$videoUrl:Ljava/lang/String;

    .line 27
    .line 28
    iget-wide v2, p0, Lcom/narvii/scene/template/SceneTemplateHelper$downloadMedia$1;->$trimEndTime:J

    .line 29
    .line 30
    iget-wide v4, p0, Lcom/narvii/scene/template/SceneTemplateHelper$downloadMedia$1;->$trimStartTime:J

    .line 31
    sub-long/2addr v2, v4

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v1, p1, v2, v3}, Lcom/narvii/scene/template/SceneTemplateHelper;->access$downloadMediaSuccess(Lcom/narvii/scene/template/SceneTemplateHelper;Ljava/lang/String;Ljava/lang/String;J)V

    .line 35
    :cond_1
    :goto_0
    return-void
.end method
