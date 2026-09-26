.class Lcom/narvii/util/drawables/gif/GifLoader$Session;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/drawables/gif/GifLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Session"
.end annotation


# instance fields
.field aborted:Z

.field contentLength:I

.field dispatched:Z

.field downloadedBytes:I

.field drawable:Lcom/narvii/util/drawables/gif/NVGifDrawable;

.field final file:Ljava/io/File;

.field final key:Ljava/lang/String;

.field final listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/util/drawables/gif/GifLoader$ListenerStub;",
            ">;"
        }
    .end annotation
.end field

.field status:I

.field final synthetic this$0:Lcom/narvii/util/drawables/gif/GifLoader;

.field final url:Ljava/lang/String;

.field final writingFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/narvii/util/drawables/gif/GifLoader;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lcom/narvii/util/drawables/DrawableLoaderListener;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    new-instance p1, Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->listeners:Ljava/util/ArrayList;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->key:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p3, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->url:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p4, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->file:Ljava/io/File;

    .line 19
    .line 20
    iput-object p5, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->writingFile:Ljava/io/File;

    .line 21
    .line 22
    new-instance p2, Lcom/narvii/util/drawables/gif/GifLoader$ListenerStub;

    .line 23
    .line 24
    .line 25
    invoke-direct {p2, p3, p6}, Lcom/narvii/util/drawables/gif/GifLoader$ListenerStub;-><init>(Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    return-void
.end method


# virtual methods
.method public addListener(Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;)V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->aborted:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    new-instance v0, Lcom/narvii/util/drawables/gif/GifLoader$ListenerStub;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p1, p2}, Lcom/narvii/util/drawables/gif/GifLoader$ListenerStub;-><init>(Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;)V

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->listeners:Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 16
    move-result v1

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    return-void

    .line 20
    .line 21
    :cond_1
    iget-object v1, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->listeners:Ljava/util/ArrayList;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    iget-boolean v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->dispatched:Z

    .line 27
    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->drawable:Lcom/narvii/util/drawables/gif/NVGifDrawable;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    new-instance v0, Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->drawable:Lcom/narvii/util/drawables/gif/NVGifDrawable;

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, v1}, Lcom/narvii/util/drawables/gif/WrapGifDrawable;-><init>(Lcom/narvii/util/drawables/gif/NVGifDrawable;)V

    .line 40
    const/4 v1, 0x1

    .line 41
    .line 42
    .line 43
    invoke-interface {p2, p1, v0, v1}, Lcom/narvii/util/drawables/DrawableLoaderListener;->onFinished(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 44
    goto :goto_0

    .line 45
    .line 46
    .line 47
    :cond_2
    invoke-interface {p2, p1}, Lcom/narvii/util/drawables/DrawableLoaderListener;->onFailed(Ljava/lang/String;)V

    .line 48
    :cond_3
    :goto_0
    return-void
.end method

.method public run()V
    .locals 5

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->aborted:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->drawable:Lcom/narvii/util/drawables/gif/NVGifDrawable;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/narvii/util/drawables/gif/GifLoader;->refs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->key:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 18
    .line 19
    iget-object v3, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->drawable:Lcom/narvii/util/drawables/gif/NVGifDrawable;

    .line 20
    .line 21
    .line 22
    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->listeners:Ljava/util/ArrayList;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    move-result v1

    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    check-cast v1, Lcom/narvii/util/drawables/gif/GifLoader$ListenerStub;

    .line 44
    .line 45
    iget-object v2, v1, Lcom/narvii/util/drawables/gif/GifLoader$ListenerStub;->listener:Lcom/narvii/util/drawables/DrawableLoaderListener;

    .line 46
    .line 47
    iget-object v1, v1, Lcom/narvii/util/drawables/gif/GifLoader$ListenerStub;->url:Ljava/lang/String;

    .line 48
    .line 49
    new-instance v3, Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    .line 50
    .line 51
    iget-object v4, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->drawable:Lcom/narvii/util/drawables/gif/NVGifDrawable;

    .line 52
    .line 53
    .line 54
    invoke-direct {v3, v4}, Lcom/narvii/util/drawables/gif/WrapGifDrawable;-><init>(Lcom/narvii/util/drawables/gif/NVGifDrawable;)V

    .line 55
    const/4 v4, 0x0

    .line 56
    .line 57
    .line 58
    invoke-interface {v2, v1, v3, v4}, Lcom/narvii/util/drawables/DrawableLoaderListener;->onFinished(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 59
    goto :goto_0

    .line 60
    .line 61
    :cond_1
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->listeners:Ljava/util/ArrayList;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    .line 68
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    move-result v1

    .line 70
    .line 71
    if-eqz v1, :cond_2

    .line 72
    .line 73
    .line 74
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    move-result-object v1

    .line 76
    .line 77
    check-cast v1, Lcom/narvii/util/drawables/gif/GifLoader$ListenerStub;

    .line 78
    .line 79
    iget-object v2, v1, Lcom/narvii/util/drawables/gif/GifLoader$ListenerStub;->listener:Lcom/narvii/util/drawables/DrawableLoaderListener;

    .line 80
    .line 81
    iget-object v1, v1, Lcom/narvii/util/drawables/gif/GifLoader$ListenerStub;->url:Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    invoke-interface {v2, v1}, Lcom/narvii/util/drawables/DrawableLoaderListener;->onFailed(Ljava/lang/String;)V

    .line 85
    goto :goto_1

    .line 86
    :cond_2
    return-void
.end method

.method public update()V
    .locals 6

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->dispatched:Z

    .line 3
    .line 4
    if-nez v0, :cond_a

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->aborted:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    goto/16 :goto_3

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->drawable:Lcom/narvii/util/drawables/gif/NVGifDrawable;

    .line 13
    const/4 v1, 0x2

    .line 14
    const/4 v2, 0x3

    .line 15
    const/4 v3, 0x1

    .line 16
    .line 17
    if-nez v0, :cond_6

    .line 18
    .line 19
    iget v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->status:I

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_1
    if-ne v0, v3, :cond_2

    .line 25
    .line 26
    iget v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->downloadedBytes:I

    .line 27
    .line 28
    const/high16 v4, 0x10000

    .line 29
    .line 30
    if-gt v0, v4, :cond_4

    .line 31
    .line 32
    iget v4, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->contentLength:I

    .line 33
    mul-int/2addr v4, v2

    .line 34
    .line 35
    div-int/lit8 v4, v4, 0xa

    .line 36
    .line 37
    if-le v0, v4, :cond_6

    .line 38
    goto :goto_0

    .line 39
    .line 40
    :cond_2
    if-ne v0, v1, :cond_3

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_3
    if-ne v0, v2, :cond_6

    .line 44
    .line 45
    :cond_4
    :goto_0
    :try_start_0
    new-instance v0, Lcom/narvii/util/drawables/gif/NVGifDrawable;

    .line 46
    .line 47
    iget-object v4, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->file:Ljava/io/File;

    .line 48
    .line 49
    iget-object v5, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->writingFile:Ljava/io/File;

    .line 50
    .line 51
    .line 52
    invoke-direct {v0, v4, v5}, Lcom/narvii/util/drawables/gif/NVGifDrawable;-><init>(Ljava/io/File;Ljava/io/File;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/narvii/util/drawables/gif/NVGifDrawable;->getIntrinsicWidth()I

    .line 56
    move-result v4

    .line 57
    .line 58
    if-lez v4, :cond_5

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/narvii/util/drawables/gif/NVGifDrawable;->getIntrinsicHeight()I

    .line 62
    move-result v4

    .line 63
    .line 64
    if-lez v4, :cond_5

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/narvii/util/drawables/gif/NVGifDrawable;->getNumberOfFrames()I

    .line 68
    move-result v4

    .line 69
    .line 70
    if-lez v4, :cond_5

    .line 71
    .line 72
    iput-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->drawable:Lcom/narvii/util/drawables/gif/NVGifDrawable;

    .line 73
    goto :goto_2

    .line 74
    :catch_0
    move-exception v0

    .line 75
    goto :goto_1

    .line 76
    .line 77
    .line 78
    :cond_5
    invoke-virtual {v0}, Lcom/narvii/util/drawables/gif/NVGifDrawable;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    goto :goto_2

    .line 80
    .line 81
    :goto_1
    const-string v4, "OutOfMemory when open gif"

    .line 82
    .line 83
    .line 84
    invoke-static {v4, v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    .line 86
    :catch_1
    :cond_6
    :goto_2
    iget v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->status:I

    .line 87
    const/4 v4, -0x1

    .line 88
    .line 89
    if-ne v0, v4, :cond_7

    .line 90
    .line 91
    iget-object v4, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->drawable:Lcom/narvii/util/drawables/gif/NVGifDrawable;

    .line 92
    .line 93
    if-eqz v4, :cond_9

    .line 94
    .line 95
    :cond_7
    if-ne v0, v3, :cond_8

    .line 96
    .line 97
    iget-object v4, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->drawable:Lcom/narvii/util/drawables/gif/NVGifDrawable;

    .line 98
    .line 99
    if-nez v4, :cond_9

    .line 100
    .line 101
    :cond_8
    if-eq v0, v1, :cond_9

    .line 102
    .line 103
    if-ne v0, v2, :cond_a

    .line 104
    .line 105
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->drawable:Lcom/narvii/util/drawables/gif/NVGifDrawable;

    .line 106
    .line 107
    if-eqz v0, :cond_a

    .line 108
    .line 109
    .line 110
    :cond_9
    invoke-static {p0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 111
    .line 112
    iput-boolean v3, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->dispatched:Z

    .line 113
    :cond_a
    :goto_3
    return-void
.end method
