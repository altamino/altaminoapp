.class public final Landroidx/compose/runtime/IntStack;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private slots:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private tos:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    const/16 v0, 0xa

    .line 6
    .line 7
    new-array v0, v0, [I

    .line 8
    .line 9
    iput-object v0, p0, Landroidx/compose/runtime/IntStack;->slots:[I

    .line 10
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/runtime/IntStack;->tos:I

    return-void
.end method

.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/IntStack;->tos:I

    return v0
.end method

.method public final c(I)I
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/runtime/IntStack;->tos:I

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    :goto_0
    if-ge v1, v0, :cond_1

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/compose/runtime/IntStack;->slots:[I

    .line 8
    .line 9
    aget v2, v2, v1

    .line 10
    .line 11
    if-ne v2, p1, :cond_0

    .line 12
    return v1

    .line 13
    .line 14
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 p1, -0x1

    .line 17
    return p1
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/IntStack;->tos:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final e()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/IntStack;->slots:[I

    .line 3
    .line 4
    iget v1, p0, Landroidx/compose/runtime/IntStack;->tos:I

    .line 5
    .line 6
    add-int/lit8 v1, v1, -0x1

    .line 7
    .line 8
    aget v0, v0, v1

    .line 9
    return v0
.end method

.method public final f(I)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/IntStack;->slots:[I

    .line 3
    .line 4
    aget p1, v0, p1

    .line 5
    return p1
.end method

.method public final g(I)I
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/runtime/IntStack;->tos:I

    .line 3
    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/runtime/IntStack;->e()I

    .line 8
    move-result p1

    .line 9
    :cond_0
    return p1
.end method

.method public final h()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/IntStack;->slots:[I

    .line 3
    .line 4
    iget v1, p0, Landroidx/compose/runtime/IntStack;->tos:I

    .line 5
    .line 6
    add-int/lit8 v1, v1, -0x1

    .line 7
    .line 8
    iput v1, p0, Landroidx/compose/runtime/IntStack;->tos:I

    .line 9
    .line 10
    aget v0, v0, v1

    .line 11
    return v0
.end method

.method public final i(I)V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/runtime/IntStack;->tos:I

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/compose/runtime/IntStack;->slots:[I

    .line 5
    array-length v2, v1

    .line 6
    .line 7
    if-lt v0, v2, :cond_0

    .line 8
    array-length v0, v1

    .line 9
    .line 10
    mul-int/lit8 v0, v0, 0x2

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    .line 14
    move-result-object v0

    .line 15
    .line 16
    const-string v1, "copyOf(this, newSize)"

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    iput-object v0, p0, Landroidx/compose/runtime/IntStack;->slots:[I

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/IntStack;->slots:[I

    .line 24
    .line 25
    iget v1, p0, Landroidx/compose/runtime/IntStack;->tos:I

    .line 26
    .line 27
    add-int/lit8 v2, v1, 0x1

    .line 28
    .line 29
    iput v2, p0, Landroidx/compose/runtime/IntStack;->tos:I

    .line 30
    .line 31
    aput p1, v0, v1

    .line 32
    return-void
.end method
