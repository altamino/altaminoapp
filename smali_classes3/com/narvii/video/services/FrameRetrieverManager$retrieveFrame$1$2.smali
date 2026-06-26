.class final Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$1$2;
.super Ljava/lang/Object;
.source "FrameRetrieverManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $result:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$1;


# direct methods
.method constructor <init>(Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$1;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$1$2;->this$0:Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$1;

    iput-object p2, p0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$1$2;->$result:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 340
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$1$2;->this$0:Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$1;

    iget-object v1, v0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$1;->$callback:Lcom/narvii/video/interfaces/IVideoServiceCallback;

    iget v0, v0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$1;->$frameTimeInMs:I

    iget-object v2, p0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$1$2;->$result:Landroid/graphics/Bitmap;

    invoke-interface {v1, v0, v2}, Lcom/narvii/video/interfaces/IVideoServiceCallback;->onFrameBitmapLoaded(ILandroid/graphics/Bitmap;)V

    return-void
.end method
