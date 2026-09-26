.class public Lcom/airbnb/lottie/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/e$b;
    }
.end annotation


# instance fields
.field private final bounds:Landroid/graphics/Rect;

.field private final characters:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Lcom/airbnb/lottie/model/g;",
            ">;"
        }
    .end annotation
.end field

.field private final dpScale:F

.field private final endFrame:J

.field private final fonts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/model/f;",
            ">;"
        }
    .end annotation
.end field

.field private final frameRate:F

.field private final images:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/g;",
            ">;"
        }
    .end annotation
.end field

.field private final layerMap:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Lcom/airbnb/lottie/model/layer/d;",
            ">;"
        }
    .end annotation
.end field

.field private final layers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/layer/d;",
            ">;"
        }
    .end annotation
.end field

.field private final majorVersion:I

.field private final minorVersion:I

.field private final patchVersion:I

.field private final performanceTracker:Lcom/airbnb/lottie/i;

.field private final precomps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/layer/d;",
            ">;>;"
        }
    .end annotation
.end field

.field private final startFrame:J

.field private final warnings:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/graphics/Rect;JJFFIII)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/e;->precomps:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/e;->images:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/e;->fonts:Ljava/util/Map;

    .line 6
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/e;->characters:Landroidx/collection/SparseArrayCompat;

    .line 7
    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/e;->layerMap:Landroidx/collection/LongSparseArray;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/e;->layers:Ljava/util/List;

    .line 9
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/e;->warnings:Ljava/util/HashSet;

    .line 10
    new-instance v0, Lcom/airbnb/lottie/i;

    invoke-direct {v0}, Lcom/airbnb/lottie/i;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/e;->performanceTracker:Lcom/airbnb/lottie/i;

    iput-object p1, p0, Lcom/airbnb/lottie/e;->bounds:Landroid/graphics/Rect;

    iput-wide p2, p0, Lcom/airbnb/lottie/e;->startFrame:J

    iput-wide p4, p0, Lcom/airbnb/lottie/e;->endFrame:J

    iput p6, p0, Lcom/airbnb/lottie/e;->frameRate:F

    iput p7, p0, Lcom/airbnb/lottie/e;->dpScale:F

    iput p8, p0, Lcom/airbnb/lottie/e;->majorVersion:I

    iput p9, p0, Lcom/airbnb/lottie/e;->minorVersion:I

    iput p10, p0, Lcom/airbnb/lottie/e;->patchVersion:I

    const/4 p1, 0x5

    const/4 p2, 0x0

    const/4 p3, 0x4

    .line 11
    invoke-static {p0, p3, p1, p2}, Lcom/airbnb/lottie/utils/f;->h(Lcom/airbnb/lottie/e;III)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "Lottie only supports bodymovin >= 4.5.0"

    .line 12
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/e;->g(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/Rect;JJFFIIILcom/airbnb/lottie/e$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p10}, Lcom/airbnb/lottie/e;-><init>(Landroid/graphics/Rect;JJFFIII)V

    return-void
.end method

.method static synthetic a(Lcom/airbnb/lottie/e;)Ljava/util/List;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/airbnb/lottie/e;->layers:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/airbnb/lottie/e;)Landroidx/collection/LongSparseArray;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/airbnb/lottie/e;->layerMap:Landroidx/collection/LongSparseArray;

    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/airbnb/lottie/e;)Ljava/util/Map;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/airbnb/lottie/e;->precomps:Ljava/util/Map;

    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/airbnb/lottie/e;)Ljava/util/Map;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/airbnb/lottie/e;->images:Ljava/util/Map;

    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/airbnb/lottie/e;)Ljava/util/Map;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/airbnb/lottie/e;->fonts:Ljava/util/Map;

    .line 3
    return-object p0
.end method

.method static synthetic f(Lcom/airbnb/lottie/e;)Landroidx/collection/SparseArrayCompat;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/airbnb/lottie/e;->characters:Landroidx/collection/SparseArrayCompat;

    .line 3
    return-object p0
.end method


# virtual methods
.method public g(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .line 1
    .line 2
    const-string v0, "LOTTIE"

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    iget-object v0, p0, Lcom/airbnb/lottie/e;->warnings:Ljava/util/HashSet;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 11
    return-void
.end method

.method public h()Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/e;->bounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public i()Landroidx/collection/SparseArrayCompat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/SparseArrayCompat<",
            "Lcom/airbnb/lottie/model/g;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/e;->characters:Landroidx/collection/SparseArrayCompat;

    return-object v0
.end method

.method public j()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/e;->dpScale:F

    return v0
.end method

.method public k()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/airbnb/lottie/e;->endFrame:J

    iget-wide v2, p0, Lcom/airbnb/lottie/e;->startFrame:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Lcom/airbnb/lottie/e;->frameRate:F

    div-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method public l()F
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/airbnb/lottie/e;->k()J

    .line 4
    move-result-wide v0

    .line 5
    long-to-float v0, v0

    .line 6
    .line 7
    iget v1, p0, Lcom/airbnb/lottie/e;->frameRate:F

    .line 8
    mul-float/2addr v0, v1

    .line 9
    .line 10
    const/high16 v1, 0x447a0000    # 1000.0f

    .line 11
    div-float/2addr v0, v1

    .line 12
    return v0
.end method

.method public m()J
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/airbnb/lottie/e;->endFrame:J

    return-wide v0
.end method

.method public n()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/model/f;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/e;->fonts:Ljava/util/Map;

    return-object v0
.end method

.method o()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/g;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/e;->images:Ljava/util/Map;

    return-object v0
.end method

.method public p()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/layer/d;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/e;->layers:Ljava/util/List;

    return-object v0
.end method

.method public q()I
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/e;->majorVersion:I

    return v0
.end method

.method public r()I
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/e;->minorVersion:I

    return v0
.end method

.method public s()I
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/e;->patchVersion:I

    return v0
.end method

.method public t()Lcom/airbnb/lottie/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/e;->performanceTracker:Lcom/airbnb/lottie/i;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    const-string v1, "LottieComposition:\n"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    iget-object v1, p0, Lcom/airbnb/lottie/e;->layers:Ljava/util/List;

    .line 10
    .line 11
    .line 12
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v2

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    check-cast v2, Lcom/airbnb/lottie/model/layer/d;

    .line 26
    .line 27
    const-string v3, "\t"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/model/layer/d;->v(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    goto :goto_0

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    return-object v0
.end method

.method public u(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/layer/d;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/e;->precomps:Ljava/util/Map;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Ljava/util/List;

    .line 9
    return-object p1
.end method

.method public v()J
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/airbnb/lottie/e;->startFrame:J

    return-wide v0
.end method

.method public w(J)Lcom/airbnb/lottie/model/layer/d;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/e;->layerMap:Landroidx/collection/LongSparseArray;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->h(J)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/airbnb/lottie/model/layer/d;

    .line 9
    return-object p1
.end method

.method public x(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/e;->performanceTracker:Lcom/airbnb/lottie/i;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/i;->b(Z)V

    .line 6
    return-void
.end method
