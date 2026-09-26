.class Lcom/narvii/util/drawables/gif/NVGifDrawable$CheckTask;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable$CheckTask;->wr:Ljava/lang/ref/WeakReference;

    .line 11
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable$CheckTask;->wr:Ljava/lang/ref/WeakReference;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/util/drawables/gif/NVGifDrawable;

    .line 9
    .line 10
    if-eqz v0, :cond_5

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/util/drawables/gif/NVGifDrawable;->isWriting()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_5

    .line 17
    .line 18
    iget-object v1, v0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->drawable:Lpl/droidsonroids/gif/b;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lpl/droidsonroids/gif/b;->e()Z

    .line 22
    move-result v1

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    goto :goto_5

    .line 26
    .line 27
    :cond_0
    iget-object v1, v0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->drawable:Lpl/droidsonroids/gif/b;

    .line 28
    .line 29
    check-cast v1, Lpl/droidsonroids/gif/g;

    .line 30
    .line 31
    iget-object v2, v0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->originalFile:Ljava/io/File;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/io/File;->length()J

    .line 35
    move-result-wide v2

    .line 36
    .line 37
    const-wide/16 v4, 0x0

    .line 38
    .line 39
    cmp-long v2, v2, v4

    .line 40
    .line 41
    if-lez v2, :cond_1

    .line 42
    const/4 v2, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 v2, 0x0

    .line 45
    :goto_0
    monitor-enter v0

    .line 46
    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    :try_start_0
    iget-object v2, v0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->originalFile:Ljava/io/File;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v2}, Lpl/droidsonroids/gif/g;->p(Ljava/io/File;)Lpl/droidsonroids/gif/b;

    .line 53
    move-result-object v1

    .line 54
    goto :goto_1

    .line 55
    :catchall_0
    move-exception v1

    .line 56
    goto :goto_4

    .line 57
    :catch_0
    move-exception v1

    .line 58
    goto :goto_2

    .line 59
    .line 60
    :cond_2
    iget-object v2, v0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->writingFile:Ljava/io/File;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v2}, Lpl/droidsonroids/gif/g;->o(Ljava/io/File;)Lpl/droidsonroids/gif/g;

    .line 64
    move-result-object v2

    .line 65
    .line 66
    if-eqz v2, :cond_3

    .line 67
    .line 68
    sget-object v3, Lcom/narvii/util/drawables/gif/NVGifDrawable;->CHECK_HANDLER:Landroid/os/Handler;

    .line 69
    .line 70
    new-instance v6, Lcom/narvii/util/drawables/gif/NVGifDrawable$CheckTask$1;

    .line 71
    .line 72
    .line 73
    invoke-direct {v6, p0, v1}, Lcom/narvii/util/drawables/gif/NVGifDrawable$CheckTask$1;-><init>(Lcom/narvii/util/drawables/gif/NVGifDrawable$CheckTask;Lpl/droidsonroids/gif/g;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77
    :cond_3
    move-object v1, v2

    .line 78
    .line 79
    :goto_1
    if-eqz v1, :cond_4

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Lcom/narvii/util/drawables/gif/NVGifDrawable;->setDrawable(Lpl/droidsonroids/gif/b;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v0, v4, v5}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 86
    goto :goto_3

    .line 87
    .line 88
    :cond_4
    sget-object v1, Lcom/narvii/util/drawables/gif/NVGifDrawable;->CHECK_HANDLER:Landroid/os/Handler;

    .line 89
    .line 90
    const-wide/16 v2, 0x190

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    goto :goto_3

    .line 95
    .line 96
    .line 97
    :goto_2
    :try_start_1
    invoke-static {v1}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    .line 98
    .line 99
    sget-object v1, Lcom/narvii/util/drawables/gif/NVGifDrawable;->CHECK_HANDLER:Landroid/os/Handler;

    .line 100
    .line 101
    const-wide/16 v2, 0x640

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 105
    goto :goto_3

    .line 106
    .line 107
    :catch_1
    sget-object v1, Lcom/narvii/util/drawables/gif/NVGifDrawable;->CHECK_HANDLER:Landroid/os/Handler;

    .line 108
    .line 109
    const-wide/16 v2, 0x320

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 113
    :goto_3
    monitor-exit v0

    .line 114
    return-void

    .line 115
    :goto_4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    throw v1

    .line 117
    :cond_5
    :goto_5
    return-void
.end method
