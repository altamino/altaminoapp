.class abstract Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/drawables/webp/WebPLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "BaseDrawableTask"
.end annotation


# instance fields
.field protected bitmapProvider:Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;

.field protected height:I

.field protected final key:Ljava/lang/String;

.field protected final listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/util/drawables/webp/WebPLoader$ListenerStub;",
            ">;"
        }
    .end annotation
.end field

.field protected loopCount:I

.field final synthetic this$0:Lcom/narvii/util/drawables/webp/WebPLoader;

.field protected final url:Ljava/lang/String;

.field protected width:I


# direct methods
.method constructor <init>(Lcom/narvii/util/drawables/webp/WebPLoader;Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;III)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->this$0:Lcom/narvii/util/drawables/webp/WebPLoader;

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
    iput-object p1, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->listeners:Ljava/util/ArrayList;

    .line 13
    const/4 v0, 0x0

    .line 14
    .line 15
    iput-object v0, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->bitmapProvider:Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;

    .line 16
    .line 17
    iput-object p2, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->key:Ljava/lang/String;

    .line 18
    .line 19
    iput-object p3, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->url:Ljava/lang/String;

    .line 20
    .line 21
    iput p5, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->width:I

    .line 22
    .line 23
    iput p6, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->height:I

    .line 24
    .line 25
    iput p7, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->loopCount:I

    .line 26
    .line 27
    if-eqz p4, :cond_0

    .line 28
    .line 29
    new-instance p2, Lcom/narvii/util/drawables/webp/WebPLoader$ListenerStub;

    .line 30
    .line 31
    .line 32
    invoke-direct {p2, p3, p4}, Lcom/narvii/util/drawables/webp/WebPLoader$ListenerStub;-><init>(Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-direct {p0}, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->init()V

    .line 39
    return-void
.end method

.method private init()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask$1;-><init>(Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;)V

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->bitmapProvider:Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;

    .line 8
    return-void
.end method


# virtual methods
.method protected abstract abort()V
.end method

.method protected addListener(Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;)V
    .locals 1

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    new-instance v0, Lcom/narvii/util/drawables/webp/WebPLoader$ListenerStub;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, p1, p2}, Lcom/narvii/util/drawables/webp/WebPLoader$ListenerStub;-><init>(Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;)V

    .line 8
    .line 9
    iget-object p1, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->listeners:Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 13
    move-result p1

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->listeners:Ljava/util/ArrayList;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    :cond_0
    return-void
.end method

.method protected addListeners(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/util/drawables/webp/WebPLoader$ListenerStub;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v1

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    check-cast v1, Lcom/narvii/util/drawables/webp/WebPLoader$ListenerStub;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 20
    move-result v2

    .line 21
    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    return-void
.end method

.method protected postResult(Lcom/narvii/util/drawables/webp/NVWebPDrawable;)V
    .locals 2
    .param p1    # Lcom/narvii/util/drawables/webp/NVWebPDrawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->this$0:Lcom/narvii/util/drawables/webp/WebPLoader;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/util/drawables/webp/WebPLoader;->g(Lcom/narvii/util/drawables/webp/WebPLoader;)Landroid/os/Handler;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    new-instance v1, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask$2;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, p0, p1}, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask$2;-><init>(Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;Lcom/narvii/util/drawables/webp/NVWebPDrawable;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    return-void
.end method

.method protected removeListener(Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->listeners:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Lcom/narvii/util/drawables/webp/WebPLoader$ListenerStub;

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    iget-object v2, v1, Lcom/narvii/util/drawables/webp/WebPLoader$ListenerStub;->url:Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v2

    .line 27
    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    :cond_1
    iget-object v1, v1, Lcom/narvii/util/drawables/webp/WebPLoader$ListenerStub;->listener:Lcom/narvii/util/drawables/DrawableLoaderListener;

    .line 31
    .line 32
    if-ne v1, p2, :cond_0

    .line 33
    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_2
    iget-object p1, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->listeners:Ljava/util/ArrayList;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 42
    move-result p1

    .line 43
    .line 44
    if-eqz p1, :cond_3

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->abort()V

    .line 48
    :cond_3
    return-void
.end method
