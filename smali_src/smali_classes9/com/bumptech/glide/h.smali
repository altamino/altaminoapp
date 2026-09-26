.class public Lcom/bumptech/glide/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/h$b;,
        Lcom/bumptech/glide/h$a;,
        Lcom/bumptech/glide/h$e;,
        Lcom/bumptech/glide/h$d;,
        Lcom/bumptech/glide/h$c;
    }
.end annotation


# static fields
.field private static final BUCKET_APPEND_ALL:Ljava/lang/String; = "legacy_append"

.field public static final BUCKET_BITMAP:Ljava/lang/String; = "Bitmap"

.field public static final BUCKET_BITMAP_DRAWABLE:Ljava/lang/String; = "BitmapDrawable"

.field public static final BUCKET_GIF:Ljava/lang/String; = "Gif"

.field private static final BUCKET_PREPEND_ALL:Ljava/lang/String; = "legacy_prepend_all"


# instance fields
.field private final dataRewinderRegistry:Lcom/bumptech/glide/load/data/f;

.field private final decoderRegistry:Lcom/bumptech/glide/provider/e;

.field private final encoderRegistry:Lcom/bumptech/glide/provider/a;

.field private final imageHeaderParserRegistry:Lcom/bumptech/glide/provider/b;

.field private final loadPathCache:Lcom/bumptech/glide/provider/c;

.field private final modelLoaderRegistry:Lcom/bumptech/glide/load/model/p;

.field private final modelToResourceClassCache:Lcom/bumptech/glide/provider/d;

.field private final resourceEncoderRegistry:Lcom/bumptech/glide/provider/f;

.field private final throwableListPool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field

.field private final transcoderRegistry:Lcom/bumptech/glide/load/resource/transcode/f;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/bumptech/glide/provider/d;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lcom/bumptech/glide/provider/d;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/bumptech/glide/h;->modelToResourceClassCache:Lcom/bumptech/glide/provider/d;

    .line 11
    .line 12
    new-instance v0, Lcom/bumptech/glide/provider/c;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Lcom/bumptech/glide/provider/c;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/bumptech/glide/h;->loadPathCache:Lcom/bumptech/glide/provider/c;

    .line 18
    .line 19
    .line 20
    invoke-static {}, La1/a;->e()Landroidx/core/util/Pools$Pool;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    iput-object v0, p0, Lcom/bumptech/glide/h;->throwableListPool:Landroidx/core/util/Pools$Pool;

    .line 24
    .line 25
    new-instance v1, Lcom/bumptech/glide/load/model/p;

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, v0}, Lcom/bumptech/glide/load/model/p;-><init>(Landroidx/core/util/Pools$Pool;)V

    .line 29
    .line 30
    iput-object v1, p0, Lcom/bumptech/glide/h;->modelLoaderRegistry:Lcom/bumptech/glide/load/model/p;

    .line 31
    .line 32
    new-instance v0, Lcom/bumptech/glide/provider/a;

    .line 33
    .line 34
    .line 35
    invoke-direct {v0}, Lcom/bumptech/glide/provider/a;-><init>()V

    .line 36
    .line 37
    iput-object v0, p0, Lcom/bumptech/glide/h;->encoderRegistry:Lcom/bumptech/glide/provider/a;

    .line 38
    .line 39
    new-instance v0, Lcom/bumptech/glide/provider/e;

    .line 40
    .line 41
    .line 42
    invoke-direct {v0}, Lcom/bumptech/glide/provider/e;-><init>()V

    .line 43
    .line 44
    iput-object v0, p0, Lcom/bumptech/glide/h;->decoderRegistry:Lcom/bumptech/glide/provider/e;

    .line 45
    .line 46
    new-instance v0, Lcom/bumptech/glide/provider/f;

    .line 47
    .line 48
    .line 49
    invoke-direct {v0}, Lcom/bumptech/glide/provider/f;-><init>()V

    .line 50
    .line 51
    iput-object v0, p0, Lcom/bumptech/glide/h;->resourceEncoderRegistry:Lcom/bumptech/glide/provider/f;

    .line 52
    .line 53
    new-instance v0, Lcom/bumptech/glide/load/data/f;

    .line 54
    .line 55
    .line 56
    invoke-direct {v0}, Lcom/bumptech/glide/load/data/f;-><init>()V

    .line 57
    .line 58
    iput-object v0, p0, Lcom/bumptech/glide/h;->dataRewinderRegistry:Lcom/bumptech/glide/load/data/f;

    .line 59
    .line 60
    new-instance v0, Lcom/bumptech/glide/load/resource/transcode/f;

    .line 61
    .line 62
    .line 63
    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/transcode/f;-><init>()V

    .line 64
    .line 65
    iput-object v0, p0, Lcom/bumptech/glide/h;->transcoderRegistry:Lcom/bumptech/glide/load/resource/transcode/f;

    .line 66
    .line 67
    new-instance v0, Lcom/bumptech/glide/provider/b;

    .line 68
    .line 69
    .line 70
    invoke-direct {v0}, Lcom/bumptech/glide/provider/b;-><init>()V

    .line 71
    .line 72
    iput-object v0, p0, Lcom/bumptech/glide/h;->imageHeaderParserRegistry:Lcom/bumptech/glide/provider/b;

    .line 73
    .line 74
    const-string v0, "Bitmap"

    .line 75
    .line 76
    const-string v1, "BitmapDrawable"

    .line 77
    .line 78
    const-string v2, "Gif"

    .line 79
    .line 80
    .line 81
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 82
    move-result-object v0

    .line 83
    .line 84
    .line 85
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 86
    move-result-object v0

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/h;->r(Ljava/util/List;)Lcom/bumptech/glide/h;

    .line 90
    return-void
.end method

.method private f(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
    .locals 11
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Ljava/lang/Class<",
            "TTranscode;>;)",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/engine/i<",
            "TData;TTResource;TTranscode;>;>;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/bumptech/glide/h;->decoderRegistry:Lcom/bumptech/glide/provider/e;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1, p2}, Lcom/bumptech/glide/provider/e;->d(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    .line 11
    move-result-object p2

    .line 12
    .line 13
    .line 14
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v1

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    check-cast v1, Ljava/lang/Class;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/bumptech/glide/h;->transcoderRegistry:Lcom/bumptech/glide/load/resource/transcode/f;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v1, p3}, Lcom/bumptech/glide/load/resource/transcode/f;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    .line 36
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 37
    move-result-object v9

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    move-result v2

    .line 42
    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    .line 46
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    move-result-object v2

    .line 48
    move-object v5, v2

    .line 49
    .line 50
    check-cast v5, Ljava/lang/Class;

    .line 51
    .line 52
    iget-object v2, p0, Lcom/bumptech/glide/h;->decoderRegistry:Lcom/bumptech/glide/provider/e;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, p1, v1}, Lcom/bumptech/glide/provider/e;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    .line 56
    move-result-object v6

    .line 57
    .line 58
    iget-object v2, p0, Lcom/bumptech/glide/h;->transcoderRegistry:Lcom/bumptech/glide/load/resource/transcode/f;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v1, v5}, Lcom/bumptech/glide/load/resource/transcode/f;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/resource/transcode/e;

    .line 62
    move-result-object v7

    .line 63
    .line 64
    new-instance v10, Lcom/bumptech/glide/load/engine/i;

    .line 65
    .line 66
    iget-object v8, p0, Lcom/bumptech/glide/h;->throwableListPool:Landroidx/core/util/Pools$Pool;

    .line 67
    move-object v2, v10

    .line 68
    move-object v3, p1

    .line 69
    move-object v4, v1

    .line 70
    .line 71
    .line 72
    invoke-direct/range {v2 .. v8}, Lcom/bumptech/glide/load/engine/i;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Lcom/bumptech/glide/load/resource/transcode/e;Landroidx/core/util/Pools$Pool;)V

    .line 73
    .line 74
    .line 75
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    goto :goto_0

    .line 77
    :cond_1
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Class;Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/h;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;",
            "Lcom/bumptech/glide/load/d<",
            "TData;>;)",
            "Lcom/bumptech/glide/h;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/h;->encoderRegistry:Lcom/bumptech/glide/provider/a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/provider/a;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/d;)V

    .line 6
    return-object p0
.end method

.method public b(Ljava/lang/Class;Lcom/bumptech/glide/load/l;)Lcom/bumptech/glide/h;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Lcom/bumptech/glide/load/l<",
            "TTResource;>;)",
            "Lcom/bumptech/glide/h;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/h;->resourceEncoderRegistry:Lcom/bumptech/glide/provider/f;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/provider/f;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/l;)V

    .line 6
    return-object p0
.end method

.method public c(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/h;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/load/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Lcom/bumptech/glide/load/k<",
            "TData;TTResource;>;)",
            "Lcom/bumptech/glide/h;"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "legacy_append"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/bumptech/glide/h;->e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/h;

    .line 6
    return-object p0
.end method

.method public d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/o;)Lcom/bumptech/glide/h;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/load/model/o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TData;>;",
            "Lcom/bumptech/glide/load/model/o<",
            "TModel;TData;>;)",
            "Lcom/bumptech/glide/h;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/h;->modelLoaderRegistry:Lcom/bumptech/glide/load/model/p;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/load/model/p;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/o;)V

    .line 6
    return-object p0
.end method

.method public e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/h;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/bumptech/glide/load/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TData;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Lcom/bumptech/glide/load/k<",
            "TData;TTResource;>;)",
            "Lcom/bumptech/glide/h;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/h;->decoderRegistry:Lcom/bumptech/glide/provider/e;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p4, p2, p3}, Lcom/bumptech/glide/provider/e;->a(Ljava/lang/String;Lcom/bumptech/glide/load/k;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 6
    return-object p0
.end method

.method public g()Ljava/util/List;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/h;->imageHeaderParserRegistry:Lcom/bumptech/glide/provider/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bumptech/glide/provider/b;->b()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    return-object v0

    .line 14
    .line 15
    :cond_0
    new-instance v0, Lcom/bumptech/glide/h$b;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0}, Lcom/bumptech/glide/h$b;-><init>()V

    .line 19
    throw v0
.end method

.method public h(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/engine/t;
    .locals 9
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Ljava/lang/Class<",
            "TTranscode;>;)",
            "Lcom/bumptech/glide/load/engine/t<",
            "TData;TTResource;TTranscode;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/h;->loadPathCache:Lcom/bumptech/glide/provider/c;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/provider/c;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/engine/t;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/bumptech/glide/h;->loadPathCache:Lcom/bumptech/glide/provider/c;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/provider/c;->c(Lcom/bumptech/glide/load/engine/t;)Z

    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    return-object v2

    .line 17
    .line 18
    :cond_0
    if-nez v0, :cond_2

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/bumptech/glide/h;->f(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    .line 22
    move-result-object v7

    .line 23
    .line 24
    .line 25
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    move-object v0, v2

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_1
    new-instance v0, Lcom/bumptech/glide/load/engine/t;

    .line 33
    .line 34
    iget-object v8, p0, Lcom/bumptech/glide/h;->throwableListPool:Landroidx/core/util/Pools$Pool;

    .line 35
    move-object v3, v0

    .line 36
    move-object v4, p1

    .line 37
    move-object v5, p2

    .line 38
    move-object v6, p3

    .line 39
    .line 40
    .line 41
    invoke-direct/range {v3 .. v8}, Lcom/bumptech/glide/load/engine/t;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Landroidx/core/util/Pools$Pool;)V

    .line 42
    .line 43
    :goto_0
    iget-object v1, p0, Lcom/bumptech/glide/h;->loadPathCache:Lcom/bumptech/glide/provider/c;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/bumptech/glide/provider/c;->d(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/engine/t;)V

    .line 47
    :cond_2
    return-object v0
.end method

.method public i(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            ">(TModel;)",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/model/n<",
            "TModel;*>;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/h;->modelLoaderRegistry:Lcom/bumptech/glide/load/model/p;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/model/p;->d(Ljava/lang/Object;)Ljava/util/List;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public j(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
    .locals 5
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Ljava/lang/Class<",
            "TTranscode;>;)",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/h;->modelToResourceClassCache:Lcom/bumptech/glide/provider/d;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/provider/d;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_3

    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    iget-object v1, p0, Lcom/bumptech/glide/h;->modelLoaderRegistry:Lcom/bumptech/glide/load/model/p;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Lcom/bumptech/glide/load/model/p;->c(Ljava/lang/Class;)Ljava/util/List;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v2

    .line 28
    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    check-cast v2, Ljava/lang/Class;

    .line 36
    .line 37
    iget-object v3, p0, Lcom/bumptech/glide/h;->decoderRegistry:Lcom/bumptech/glide/provider/e;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v2, p2}, Lcom/bumptech/glide/provider/e;->d(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    .line 41
    move-result-object v2

    .line 42
    .line 43
    .line 44
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 45
    move-result-object v2

    .line 46
    .line 47
    .line 48
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    move-result v3

    .line 50
    .line 51
    if-eqz v3, :cond_0

    .line 52
    .line 53
    .line 54
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    move-result-object v3

    .line 56
    .line 57
    check-cast v3, Ljava/lang/Class;

    .line 58
    .line 59
    iget-object v4, p0, Lcom/bumptech/glide/h;->transcoderRegistry:Lcom/bumptech/glide/load/resource/transcode/f;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4, v3, p3}, Lcom/bumptech/glide/load/resource/transcode/f;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    .line 63
    move-result-object v4

    .line 64
    .line 65
    .line 66
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 67
    move-result v4

    .line 68
    .line 69
    if-nez v4, :cond_1

    .line 70
    .line 71
    .line 72
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 73
    move-result v4

    .line 74
    .line 75
    if-nez v4, :cond_1

    .line 76
    .line 77
    .line 78
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    goto :goto_0

    .line 80
    .line 81
    :cond_2
    iget-object v1, p0, Lcom/bumptech/glide/h;->modelToResourceClassCache:Lcom/bumptech/glide/provider/d;

    .line 82
    .line 83
    .line 84
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 85
    move-result-object v2

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/bumptech/glide/provider/d;->b(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;)V

    .line 89
    :cond_3
    return-object v0
.end method

.method public k(Lcom/bumptech/glide/load/engine/v;)Lcom/bumptech/glide/load/l;
    .locals 2
    .param p1    # Lcom/bumptech/glide/load/engine/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/engine/v<",
            "TX;>;)",
            "Lcom/bumptech/glide/load/l<",
            "TX;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/h$d;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/h;->resourceEncoderRegistry:Lcom/bumptech/glide/provider/f;

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/v;->b()Ljava/lang/Class;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/provider/f;->b(Ljava/lang/Class;)Lcom/bumptech/glide/load/l;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    return-object v0

    .line 14
    .line 15
    :cond_0
    new-instance v0, Lcom/bumptech/glide/h$d;

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/v;->b()Ljava/lang/Class;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p1}, Lcom/bumptech/glide/h$d;-><init>(Ljava/lang/Class;)V

    .line 23
    throw v0
.end method

.method public l(Ljava/lang/Object;)Lcom/bumptech/glide/load/data/e;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lcom/bumptech/glide/load/data/e<",
            "TX;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/h;->dataRewinderRegistry:Lcom/bumptech/glide/load/data/f;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/data/f;->a(Ljava/lang/Object;)Lcom/bumptech/glide/load/data/e;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public m(Ljava/lang/Object;)Lcom/bumptech/glide/load/d;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lcom/bumptech/glide/load/d<",
            "TX;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/h$e;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/h;->encoderRegistry:Lcom/bumptech/glide/provider/a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/provider/a;->b(Ljava/lang/Class;)Lcom/bumptech/glide/load/d;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    return-object v0

    .line 14
    .line 15
    :cond_0
    new-instance v0, Lcom/bumptech/glide/h$e;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p1}, Lcom/bumptech/glide/h$e;-><init>(Ljava/lang/Class;)V

    .line 23
    throw v0
.end method

.method public n(Lcom/bumptech/glide/load/engine/v;)Z
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/engine/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/v<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/h;->resourceEncoderRegistry:Lcom/bumptech/glide/provider/f;

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/v;->b()Ljava/lang/Class;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/provider/f;->b(Ljava/lang/Class;)Lcom/bumptech/glide/load/l;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    return p1
.end method

.method public o(Lcom/bumptech/glide/load/ImageHeaderParser;)Lcom/bumptech/glide/h;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/ImageHeaderParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/h;->imageHeaderParserRegistry:Lcom/bumptech/glide/provider/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/provider/b;->a(Lcom/bumptech/glide/load/ImageHeaderParser;)V

    .line 6
    return-object p0
.end method

.method public p(Lcom/bumptech/glide/load/data/e$a;)Lcom/bumptech/glide/h;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/data/e$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/data/e$a<",
            "*>;)",
            "Lcom/bumptech/glide/h;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/h;->dataRewinderRegistry:Lcom/bumptech/glide/load/data/f;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/data/f;->b(Lcom/bumptech/glide/load/data/e$a;)V

    .line 6
    return-object p0
.end method

.method public q(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/e;)Lcom/bumptech/glide/h;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/load/resource/transcode/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Ljava/lang/Class<",
            "TTranscode;>;",
            "Lcom/bumptech/glide/load/resource/transcode/e<",
            "TTResource;TTranscode;>;)",
            "Lcom/bumptech/glide/h;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/h;->transcoderRegistry:Lcom/bumptech/glide/load/resource/transcode/f;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/transcode/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/e;)V

    .line 6
    return-object p0
.end method

.method public final r(Ljava/util/List;)Lcom/bumptech/glide/h;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/bumptech/glide/h;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 13
    const/4 p1, 0x0

    .line 14
    .line 15
    const-string v1, "legacy_prepend_all"

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 19
    .line 20
    const-string p1, "legacy_append"

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    iget-object p1, p0, Lcom/bumptech/glide/h;->decoderRegistry:Lcom/bumptech/glide/provider/e;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/provider/e;->e(Ljava/util/List;)V

    .line 29
    return-object p0
.end method
