.class final Landroidx/compose/ui/input/pointer/util/Vector;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final elements:[Ljava/lang/Float;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final length:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Landroidx/compose/ui/input/pointer/util/Vector;->length:I

    .line 6
    .line 7
    new-array v0, p1, [Ljava/lang/Float;

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    :goto_0
    if-ge v1, p1, :cond_0

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    .line 14
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    aput-object v2, v0, v1

    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    iput-object v0, p0, Landroidx/compose/ui/input/pointer/util/Vector;->elements:[Ljava/lang/Float;

    .line 23
    return-void
.end method


# virtual methods
.method public final a(I)F
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/util/Vector;->elements:[Ljava/lang/Float;

    .line 3
    .line 4
    aget-object p1, v0, p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public final b()F
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p0}, Landroidx/compose/ui/input/pointer/util/Vector;->d(Landroidx/compose/ui/input/pointer/util/Vector;)F

    .line 4
    move-result v0

    .line 5
    float-to-double v0, v0

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 9
    move-result-wide v0

    .line 10
    double-to-float v0, v0

    .line 11
    return v0
.end method

.method public final c(IF)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/util/Vector;->elements:[Ljava/lang/Float;

    .line 3
    .line 4
    .line 5
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    aput-object p2, v0, p1

    .line 9
    return-void
.end method

.method public final d(Landroidx/compose/ui/input/pointer/util/Vector;)F
    .locals 5
    .param p1    # Landroidx/compose/ui/input/pointer/util/Vector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "a"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget v0, p0, Landroidx/compose/ui/input/pointer/util/Vector;->length:I

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    :goto_0
    if-ge v2, v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v2}, Landroidx/compose/ui/input/pointer/util/Vector;->a(I)F

    .line 15
    move-result v3

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v2}, Landroidx/compose/ui/input/pointer/util/Vector;->a(I)F

    .line 19
    move-result v4

    .line 20
    mul-float/2addr v3, v4

    .line 21
    add-float/2addr v1, v3

    .line 22
    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return v1
.end method
