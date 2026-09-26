.class final Landroidx/compose/foundation/gestures/ContentInViewModifier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/relocation/BringIntoViewResponder;
.implements Landroidx/compose/ui/layout/OnRemeasuredModifier;
.implements Landroidx/compose/ui/layout/OnPlacedModifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/gestures/ContentInViewModifier$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScrollable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Scrollable.kt\nandroidx/compose/foundation/gestures/ContentInViewModifier\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,645:1\n1#2:646\n*E\n"
.end annotation


# instance fields
.field private coordinates:Landroidx/compose/ui/layout/LayoutCoordinates;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private focusedChild:Landroidx/compose/ui/layout/LayoutCoordinates;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final modifier:Landroidx/compose/ui/Modifier;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private oldSize:Landroidx/compose/ui/unit/IntSize;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final orientation:Landroidx/compose/foundation/gestures/Orientation;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final reverseDirection:Z

.field private final scope:Lkotlinx/coroutines/o0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/o0;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/ScrollableState;Z)V
    .locals 1
    .param p1    # Lkotlinx/coroutines/o0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/foundation/gestures/Orientation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/foundation/gestures/ScrollableState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "scope"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "orientation"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "scrollableState"

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
    iput-object p1, p0, Landroidx/compose/foundation/gestures/ContentInViewModifier;->scope:Lkotlinx/coroutines/o0;

    .line 21
    .line 22
    iput-object p2, p0, Landroidx/compose/foundation/gestures/ContentInViewModifier;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 23
    .line 24
    iput-object p3, p0, Landroidx/compose/foundation/gestures/ContentInViewModifier;->scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 25
    .line 26
    iput-boolean p4, p0, Landroidx/compose/foundation/gestures/ContentInViewModifier;->reverseDirection:Z

    .line 27
    .line 28
    new-instance p1, Landroidx/compose/foundation/gestures/ContentInViewModifier$modifier$1;

    .line 29
    .line 30
    .line 31
    invoke-direct {p1, p0}, Landroidx/compose/foundation/gestures/ContentInViewModifier$modifier$1;-><init>(Landroidx/compose/foundation/gestures/ContentInViewModifier;)V

    .line 32
    .line 33
    .line 34
    invoke-static {p0, p1}, Landroidx/compose/foundation/FocusedBoundsKt;->b(Landroidx/compose/ui/Modifier;Le8/l;)Landroidx/compose/ui/Modifier;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    invoke-static {p1, p0}, Landroidx/compose/foundation/relocation/BringIntoViewResponderKt;->c(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/relocation/BringIntoViewResponder;)Landroidx/compose/ui/Modifier;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    iput-object p1, p0, Landroidx/compose/foundation/gestures/ContentInViewModifier;->modifier:Landroidx/compose/ui/Modifier;

    .line 42
    return-void
.end method

.method public static final synthetic c(Landroidx/compose/foundation/gestures/ContentInViewModifier;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/gestures/ContentInViewModifier;->i(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic d(Landroidx/compose/foundation/gestures/ContentInViewModifier;Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/compose/foundation/gestures/ContentInViewModifier;->focusedChild:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 3
    return-void
.end method

.method private final f(Landroidx/compose/ui/geometry/Rect;J)Landroidx/compose/ui/geometry/Rect;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntSizeKt;->b(J)J

    .line 4
    move-result-wide p2

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewModifier;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 7
    .line 8
    sget-object v1, Landroidx/compose/foundation/gestures/ContentInViewModifier$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 12
    move-result v0

    .line 13
    .line 14
    aget v0, v1, v0

    .line 15
    const/4 v1, 0x1

    .line 16
    const/4 v2, 0x0

    .line 17
    .line 18
    if-eq v0, v1, :cond_1

    .line 19
    const/4 v1, 0x2

    .line 20
    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->j()F

    .line 25
    move-result v0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->k()F

    .line 29
    move-result v1

    .line 30
    .line 31
    .line 32
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 33
    move-result p2

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, v0, v1, p2}, Landroidx/compose/foundation/gestures/ContentInViewModifier;->j(FFF)F

    .line 37
    move-result p2

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2, v2}, Landroidx/compose/ui/geometry/Rect;->s(FF)Landroidx/compose/ui/geometry/Rect;

    .line 41
    move-result-object p1

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_0
    new-instance p1, Lw7/s;

    .line 45
    .line 46
    .line 47
    invoke-direct {p1}, Lw7/s;-><init>()V

    .line 48
    throw p1

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->m()F

    .line 52
    move-result v0

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->e()F

    .line 56
    move-result v1

    .line 57
    .line 58
    .line 59
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Size;->g(J)F

    .line 60
    move-result p2

    .line 61
    .line 62
    .line 63
    invoke-direct {p0, v0, v1, p2}, Landroidx/compose/foundation/gestures/ContentInViewModifier;->j(FFF)F

    .line 64
    move-result p2

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v2, p2}, Landroidx/compose/ui/geometry/Rect;->s(FF)Landroidx/compose/ui/geometry/Rect;

    .line 68
    move-result-object p1

    .line 69
    :goto_0
    return-object p1
.end method

.method private final h(Landroidx/compose/ui/layout/LayoutCoordinates;J)V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewModifier;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 3
    .line 4
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->a()J

    .line 10
    move-result-wide v0

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSize;->g(J)I

    .line 14
    move-result v0

    .line 15
    .line 16
    .line 17
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntSize;->g(J)I

    .line 18
    move-result v1

    .line 19
    .line 20
    if-ge v0, v1, :cond_1

    .line 21
    goto :goto_0

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->a()J

    .line 25
    move-result-wide v0

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSize;->f(J)I

    .line 29
    move-result v0

    .line 30
    .line 31
    .line 32
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntSize;->f(J)I

    .line 33
    move-result v1

    .line 34
    .line 35
    if-ge v0, v1, :cond_1

    .line 36
    .line 37
    :goto_0
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewModifier;->focusedChild:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    const/4 v1, 0x0

    .line 41
    .line 42
    .line 43
    invoke-interface {p1, v0, v1}, Landroidx/compose/ui/layout/LayoutCoordinates;->r(Landroidx/compose/ui/layout/LayoutCoordinates;Z)Landroidx/compose/ui/geometry/Rect;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    sget-object v1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Offset$Companion;->c()J

    .line 52
    move-result-wide v1

    .line 53
    .line 54
    .line 55
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntSizeKt;->b(J)J

    .line 56
    move-result-wide p2

    .line 57
    .line 58
    .line 59
    invoke-static {v1, v2, p2, p3}, Landroidx/compose/ui/geometry/RectKt;->b(JJ)Landroidx/compose/ui/geometry/Rect;

    .line 60
    move-result-object p2

    .line 61
    .line 62
    .line 63
    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->a()J

    .line 64
    move-result-wide v1

    .line 65
    .line 66
    .line 67
    invoke-direct {p0, v0, v1, v2}, Landroidx/compose/foundation/gestures/ContentInViewModifier;->f(Landroidx/compose/ui/geometry/Rect;J)Landroidx/compose/ui/geometry/Rect;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, v0}, Landroidx/compose/ui/geometry/Rect;->r(Landroidx/compose/ui/geometry/Rect;)Z

    .line 72
    move-result p2

    .line 73
    .line 74
    .line 75
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    move-result p3

    .line 77
    .line 78
    xor-int/lit8 p3, p3, 0x1

    .line 79
    .line 80
    if-eqz p2, :cond_1

    .line 81
    .line 82
    if-eqz p3, :cond_1

    .line 83
    .line 84
    iget-object v1, p0, Landroidx/compose/foundation/gestures/ContentInViewModifier;->scope:Lkotlinx/coroutines/o0;

    .line 85
    const/4 v2, 0x0

    .line 86
    const/4 v3, 0x0

    .line 87
    .line 88
    new-instance v4, Landroidx/compose/foundation/gestures/ContentInViewModifier$onSizeChanged$1;

    .line 89
    const/4 p2, 0x0

    .line 90
    .line 91
    .line 92
    invoke-direct {v4, p0, v0, p1, p2}, Landroidx/compose/foundation/gestures/ContentInViewModifier$onSizeChanged$1;-><init>(Landroidx/compose/foundation/gestures/ContentInViewModifier;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;Lkotlin/coroutines/d;)V

    .line 93
    const/4 v5, 0x3

    .line 94
    const/4 v6, 0x0

    .line 95
    .line 96
    .line 97
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;Lkotlinx/coroutines/q0;Le8/p;ILjava/lang/Object;)Lkotlinx/coroutines/b2;

    .line 98
    :cond_1
    return-void
.end method

.method private final i(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/geometry/Rect;",
            "Landroidx/compose/ui/geometry/Rect;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewModifier;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 3
    .line 4
    sget-object v1, Landroidx/compose/foundation/gestures/ContentInViewModifier$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    move-result v0

    .line 9
    .line 10
    aget v0, v1, v0

    .line 11
    const/4 v1, 0x1

    .line 12
    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    const/4 v1, 0x2

    .line 15
    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->j()F

    .line 20
    move-result p1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->j()F

    .line 24
    move-result p2

    .line 25
    :goto_0
    sub-float/2addr p1, p2

    .line 26
    goto :goto_1

    .line 27
    .line 28
    :cond_0
    new-instance p1, Lw7/s;

    .line 29
    .line 30
    .line 31
    invoke-direct {p1}, Lw7/s;-><init>()V

    .line 32
    throw p1

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->m()F

    .line 36
    move-result p1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->m()F

    .line 40
    move-result p2

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :goto_1
    iget-boolean p2, p0, Landroidx/compose/foundation/gestures/ContentInViewModifier;->reverseDirection:Z

    .line 44
    .line 45
    if-eqz p2, :cond_2

    .line 46
    neg-float p1, p1

    .line 47
    :cond_2
    move v1, p1

    .line 48
    .line 49
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewModifier;->scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 50
    const/4 v2, 0x0

    .line 51
    const/4 v4, 0x2

    .line 52
    const/4 v5, 0x0

    .line 53
    move-object v3, p3

    .line 54
    .line 55
    .line 56
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/gestures/ScrollExtensionsKt;->b(Landroidx/compose/foundation/gestures/ScrollableState;FLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/d;ILjava/lang/Object;)Ljava/lang/Object;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    .line 60
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 61
    move-result-object p2

    .line 62
    .line 63
    if-ne p1, p2, :cond_3

    .line 64
    return-object p1

    .line 65
    .line 66
    :cond_3
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 67
    return-object p1
.end method

.method private final j(FFF)F
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    cmpl-float v1, p1, v0

    .line 4
    .line 5
    if-ltz v1, :cond_0

    .line 6
    .line 7
    cmpg-float v1, p2, p3

    .line 8
    .line 9
    if-gtz v1, :cond_0

    .line 10
    :goto_0
    move p1, v0

    .line 11
    goto :goto_1

    .line 12
    .line 13
    :cond_0
    cmpg-float v1, p1, v0

    .line 14
    .line 15
    if-gez v1, :cond_1

    .line 16
    .line 17
    cmpl-float v1, p2, p3

    .line 18
    .line 19
    if-lez v1, :cond_1

    .line 20
    goto :goto_0

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 24
    move-result v0

    .line 25
    sub-float/2addr p2, p3

    .line 26
    .line 27
    .line 28
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 29
    move-result p3

    .line 30
    .line 31
    cmpg-float p3, v0, p3

    .line 32
    .line 33
    if-gez p3, :cond_2

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    move p1, p2

    .line 36
    :goto_1
    return p1
.end method


# virtual methods
.method public synthetic B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/a;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    return-object p1
.end method

.method public synthetic V(Ljava/lang/Object;Le8/p;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/b;->c(Landroidx/compose/ui/Modifier$Element;Ljava/lang/Object;Le8/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroidx/compose/ui/geometry/Rect;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 1
    .param p1    # Landroidx/compose/ui/geometry/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/geometry/Rect;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/ContentInViewModifier;->b(Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/ui/geometry/Rect;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, v0, p2}, Landroidx/compose/foundation/gestures/ContentInViewModifier;->i(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    if-ne p1, p2, :cond_0

    .line 15
    return-object p1

    .line 16
    .line 17
    :cond_0
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 18
    return-object p1
.end method

.method public synthetic a0(Ljava/lang/Object;Le8/p;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/b;->b(Landroidx/compose/ui/Modifier$Element;Ljava/lang/Object;Le8/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/ui/geometry/Rect;
    .locals 2
    .param p1    # Landroidx/compose/ui/geometry/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "localRect"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewModifier;->oldSize:Landroidx/compose/ui/unit/IntSize;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntSize;->j()J

    .line 13
    move-result-wide v0

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1, v0, v1}, Landroidx/compose/foundation/gestures/ContentInViewModifier;->f(Landroidx/compose/ui/geometry/Rect;J)Landroidx/compose/ui/geometry/Rect;

    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v0, "Expected BringIntoViewRequester to not be used before parents are placed."

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    throw p1
.end method

.method public b0(J)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewModifier;->coordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/compose/foundation/gestures/ContentInViewModifier;->oldSize:Landroidx/compose/ui/unit/IntSize;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/compose/ui/unit/IntSize;->j()J

    .line 10
    move-result-wide v2

    .line 11
    .line 12
    .line 13
    invoke-static {v2, v3, p1, p2}, Landroidx/compose/ui/unit/IntSize;->e(JJ)Z

    .line 14
    move-result v2

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Landroidx/compose/ui/layout/LayoutCoordinates;->Q()Z

    .line 22
    move-result v2

    .line 23
    const/4 v3, 0x1

    .line 24
    .line 25
    if-ne v2, v3, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Landroidx/compose/ui/unit/IntSize;->j()J

    .line 29
    move-result-wide v1

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, v0, v1, v2}, Landroidx/compose/foundation/gestures/ContentInViewModifier;->h(Landroidx/compose/ui/layout/LayoutCoordinates;J)V

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSize;->b(J)Landroidx/compose/ui/unit/IntSize;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    iput-object p1, p0, Landroidx/compose/foundation/gestures/ContentInViewModifier;->oldSize:Landroidx/compose/ui/unit/IntSize;

    .line 39
    return-void
.end method

.method public synthetic d0(Le8/l;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/b;->a(Landroidx/compose/ui/Modifier$Element;Le8/l;)Z

    move-result p1

    return p1
.end method

.method public e(Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/layout/LayoutCoordinates;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "coordinates"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/foundation/gestures/ContentInViewModifier;->coordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    return-void
.end method

.method public final g()Landroidx/compose/ui/Modifier;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewModifier;->modifier:Landroidx/compose/ui/Modifier;

    return-object v0
.end method
