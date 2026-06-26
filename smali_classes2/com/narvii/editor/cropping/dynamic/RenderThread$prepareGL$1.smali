.class final Lcom/narvii/editor/cropping/dynamic/RenderThread$prepareGL$1;
.super Ljava/lang/Object;
.source "RenderThread.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/editor/cropping/dynamic/RenderThread;->prepareGL(Landroid/view/Surface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/editor/cropping/dynamic/RenderThread;


# direct methods
.method constructor <init>(Lcom/narvii/editor/cropping/dynamic/RenderThread;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread$prepareGL$1;->this$0:Lcom/narvii/editor/cropping/dynamic/RenderThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread$prepareGL$1;->this$0:Lcom/narvii/editor/cropping/dynamic/RenderThread;

    invoke-static {v0}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->access$getMPlayer$p(Lcom/narvii/editor/cropping/dynamic/RenderThread;)Lcom/narvii/nvplayer/INVPlayer;

    move-result-object v0

    new-instance v1, Landroid/view/Surface;

    iget-object v2, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread$prepareGL$1;->this$0:Lcom/narvii/editor/cropping/dynamic/RenderThread;

    invoke-static {v2}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->access$getMSurfaceTexture$p(Lcom/narvii/editor/cropping/dynamic/RenderThread;)Landroid/graphics/SurfaceTexture;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/INVPlayer;->setVideoSurface(Landroid/view/Surface;)V

    return-void
.end method
