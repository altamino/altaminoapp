.class final Lcom/narvii/videotemplate/VideoTemplateManager$printWatermark$1;
.super Ljava/lang/Object;
.source "VideoTemplateManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/videotemplate/VideoTemplateManager;->printWatermark(Lcom/narvii/model/User;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVideoTemplateManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideoTemplateManager.kt\ncom/narvii/videotemplate/VideoTemplateManager$printWatermark$1\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,367:1\n37#2,2:368\n37#2,2:370\n*E\n*S KotlinDebug\n*F\n+ 1 VideoTemplateManager.kt\ncom/narvii/videotemplate/VideoTemplateManager$printWatermark$1\n*L\n236#1,2:368\n236#1,2:370\n*E\n"
.end annotation


# instance fields
.field final synthetic $creatorBgBitmap:Landroid/graphics/Bitmap;

.field final synthetic $orgVideoPath:Ljava/lang/String;

.field final synthetic $watermarkBitmap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/narvii/videotemplate/VideoTemplateManager;


# direct methods
.method constructor <init>(Lcom/narvii/videotemplate/VideoTemplateManager;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/videotemplate/VideoTemplateManager$printWatermark$1;->this$0:Lcom/narvii/videotemplate/VideoTemplateManager;

    iput-object p2, p0, Lcom/narvii/videotemplate/VideoTemplateManager$printWatermark$1;->$watermarkBitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/narvii/videotemplate/VideoTemplateManager$printWatermark$1;->$creatorBgBitmap:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/narvii/videotemplate/VideoTemplateManager$printWatermark$1;->$orgVideoPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 201
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/narvii/videotemplate/VideoTemplateManager$printWatermark$1;->this$0:Lcom/narvii/videotemplate/VideoTemplateManager;

    invoke-static {v1}, Lcom/narvii/videotemplate/VideoTemplateManager;->access$getWatermarkLogoFile$p(Lcom/narvii/videotemplate/VideoTemplateManager;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 202
    iget-object v1, p0, Lcom/narvii/videotemplate/VideoTemplateManager$printWatermark$1;->$watermarkBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 203
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 204
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/narvii/videotemplate/VideoTemplateManager$printWatermark$1;->this$0:Lcom/narvii/videotemplate/VideoTemplateManager;

    invoke-static {v1}, Lcom/narvii/videotemplate/VideoTemplateManager;->access$getWatermarkCreatorFile$p(Lcom/narvii/videotemplate/VideoTemplateManager;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 205
    iget-object v1, p0, Lcom/narvii/videotemplate/VideoTemplateManager$printWatermark$1;->$creatorBgBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 206
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 207
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager$printWatermark$1;->this$0:Lcom/narvii/videotemplate/VideoTemplateManager;

    invoke-virtual {v0}, Lcom/narvii/videotemplate/VideoTemplateManager;->getCtx()Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "watermark/watermark.webp"

    iget-object v2, p0, Lcom/narvii/videotemplate/VideoTemplateManager$printWatermark$1;->this$0:Lcom/narvii/videotemplate/VideoTemplateManager;

    invoke-static {v2}, Lcom/narvii/videotemplate/VideoTemplateManager;->access$getAminoLogoFile$p(Lcom/narvii/videotemplate/VideoTemplateManager;)Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/narvii/util/FileUtils;->moveFromAssetsToFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager$printWatermark$1;->this$0:Lcom/narvii/videotemplate/VideoTemplateManager;

    invoke-virtual {v0}, Lcom/narvii/videotemplate/VideoTemplateManager;->getCtx()Lcom/narvii/app/NVContext;

    move-result-object v0

    const-string v1, "videoManager"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/services/VideoManager;

    iget-object v1, p0, Lcom/narvii/videotemplate/VideoTemplateManager$printWatermark$1;->$orgVideoPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/narvii/video/services/VideoManager;->fetchStreamInfoSync(Ljava/lang/String;)Lcom/narvii/video/model/StreamInfo;

    move-result-object v0

    .line 213
    iget-object v1, p0, Lcom/narvii/videotemplate/VideoTemplateManager$printWatermark$1;->this$0:Lcom/narvii/videotemplate/VideoTemplateManager;

    invoke-static {v1}, Lcom/narvii/videotemplate/VideoTemplateManager;->access$getTemplate$p(Lcom/narvii/videotemplate/VideoTemplateManager;)Lcom/narvii/videotemplate/Template;

    move-result-object v1

    iget v2, v0, Lcom/narvii/video/model/StreamInfo;->fps:I

    iput v2, v1, Lcom/narvii/videotemplate/Template;->fps:I

    .line 214
    iget-object v1, p0, Lcom/narvii/videotemplate/VideoTemplateManager$printWatermark$1;->this$0:Lcom/narvii/videotemplate/VideoTemplateManager;

    invoke-static {v1}, Lcom/narvii/videotemplate/VideoTemplateManager;->access$getTemplate$p(Lcom/narvii/videotemplate/VideoTemplateManager;)Lcom/narvii/videotemplate/Template;

    move-result-object v1

    iget v2, v0, Lcom/narvii/video/model/StreamInfo;->frameCount:I

    add-int/lit8 v2, v2, 0x3c

    iput v2, v1, Lcom/narvii/videotemplate/Template;->outputFrameCount:I

    .line 215
    iget-object v1, p0, Lcom/narvii/videotemplate/VideoTemplateManager$printWatermark$1;->this$0:Lcom/narvii/videotemplate/VideoTemplateManager;

    invoke-static {v1}, Lcom/narvii/videotemplate/VideoTemplateManager;->access$getTemplate$p(Lcom/narvii/videotemplate/VideoTemplateManager;)Lcom/narvii/videotemplate/Template;

    move-result-object v1

    iget-object v1, v1, Lcom/narvii/videotemplate/Template;->segments:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/videotemplate/TemplateSegment;

    iget v3, v0, Lcom/narvii/video/model/StreamInfo;->frameCount:I

    iput v3, v1, Lcom/narvii/videotemplate/TemplateSegment;->frameCount:I

    .line 216
    iget-object v1, p0, Lcom/narvii/videotemplate/VideoTemplateManager$printWatermark$1;->this$0:Lcom/narvii/videotemplate/VideoTemplateManager;

    invoke-static {v1}, Lcom/narvii/videotemplate/VideoTemplateManager;->access$getTemplate$p(Lcom/narvii/videotemplate/VideoTemplateManager;)Lcom/narvii/videotemplate/Template;

    move-result-object v1

    iget-object v1, v1, Lcom/narvii/videotemplate/Template;->segments:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/narvii/videotemplate/VideoTemplateJni;->create(Ljava/util/ArrayList;)V

    .line 217
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 218
    iget-object v3, p0, Lcom/narvii/videotemplate/VideoTemplateManager$printWatermark$1;->$orgVideoPath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    iget-object v3, p0, Lcom/narvii/videotemplate/VideoTemplateManager$printWatermark$1;->this$0:Lcom/narvii/videotemplate/VideoTemplateManager;

    invoke-static {v3}, Lcom/narvii/videotemplate/VideoTemplateManager;->access$getWatermarkLogoFile$p(Lcom/narvii/videotemplate/VideoTemplateManager;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    iget-object v3, p0, Lcom/narvii/videotemplate/VideoTemplateManager$printWatermark$1;->this$0:Lcom/narvii/videotemplate/VideoTemplateManager;

    invoke-static {v3}, Lcom/narvii/videotemplate/VideoTemplateManager;->access$getAminoLogoFile$p(Lcom/narvii/videotemplate/VideoTemplateManager;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    iget-object v3, p0, Lcom/narvii/videotemplate/VideoTemplateManager$printWatermark$1;->this$0:Lcom/narvii/videotemplate/VideoTemplateManager;

    invoke-static {v3}, Lcom/narvii/videotemplate/VideoTemplateManager;->access$getWatermarkCreatorFile$p(Lcom/narvii/videotemplate/VideoTemplateManager;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 223
    new-instance v4, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;

    invoke-direct {v4}, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;-><init>()V

    const/4 v5, 0x3

    .line 224
    iput v5, v4, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;->inputType:I

    .line 225
    iget v0, v0, Lcom/narvii/video/model/StreamInfo;->durationInMs:I

    int-to-long v5, v0

    iput-wide v5, v4, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;->videoTrimEnd:J

    .line 226
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    new-instance v0, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;

    invoke-direct {v0}, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;-><init>()V

    .line 228
    iput v2, v0, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;->inputType:I

    .line 229
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    new-instance v0, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;

    invoke-direct {v0}, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;-><init>()V

    const/4 v4, 0x4

    .line 231
    iput v4, v0, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;->inputType:I

    .line 232
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    new-instance v0, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;

    invoke-direct {v0}, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;-><init>()V

    .line 234
    iput v2, v0, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;->inputType:I

    .line 235
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v0, v2, [Ljava/lang/String;

    .line 369
    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    if-eqz v0, :cond_1

    check-cast v0, [Ljava/lang/String;

    new-array v2, v2, [Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;

    .line 371
    invoke-interface {v3, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    check-cast v2, [Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;

    .line 236
    iget-object v1, p0, Lcom/narvii/videotemplate/VideoTemplateManager$printWatermark$1;->this$0:Lcom/narvii/videotemplate/VideoTemplateManager;

    invoke-static {v1}, Lcom/narvii/videotemplate/VideoTemplateManager;->access$getTempOutVideoFile$p(Lcom/narvii/videotemplate/VideoTemplateManager;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/narvii/videotemplate/VideoTemplateManager$printWatermark$1;->this$0:Lcom/narvii/videotemplate/VideoTemplateManager;

    invoke-static {v3}, Lcom/narvii/videotemplate/VideoTemplateManager;->access$getTemplate$p(Lcom/narvii/videotemplate/VideoTemplateManager;)Lcom/narvii/videotemplate/Template;

    move-result-object v3

    iget v3, v3, Lcom/narvii/videotemplate/Template;->outputFrameCount:I

    iget-object v4, p0, Lcom/narvii/videotemplate/VideoTemplateManager$printWatermark$1;->this$0:Lcom/narvii/videotemplate/VideoTemplateManager;

    invoke-static {v4}, Lcom/narvii/videotemplate/VideoTemplateManager;->access$getTemplate$p(Lcom/narvii/videotemplate/VideoTemplateManager;)Lcom/narvii/videotemplate/Template;

    move-result-object v4

    iget v4, v4, Lcom/narvii/videotemplate/Template;->fps:I

    invoke-static {v0, v2, v1, v3, v4}, Lcom/narvii/videotemplate/VideoTemplateJni;->start([Ljava/lang/String;[Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;Ljava/lang/String;II)V

    return-void

    .line 371
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :catchall_0
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager$printWatermark$1;->this$0:Lcom/narvii/videotemplate/VideoTemplateManager;

    sget v1, Lcom/narvii/videotemplate/VideoTemplateJni;->ERROR_WATERMARK:I

    invoke-virtual {v0, v1}, Lcom/narvii/videotemplate/VideoTemplateManager;->onError(I)V

    return-void
.end method
