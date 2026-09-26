.class public final Landroidx/compose/ui/layout/DefaultIntrinsicMeasurable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/Measurable;


# instance fields
.field private final measurable:Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final minMax:Landroidx/compose/ui/layout/IntrinsicMinMax;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final widthHeight:Landroidx/compose/ui/layout/IntrinsicWidthHeight;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/ui/layout/IntrinsicMeasurable;Landroidx/compose/ui/layout/IntrinsicMinMax;Landroidx/compose/ui/layout/IntrinsicWidthHeight;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/layout/IntrinsicMeasurable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/layout/IntrinsicMinMax;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/layout/IntrinsicWidthHeight;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "measurable"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "minMax"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "widthHeight"

    .line 13
    .line 14
    .line 15
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    iput-object p1, p0, Landroidx/compose/ui/layout/DefaultIntrinsicMeasurable;->measurable:Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 21
    .line 22
    iput-object p2, p0, Landroidx/compose/ui/layout/DefaultIntrinsicMeasurable;->minMax:Landroidx/compose/ui/layout/IntrinsicMinMax;

    .line 23
    .line 24
    iput-object p3, p0, Landroidx/compose/ui/layout/DefaultIntrinsicMeasurable;->widthHeight:Landroidx/compose/ui/layout/IntrinsicWidthHeight;

    .line 25
    return-void
.end method


# virtual methods
.method public M(I)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/layout/DefaultIntrinsicMeasurable;->measurable:Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->M(I)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public V(I)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/layout/DefaultIntrinsicMeasurable;->measurable:Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->V(I)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public Y(I)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/layout/DefaultIntrinsicMeasurable;->measurable:Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->Y(I)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public a0(I)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/layout/DefaultIntrinsicMeasurable;->measurable:Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->a0(I)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public b0(J)Landroidx/compose/ui/layout/Placeable;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/layout/DefaultIntrinsicMeasurable;->widthHeight:Landroidx/compose/ui/layout/IntrinsicWidthHeight;

    .line 3
    .line 4
    sget-object v1, Landroidx/compose/ui/layout/IntrinsicWidthHeight;->Width:Landroidx/compose/ui/layout/IntrinsicWidthHeight;

    .line 5
    .line 6
    if-ne v0, v1, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/compose/ui/layout/DefaultIntrinsicMeasurable;->minMax:Landroidx/compose/ui/layout/IntrinsicMinMax;

    .line 9
    .line 10
    sget-object v1, Landroidx/compose/ui/layout/IntrinsicMinMax;->Max:Landroidx/compose/ui/layout/IntrinsicMinMax;

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/compose/ui/layout/DefaultIntrinsicMeasurable;->measurable:Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 15
    .line 16
    .line 17
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->m(J)I

    .line 18
    move-result v1

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, v1}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->a0(I)I

    .line 22
    move-result v0

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/layout/DefaultIntrinsicMeasurable;->measurable:Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 26
    .line 27
    .line 28
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->m(J)I

    .line 29
    move-result v1

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, v1}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->Y(I)I

    .line 33
    move-result v0

    .line 34
    .line 35
    :goto_0
    new-instance v1, Landroidx/compose/ui/layout/FixedSizeIntrinsicsPlaceable;

    .line 36
    .line 37
    .line 38
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->m(J)I

    .line 39
    move-result p1

    .line 40
    .line 41
    .line 42
    invoke-direct {v1, v0, p1}, Landroidx/compose/ui/layout/FixedSizeIntrinsicsPlaceable;-><init>(II)V

    .line 43
    return-object v1

    .line 44
    .line 45
    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/layout/DefaultIntrinsicMeasurable;->minMax:Landroidx/compose/ui/layout/IntrinsicMinMax;

    .line 46
    .line 47
    sget-object v1, Landroidx/compose/ui/layout/IntrinsicMinMax;->Max:Landroidx/compose/ui/layout/IntrinsicMinMax;

    .line 48
    .line 49
    if-ne v0, v1, :cond_2

    .line 50
    .line 51
    iget-object v0, p0, Landroidx/compose/ui/layout/DefaultIntrinsicMeasurable;->measurable:Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 52
    .line 53
    .line 54
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->n(J)I

    .line 55
    move-result v1

    .line 56
    .line 57
    .line 58
    invoke-interface {v0, v1}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->M(I)I

    .line 59
    move-result v0

    .line 60
    goto :goto_1

    .line 61
    .line 62
    :cond_2
    iget-object v0, p0, Landroidx/compose/ui/layout/DefaultIntrinsicMeasurable;->measurable:Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 63
    .line 64
    .line 65
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->n(J)I

    .line 66
    move-result v1

    .line 67
    .line 68
    .line 69
    invoke-interface {v0, v1}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->V(I)I

    .line 70
    move-result v0

    .line 71
    .line 72
    :goto_1
    new-instance v1, Landroidx/compose/ui/layout/FixedSizeIntrinsicsPlaceable;

    .line 73
    .line 74
    .line 75
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->n(J)I

    .line 76
    move-result p1

    .line 77
    .line 78
    .line 79
    invoke-direct {v1, p1, v0}, Landroidx/compose/ui/layout/FixedSizeIntrinsicsPlaceable;-><init>(II)V

    .line 80
    return-object v1
.end method

.method public e()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/layout/DefaultIntrinsicMeasurable;->measurable:Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->e()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
