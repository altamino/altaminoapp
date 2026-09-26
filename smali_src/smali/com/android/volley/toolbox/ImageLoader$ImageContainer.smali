.class public Lcom/android/volley/toolbox/ImageLoader$ImageContainer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/toolbox/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageContainer"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mCacheKey:Ljava/lang/String;

.field private final mListener:Lcom/android/volley/toolbox/ImageLoader$ImageListener;

.field private final mRequestUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/volley/toolbox/ImageLoader;


# direct methods
.method public constructor <init>(Lcom/android/volley/toolbox/ImageLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->this$0:Lcom/android/volley/toolbox/ImageLoader;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    iput-object p2, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->mBitmap:Landroid/graphics/Bitmap;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->mRequestUrl:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->mCacheKey:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->mListener:Lcom/android/volley/toolbox/ImageLoader$ImageListener;

    .line 14
    return-void
.end method

.method static bridge synthetic a(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;)Lcom/android/volley/toolbox/ImageLoader$ImageListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->mListener:Lcom/android/volley/toolbox/ImageLoader$ImageListener;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public cancelRequest()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/android/volley/toolbox/Threads;->throwIfNotOnMainThread()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->mListener:Lcom/android/volley/toolbox/ImageLoader$ImageListener;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    return-void

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->this$0:Lcom/android/volley/toolbox/ImageLoader;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/android/volley/toolbox/ImageLoader;->b(Lcom/android/volley/toolbox/ImageLoader;)Ljava/util/HashMap;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->mCacheKey:Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    check-cast v0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p0}, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->removeContainerAndCancelIfNecessary(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;)Z

    .line 28
    move-result v0

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->this$0:Lcom/android/volley/toolbox/ImageLoader;

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lcom/android/volley/toolbox/ImageLoader;->b(Lcom/android/volley/toolbox/ImageLoader;)Ljava/util/HashMap;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    iget-object v1, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->mCacheKey:Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_1
    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->this$0:Lcom/android/volley/toolbox/ImageLoader;

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Lcom/android/volley/toolbox/ImageLoader;->a(Lcom/android/volley/toolbox/ImageLoader;)Ljava/util/HashMap;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    iget-object v1, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->mCacheKey:Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    check-cast v0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;

    .line 57
    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p0}, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->removeContainerAndCancelIfNecessary(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;)Z

    .line 62
    .line 63
    .line 64
    invoke-static {v0}, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->a(Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;)Ljava/util/List;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    .line 68
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 69
    move-result v0

    .line 70
    .line 71
    if-nez v0, :cond_2

    .line 72
    .line 73
    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->this$0:Lcom/android/volley/toolbox/ImageLoader;

    .line 74
    .line 75
    .line 76
    invoke-static {v0}, Lcom/android/volley/toolbox/ImageLoader;->a(Lcom/android/volley/toolbox/ImageLoader;)Ljava/util/HashMap;

    .line 77
    move-result-object v0

    .line 78
    .line 79
    iget-object v1, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->mCacheKey:Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_2
    :goto_0
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getRequestUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->mRequestUrl:Ljava/lang/String;

    return-object v0
.end method
