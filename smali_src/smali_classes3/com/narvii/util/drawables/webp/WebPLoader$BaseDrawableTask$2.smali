.class Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask$2;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask$2;->this$1:Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask$2;->val$drawable:Lcom/narvii/util/drawables/webp/NVWebPDrawable;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask$2;->val$drawable:Lcom/narvii/util/drawables/webp/NVWebPDrawable;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask$2;->this$1:Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->this$0:Lcom/narvii/util/drawables/webp/WebPLoader;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/narvii/util/drawables/webp/WebPLoader;->h(Lcom/narvii/util/drawables/webp/WebPLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask$2;->this$1:Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;

    .line 15
    .line 16
    iget-object v1, v1, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->key:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 19
    .line 20
    iget-object v3, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask$2;->val$drawable:Lcom/narvii/util/drawables/webp/NVWebPDrawable;

    .line 21
    .line 22
    .line 23
    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask$2;->this$1:Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->listeners:Ljava/util/ArrayList;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    move-result v1

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    check-cast v1, Lcom/narvii/util/drawables/webp/WebPLoader$ListenerStub;

    .line 47
    .line 48
    iget-object v2, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask$2;->val$drawable:Lcom/narvii/util/drawables/webp/NVWebPDrawable;

    .line 49
    .line 50
    if-nez v2, :cond_1

    .line 51
    .line 52
    iget-object v2, v1, Lcom/narvii/util/drawables/webp/WebPLoader$ListenerStub;->listener:Lcom/narvii/util/drawables/DrawableLoaderListener;

    .line 53
    .line 54
    iget-object v1, v1, Lcom/narvii/util/drawables/webp/WebPLoader$ListenerStub;->url:Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    invoke-interface {v2, v1}, Lcom/narvii/util/drawables/DrawableLoaderListener;->onFailed(Ljava/lang/String;)V

    .line 58
    goto :goto_0

    .line 59
    .line 60
    :cond_1
    iget-object v2, v1, Lcom/narvii/util/drawables/webp/WebPLoader$ListenerStub;->listener:Lcom/narvii/util/drawables/DrawableLoaderListener;

    .line 61
    .line 62
    iget-object v1, v1, Lcom/narvii/util/drawables/webp/WebPLoader$ListenerStub;->url:Ljava/lang/String;

    .line 63
    .line 64
    new-instance v3, Lcom/narvii/util/drawables/webp/WrapWebPDrawable;

    .line 65
    .line 66
    iget-object v4, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask$2;->val$drawable:Lcom/narvii/util/drawables/webp/NVWebPDrawable;

    .line 67
    .line 68
    .line 69
    invoke-direct {v3, v4}, Lcom/narvii/util/drawables/webp/WrapWebPDrawable;-><init>(Lcom/narvii/util/drawables/webp/NVWebPDrawable;)V

    .line 70
    const/4 v4, 0x1

    .line 71
    .line 72
    .line 73
    invoke-interface {v2, v1, v3, v4}, Lcom/narvii/util/drawables/DrawableLoaderListener;->onFinished(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 74
    goto :goto_0

    .line 75
    :cond_2
    return-void
.end method
