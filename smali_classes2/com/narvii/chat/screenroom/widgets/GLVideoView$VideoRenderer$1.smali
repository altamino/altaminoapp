.class Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer$1;
.super Ljava/lang/Object;
.source "GLVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;)V
    .locals 0

    .line 943
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer$1;->this$1:Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 946
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer$1;->this$1:Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;

    iget-object v0, v0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->isSurfaceCreated:Z

    .line 947
    invoke-static {v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$2300(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)V

    return-void
.end method
