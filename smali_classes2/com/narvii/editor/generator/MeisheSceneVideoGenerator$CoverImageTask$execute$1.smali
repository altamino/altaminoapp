.class final Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask$execute$1;
.super Ljava/lang/Object;
.source "MeisheSceneVideoGenerator.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $file:Ljava/io/File;

.field final synthetic $time:J

.field final synthetic this$0:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask;


# direct methods
.method constructor <init>(Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask;JLjava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask$execute$1;->this$0:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask;

    iput-wide p2, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask$execute$1;->$time:J

    iput-object p4, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask$execute$1;->$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 290
    iget-object v0, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask$execute$1;->this$0:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask;

    iget-object v0, v0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask;->this$0:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;

    invoke-virtual {v0}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->getStreamingContext()Lcom/meicam/sdk/NvsStreamingContext;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask$execute$1;->this$0:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask;

    invoke-virtual {v1}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask;->getTimeline()Lcom/meicam/sdk/NvsTimeline;

    move-result-object v1

    iget-wide v2, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask$execute$1;->$time:J

    new-instance v4, Lcom/meicam/sdk/NvsRational;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v5}, Lcom/meicam/sdk/NvsRational;-><init>(II)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/meicam/sdk/NvsStreamingContext;->grabImageFromTimeline(Lcom/meicam/sdk/NvsTimeline;JLcom/meicam/sdk/NvsRational;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 293
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask$execute$1;->$file:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v2, 0x64

    .line 294
    invoke-static {v0, v2, v1}, Lcom/narvii/util/image/BitmapUtils;->compressJpeg(Landroid/graphics/Bitmap;ILjava/io/OutputStream;)V

    .line 295
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 297
    new-instance v1, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask$execute$1$1;

    invoke-direct {v1, p0, v0}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask$execute$1$1;-><init>(Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask$execute$1;Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 302
    :goto_0
    new-instance v0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask$execute$1$2;

    invoke-direct {v0, p0}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask$execute$1$2;-><init>(Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask$execute$1;)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 307
    :cond_0
    new-instance v0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask$execute$1$3;

    invoke-direct {v0, p0}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask$execute$1$3;-><init>(Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask$execute$1;)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method
