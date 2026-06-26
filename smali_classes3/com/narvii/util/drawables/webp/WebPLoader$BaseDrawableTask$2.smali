.class Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask$2;
.super Ljava/lang/Object;
.source "WebPLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->postResult(Lcom/narvii/util/drawables/webp/NVWebPDrawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;

.field final synthetic val$drawable:Lcom/narvii/util/drawables/webp/NVWebPDrawable;


# direct methods
.method constructor <init>(Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;Lcom/narvii/util/drawables/webp/NVWebPDrawable;)V
    .locals 0

    .line 465
    iput-object p1, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask$2;->this$1:Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;

    iput-object p2, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask$2;->val$drawable:Lcom/narvii/util/drawables/webp/NVWebPDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 468
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask$2;->val$drawable:Lcom/narvii/util/drawables/webp/NVWebPDrawable;

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask$2;->this$1:Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;

    iget-object v0, v0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->this$0:Lcom/narvii/util/drawables/webp/WebPLoader;

    invoke-static {v0}, Lcom/narvii/util/drawables/webp/WebPLoader;->access$700(Lcom/narvii/util/drawables/webp/WebPLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask$2;->this$1:Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;

    iget-object v1, v1, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->key:Ljava/lang/String;

    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask$2;->val$drawable:Lcom/narvii/util/drawables/webp/NVWebPDrawable;

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask$2;->this$1:Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;

    iget-object v0, v0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/drawables/webp/WebPLoader$ListenerStub;

    .line 472
    iget-object v2, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask$2;->val$drawable:Lcom/narvii/util/drawables/webp/NVWebPDrawable;

    if-nez v2, :cond_1

    .line 473
    iget-object v2, v1, Lcom/narvii/util/drawables/webp/WebPLoader$ListenerStub;->listener:Lcom/narvii/util/drawables/DrawableLoaderListener;

    iget-object v1, v1, Lcom/narvii/util/drawables/webp/WebPLoader$ListenerStub;->url:Ljava/lang/String;

    invoke-interface {v2, v1}, Lcom/narvii/util/drawables/DrawableLoaderListener;->onFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 475
    :cond_1
    iget-object v3, v1, Lcom/narvii/util/drawables/webp/WebPLoader$ListenerStub;->listener:Lcom/narvii/util/drawables/DrawableLoaderListener;

    iget-object v1, v1, Lcom/narvii/util/drawables/webp/WebPLoader$ListenerStub;->url:Ljava/lang/String;

    new-instance v4, Lcom/narvii/util/drawables/webp/WrapWebPDrawable;

    invoke-direct {v4, v2}, Lcom/narvii/util/drawables/webp/WrapWebPDrawable;-><init>(Lcom/narvii/util/drawables/webp/NVWebPDrawable;)V

    const/4 v2, 0x1

    invoke-interface {v3, v1, v4, v2}, Lcom/narvii/util/drawables/DrawableLoaderListener;->onFinished(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0

    :cond_2
    return-void
.end method
