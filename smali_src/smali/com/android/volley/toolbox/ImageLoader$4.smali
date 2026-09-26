.class Lcom/android/volley/toolbox/ImageLoader$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/toolbox/ImageLoader;->batchResponse(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/volley/toolbox/ImageLoader;


# direct methods
.method constructor <init>(Lcom/android/volley/toolbox/ImageLoader;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/android/volley/toolbox/ImageLoader$4;->this$0:Lcom/android/volley/toolbox/ImageLoader;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$4;->this$0:Lcom/android/volley/toolbox/ImageLoader;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/android/volley/toolbox/ImageLoader;->a(Lcom/android/volley/toolbox/ImageLoader;)Ljava/util/HashMap;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v1

    .line 19
    .line 20
    if-eqz v1, :cond_3

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    check-cast v1, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;

    .line 27
    .line 28
    .line 29
    invoke-static {v1}, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->a(Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;)Ljava/util/List;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    .line 33
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    .line 37
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    move-result v3

    .line 39
    .line 40
    if-eqz v3, :cond_0

    .line 41
    .line 42
    .line 43
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    move-result-object v3

    .line 45
    .line 46
    check-cast v3, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 47
    .line 48
    .line 49
    invoke-static {v3}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->a(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;)Lcom/android/volley/toolbox/ImageLoader$ImageListener;

    .line 50
    move-result-object v4

    .line 51
    .line 52
    if-nez v4, :cond_1

    .line 53
    goto :goto_0

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-virtual {v1}, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->getError()Lcom/android/volley/VolleyError;

    .line 57
    move-result-object v4

    .line 58
    .line 59
    if-nez v4, :cond_2

    .line 60
    .line 61
    .line 62
    invoke-static {v1}, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->b(Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;)Landroid/graphics/Bitmap;

    .line 63
    move-result-object v4

    .line 64
    .line 65
    .line 66
    invoke-static {v3, v4}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->b(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Landroid/graphics/Bitmap;)V

    .line 67
    .line 68
    .line 69
    invoke-static {v3}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->a(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;)Lcom/android/volley/toolbox/ImageLoader$ImageListener;

    .line 70
    move-result-object v4

    .line 71
    const/4 v5, 0x0

    .line 72
    .line 73
    .line 74
    invoke-interface {v4, v3, v5}, Lcom/android/volley/toolbox/ImageLoader$ImageListener;->onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V

    .line 75
    goto :goto_0

    .line 76
    .line 77
    .line 78
    :cond_2
    invoke-static {v3}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->a(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;)Lcom/android/volley/toolbox/ImageLoader$ImageListener;

    .line 79
    move-result-object v3

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->getError()Lcom/android/volley/VolleyError;

    .line 83
    move-result-object v4

    .line 84
    .line 85
    .line 86
    invoke-interface {v3, v4}, Lcom/android/volley/Response$ErrorListener;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    .line 87
    goto :goto_0

    .line 88
    .line 89
    :cond_3
    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$4;->this$0:Lcom/android/volley/toolbox/ImageLoader;

    .line 90
    .line 91
    .line 92
    invoke-static {v0}, Lcom/android/volley/toolbox/ImageLoader;->a(Lcom/android/volley/toolbox/ImageLoader;)Ljava/util/HashMap;

    .line 93
    move-result-object v0

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 97
    .line 98
    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$4;->this$0:Lcom/android/volley/toolbox/ImageLoader;

    .line 99
    const/4 v1, 0x0

    .line 100
    .line 101
    .line 102
    invoke-static {v0, v1}, Lcom/android/volley/toolbox/ImageLoader;->c(Lcom/android/volley/toolbox/ImageLoader;Ljava/lang/Runnable;)V

    .line 103
    return-void
.end method
