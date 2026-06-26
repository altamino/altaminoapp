.class final Lcom/narvii/scene/template/SceneTemplateHelper$onFinish$1;
.super Ljava/lang/Object;
.source "SceneTemplateHelper.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/template/SceneTemplateHelper;->onFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/template/SceneTemplateHelper;


# direct methods
.method constructor <init>(Lcom/narvii/scene/template/SceneTemplateHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper$onFinish$1;->this$0:Lcom/narvii/scene/template/SceneTemplateHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 275
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper$onFinish$1;->this$0:Lcom/narvii/scene/template/SceneTemplateHelper;

    invoke-virtual {v0}, Lcom/narvii/scene/template/SceneTemplateHelper;->getVideo()Lcom/narvii/video/services/VideoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/scene/template/SceneTemplateHelper$onFinish$1;->this$0:Lcom/narvii/scene/template/SceneTemplateHelper;

    invoke-static {v1}, Lcom/narvii/scene/template/SceneTemplateHelper;->access$getOutputPath(Lcom/narvii/scene/template/SceneTemplateHelper;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/scene/template/SceneTemplateHelper$onFinish$1;->this$0:Lcom/narvii/scene/template/SceneTemplateHelper;

    invoke-virtual {v0, v1, v2}, Lcom/narvii/video/services/VideoManager;->fetchStreamInfo(Ljava/lang/String;Lcom/narvii/video/services/VideoManager$IFetchStreamInfoCallback;)V

    return-void
.end method
