.class public final Lcoil/util/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final addLastModifiedToFileCacheKey:Z

.field private final bitmapFactoryExifOrientationPolicy:Lcoil/decode/l;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final bitmapFactoryMaxParallelism:I

.field private final networkObserverEnabled:Z

.field private final respectCacheHeaders:Z


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcoil/util/n;-><init>(ZZZILcoil/decode/l;ILkotlin/jvm/internal/k;)V

    return-void
.end method

.method public constructor <init>(ZZZILcoil/decode/l;)V
    .locals 0
    .param p5    # Lcoil/decode/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcoil/util/n;->addLastModifiedToFileCacheKey:Z

    iput-boolean p2, p0, Lcoil/util/n;->networkObserverEnabled:Z

    iput-boolean p3, p0, Lcoil/util/n;->respectCacheHeaders:Z

    iput p4, p0, Lcoil/util/n;->bitmapFactoryMaxParallelism:I

    iput-object p5, p0, Lcoil/util/n;->bitmapFactoryExifOrientationPolicy:Lcoil/decode/l;

    return-void
.end method

.method public synthetic constructor <init>(ZZZILcoil/decode/l;ILkotlin/jvm/internal/k;)V
    .locals 3

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x1

    if-eqz p7, :cond_0

    move p7, v0

    goto :goto_0

    :cond_0
    move p7, p1

    :goto_0
    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, p2

    :goto_1
    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v0, p3

    :goto_2
    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    const/4 p4, 0x4

    :cond_3
    move v2, p4

    and-int/lit8 p1, p6, 0x10

    if-eqz p1, :cond_4

    .line 3
    sget-object p5, Lcoil/decode/l;->RESPECT_PERFORMANCE:Lcoil/decode/l;

    :cond_4
    move-object p6, p5

    move-object p1, p0

    move p2, p7

    move p3, v1

    move p4, v0

    move p5, v2

    .line 4
    invoke-direct/range {p1 .. p6}, Lcoil/util/n;-><init>(ZZZILcoil/decode/l;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcoil/util/n;->addLastModifiedToFileCacheKey:Z

    return v0
.end method

.method public final b()Lcoil/decode/l;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/util/n;->bitmapFactoryExifOrientationPolicy:Lcoil/decode/l;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .line 1
    iget v0, p0, Lcoil/util/n;->bitmapFactoryMaxParallelism:I

    return v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcoil/util/n;->networkObserverEnabled:Z

    return v0
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcoil/util/n;->respectCacheHeaders:Z

    return v0
.end method
