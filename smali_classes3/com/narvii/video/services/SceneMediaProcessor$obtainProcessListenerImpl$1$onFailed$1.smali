.class final Lcom/narvii/video/services/SceneMediaProcessor$obtainProcessListenerImpl$1$onFailed$1;
.super Ljava/lang/Object;
.source "SceneMediaProcessor.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/services/SceneMediaProcessor$obtainProcessListenerImpl$1;->onFailed(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/services/SceneMediaProcessor$obtainProcessListenerImpl$1;


# direct methods
.method constructor <init>(Lcom/narvii/video/services/SceneMediaProcessor$obtainProcessListenerImpl$1;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/services/SceneMediaProcessor$obtainProcessListenerImpl$1$onFailed$1;->this$0:Lcom/narvii/video/services/SceneMediaProcessor$obtainProcessListenerImpl$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 794
    sget-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    iget-object v1, p0, Lcom/narvii/video/services/SceneMediaProcessor$obtainProcessListenerImpl$1$onFailed$1;->this$0:Lcom/narvii/video/services/SceneMediaProcessor$obtainProcessListenerImpl$1;

    iget-object v1, v1, Lcom/narvii/video/services/SceneMediaProcessor$obtainProcessListenerImpl$1;->$videoManager:Lcom/narvii/video/services/VideoManager;

    invoke-virtual {v0, v1}, Lcom/narvii/video/services/SceneMediaProcessor;->terminateAll(Lcom/narvii/video/services/VideoManager;)V

    return-void
.end method
