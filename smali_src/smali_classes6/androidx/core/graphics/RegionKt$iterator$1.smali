.class public final Landroidx/core/graphics/RegionKt$iterator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lf8/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Landroid/graphics/Rect;",
        ">;",
        "Lf8/a;"
    }
.end annotation


# instance fields
.field private hasMore:Z

.field private final iterator:Landroid/graphics/RegionIterator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final rect:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# virtual methods
.method public a()Landroid/graphics/Rect;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/core/graphics/RegionKt$iterator$1;->hasMore:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroid/graphics/Rect;

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/core/graphics/RegionKt$iterator$1;->rect:Landroid/graphics/Rect;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/core/graphics/RegionKt$iterator$1;->iterator:Landroid/graphics/RegionIterator;

    .line 14
    .line 15
    iget-object v2, p0, Landroidx/core/graphics/RegionKt$iterator$1;->rect:Landroid/graphics/Rect;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/graphics/RegionIterator;->next(Landroid/graphics/Rect;)Z

    .line 19
    move-result v1

    .line 20
    .line 21
    iput-boolean v1, p0, Landroidx/core/graphics/RegionKt$iterator$1;->hasMore:Z

    .line 22
    return-object v0

    .line 23
    .line 24
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 25
    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 28
    throw v0
.end method

.method public hasNext()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/core/graphics/RegionKt$iterator$1;->hasMore:Z

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/core/graphics/RegionKt$iterator$1;->a()Landroid/graphics/Rect;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
