.class final Lcom/narvii/video/services/FrameRetrieverManager$Companion$dispatchBitmap$1;
.super Ljava/lang/Object;
.source "FrameRetrieverManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/services/FrameRetrieverManager$Companion;->dispatchBitmap(Ljava/lang/String;ILandroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $bitmap:Landroid/graphics/Bitmap;

.field final synthetic $input:Ljava/lang/String;

.field final synthetic $realFrameTimeInMs:I


# direct methods
.method constructor <init>(Ljava/lang/String;ILandroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/services/FrameRetrieverManager$Companion$dispatchBitmap$1;->$input:Ljava/lang/String;

    iput p2, p0, Lcom/narvii/video/services/FrameRetrieverManager$Companion$dispatchBitmap$1;->$realFrameTimeInMs:I

    iput-object p3, p0, Lcom/narvii/video/services/FrameRetrieverManager$Companion$dispatchBitmap$1;->$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 66
    sget-object v0, Lcom/narvii/video/services/FrameRetrieverManager;->Companion:Lcom/narvii/video/services/FrameRetrieverManager$Companion;

    invoke-virtual {v0}, Lcom/narvii/video/services/FrameRetrieverManager$Companion;->getFrameRetrieverManagerInstance()Lcom/narvii/video/services/FrameRetrieverManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/narvii/video/services/FrameRetrieverManager$Companion$dispatchBitmap$1;->$input:Ljava/lang/String;

    iget v2, p0, Lcom/narvii/video/services/FrameRetrieverManager$Companion$dispatchBitmap$1;->$realFrameTimeInMs:I

    iget-object v3, p0, Lcom/narvii/video/services/FrameRetrieverManager$Companion$dispatchBitmap$1;->$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/video/services/FrameRetrieverManager;->dispatchBitmapResult(Ljava/lang/String;ILandroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
