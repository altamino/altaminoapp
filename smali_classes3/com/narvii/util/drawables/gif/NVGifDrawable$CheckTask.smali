.class Lcom/narvii/util/drawables/gif/NVGifDrawable$CheckTask;
.super Ljava/lang/Object;
.source "NVGifDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/drawables/gif/NVGifDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CheckTask"
.end annotation


# instance fields
.field final wr:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/narvii/util/drawables/gif/NVGifDrawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/narvii/util/drawables/gif/NVGifDrawable;)V
    .locals 1

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable$CheckTask;->wr:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 244
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable$CheckTask;->wr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/drawables/gif/NVGifDrawable;

    if-eqz v0, :cond_5

    .line 245
    invoke-virtual {v0}, Lcom/narvii/util/drawables/gif/NVGifDrawable;->isWriting()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->drawable:Lpl/droidsonroids/gif/GifDrawable;

    invoke-virtual {v1}, Lpl/droidsonroids/gif/GifDrawable;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_4

    .line 248
    :cond_0
    iget-object v1, v0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->drawable:Lpl/droidsonroids/gif/GifDrawable;

    check-cast v1, Lpl/droidsonroids/gif/LGifDrawable;

    .line 249
    iget-object v2, v0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->originalFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 250
    :goto_0
    monitor-enter v0

    if-eqz v2, :cond_2

    .line 254
    :try_start_0
    iget-object v2, v0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->originalFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Lpl/droidsonroids/gif/LGifDrawable;->recreateFinal(Ljava/io/File;)Lpl/droidsonroids/gif/GifDrawable;

    move-result-object v1

    goto :goto_1

    .line 256
    :cond_2
    iget-object v2, v0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->writingFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Lpl/droidsonroids/gif/LGifDrawable;->recreate(Ljava/io/File;)Lpl/droidsonroids/gif/LGifDrawable;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 259
    sget-object v3, Lcom/narvii/util/drawables/gif/NVGifDrawable;->CHECK_HANDLER:Landroid/os/Handler;

    new-instance v6, Lcom/narvii/util/drawables/gif/NVGifDrawable$CheckTask$1;

    invoke-direct {v6, p0, v1}, Lcom/narvii/util/drawables/gif/NVGifDrawable$CheckTask$1;-><init>(Lcom/narvii/util/drawables/gif/NVGifDrawable$CheckTask;Lpl/droidsonroids/gif/LGifDrawable;)V

    invoke-virtual {v3, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_4

    .line 268
    invoke-virtual {v0, v1}, Lcom/narvii/util/drawables/gif/NVGifDrawable;->setDrawable(Lpl/droidsonroids/gif/GifDrawable;)V

    .line 269
    invoke-virtual {v0, v0, v4, v5}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    goto :goto_2

    .line 271
    :cond_4
    sget-object v1, Lcom/narvii/util/drawables/gif/NVGifDrawable;->CHECK_HANDLER:Landroid/os/Handler;

    const-wide/16 v2, 0x190

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v1

    .line 276
    :try_start_1
    invoke-static {v1}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    .line 277
    sget-object v1, Lcom/narvii/util/drawables/gif/NVGifDrawable;->CHECK_HANDLER:Landroid/os/Handler;

    const-wide/16 v2, 0x640

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 274
    :catch_1
    sget-object v1, Lcom/narvii/util/drawables/gif/NVGifDrawable;->CHECK_HANDLER:Landroid/os/Handler;

    const-wide/16 v2, 0x320

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 279
    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_5
    :goto_4
    return-void
.end method
