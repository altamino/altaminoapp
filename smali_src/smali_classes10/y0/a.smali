.class public abstract Ly0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ly0/a<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final DISK_CACHE_STRATEGY:I = 0x4

.field private static final ERROR_ID:I = 0x20

.field private static final ERROR_PLACEHOLDER:I = 0x10

.field private static final FALLBACK:I = 0x2000

.field private static final FALLBACK_ID:I = 0x4000

.field private static final IS_CACHEABLE:I = 0x100

.field private static final ONLY_RETRIEVE_FROM_CACHE:I = 0x80000

.field private static final OVERRIDE:I = 0x200

.field private static final PLACEHOLDER:I = 0x40

.field private static final PLACEHOLDER_ID:I = 0x80

.field private static final PRIORITY:I = 0x8

.field private static final RESOURCE_CLASS:I = 0x1000

.field private static final SIGNATURE:I = 0x400

.field private static final SIZE_MULTIPLIER:I = 0x2

.field private static final THEME:I = 0x8000

.field private static final TRANSFORMATION:I = 0x800

.field private static final TRANSFORMATION_ALLOWED:I = 0x10000

.field private static final TRANSFORMATION_REQUIRED:I = 0x20000

.field private static final UNSET:I = -0x1

.field private static final USE_ANIMATION_POOL:I = 0x100000

.field private static final USE_UNLIMITED_SOURCE_GENERATORS_POOL:I = 0x40000


# instance fields
.field private diskCacheStrategy:Lcom/bumptech/glide/load/engine/j;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private errorId:I

.field private errorPlaceholder:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private fallbackDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private fallbackId:I

.field private fields:I

.field private isAutoCloneEnabled:Z

.field private isCacheable:Z

.field private isLocked:Z

.field private isScaleOnlyOrNoTransform:Z

.field private isTransformationAllowed:Z

.field private isTransformationRequired:Z

.field private onlyRetrieveFromCache:Z

.field private options:Lcom/bumptech/glide/load/i;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private overrideHeight:I

.field private overrideWidth:I

.field private placeholderDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private placeholderId:I

.field private priority:Lcom/bumptech/glide/f;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private resourceClass:Ljava/lang/Class;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private signature:Lcom/bumptech/glide/load/g;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private sizeMultiplier:F

.field private theme:Landroid/content/res/Resources$Theme;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private transformations:Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/m<",
            "*>;>;"
        }
    .end annotation
.end field

.field private useAnimationPool:Z

.field private useUnlimitedSourceGeneratorsPool:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    .line 7
    iput v0, p0, Ly0/a;->sizeMultiplier:F

    .line 8
    .line 9
    sget-object v0, Lcom/bumptech/glide/load/engine/j;->AUTOMATIC:Lcom/bumptech/glide/load/engine/j;

    .line 10
    .line 11
    iput-object v0, p0, Ly0/a;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/j;

    .line 12
    .line 13
    sget-object v0, Lcom/bumptech/glide/f;->NORMAL:Lcom/bumptech/glide/f;

    .line 14
    .line 15
    iput-object v0, p0, Ly0/a;->priority:Lcom/bumptech/glide/f;

    .line 16
    const/4 v0, 0x1

    .line 17
    .line 18
    iput-boolean v0, p0, Ly0/a;->isCacheable:Z

    .line 19
    const/4 v1, -0x1

    .line 20
    .line 21
    iput v1, p0, Ly0/a;->overrideHeight:I

    .line 22
    .line 23
    iput v1, p0, Ly0/a;->overrideWidth:I

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lz0/a;->c()Lz0/a;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    iput-object v1, p0, Ly0/a;->signature:Lcom/bumptech/glide/load/g;

    .line 30
    .line 31
    iput-boolean v0, p0, Ly0/a;->isTransformationAllowed:Z

    .line 32
    .line 33
    new-instance v1, Lcom/bumptech/glide/load/i;

    .line 34
    .line 35
    .line 36
    invoke-direct {v1}, Lcom/bumptech/glide/load/i;-><init>()V

    .line 37
    .line 38
    iput-object v1, p0, Ly0/a;->options:Lcom/bumptech/glide/load/i;

    .line 39
    .line 40
    new-instance v1, Lcom/bumptech/glide/util/b;

    .line 41
    .line 42
    .line 43
    invoke-direct {v1}, Lcom/bumptech/glide/util/b;-><init>()V

    .line 44
    .line 45
    iput-object v1, p0, Ly0/a;->transformations:Ljava/util/Map;

    .line 46
    .line 47
    const-class v1, Ljava/lang/Object;

    .line 48
    .line 49
    iput-object v1, p0, Ly0/a;->resourceClass:Ljava/lang/Class;

    .line 50
    .line 51
    iput-boolean v0, p0, Ly0/a;->isScaleOnlyOrNoTransform:Z

    .line 52
    return-void
.end method

.method private F(I)Z
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Ly0/a;->fields:I

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Ly0/a;->G(II)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method private static G(II)Z
    .locals 0

    .line 1
    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private O(Lcom/bumptech/glide/load/resource/bitmap/l;Lcom/bumptech/glide/load/m;)Ly0/a;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/l;",
            "Lcom/bumptech/glide/load/m<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Ly0/a;->P(Lcom/bumptech/glide/load/resource/bitmap/l;Lcom/bumptech/glide/load/m;Z)Ly0/a;

    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method private P(Lcom/bumptech/glide/load/resource/bitmap/l;Lcom/bumptech/glide/load/m;Z)Ly0/a;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/l;",
            "Lcom/bumptech/glide/load/m<",
            "Landroid/graphics/Bitmap;",
            ">;Z)TT;"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p3, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Ly0/a;->Y(Lcom/bumptech/glide/load/resource/bitmap/l;Lcom/bumptech/glide/load/m;)Ly0/a;

    .line 6
    move-result-object p1

    .line 7
    goto :goto_0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0, p1, p2}, Ly0/a;->K(Lcom/bumptech/glide/load/resource/bitmap/l;Lcom/bumptech/glide/load/m;)Ly0/a;

    .line 11
    move-result-object p1

    .line 12
    :goto_0
    const/4 p2, 0x1

    .line 13
    .line 14
    iput-boolean p2, p1, Ly0/a;->isScaleOnlyOrNoTransform:Z

    .line 15
    return-object p1
.end method

.method private Q()Ly0/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    return-object p0
.end method

.method private R()Ly0/a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Ly0/a;->isLocked:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ly0/a;->Q()Ly0/a;

    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 12
    .line 13
    const-string v1, "You cannot modify locked T, consider clone()"

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 17
    throw v0
.end method


# virtual methods
.method public final A()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ly0/a;->useAnimationPool:Z

    return v0
.end method

.method public final B()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ly0/a;->useUnlimitedSourceGeneratorsPool:Z

    return v0
.end method

.method public final C()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ly0/a;->isCacheable:Z

    return v0
.end method

.method public final D()Z
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0x8

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Ly0/a;->F(I)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method E()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ly0/a;->isScaleOnlyOrNoTransform:Z

    return v0
.end method

.method public final H()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ly0/a;->isTransformationRequired:Z

    return v0
.end method

.method public final I()Z
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Ly0/a;->overrideWidth:I

    .line 3
    .line 4
    iget v1, p0, Ly0/a;->overrideHeight:I

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/bumptech/glide/util/k;->r(II)Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public J()Ly0/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Ly0/a;->isLocked:Z

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ly0/a;->Q()Ly0/a;

    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method final K(Lcom/bumptech/glide/load/resource/bitmap/l;Lcom/bumptech/glide/load/m;)Ly0/a;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/l;",
            "Lcom/bumptech/glide/load/m<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Ly0/a;->isAutoCloneEnabled:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Ly0/a;->e()Ly0/a;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Ly0/a;->K(Lcom/bumptech/glide/load/resource/bitmap/l;Lcom/bumptech/glide/load/m;)Ly0/a;

    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0, p1}, Ly0/a;->h(Lcom/bumptech/glide/load/resource/bitmap/l;)Ly0/a;

    .line 17
    const/4 p1, 0x0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p2, p1}, Ly0/a;->X(Lcom/bumptech/glide/load/m;Z)Ly0/a;

    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method public L(II)Ly0/a;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Ly0/a;->isAutoCloneEnabled:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Ly0/a;->e()Ly0/a;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Ly0/a;->L(II)Ly0/a;

    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    .line 15
    :cond_0
    iput p1, p0, Ly0/a;->overrideWidth:I

    .line 16
    .line 17
    iput p2, p0, Ly0/a;->overrideHeight:I

    .line 18
    .line 19
    iget p1, p0, Ly0/a;->fields:I

    .line 20
    .line 21
    or-int/lit16 p1, p1, 0x200

    .line 22
    .line 23
    iput p1, p0, Ly0/a;->fields:I

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Ly0/a;->R()Ly0/a;

    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method

.method public M(Landroid/graphics/drawable/Drawable;)Ly0/a;
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")TT;"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Ly0/a;->isAutoCloneEnabled:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Ly0/a;->e()Ly0/a;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ly0/a;->M(Landroid/graphics/drawable/Drawable;)Ly0/a;

    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    .line 15
    :cond_0
    iput-object p1, p0, Ly0/a;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 16
    .line 17
    iget p1, p0, Ly0/a;->fields:I

    .line 18
    .line 19
    or-int/lit8 p1, p1, 0x40

    .line 20
    const/4 v0, 0x0

    .line 21
    .line 22
    iput v0, p0, Ly0/a;->placeholderId:I

    .line 23
    .line 24
    and-int/lit16 p1, p1, -0x81

    .line 25
    .line 26
    iput p1, p0, Ly0/a;->fields:I

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Ly0/a;->R()Ly0/a;

    .line 30
    move-result-object p1

    .line 31
    return-object p1
.end method

.method public N(Lcom/bumptech/glide/f;)Ly0/a;
    .locals 1
    .param p1    # Lcom/bumptech/glide/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/f;",
            ")TT;"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Ly0/a;->isAutoCloneEnabled:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Ly0/a;->e()Ly0/a;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ly0/a;->N(Lcom/bumptech/glide/f;)Ly0/a;

    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/util/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    check-cast p1, Lcom/bumptech/glide/f;

    .line 20
    .line 21
    iput-object p1, p0, Ly0/a;->priority:Lcom/bumptech/glide/f;

    .line 22
    .line 23
    iget p1, p0, Ly0/a;->fields:I

    .line 24
    .line 25
    or-int/lit8 p1, p1, 0x8

    .line 26
    .line 27
    iput p1, p0, Ly0/a;->fields:I

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Ly0/a;->R()Ly0/a;

    .line 31
    move-result-object p1

    .line 32
    return-object p1
.end method

.method public S(Lcom/bumptech/glide/load/h;Ljava/lang/Object;)Ly0/a;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/h<",
            "TY;>;TY;)TT;"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Ly0/a;->isAutoCloneEnabled:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Ly0/a;->e()Ly0/a;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Ly0/a;->S(Lcom/bumptech/glide/load/h;Ljava/lang/Object;)Ly0/a;

    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/util/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    invoke-static {p2}, Lcom/bumptech/glide/util/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    iget-object v0, p0, Ly0/a;->options:Lcom/bumptech/glide/load/i;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/i;->e(Lcom/bumptech/glide/load/h;Ljava/lang/Object;)Lcom/bumptech/glide/load/i;

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Ly0/a;->R()Ly0/a;

    .line 28
    move-result-object p1

    .line 29
    return-object p1
.end method

.method public T(Lcom/bumptech/glide/load/g;)Ly0/a;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/g;",
            ")TT;"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Ly0/a;->isAutoCloneEnabled:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Ly0/a;->e()Ly0/a;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ly0/a;->T(Lcom/bumptech/glide/load/g;)Ly0/a;

    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/util/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    check-cast p1, Lcom/bumptech/glide/load/g;

    .line 20
    .line 21
    iput-object p1, p0, Ly0/a;->signature:Lcom/bumptech/glide/load/g;

    .line 22
    .line 23
    iget p1, p0, Ly0/a;->fields:I

    .line 24
    .line 25
    or-int/lit16 p1, p1, 0x400

    .line 26
    .line 27
    iput p1, p0, Ly0/a;->fields:I

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Ly0/a;->R()Ly0/a;

    .line 31
    move-result-object p1

    .line 32
    return-object p1
.end method

.method public U(F)Ly0/a;
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Ly0/a;->isAutoCloneEnabled:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Ly0/a;->e()Ly0/a;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ly0/a;->U(F)Ly0/a;

    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    .line 16
    cmpg-float v0, p1, v0

    .line 17
    .line 18
    if-ltz v0, :cond_1

    .line 19
    .line 20
    const/high16 v0, 0x3f800000    # 1.0f

    .line 21
    .line 22
    cmpl-float v0, p1, v0

    .line 23
    .line 24
    if-gtz v0, :cond_1

    .line 25
    .line 26
    iput p1, p0, Ly0/a;->sizeMultiplier:F

    .line 27
    .line 28
    iget p1, p0, Ly0/a;->fields:I

    .line 29
    .line 30
    or-int/lit8 p1, p1, 0x2

    .line 31
    .line 32
    iput p1, p0, Ly0/a;->fields:I

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Ly0/a;->R()Ly0/a;

    .line 36
    move-result-object p1

    .line 37
    return-object p1

    .line 38
    .line 39
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 40
    .line 41
    .line 42
    const-string/jumbo v0, "sizeMultiplier must be between 0 and 1"

    .line 43
    .line 44
    .line 45
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    throw p1
.end method

.method public V(Z)Ly0/a;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Ly0/a;->isAutoCloneEnabled:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ly0/a;->e()Ly0/a;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v1}, Ly0/a;->V(Z)Ly0/a;

    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :cond_0
    xor-int/2addr p1, v1

    .line 16
    .line 17
    iput-boolean p1, p0, Ly0/a;->isCacheable:Z

    .line 18
    .line 19
    iget p1, p0, Ly0/a;->fields:I

    .line 20
    .line 21
    or-int/lit16 p1, p1, 0x100

    .line 22
    .line 23
    iput p1, p0, Ly0/a;->fields:I

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Ly0/a;->R()Ly0/a;

    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method

.method public W(Lcom/bumptech/glide/load/m;)Ly0/a;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/m<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Ly0/a;->X(Lcom/bumptech/glide/load/m;Z)Ly0/a;

    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method X(Lcom/bumptech/glide/load/m;Z)Ly0/a;
    .locals 2
    .param p1    # Lcom/bumptech/glide/load/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/m<",
            "Landroid/graphics/Bitmap;",
            ">;Z)TT;"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Ly0/a;->isAutoCloneEnabled:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Ly0/a;->e()Ly0/a;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Ly0/a;->X(Lcom/bumptech/glide/load/m;Z)Ly0/a;

    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    .line 15
    :cond_0
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/r;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/r;-><init>(Lcom/bumptech/glide/load/m;Z)V

    .line 19
    .line 20
    const-class v1, Landroid/graphics/Bitmap;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v1, p1, p2}, Ly0/a;->Z(Ljava/lang/Class;Lcom/bumptech/glide/load/m;Z)Ly0/a;

    .line 24
    .line 25
    const-class v1, Landroid/graphics/drawable/Drawable;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v1, v0, p2}, Ly0/a;->Z(Ljava/lang/Class;Lcom/bumptech/glide/load/m;Z)Ly0/a;

    .line 29
    .line 30
    const-class v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/r;->c()Lcom/bumptech/glide/load/m;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v1, v0, p2}, Ly0/a;->Z(Ljava/lang/Class;Lcom/bumptech/glide/load/m;Z)Ly0/a;

    .line 38
    .line 39
    new-instance v0, Lcom/bumptech/glide/load/resource/gif/f;

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/resource/gif/f;-><init>(Lcom/bumptech/glide/load/m;)V

    .line 43
    .line 44
    const-class p1, Lcom/bumptech/glide/load/resource/gif/c;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p1, v0, p2}, Ly0/a;->Z(Ljava/lang/Class;Lcom/bumptech/glide/load/m;Z)Ly0/a;

    .line 48
    .line 49
    .line 50
    invoke-direct {p0}, Ly0/a;->R()Ly0/a;

    .line 51
    move-result-object p1

    .line 52
    return-object p1
.end method

.method final Y(Lcom/bumptech/glide/load/resource/bitmap/l;Lcom/bumptech/glide/load/m;)Ly0/a;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/l;",
            "Lcom/bumptech/glide/load/m<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Ly0/a;->isAutoCloneEnabled:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Ly0/a;->e()Ly0/a;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Ly0/a;->Y(Lcom/bumptech/glide/load/resource/bitmap/l;Lcom/bumptech/glide/load/m;)Ly0/a;

    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0, p1}, Ly0/a;->h(Lcom/bumptech/glide/load/resource/bitmap/l;)Ly0/a;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p2}, Ly0/a;->W(Lcom/bumptech/glide/load/m;)Ly0/a;

    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method Z(Ljava/lang/Class;Lcom/bumptech/glide/load/m;Z)Ly0/a;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TY;>;",
            "Lcom/bumptech/glide/load/m<",
            "TY;>;Z)TT;"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Ly0/a;->isAutoCloneEnabled:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Ly0/a;->e()Ly0/a;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1, p2, p3}, Ly0/a;->Z(Ljava/lang/Class;Lcom/bumptech/glide/load/m;Z)Ly0/a;

    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/util/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    invoke-static {p2}, Lcom/bumptech/glide/util/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    iget-object v0, p0, Ly0/a;->transformations:Ljava/util/Map;

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    iget p1, p0, Ly0/a;->fields:I

    .line 27
    const/4 p2, 0x1

    .line 28
    .line 29
    iput-boolean p2, p0, Ly0/a;->isTransformationAllowed:Z

    .line 30
    .line 31
    .line 32
    const v0, 0x10800

    .line 33
    or-int/2addr v0, p1

    .line 34
    .line 35
    iput v0, p0, Ly0/a;->fields:I

    .line 36
    const/4 v0, 0x0

    .line 37
    .line 38
    iput-boolean v0, p0, Ly0/a;->isScaleOnlyOrNoTransform:Z

    .line 39
    .line 40
    if-eqz p3, :cond_1

    .line 41
    .line 42
    .line 43
    const p3, 0x30800

    .line 44
    or-int/2addr p1, p3

    .line 45
    .line 46
    iput p1, p0, Ly0/a;->fields:I

    .line 47
    .line 48
    iput-boolean p2, p0, Ly0/a;->isTransformationRequired:Z

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-direct {p0}, Ly0/a;->R()Ly0/a;

    .line 52
    move-result-object p1

    .line 53
    return-object p1
.end method

.method public a0(Z)Ly0/a;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Ly0/a;->isAutoCloneEnabled:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Ly0/a;->e()Ly0/a;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ly0/a;->a0(Z)Ly0/a;

    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    .line 15
    :cond_0
    iput-boolean p1, p0, Ly0/a;->useAnimationPool:Z

    .line 16
    .line 17
    iget p1, p0, Ly0/a;->fields:I

    .line 18
    .line 19
    const/high16 v0, 0x100000

    .line 20
    or-int/2addr p1, v0

    .line 21
    .line 22
    iput p1, p0, Ly0/a;->fields:I

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Ly0/a;->R()Ly0/a;

    .line 26
    move-result-object p1

    .line 27
    return-object p1
.end method

.method public b(Ly0/a;)Ly0/a;
    .locals 4
    .param p1    # Ly0/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly0/a<",
            "*>;)TT;"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Ly0/a;->isAutoCloneEnabled:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Ly0/a;->e()Ly0/a;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ly0/a;->b(Ly0/a;)Ly0/a;

    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    .line 15
    :cond_0
    iget v0, p1, Ly0/a;->fields:I

    .line 16
    const/4 v1, 0x2

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Ly0/a;->G(II)Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget v0, p1, Ly0/a;->sizeMultiplier:F

    .line 25
    .line 26
    iput v0, p0, Ly0/a;->sizeMultiplier:F

    .line 27
    .line 28
    :cond_1
    iget v0, p1, Ly0/a;->fields:I

    .line 29
    .line 30
    const/high16 v1, 0x40000

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1}, Ly0/a;->G(II)Z

    .line 34
    move-result v0

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    iget-boolean v0, p1, Ly0/a;->useUnlimitedSourceGeneratorsPool:Z

    .line 39
    .line 40
    iput-boolean v0, p0, Ly0/a;->useUnlimitedSourceGeneratorsPool:Z

    .line 41
    .line 42
    :cond_2
    iget v0, p1, Ly0/a;->fields:I

    .line 43
    .line 44
    const/high16 v1, 0x100000

    .line 45
    .line 46
    .line 47
    invoke-static {v0, v1}, Ly0/a;->G(II)Z

    .line 48
    move-result v0

    .line 49
    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    iget-boolean v0, p1, Ly0/a;->useAnimationPool:Z

    .line 53
    .line 54
    iput-boolean v0, p0, Ly0/a;->useAnimationPool:Z

    .line 55
    .line 56
    :cond_3
    iget v0, p1, Ly0/a;->fields:I

    .line 57
    const/4 v1, 0x4

    .line 58
    .line 59
    .line 60
    invoke-static {v0, v1}, Ly0/a;->G(II)Z

    .line 61
    move-result v0

    .line 62
    .line 63
    if-eqz v0, :cond_4

    .line 64
    .line 65
    iget-object v0, p1, Ly0/a;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/j;

    .line 66
    .line 67
    iput-object v0, p0, Ly0/a;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/j;

    .line 68
    .line 69
    :cond_4
    iget v0, p1, Ly0/a;->fields:I

    .line 70
    .line 71
    const/16 v1, 0x8

    .line 72
    .line 73
    .line 74
    invoke-static {v0, v1}, Ly0/a;->G(II)Z

    .line 75
    move-result v0

    .line 76
    .line 77
    if-eqz v0, :cond_5

    .line 78
    .line 79
    iget-object v0, p1, Ly0/a;->priority:Lcom/bumptech/glide/f;

    .line 80
    .line 81
    iput-object v0, p0, Ly0/a;->priority:Lcom/bumptech/glide/f;

    .line 82
    .line 83
    :cond_5
    iget v0, p1, Ly0/a;->fields:I

    .line 84
    .line 85
    const/16 v1, 0x10

    .line 86
    .line 87
    .line 88
    invoke-static {v0, v1}, Ly0/a;->G(II)Z

    .line 89
    move-result v0

    .line 90
    const/4 v1, 0x0

    .line 91
    .line 92
    if-eqz v0, :cond_6

    .line 93
    .line 94
    iget-object v0, p1, Ly0/a;->errorPlaceholder:Landroid/graphics/drawable/Drawable;

    .line 95
    .line 96
    iput-object v0, p0, Ly0/a;->errorPlaceholder:Landroid/graphics/drawable/Drawable;

    .line 97
    .line 98
    iput v1, p0, Ly0/a;->errorId:I

    .line 99
    .line 100
    iget v0, p0, Ly0/a;->fields:I

    .line 101
    .line 102
    and-int/lit8 v0, v0, -0x21

    .line 103
    .line 104
    iput v0, p0, Ly0/a;->fields:I

    .line 105
    .line 106
    :cond_6
    iget v0, p1, Ly0/a;->fields:I

    .line 107
    .line 108
    const/16 v2, 0x20

    .line 109
    .line 110
    .line 111
    invoke-static {v0, v2}, Ly0/a;->G(II)Z

    .line 112
    move-result v0

    .line 113
    const/4 v2, 0x0

    .line 114
    .line 115
    if-eqz v0, :cond_7

    .line 116
    .line 117
    iget v0, p1, Ly0/a;->errorId:I

    .line 118
    .line 119
    iput v0, p0, Ly0/a;->errorId:I

    .line 120
    .line 121
    iput-object v2, p0, Ly0/a;->errorPlaceholder:Landroid/graphics/drawable/Drawable;

    .line 122
    .line 123
    iget v0, p0, Ly0/a;->fields:I

    .line 124
    .line 125
    and-int/lit8 v0, v0, -0x11

    .line 126
    .line 127
    iput v0, p0, Ly0/a;->fields:I

    .line 128
    .line 129
    :cond_7
    iget v0, p1, Ly0/a;->fields:I

    .line 130
    .line 131
    const/16 v3, 0x40

    .line 132
    .line 133
    .line 134
    invoke-static {v0, v3}, Ly0/a;->G(II)Z

    .line 135
    move-result v0

    .line 136
    .line 137
    if-eqz v0, :cond_8

    .line 138
    .line 139
    iget-object v0, p1, Ly0/a;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 140
    .line 141
    iput-object v0, p0, Ly0/a;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 142
    .line 143
    iput v1, p0, Ly0/a;->placeholderId:I

    .line 144
    .line 145
    iget v0, p0, Ly0/a;->fields:I

    .line 146
    .line 147
    and-int/lit16 v0, v0, -0x81

    .line 148
    .line 149
    iput v0, p0, Ly0/a;->fields:I

    .line 150
    .line 151
    :cond_8
    iget v0, p1, Ly0/a;->fields:I

    .line 152
    .line 153
    const/16 v3, 0x80

    .line 154
    .line 155
    .line 156
    invoke-static {v0, v3}, Ly0/a;->G(II)Z

    .line 157
    move-result v0

    .line 158
    .line 159
    if-eqz v0, :cond_9

    .line 160
    .line 161
    iget v0, p1, Ly0/a;->placeholderId:I

    .line 162
    .line 163
    iput v0, p0, Ly0/a;->placeholderId:I

    .line 164
    .line 165
    iput-object v2, p0, Ly0/a;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 166
    .line 167
    iget v0, p0, Ly0/a;->fields:I

    .line 168
    .line 169
    and-int/lit8 v0, v0, -0x41

    .line 170
    .line 171
    iput v0, p0, Ly0/a;->fields:I

    .line 172
    .line 173
    :cond_9
    iget v0, p1, Ly0/a;->fields:I

    .line 174
    .line 175
    const/16 v3, 0x100

    .line 176
    .line 177
    .line 178
    invoke-static {v0, v3}, Ly0/a;->G(II)Z

    .line 179
    move-result v0

    .line 180
    .line 181
    if-eqz v0, :cond_a

    .line 182
    .line 183
    iget-boolean v0, p1, Ly0/a;->isCacheable:Z

    .line 184
    .line 185
    iput-boolean v0, p0, Ly0/a;->isCacheable:Z

    .line 186
    .line 187
    :cond_a
    iget v0, p1, Ly0/a;->fields:I

    .line 188
    .line 189
    const/16 v3, 0x200

    .line 190
    .line 191
    .line 192
    invoke-static {v0, v3}, Ly0/a;->G(II)Z

    .line 193
    move-result v0

    .line 194
    .line 195
    if-eqz v0, :cond_b

    .line 196
    .line 197
    iget v0, p1, Ly0/a;->overrideWidth:I

    .line 198
    .line 199
    iput v0, p0, Ly0/a;->overrideWidth:I

    .line 200
    .line 201
    iget v0, p1, Ly0/a;->overrideHeight:I

    .line 202
    .line 203
    iput v0, p0, Ly0/a;->overrideHeight:I

    .line 204
    .line 205
    :cond_b
    iget v0, p1, Ly0/a;->fields:I

    .line 206
    .line 207
    const/16 v3, 0x400

    .line 208
    .line 209
    .line 210
    invoke-static {v0, v3}, Ly0/a;->G(II)Z

    .line 211
    move-result v0

    .line 212
    .line 213
    if-eqz v0, :cond_c

    .line 214
    .line 215
    iget-object v0, p1, Ly0/a;->signature:Lcom/bumptech/glide/load/g;

    .line 216
    .line 217
    iput-object v0, p0, Ly0/a;->signature:Lcom/bumptech/glide/load/g;

    .line 218
    .line 219
    :cond_c
    iget v0, p1, Ly0/a;->fields:I

    .line 220
    .line 221
    const/16 v3, 0x1000

    .line 222
    .line 223
    .line 224
    invoke-static {v0, v3}, Ly0/a;->G(II)Z

    .line 225
    move-result v0

    .line 226
    .line 227
    if-eqz v0, :cond_d

    .line 228
    .line 229
    iget-object v0, p1, Ly0/a;->resourceClass:Ljava/lang/Class;

    .line 230
    .line 231
    iput-object v0, p0, Ly0/a;->resourceClass:Ljava/lang/Class;

    .line 232
    .line 233
    :cond_d
    iget v0, p1, Ly0/a;->fields:I

    .line 234
    .line 235
    const/16 v3, 0x2000

    .line 236
    .line 237
    .line 238
    invoke-static {v0, v3}, Ly0/a;->G(II)Z

    .line 239
    move-result v0

    .line 240
    .line 241
    if-eqz v0, :cond_e

    .line 242
    .line 243
    iget-object v0, p1, Ly0/a;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    .line 244
    .line 245
    iput-object v0, p0, Ly0/a;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    .line 246
    .line 247
    iput v1, p0, Ly0/a;->fallbackId:I

    .line 248
    .line 249
    iget v0, p0, Ly0/a;->fields:I

    .line 250
    .line 251
    and-int/lit16 v0, v0, -0x4001

    .line 252
    .line 253
    iput v0, p0, Ly0/a;->fields:I

    .line 254
    .line 255
    :cond_e
    iget v0, p1, Ly0/a;->fields:I

    .line 256
    .line 257
    const/16 v3, 0x4000

    .line 258
    .line 259
    .line 260
    invoke-static {v0, v3}, Ly0/a;->G(II)Z

    .line 261
    move-result v0

    .line 262
    .line 263
    if-eqz v0, :cond_f

    .line 264
    .line 265
    iget v0, p1, Ly0/a;->fallbackId:I

    .line 266
    .line 267
    iput v0, p0, Ly0/a;->fallbackId:I

    .line 268
    .line 269
    iput-object v2, p0, Ly0/a;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    .line 270
    .line 271
    iget v0, p0, Ly0/a;->fields:I

    .line 272
    .line 273
    and-int/lit16 v0, v0, -0x2001

    .line 274
    .line 275
    iput v0, p0, Ly0/a;->fields:I

    .line 276
    .line 277
    :cond_f
    iget v0, p1, Ly0/a;->fields:I

    .line 278
    .line 279
    .line 280
    const v2, 0x8000

    .line 281
    .line 282
    .line 283
    invoke-static {v0, v2}, Ly0/a;->G(II)Z

    .line 284
    move-result v0

    .line 285
    .line 286
    if-eqz v0, :cond_10

    .line 287
    .line 288
    iget-object v0, p1, Ly0/a;->theme:Landroid/content/res/Resources$Theme;

    .line 289
    .line 290
    iput-object v0, p0, Ly0/a;->theme:Landroid/content/res/Resources$Theme;

    .line 291
    .line 292
    :cond_10
    iget v0, p1, Ly0/a;->fields:I

    .line 293
    .line 294
    const/high16 v2, 0x10000

    .line 295
    .line 296
    .line 297
    invoke-static {v0, v2}, Ly0/a;->G(II)Z

    .line 298
    move-result v0

    .line 299
    .line 300
    if-eqz v0, :cond_11

    .line 301
    .line 302
    iget-boolean v0, p1, Ly0/a;->isTransformationAllowed:Z

    .line 303
    .line 304
    iput-boolean v0, p0, Ly0/a;->isTransformationAllowed:Z

    .line 305
    .line 306
    :cond_11
    iget v0, p1, Ly0/a;->fields:I

    .line 307
    .line 308
    const/high16 v2, 0x20000

    .line 309
    .line 310
    .line 311
    invoke-static {v0, v2}, Ly0/a;->G(II)Z

    .line 312
    move-result v0

    .line 313
    .line 314
    if-eqz v0, :cond_12

    .line 315
    .line 316
    iget-boolean v0, p1, Ly0/a;->isTransformationRequired:Z

    .line 317
    .line 318
    iput-boolean v0, p0, Ly0/a;->isTransformationRequired:Z

    .line 319
    .line 320
    :cond_12
    iget v0, p1, Ly0/a;->fields:I

    .line 321
    .line 322
    const/16 v2, 0x800

    .line 323
    .line 324
    .line 325
    invoke-static {v0, v2}, Ly0/a;->G(II)Z

    .line 326
    move-result v0

    .line 327
    .line 328
    if-eqz v0, :cond_13

    .line 329
    .line 330
    iget-object v0, p0, Ly0/a;->transformations:Ljava/util/Map;

    .line 331
    .line 332
    iget-object v2, p1, Ly0/a;->transformations:Ljava/util/Map;

    .line 333
    .line 334
    .line 335
    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 336
    .line 337
    iget-boolean v0, p1, Ly0/a;->isScaleOnlyOrNoTransform:Z

    .line 338
    .line 339
    iput-boolean v0, p0, Ly0/a;->isScaleOnlyOrNoTransform:Z

    .line 340
    .line 341
    :cond_13
    iget v0, p1, Ly0/a;->fields:I

    .line 342
    .line 343
    const/high16 v2, 0x80000

    .line 344
    .line 345
    .line 346
    invoke-static {v0, v2}, Ly0/a;->G(II)Z

    .line 347
    move-result v0

    .line 348
    .line 349
    if-eqz v0, :cond_14

    .line 350
    .line 351
    iget-boolean v0, p1, Ly0/a;->onlyRetrieveFromCache:Z

    .line 352
    .line 353
    iput-boolean v0, p0, Ly0/a;->onlyRetrieveFromCache:Z

    .line 354
    .line 355
    :cond_14
    iget-boolean v0, p0, Ly0/a;->isTransformationAllowed:Z

    .line 356
    .line 357
    if-nez v0, :cond_15

    .line 358
    .line 359
    iget-object v0, p0, Ly0/a;->transformations:Ljava/util/Map;

    .line 360
    .line 361
    .line 362
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 363
    .line 364
    iget v0, p0, Ly0/a;->fields:I

    .line 365
    .line 366
    iput-boolean v1, p0, Ly0/a;->isTransformationRequired:Z

    .line 367
    .line 368
    .line 369
    const v1, -0x20801

    .line 370
    and-int/2addr v0, v1

    .line 371
    .line 372
    iput v0, p0, Ly0/a;->fields:I

    .line 373
    const/4 v0, 0x1

    .line 374
    .line 375
    iput-boolean v0, p0, Ly0/a;->isScaleOnlyOrNoTransform:Z

    .line 376
    .line 377
    :cond_15
    iget v0, p0, Ly0/a;->fields:I

    .line 378
    .line 379
    iget v1, p1, Ly0/a;->fields:I

    .line 380
    or-int/2addr v0, v1

    .line 381
    .line 382
    iput v0, p0, Ly0/a;->fields:I

    .line 383
    .line 384
    iget-object v0, p0, Ly0/a;->options:Lcom/bumptech/glide/load/i;

    .line 385
    .line 386
    iget-object p1, p1, Ly0/a;->options:Lcom/bumptech/glide/load/i;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/i;->d(Lcom/bumptech/glide/load/i;)V

    .line 390
    .line 391
    .line 392
    invoke-direct {p0}, Ly0/a;->R()Ly0/a;

    .line 393
    move-result-object p1

    .line 394
    return-object p1
.end method

.method public c()Ly0/a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Ly0/a;->isLocked:Z

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-boolean v0, p0, Ly0/a;->isAutoCloneEnabled:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 12
    .line 13
    const-string v1, "You cannot auto lock an already locked options object, try clone() first"

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 17
    throw v0

    .line 18
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 19
    .line 20
    iput-boolean v0, p0, Ly0/a;->isAutoCloneEnabled:Z

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Ly0/a;->J()Ly0/a;

    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ly0/a;->e()Ly0/a;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public e()Ly0/a;
    .locals 3
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Ly0/a;

    .line 7
    .line 8
    new-instance v1, Lcom/bumptech/glide/load/i;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1}, Lcom/bumptech/glide/load/i;-><init>()V

    .line 12
    .line 13
    iput-object v1, v0, Ly0/a;->options:Lcom/bumptech/glide/load/i;

    .line 14
    .line 15
    iget-object v2, p0, Ly0/a;->options:Lcom/bumptech/glide/load/i;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/load/i;->d(Lcom/bumptech/glide/load/i;)V

    .line 19
    .line 20
    new-instance v1, Lcom/bumptech/glide/util/b;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1}, Lcom/bumptech/glide/util/b;-><init>()V

    .line 24
    .line 25
    iput-object v1, v0, Ly0/a;->transformations:Ljava/util/Map;

    .line 26
    .line 27
    iget-object v2, p0, Ly0/a;->transformations:Ljava/util/Map;

    .line 28
    .line 29
    .line 30
    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 31
    const/4 v1, 0x0

    .line 32
    .line 33
    iput-boolean v1, v0, Ly0/a;->isLocked:Z

    .line 34
    .line 35
    iput-boolean v1, v0, Ly0/a;->isAutoCloneEnabled:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    return-object v0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .line 39
    new-instance v1, Ljava/lang/RuntimeException;

    .line 40
    .line 41
    .line 42
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 43
    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    .line 2
    instance-of v0, p1, Ly0/a;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p1, Ly0/a;

    .line 8
    .line 9
    iget v0, p1, Ly0/a;->sizeMultiplier:F

    .line 10
    .line 11
    iget v2, p0, Ly0/a;->sizeMultiplier:F

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    .line 15
    move-result v0

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iget v0, p0, Ly0/a;->errorId:I

    .line 20
    .line 21
    iget v2, p1, Ly0/a;->errorId:I

    .line 22
    .line 23
    if-ne v0, v2, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Ly0/a;->errorPlaceholder:Landroid/graphics/drawable/Drawable;

    .line 26
    .line 27
    iget-object v2, p1, Ly0/a;->errorPlaceholder:Landroid/graphics/drawable/Drawable;

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v2}, Lcom/bumptech/glide/util/k;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    move-result v0

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    iget v0, p0, Ly0/a;->placeholderId:I

    .line 36
    .line 37
    iget v2, p1, Ly0/a;->placeholderId:I

    .line 38
    .line 39
    if-ne v0, v2, :cond_0

    .line 40
    .line 41
    iget-object v0, p0, Ly0/a;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 42
    .line 43
    iget-object v2, p1, Ly0/a;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 44
    .line 45
    .line 46
    invoke-static {v0, v2}, Lcom/bumptech/glide/util/k;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    move-result v0

    .line 48
    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    iget v0, p0, Ly0/a;->fallbackId:I

    .line 52
    .line 53
    iget v2, p1, Ly0/a;->fallbackId:I

    .line 54
    .line 55
    if-ne v0, v2, :cond_0

    .line 56
    .line 57
    iget-object v0, p0, Ly0/a;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    .line 58
    .line 59
    iget-object v2, p1, Ly0/a;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    .line 60
    .line 61
    .line 62
    invoke-static {v0, v2}, Lcom/bumptech/glide/util/k;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    move-result v0

    .line 64
    .line 65
    if-eqz v0, :cond_0

    .line 66
    .line 67
    iget-boolean v0, p0, Ly0/a;->isCacheable:Z

    .line 68
    .line 69
    iget-boolean v2, p1, Ly0/a;->isCacheable:Z

    .line 70
    .line 71
    if-ne v0, v2, :cond_0

    .line 72
    .line 73
    iget v0, p0, Ly0/a;->overrideHeight:I

    .line 74
    .line 75
    iget v2, p1, Ly0/a;->overrideHeight:I

    .line 76
    .line 77
    if-ne v0, v2, :cond_0

    .line 78
    .line 79
    iget v0, p0, Ly0/a;->overrideWidth:I

    .line 80
    .line 81
    iget v2, p1, Ly0/a;->overrideWidth:I

    .line 82
    .line 83
    if-ne v0, v2, :cond_0

    .line 84
    .line 85
    iget-boolean v0, p0, Ly0/a;->isTransformationRequired:Z

    .line 86
    .line 87
    iget-boolean v2, p1, Ly0/a;->isTransformationRequired:Z

    .line 88
    .line 89
    if-ne v0, v2, :cond_0

    .line 90
    .line 91
    iget-boolean v0, p0, Ly0/a;->isTransformationAllowed:Z

    .line 92
    .line 93
    iget-boolean v2, p1, Ly0/a;->isTransformationAllowed:Z

    .line 94
    .line 95
    if-ne v0, v2, :cond_0

    .line 96
    .line 97
    iget-boolean v0, p0, Ly0/a;->useUnlimitedSourceGeneratorsPool:Z

    .line 98
    .line 99
    iget-boolean v2, p1, Ly0/a;->useUnlimitedSourceGeneratorsPool:Z

    .line 100
    .line 101
    if-ne v0, v2, :cond_0

    .line 102
    .line 103
    iget-boolean v0, p0, Ly0/a;->onlyRetrieveFromCache:Z

    .line 104
    .line 105
    iget-boolean v2, p1, Ly0/a;->onlyRetrieveFromCache:Z

    .line 106
    .line 107
    if-ne v0, v2, :cond_0

    .line 108
    .line 109
    iget-object v0, p0, Ly0/a;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/j;

    .line 110
    .line 111
    iget-object v2, p1, Ly0/a;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/j;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 115
    move-result v0

    .line 116
    .line 117
    if-eqz v0, :cond_0

    .line 118
    .line 119
    iget-object v0, p0, Ly0/a;->priority:Lcom/bumptech/glide/f;

    .line 120
    .line 121
    iget-object v2, p1, Ly0/a;->priority:Lcom/bumptech/glide/f;

    .line 122
    .line 123
    if-ne v0, v2, :cond_0

    .line 124
    .line 125
    iget-object v0, p0, Ly0/a;->options:Lcom/bumptech/glide/load/i;

    .line 126
    .line 127
    iget-object v2, p1, Ly0/a;->options:Lcom/bumptech/glide/load/i;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/load/i;->equals(Ljava/lang/Object;)Z

    .line 131
    move-result v0

    .line 132
    .line 133
    if-eqz v0, :cond_0

    .line 134
    .line 135
    iget-object v0, p0, Ly0/a;->transformations:Ljava/util/Map;

    .line 136
    .line 137
    iget-object v2, p1, Ly0/a;->transformations:Ljava/util/Map;

    .line 138
    .line 139
    .line 140
    invoke-interface {v0, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    .line 141
    move-result v0

    .line 142
    .line 143
    if-eqz v0, :cond_0

    .line 144
    .line 145
    iget-object v0, p0, Ly0/a;->resourceClass:Ljava/lang/Class;

    .line 146
    .line 147
    iget-object v2, p1, Ly0/a;->resourceClass:Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 151
    move-result v0

    .line 152
    .line 153
    if-eqz v0, :cond_0

    .line 154
    .line 155
    iget-object v0, p0, Ly0/a;->signature:Lcom/bumptech/glide/load/g;

    .line 156
    .line 157
    iget-object v2, p1, Ly0/a;->signature:Lcom/bumptech/glide/load/g;

    .line 158
    .line 159
    .line 160
    invoke-static {v0, v2}, Lcom/bumptech/glide/util/k;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 161
    move-result v0

    .line 162
    .line 163
    if-eqz v0, :cond_0

    .line 164
    .line 165
    iget-object v0, p0, Ly0/a;->theme:Landroid/content/res/Resources$Theme;

    .line 166
    .line 167
    iget-object p1, p1, Ly0/a;->theme:Landroid/content/res/Resources$Theme;

    .line 168
    .line 169
    .line 170
    invoke-static {v0, p1}, Lcom/bumptech/glide/util/k;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 171
    move-result p1

    .line 172
    .line 173
    if-eqz p1, :cond_0

    .line 174
    const/4 v1, 0x1

    .line 175
    :cond_0
    return v1
.end method

.method public f(Ljava/lang/Class;)Ly0/a;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Ly0/a;->isAutoCloneEnabled:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Ly0/a;->e()Ly0/a;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ly0/a;->f(Ljava/lang/Class;)Ly0/a;

    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/util/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    check-cast p1, Ljava/lang/Class;

    .line 20
    .line 21
    iput-object p1, p0, Ly0/a;->resourceClass:Ljava/lang/Class;

    .line 22
    .line 23
    iget p1, p0, Ly0/a;->fields:I

    .line 24
    .line 25
    or-int/lit16 p1, p1, 0x1000

    .line 26
    .line 27
    iput p1, p0, Ly0/a;->fields:I

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Ly0/a;->R()Ly0/a;

    .line 31
    move-result-object p1

    .line 32
    return-object p1
.end method

.method public g(Lcom/bumptech/glide/load/engine/j;)Ly0/a;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/engine/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/j;",
            ")TT;"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Ly0/a;->isAutoCloneEnabled:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Ly0/a;->e()Ly0/a;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ly0/a;->g(Lcom/bumptech/glide/load/engine/j;)Ly0/a;

    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/util/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    check-cast p1, Lcom/bumptech/glide/load/engine/j;

    .line 20
    .line 21
    iput-object p1, p0, Ly0/a;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/j;

    .line 22
    .line 23
    iget p1, p0, Ly0/a;->fields:I

    .line 24
    .line 25
    or-int/lit8 p1, p1, 0x4

    .line 26
    .line 27
    iput p1, p0, Ly0/a;->fields:I

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Ly0/a;->R()Ly0/a;

    .line 31
    move-result-object p1

    .line 32
    return-object p1
.end method

.method public h(Lcom/bumptech/glide/load/resource/bitmap/l;)Ly0/a;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/l;",
            ")TT;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/l;->OPTION:Lcom/bumptech/glide/load/h;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/bumptech/glide/util/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, p1}, Ly0/a;->S(Lcom/bumptech/glide/load/h;Ljava/lang/Object;)Ly0/a;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Ly0/a;->sizeMultiplier:F

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/bumptech/glide/util/k;->j(F)I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget v1, p0, Ly0/a;->errorId:I

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v0}, Lcom/bumptech/glide/util/k;->l(II)I

    .line 12
    move-result v0

    .line 13
    .line 14
    iget-object v1, p0, Ly0/a;->errorPlaceholder:Landroid/graphics/drawable/Drawable;

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v0}, Lcom/bumptech/glide/util/k;->m(Ljava/lang/Object;I)I

    .line 18
    move-result v0

    .line 19
    .line 20
    iget v1, p0, Ly0/a;->placeholderId:I

    .line 21
    .line 22
    .line 23
    invoke-static {v1, v0}, Lcom/bumptech/glide/util/k;->l(II)I

    .line 24
    move-result v0

    .line 25
    .line 26
    iget-object v1, p0, Ly0/a;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 27
    .line 28
    .line 29
    invoke-static {v1, v0}, Lcom/bumptech/glide/util/k;->m(Ljava/lang/Object;I)I

    .line 30
    move-result v0

    .line 31
    .line 32
    iget v1, p0, Ly0/a;->fallbackId:I

    .line 33
    .line 34
    .line 35
    invoke-static {v1, v0}, Lcom/bumptech/glide/util/k;->l(II)I

    .line 36
    move-result v0

    .line 37
    .line 38
    iget-object v1, p0, Ly0/a;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    .line 39
    .line 40
    .line 41
    invoke-static {v1, v0}, Lcom/bumptech/glide/util/k;->m(Ljava/lang/Object;I)I

    .line 42
    move-result v0

    .line 43
    .line 44
    iget-boolean v1, p0, Ly0/a;->isCacheable:Z

    .line 45
    .line 46
    .line 47
    invoke-static {v1, v0}, Lcom/bumptech/glide/util/k;->n(ZI)I

    .line 48
    move-result v0

    .line 49
    .line 50
    iget v1, p0, Ly0/a;->overrideHeight:I

    .line 51
    .line 52
    .line 53
    invoke-static {v1, v0}, Lcom/bumptech/glide/util/k;->l(II)I

    .line 54
    move-result v0

    .line 55
    .line 56
    iget v1, p0, Ly0/a;->overrideWidth:I

    .line 57
    .line 58
    .line 59
    invoke-static {v1, v0}, Lcom/bumptech/glide/util/k;->l(II)I

    .line 60
    move-result v0

    .line 61
    .line 62
    iget-boolean v1, p0, Ly0/a;->isTransformationRequired:Z

    .line 63
    .line 64
    .line 65
    invoke-static {v1, v0}, Lcom/bumptech/glide/util/k;->n(ZI)I

    .line 66
    move-result v0

    .line 67
    .line 68
    iget-boolean v1, p0, Ly0/a;->isTransformationAllowed:Z

    .line 69
    .line 70
    .line 71
    invoke-static {v1, v0}, Lcom/bumptech/glide/util/k;->n(ZI)I

    .line 72
    move-result v0

    .line 73
    .line 74
    iget-boolean v1, p0, Ly0/a;->useUnlimitedSourceGeneratorsPool:Z

    .line 75
    .line 76
    .line 77
    invoke-static {v1, v0}, Lcom/bumptech/glide/util/k;->n(ZI)I

    .line 78
    move-result v0

    .line 79
    .line 80
    iget-boolean v1, p0, Ly0/a;->onlyRetrieveFromCache:Z

    .line 81
    .line 82
    .line 83
    invoke-static {v1, v0}, Lcom/bumptech/glide/util/k;->n(ZI)I

    .line 84
    move-result v0

    .line 85
    .line 86
    iget-object v1, p0, Ly0/a;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/j;

    .line 87
    .line 88
    .line 89
    invoke-static {v1, v0}, Lcom/bumptech/glide/util/k;->m(Ljava/lang/Object;I)I

    .line 90
    move-result v0

    .line 91
    .line 92
    iget-object v1, p0, Ly0/a;->priority:Lcom/bumptech/glide/f;

    .line 93
    .line 94
    .line 95
    invoke-static {v1, v0}, Lcom/bumptech/glide/util/k;->m(Ljava/lang/Object;I)I

    .line 96
    move-result v0

    .line 97
    .line 98
    iget-object v1, p0, Ly0/a;->options:Lcom/bumptech/glide/load/i;

    .line 99
    .line 100
    .line 101
    invoke-static {v1, v0}, Lcom/bumptech/glide/util/k;->m(Ljava/lang/Object;I)I

    .line 102
    move-result v0

    .line 103
    .line 104
    iget-object v1, p0, Ly0/a;->transformations:Ljava/util/Map;

    .line 105
    .line 106
    .line 107
    invoke-static {v1, v0}, Lcom/bumptech/glide/util/k;->m(Ljava/lang/Object;I)I

    .line 108
    move-result v0

    .line 109
    .line 110
    iget-object v1, p0, Ly0/a;->resourceClass:Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    invoke-static {v1, v0}, Lcom/bumptech/glide/util/k;->m(Ljava/lang/Object;I)I

    .line 114
    move-result v0

    .line 115
    .line 116
    iget-object v1, p0, Ly0/a;->signature:Lcom/bumptech/glide/load/g;

    .line 117
    .line 118
    .line 119
    invoke-static {v1, v0}, Lcom/bumptech/glide/util/k;->m(Ljava/lang/Object;I)I

    .line 120
    move-result v0

    .line 121
    .line 122
    iget-object v1, p0, Ly0/a;->theme:Landroid/content/res/Resources$Theme;

    .line 123
    .line 124
    .line 125
    invoke-static {v1, v0}, Lcom/bumptech/glide/util/k;->m(Ljava/lang/Object;I)I

    .line 126
    move-result v0

    .line 127
    return v0
.end method

.method public i()Ly0/a;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/l;->FIT_CENTER:Lcom/bumptech/glide/load/resource/bitmap/l;

    .line 3
    .line 4
    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/t;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/t;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, v1}, Ly0/a;->O(Lcom/bumptech/glide/load/resource/bitmap/l;Lcom/bumptech/glide/load/m;)Ly0/a;

    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public final j()Lcom/bumptech/glide/load/engine/j;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Ly0/a;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/j;

    return-object v0
.end method

.method public final k()I
    .locals 1

    .line 1
    iget v0, p0, Ly0/a;->errorId:I

    return v0
.end method

.method public final l()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Ly0/a;->errorPlaceholder:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final m()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Ly0/a;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final n()I
    .locals 1

    .line 1
    iget v0, p0, Ly0/a;->fallbackId:I

    return v0
.end method

.method public final o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ly0/a;->onlyRetrieveFromCache:Z

    return v0
.end method

.method public final p()Lcom/bumptech/glide/load/i;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Ly0/a;->options:Lcom/bumptech/glide/load/i;

    return-object v0
.end method

.method public final q()I
    .locals 1

    .line 1
    iget v0, p0, Ly0/a;->overrideHeight:I

    return v0
.end method

.method public final r()I
    .locals 1

    .line 1
    iget v0, p0, Ly0/a;->overrideWidth:I

    return v0
.end method

.method public final s()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Ly0/a;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final t()I
    .locals 1

    .line 1
    iget v0, p0, Ly0/a;->placeholderId:I

    return v0
.end method

.method public final u()Lcom/bumptech/glide/f;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Ly0/a;->priority:Lcom/bumptech/glide/f;

    return-object v0
.end method

.method public final v()Ljava/lang/Class;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ly0/a;->resourceClass:Ljava/lang/Class;

    return-object v0
.end method

.method public final w()Lcom/bumptech/glide/load/g;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Ly0/a;->signature:Lcom/bumptech/glide/load/g;

    return-object v0
.end method

.method public final x()F
    .locals 1

    .line 1
    iget v0, p0, Ly0/a;->sizeMultiplier:F

    return v0
.end method

.method public final y()Landroid/content/res/Resources$Theme;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Ly0/a;->theme:Landroid/content/res/Resources$Theme;

    return-object v0
.end method

.method public final z()Ljava/util/Map;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/m<",
            "*>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ly0/a;->transformations:Ljava/util/Map;

    return-object v0
.end method
