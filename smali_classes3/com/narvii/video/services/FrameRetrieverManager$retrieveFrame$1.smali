.class final Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$1;
.super Ljava/lang/Object;
.source "FrameRetrieverManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/services/FrameRetrieverManager;->retrieveFrame(Lcom/narvii/video/interfaces/IAVClipInfoPack;IZLcom/narvii/video/interfaces/IVideoServiceCallback;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFrameRetrieverManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FrameRetrieverManager.kt\ncom/narvii/video/services/FrameRetrieverManager$retrieveFrame$1\n*L\n1#1,466:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $callback:Lcom/narvii/video/interfaces/IVideoServiceCallback;

.field final synthetic $frameHeight:I

.field final synthetic $frameTimeInMs:I

.field final synthetic $frameWidth:I

.field final synthetic $input:Lcom/narvii/video/interfaces/IAVClipInfoPack;

.field final synthetic this$0:Lcom/narvii/video/services/FrameRetrieverManager;


# direct methods
.method constructor <init>(Lcom/narvii/video/services/FrameRetrieverManager;Lcom/narvii/video/interfaces/IAVClipInfoPack;IILcom/narvii/video/interfaces/IVideoServiceCallback;I)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$1;->this$0:Lcom/narvii/video/services/FrameRetrieverManager;

    iput-object p2, p0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$1;->$input:Lcom/narvii/video/interfaces/IAVClipInfoPack;

    iput p3, p0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$1;->$frameWidth:I

    iput p4, p0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$1;->$frameHeight:I

    iput-object p5, p0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$1;->$callback:Lcom/narvii/video/interfaces/IVideoServiceCallback;

    iput p6, p0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$1;->$frameTimeInMs:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 321
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 322
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 323
    iget-object v1, p0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$1;->$input:Lcom/narvii/video/interfaces/IAVClipInfoPack;

    invoke-interface {v1}, Lcom/narvii/video/interfaces/IAVClipInfoPack;->inputPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 324
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v3, p0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$1;->$frameWidth:I

    iget v4, p0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$1;->$frameHeight:I

    invoke-static {v1, v2, v3, v4}, Lcom/narvii/util/image/BitmapUtils;->findBestSampleSize(IIII)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x0

    .line 325
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 326
    iget-object v1, p0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$1;->$input:Lcom/narvii/video/interfaces/IAVClipInfoPack;

    invoke-interface {v1}, Lcom/narvii/video/interfaces/IAVClipInfoPack;->inputPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 328
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$1;->$input:Lcom/narvii/video/interfaces/IAVClipInfoPack;

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IAVClipInfoPack;->inputPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/image/BitmapUtils;->readImageRotation(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v0, v0

    .line 331
    invoke-virtual {v7, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v0, "bitmap"

    .line 332
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$1;->$input:Lcom/narvii/video/interfaces/IAVClipInfoPack;

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IAVClipInfoPack;->inputPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 337
    iget-object v1, p0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$1;->this$0:Lcom/narvii/video/services/FrameRetrieverManager;

    invoke-static {v1}, Lcom/narvii/video/services/FrameRetrieverManager;->access$getCachedBitmapForStaticImages$p(Lcom/narvii/video/services/FrameRetrieverManager;)Ljava/util/HashMap;

    move-result-object v1

    const-string v3, "result"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    :cond_1
    new-instance v0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$1$2;

    invoke-direct {v0, p0, v2}, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$1$2;-><init>(Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$1;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method
