.class public final Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/viewinterop/AndroidViewHolder;-><init>(Landroid/content/Context;Landroidx/compose/runtime/CompositionContext;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $layoutNode:Landroidx/compose/ui/node/LayoutNode;

.field final synthetic $this_run:Landroidx/compose/ui/viewinterop/AndroidViewHolder;


# direct methods
.method constructor <init>(Landroidx/compose/ui/viewinterop/AndroidViewHolder;Landroidx/compose/ui/node/LayoutNode;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;->$this_run:Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 3
    .line 4
    iput-object p2, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;->$layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method private final f(I)I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;->$this_run:Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 10
    .line 11
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 12
    const/4 v2, 0x0

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v2, p1, v1}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->f(Landroidx/compose/ui/viewinterop/AndroidViewHolder;III)I

    .line 16
    move-result p1

    .line 17
    .line 18
    .line 19
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 20
    move-result v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1, v1}, Landroid/view/View;->measure(II)V

    .line 24
    .line 25
    iget-object p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;->$this_run:Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 29
    move-result p1

    .line 30
    return p1
.end method

.method private final g(I)I
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;->$this_run:Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 7
    move-result v2

    .line 8
    .line 9
    iget-object v3, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;->$this_run:Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v3}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 13
    move-result-object v4

    .line 14
    .line 15
    .line 16
    invoke-static {v4}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 17
    .line 18
    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 19
    .line 20
    .line 21
    invoke-static {v3, v1, p1, v4}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->f(Landroidx/compose/ui/viewinterop/AndroidViewHolder;III)I

    .line 22
    move-result p1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2, p1}, Landroid/view/View;->measure(II)V

    .line 26
    .line 27
    iget-object p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;->$this_run:Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 31
    move-result p1

    .line 32
    return p1
.end method


# virtual methods
.method public a(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 7
    .param p1    # Landroidx/compose/ui/layout/MeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/MeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;J)",
            "Landroidx/compose/ui/layout/MeasureResult;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "$this$measure"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "measurables"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->p(J)I

    .line 14
    move-result p2

    .line 15
    const/4 v0, 0x0

    .line 16
    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    iget-object p2, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;->$this_run:Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 23
    move-result-object p2

    .line 24
    .line 25
    .line 26
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->p(J)I

    .line 27
    move-result v1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, v1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->o(J)I

    .line 34
    move-result p2

    .line 35
    .line 36
    if-eqz p2, :cond_1

    .line 37
    .line 38
    iget-object p2, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;->$this_run:Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 42
    move-result-object p2

    .line 43
    .line 44
    .line 45
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->o(J)I

    .line 46
    move-result v0

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 50
    .line 51
    :cond_1
    iget-object p2, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;->$this_run:Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 52
    .line 53
    .line 54
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->p(J)I

    .line 55
    move-result v0

    .line 56
    .line 57
    .line 58
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->n(J)I

    .line 59
    move-result v1

    .line 60
    .line 61
    iget-object v2, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;->$this_run:Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 65
    move-result-object v2

    .line 66
    .line 67
    .line 68
    invoke-static {v2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 69
    .line 70
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 71
    .line 72
    .line 73
    invoke-static {p2, v0, v1, v2}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->f(Landroidx/compose/ui/viewinterop/AndroidViewHolder;III)I

    .line 74
    move-result v0

    .line 75
    .line 76
    iget-object v1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;->$this_run:Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 77
    .line 78
    .line 79
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->o(J)I

    .line 80
    move-result v2

    .line 81
    .line 82
    .line 83
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->m(J)I

    .line 84
    move-result p3

    .line 85
    .line 86
    iget-object p4, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;->$this_run:Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p4}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 90
    move-result-object p4

    .line 91
    .line 92
    .line 93
    invoke-static {p4}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 94
    .line 95
    iget p4, p4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 96
    .line 97
    .line 98
    invoke-static {v1, v2, p3, p4}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->f(Landroidx/compose/ui/viewinterop/AndroidViewHolder;III)I

    .line 99
    move-result p3

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2, v0, p3}, Landroid/view/View;->measure(II)V

    .line 103
    .line 104
    iget-object p2, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;->$this_run:Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    .line 108
    move-result v1

    .line 109
    .line 110
    iget-object p2, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;->$this_run:Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 114
    move-result v2

    .line 115
    const/4 v3, 0x0

    .line 116
    .line 117
    new-instance v4, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5$measure$1;

    .line 118
    .line 119
    iget-object p2, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;->$this_run:Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 120
    .line 121
    iget-object p3, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;->$layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 122
    .line 123
    .line 124
    invoke-direct {v4, p2, p3}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5$measure$1;-><init>(Landroidx/compose/ui/viewinterop/AndroidViewHolder;Landroidx/compose/ui/node/LayoutNode;)V

    .line 125
    const/4 v5, 0x4

    .line 126
    const/4 v6, 0x0

    .line 127
    move-object v0, p1

    .line 128
    .line 129
    .line 130
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/MeasureScope$-CC;->b(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Le8/l;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 131
    move-result-object p1

    .line 132
    return-object p1
.end method

.method public b(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 1
    .param p1    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I)I"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p1, "measurables"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p3}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;->f(I)I

    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public c(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 1
    .param p1    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I)I"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p1, "measurables"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p3}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;->g(I)I

    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public d(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 1
    .param p1    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I)I"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p1, "measurables"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p3}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;->f(I)I

    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public e(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 1
    .param p1    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I)I"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p1, "measurables"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p3}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;->g(I)I

    .line 14
    move-result p1

    .line 15
    return p1
.end method
