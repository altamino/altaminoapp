.class abstract Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;
.super Ljava/lang/Object;
.source "WebPLoader.java"

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
    .locals 0

    .line 402
    iput-object p1, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->this$0:Lcom/narvii/util/drawables/webp/WebPLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 396
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->listeners:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 399
    iput-object p1, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->bitmapProvider:Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;

    .line 403
    iput-object p2, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->key:Ljava/lang/String;

    .line 404
    iput-object p3, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->url:Ljava/lang/String;

    .line 405
    iput p5, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->width:I

    .line 406
    iput p6, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->height:I

    .line 407
    iput p7, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->loopCount:I

    if-eqz p4, :cond_0

    .line 409
    iget-object p1, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->listeners:Ljava/util/ArrayList;

    new-instance p2, Lcom/narvii/util/drawables/webp/WebPLoader$ListenerStub;

    invoke-direct {p2, p3, p4}, Lcom/narvii/util/drawables/webp/WebPLoader$ListenerStub;-><init>(Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    :cond_0
    invoke-direct {p0}, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    .line 415
    new-instance v0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask$1;

    invoke-direct {v0, p0}, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask$1;-><init>(Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;)V

    iput-object v0, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->bitmapProvider:Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;

    return-void
.end method


# virtual methods
.method protected abstract abort()V
.end method

.method protected addListener(Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 434
    new-instance v0, Lcom/narvii/util/drawables/webp/WebPLoader$ListenerStub;

    invoke-direct {v0, p1, p2}, Lcom/narvii/util/drawables/webp/WebPLoader$ListenerStub;-><init>(Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;)V

    .line 435
    iget-object p1, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 436
    iget-object p1, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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

    .line 442
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/drawables/webp/WebPLoader$ListenerStub;

    .line 443
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 444
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected postResult(Lcom/narvii/util/drawables/webp/NVWebPDrawable;)V
    .locals 2

    .line 465
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->this$0:Lcom/narvii/util/drawables/webp/WebPLoader;

    invoke-static {v0}, Lcom/narvii/util/drawables/webp/WebPLoader;->access$800(Lcom/narvii/util/drawables/webp/WebPLoader;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask$2;

    invoke-direct {v1, p0, p1}, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask$2;-><init>(Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;Lcom/narvii/util/drawables/webp/NVWebPDrawable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected removeListener(Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;)V
    .locals 3

    .line 450
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 451
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 452
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/drawables/webp/WebPLoader$ListenerStub;

    if-eqz p1, :cond_1

    .line 453
    iget-object v2, v1, Lcom/narvii/util/drawables/webp/WebPLoader$ListenerStub;->url:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    iget-object v1, v1, Lcom/narvii/util/drawables/webp/WebPLoader$ListenerStub;->listener:Lcom/narvii/util/drawables/DrawableLoaderListener;

    if-ne v1, p2, :cond_0

    .line 454
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 457
    :cond_2
    iget-object p1, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 458
    invoke-virtual {p0}, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->abort()V

    :cond_3
    return-void
.end method
