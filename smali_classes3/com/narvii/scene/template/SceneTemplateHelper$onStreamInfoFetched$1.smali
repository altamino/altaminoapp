.class final Lcom/narvii/scene/template/SceneTemplateHelper$onStreamInfoFetched$1;
.super Ljava/lang/Object;
.source "SceneTemplateHelper.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/template/SceneTemplateHelper;->onStreamInfoFetched(Lcom/narvii/video/model/StreamInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $streamInfo:Lcom/narvii/video/model/StreamInfo;

.field final synthetic $t:Lcom/narvii/videotemplate/Template;

.field final synthetic this$0:Lcom/narvii/scene/template/SceneTemplateHelper;


# direct methods
.method constructor <init>(Lcom/narvii/scene/template/SceneTemplateHelper;Lcom/narvii/videotemplate/Template;Lcom/narvii/video/model/StreamInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper$onStreamInfoFetched$1;->this$0:Lcom/narvii/scene/template/SceneTemplateHelper;

    iput-object p2, p0, Lcom/narvii/scene/template/SceneTemplateHelper$onStreamInfoFetched$1;->$t:Lcom/narvii/videotemplate/Template;

    iput-object p3, p0, Lcom/narvii/scene/template/SceneTemplateHelper$onStreamInfoFetched$1;->$streamInfo:Lcom/narvii/video/model/StreamInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 281
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper$onStreamInfoFetched$1;->this$0:Lcom/narvii/scene/template/SceneTemplateHelper;

    invoke-virtual {v0}, Lcom/narvii/scene/template/SceneTemplateHelper;->getOnCompileListener()Lcom/narvii/scene/template/SceneTemplateHelper$OnCompileListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/narvii/scene/template/SceneTemplateHelper$onStreamInfoFetched$1;->this$0:Lcom/narvii/scene/template/SceneTemplateHelper;

    iget-object v2, p0, Lcom/narvii/scene/template/SceneTemplateHelper$onStreamInfoFetched$1;->$t:Lcom/narvii/videotemplate/Template;

    invoke-static {v1}, Lcom/narvii/scene/template/SceneTemplateHelper;->access$getOutputPath(Lcom/narvii/scene/template/SceneTemplateHelper;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/narvii/scene/template/SceneTemplateHelper$onStreamInfoFetched$1;->$streamInfo:Lcom/narvii/video/model/StreamInfo;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/narvii/scene/template/SceneTemplateHelper$OnCompileListener;->onCompileFinished(Lcom/narvii/scene/template/SceneTemplateHelper;Lcom/narvii/videotemplate/Template;Ljava/lang/String;Lcom/narvii/video/model/StreamInfo;)V

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper$onStreamInfoFetched$1;->this$0:Lcom/narvii/scene/template/SceneTemplateHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/scene/template/SceneTemplateHelper;->setExecuting(Z)V

    return-void
.end method
