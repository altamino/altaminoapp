.class Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/toolbox/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BatchedImageRequest"
.end annotation


# instance fields
.field private final mContainers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/volley/toolbox/ImageLoader$ImageContainer;",
            ">;"
        }
    .end annotation
.end field

.field private mError:Lcom/android/volley/VolleyError;

.field private final mRequest:Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Request<",
            "*>;"
        }
    .end annotation
.end field

.field private mResponseBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/android/volley/Request;Lcom/android/volley/toolbox/ImageLoader$ImageContainer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;",
            "Lcom/android/volley/toolbox/ImageLoader$ImageContainer;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/List;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->mRequest:Lcom/android/volley/Request;

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    return-void
.end method

.method static bridge synthetic a(Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->mResponseBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->mResponseBitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public addContainer(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public getError()Lcom/android/volley/VolleyError;
    .locals 1

    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->mError:Lcom/android/volley/VolleyError;

    return-object v0
.end method

.method public removeContainerAndCancelIfNecessary(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/List;

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 11
    move-result p1

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->mRequest:Lcom/android/volley/Request;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/android/volley/Request;->cancel()V

    .line 19
    const/4 p1, 0x1

    .line 20
    return p1

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    return p1
.end method

.method public setError(Lcom/android/volley/VolleyError;)V
    .locals 0

    iput-object p1, p0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->mError:Lcom/android/volley/VolleyError;

    return-void
.end method
