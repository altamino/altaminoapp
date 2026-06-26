.class Lcom/narvii/util/drawables/gif/GifLoader$Session;
.super Ljava/lang/Object;
.source "GifLoader.java"

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

    .line 100
    iput-object p1, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->listeners:Ljava/util/ArrayList;

    .line 101
    iput-object p2, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->key:Ljava/lang/String;

    .line 102
    iput-object p3, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->url:Ljava/lang/String;

    .line 103
    iput-object p4, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->file:Ljava/io/File;

    .line 104
    iput-object p5, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->writingFile:Ljava/io/File;

    .line 105
    iget-object p1, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->listeners:Ljava/util/ArrayList;

    new-instance p2, Lcom/narvii/util/drawables/gif/GifLoader$ListenerStub;

    invoke-direct {p2, p3, p6}, Lcom/narvii/util/drawables/gif/GifLoader$ListenerStub;-><init>(Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public addListener(Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;)V
    .locals 2

    .line 109
    iget-boolean v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->aborted:Z

    if-eqz v0, :cond_0

    return-void

    .line 111
    :cond_0
    new-instance v0, Lcom/narvii/util/drawables/gif/GifLoader$ListenerStub;

    invoke-direct {v0, p1, p2}, Lcom/narvii/util/drawables/gif/GifLoader$ListenerStub;-><init>(Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;)V

    .line 112
    iget-object v1, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 114
    :cond_1
    iget-object v1, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    iget-boolean v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->dispatched:Z

    if-eqz v0, :cond_3

    .line 116
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->drawable:Lcom/narvii/util/drawables/gif/NVGifDrawable;

    if-eqz v0, :cond_2

    .line 117
    new-instance v1, Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    invoke-direct {v1, v0}, Lcom/narvii/util/drawables/gif/WrapGifDrawable;-><init>(Lcom/narvii/util/drawables/gif/NVGifDrawable;)V

    const/4 v0, 0x1

    invoke-interface {p2, p1, v1, v0}, Lcom/narvii/util/drawables/DrawableLoaderListener;->onFinished(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0

    .line 119
    :cond_2
    invoke-interface {p2, p1}, Lcom/narvii/util/drawables/DrawableLoaderListener;->onFailed(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public run()V
    .locals 5

    .line 166
    iget-boolean v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->aborted:Z

    if-eqz v0, :cond_0

    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->drawable:Lcom/narvii/util/drawables/gif/NVGifDrawable;

    if-eqz v0, :cond_1

    .line 170
    iget-object v1, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    iget-object v1, v1, Lcom/narvii/util/drawables/gif/GifLoader;->refs:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->key:Ljava/lang/String;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/drawables/gif/GifLoader$ListenerStub;

    .line 172
    iget-object v2, v1, Lcom/narvii/util/drawables/gif/GifLoader$ListenerStub;->listener:Lcom/narvii/util/drawables/DrawableLoaderListener;

    iget-object v1, v1, Lcom/narvii/util/drawables/gif/GifLoader$ListenerStub;->url:Ljava/lang/String;

    new-instance v3, Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    iget-object v4, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->drawable:Lcom/narvii/util/drawables/gif/NVGifDrawable;

    invoke-direct {v3, v4}, Lcom/narvii/util/drawables/gif/WrapGifDrawable;-><init>(Lcom/narvii/util/drawables/gif/NVGifDrawable;)V

    const/4 v4, 0x0

    invoke-interface {v2, v1, v3, v4}, Lcom/narvii/util/drawables/DrawableLoaderListener;->onFinished(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/drawables/gif/GifLoader$ListenerStub;

    .line 176
    iget-object v2, v1, Lcom/narvii/util/drawables/gif/GifLoader$ListenerStub;->listener:Lcom/narvii/util/drawables/DrawableLoaderListener;

    iget-object v1, v1, Lcom/narvii/util/drawables/gif/GifLoader$ListenerStub;->url:Ljava/lang/String;

    invoke-interface {v2, v1}, Lcom/narvii/util/drawables/DrawableLoaderListener;->onFailed(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public update()V
    .locals 6

    .line 126
    iget-boolean v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->dispatched:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->aborted:Z

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->drawable:Lcom/narvii/util/drawables/gif/NVGifDrawable;

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-nez v0, :cond_7

    .line 130
    iget v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->status:I

    const/4 v4, 0x0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    if-ne v0, v3, :cond_3

    .line 133
    iget v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->downloadedBytes:I

    const/high16 v5, 0x10000

    if-gt v0, v5, :cond_1

    iget v5, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->contentLength:I

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0xa

    if-le v0, v5, :cond_5

    goto :goto_0

    :cond_3
    if-ne v0, v1, :cond_4

    goto :goto_0

    :cond_4
    if-ne v0, v2, :cond_5

    goto :goto_0

    :cond_5
    :goto_1
    if-eqz v4, :cond_7

    .line 142
    :try_start_0
    new-instance v0, Lcom/narvii/util/drawables/gif/NVGifDrawable;

    iget-object v4, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->file:Ljava/io/File;

    iget-object v5, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->writingFile:Ljava/io/File;

    invoke-direct {v0, v4, v5}, Lcom/narvii/util/drawables/gif/NVGifDrawable;-><init>(Ljava/io/File;Ljava/io/File;)V

    .line 143
    invoke-virtual {v0}, Lcom/narvii/util/drawables/gif/NVGifDrawable;->getIntrinsicWidth()I

    move-result v4

    if-lez v4, :cond_6

    invoke-virtual {v0}, Lcom/narvii/util/drawables/gif/NVGifDrawable;->getIntrinsicHeight()I

    move-result v4

    if-lez v4, :cond_6

    invoke-virtual {v0}, Lcom/narvii/util/drawables/gif/NVGifDrawable;->getNumberOfFrames()I

    move-result v4

    if-lez v4, :cond_6

    .line 144
    iput-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->drawable:Lcom/narvii/util/drawables/gif/NVGifDrawable;

    goto :goto_2

    .line 146
    :cond_6
    invoke-virtual {v0}, Lcom/narvii/util/drawables/gif/NVGifDrawable;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v4, "OutOfMemory when open gif"

    .line 150
    invoke-static {v4, v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    nop

    .line 154
    :cond_7
    :goto_2
    iget v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->status:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_8

    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->drawable:Lcom/narvii/util/drawables/gif/NVGifDrawable;

    if-eqz v0, :cond_a

    :cond_8
    iget v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->status:I

    if-ne v0, v3, :cond_9

    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->drawable:Lcom/narvii/util/drawables/gif/NVGifDrawable;

    if-nez v0, :cond_a

    :cond_9
    iget v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->status:I

    if-eq v0, v1, :cond_a

    if-ne v0, v2, :cond_b

    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->drawable:Lcom/narvii/util/drawables/gif/NVGifDrawable;

    if-eqz v0, :cond_b

    .line 158
    :cond_a
    invoke-static {p0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 159
    iput-boolean v3, p0, Lcom/narvii/util/drawables/gif/GifLoader$Session;->dispatched:Z

    :cond_b
    :goto_3
    return-void
.end method
