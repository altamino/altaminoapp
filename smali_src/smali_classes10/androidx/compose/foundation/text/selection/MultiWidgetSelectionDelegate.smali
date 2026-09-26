.class public final Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/text/selection/Selectable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMultiWidgetSelectionDelegate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MultiWidgetSelectionDelegate.kt\nandroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,256:1\n1#2:257\n*E\n"
.end annotation


# instance fields
.field private final coordinatesCallback:Le8/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/a<",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final layoutResultCallback:Le8/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/a<",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final selectableId:J


# direct methods
.method public constructor <init>(JLe8/a;Le8/a;)V
    .locals 1
    .param p3    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Le8/a<",
            "+",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            ">;",
            "Le8/a<",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "coordinatesCallback"

    .line 3
    .line 4
    .line 5
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "layoutResultCallback"

    .line 8
    .line 9
    .line 10
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    iput-wide p1, p0, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;->selectableId:J

    .line 16
    .line 17
    iput-object p3, p0, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;->coordinatesCallback:Le8/a;

    .line 18
    .line 19
    iput-object p4, p0, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;->layoutResultCallback:Le8/a;

    .line 20
    return-void
.end method


# virtual methods
.method public a()Landroidx/compose/ui/text/AnnotatedString;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;->layoutResultCallback:Le8/a;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Le8/a;->invoke()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/compose/ui/text/TextLayoutResult;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Landroidx/compose/ui/text/AnnotatedString;

    .line 13
    .line 14
    const-string v2, ""

    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x6

    .line 18
    const/4 v6, 0x0

    .line 19
    move-object v1, v0

    .line 20
    .line 21
    .line 22
    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/k;)V

    .line 23
    return-object v0

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/text/TextLayoutResult;->k()Landroidx/compose/ui/text/TextLayoutInput;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/compose/ui/text/TextLayoutInput;->j()Landroidx/compose/ui/text/AnnotatedString;

    .line 31
    move-result-object v0

    .line 32
    return-object v0
.end method

.method public b(I)Landroidx/compose/ui/geometry/Rect;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;->layoutResultCallback:Le8/a;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Le8/a;->invoke()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/compose/ui/text/TextLayoutResult;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    sget-object p1, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect$Companion;->a()Landroidx/compose/ui/geometry/Rect;

    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/text/TextLayoutResult;->k()Landroidx/compose/ui/text/TextLayoutInput;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Landroidx/compose/ui/text/TextLayoutInput;->j()Landroidx/compose/ui/text/AnnotatedString;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Landroidx/compose/ui/text/AnnotatedString;->length()I

    .line 29
    move-result v1

    .line 30
    const/4 v2, 0x1

    .line 31
    .line 32
    if-ge v1, v2, :cond_1

    .line 33
    .line 34
    sget-object p1, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect$Companion;->a()Landroidx/compose/ui/geometry/Rect;

    .line 38
    move-result-object p1

    .line 39
    return-object p1

    .line 40
    :cond_1
    const/4 v3, 0x0

    .line 41
    sub-int/2addr v1, v2

    .line 42
    .line 43
    .line 44
    invoke-static {p1, v3, v1}, Lj8/m;->n(III)I

    .line 45
    move-result p1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/TextLayoutResult;->c(I)Landroidx/compose/ui/geometry/Rect;

    .line 49
    move-result-object p1

    .line 50
    return-object p1
.end method

.method public c()Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;->coordinatesCallback:Le8/a;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Le8/a;->invoke()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Landroidx/compose/ui/layout/LayoutCoordinates;->Q()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    return-object v0

    .line 19
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 20
    return-object v0
.end method

.method public d(JJLandroidx/compose/ui/geometry/Offset;ZLandroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/foundation/text/selection/SelectionAdjustment;Landroidx/compose/foundation/text/selection/Selection;)Lw7/u;
    .locals 14
    .param p5    # Landroidx/compose/ui/geometry/Offset;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Landroidx/compose/ui/layout/LayoutCoordinates;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Landroidx/compose/foundation/text/selection/SelectionAdjustment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Landroidx/compose/foundation/text/selection/Selection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Landroidx/compose/ui/geometry/Offset;",
            "Z",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            "Landroidx/compose/foundation/text/selection/SelectionAdjustment;",
            "Landroidx/compose/foundation/text/selection/Selection;",
            ")",
            "Lw7/u<",
            "Landroidx/compose/foundation/text/selection/Selection;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p7

    .line 3
    .line 4
    const-string v1, "containerLayoutCoordinates"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    const-string v1, "adjustment"

    .line 10
    .line 11
    move-object/from16 v10, p8

    .line 12
    .line 13
    .line 14
    invoke-static {v10, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    if-eqz p9, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;->f()J

    .line 20
    move-result-wide v1

    .line 21
    .line 22
    .line 23
    invoke-virtual/range {p9 .. p9}, Landroidx/compose/foundation/text/selection/Selection;->e()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 24
    move-result-object v3

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->c()J

    .line 28
    move-result-wide v3

    .line 29
    .line 30
    cmp-long v1, v1, v3

    .line 31
    .line 32
    if-nez v1, :cond_0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;->f()J

    .line 36
    move-result-wide v1

    .line 37
    .line 38
    .line 39
    invoke-virtual/range {p9 .. p9}, Landroidx/compose/foundation/text/selection/Selection;->c()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 40
    move-result-object v3

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->c()J

    .line 44
    move-result-wide v3

    .line 45
    .line 46
    cmp-long v1, v1, v3

    .line 47
    .line 48
    if-nez v1, :cond_0

    .line 49
    goto :goto_0

    .line 50
    .line 51
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 52
    .line 53
    const-string v1, "The given previousSelection doesn\'t belong to this selectable."

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    .line 60
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 61
    throw v0

    .line 62
    .line 63
    .line 64
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;->c()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 65
    move-result-object v1

    .line 66
    const/4 v2, 0x0

    .line 67
    .line 68
    if-nez v1, :cond_2

    .line 69
    .line 70
    new-instance v0, Lw7/u;

    .line 71
    .line 72
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 73
    .line 74
    .line 75
    invoke-direct {v0, v2, v1}, Lw7/u;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 76
    return-object v0

    .line 77
    :cond_2
    move-object v13, p0

    .line 78
    .line 79
    iget-object v3, v13, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;->layoutResultCallback:Le8/a;

    .line 80
    .line 81
    .line 82
    invoke-interface {v3}, Le8/a;->invoke()Ljava/lang/Object;

    .line 83
    move-result-object v3

    .line 84
    .line 85
    check-cast v3, Landroidx/compose/ui/text/TextLayoutResult;

    .line 86
    .line 87
    if-nez v3, :cond_3

    .line 88
    .line 89
    new-instance v0, Lw7/u;

    .line 90
    .line 91
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 92
    .line 93
    .line 94
    invoke-direct {v0, v2, v1}, Lw7/u;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 95
    return-object v0

    .line 96
    .line 97
    :cond_3
    sget-object v4, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v4}, Landroidx/compose/ui/geometry/Offset$Companion;->c()J

    .line 101
    move-result-wide v4

    .line 102
    .line 103
    .line 104
    invoke-interface {v0, v1, v4, v5}, Landroidx/compose/ui/layout/LayoutCoordinates;->O(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    .line 105
    move-result-wide v0

    .line 106
    move-wide v4, p1

    .line 107
    .line 108
    .line 109
    invoke-static {v4, v5, v0, v1}, Landroidx/compose/ui/geometry/Offset;->q(JJ)J

    .line 110
    move-result-wide v4

    .line 111
    .line 112
    move-wide/from16 v6, p3

    .line 113
    .line 114
    .line 115
    invoke-static {v6, v7, v0, v1}, Landroidx/compose/ui/geometry/Offset;->q(JJ)J

    .line 116
    move-result-wide v6

    .line 117
    .line 118
    if-eqz p5, :cond_4

    .line 119
    .line 120
    .line 121
    invoke-virtual/range {p5 .. p5}, Landroidx/compose/ui/geometry/Offset;->u()J

    .line 122
    move-result-wide v8

    .line 123
    .line 124
    .line 125
    invoke-static {v8, v9, v0, v1}, Landroidx/compose/ui/geometry/Offset;->q(JJ)J

    .line 126
    move-result-wide v0

    .line 127
    .line 128
    .line 129
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->d(J)Landroidx/compose/ui/geometry/Offset;

    .line 130
    move-result-object v0

    .line 131
    goto :goto_1

    .line 132
    :cond_4
    move-object v0, v2

    .line 133
    .line 134
    .line 135
    :goto_1
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;->f()J

    .line 136
    move-result-wide v8

    .line 137
    move-object v2, v3

    .line 138
    move-wide v3, v4

    .line 139
    move-wide v5, v6

    .line 140
    move-object v7, v0

    .line 141
    .line 142
    move-object/from16 v10, p8

    .line 143
    .line 144
    move-object/from16 v11, p9

    .line 145
    .line 146
    move/from16 v12, p6

    .line 147
    .line 148
    .line 149
    invoke-static/range {v2 .. v12}, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegateKt;->d(Landroidx/compose/ui/text/TextLayoutResult;JJLandroidx/compose/ui/geometry/Offset;JLandroidx/compose/foundation/text/selection/SelectionAdjustment;Landroidx/compose/foundation/text/selection/Selection;Z)Lw7/u;

    .line 150
    move-result-object v0

    .line 151
    return-object v0
.end method

.method public e(Landroidx/compose/foundation/text/selection/Selection;Z)J
    .locals 4
    .param p1    # Landroidx/compose/foundation/text/selection/Selection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "selection"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection;->e()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->c()J

    .line 15
    move-result-wide v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;->f()J

    .line 19
    move-result-wide v2

    .line 20
    .line 21
    cmp-long v0, v0, v2

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    :cond_0
    if-nez p2, :cond_2

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection;->c()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->c()J

    .line 33
    move-result-wide v0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;->f()J

    .line 37
    move-result-wide v2

    .line 38
    .line 39
    cmp-long v0, v0, v2

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    :cond_1
    sget-object p1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset$Companion;->c()J

    .line 47
    move-result-wide p1

    .line 48
    return-wide p1

    .line 49
    .line 50
    .line 51
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;->c()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    if-nez v0, :cond_3

    .line 55
    .line 56
    sget-object p1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset$Companion;->c()J

    .line 60
    move-result-wide p1

    .line 61
    return-wide p1

    .line 62
    .line 63
    :cond_3
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;->layoutResultCallback:Le8/a;

    .line 64
    .line 65
    .line 66
    invoke-interface {v0}, Le8/a;->invoke()Ljava/lang/Object;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    check-cast v0, Landroidx/compose/ui/text/TextLayoutResult;

    .line 70
    .line 71
    if-nez v0, :cond_4

    .line 72
    .line 73
    sget-object p1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset$Companion;->c()J

    .line 77
    move-result-wide p1

    .line 78
    return-wide p1

    .line 79
    .line 80
    :cond_4
    if-eqz p2, :cond_5

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection;->e()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 84
    move-result-object v1

    .line 85
    .line 86
    .line 87
    :goto_0
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->b()I

    .line 88
    move-result v1

    .line 89
    goto :goto_1

    .line 90
    .line 91
    .line 92
    :cond_5
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection;->c()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 93
    move-result-object v1

    .line 94
    goto :goto_0

    .line 95
    .line 96
    .line 97
    :goto_1
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection;->d()Z

    .line 98
    move-result p1

    .line 99
    .line 100
    .line 101
    invoke-static {v0, v1, p2, p1}, Landroidx/compose/foundation/text/selection/TextSelectionDelegateKt;->b(Landroidx/compose/ui/text/TextLayoutResult;IZZ)J

    .line 102
    move-result-wide p1

    .line 103
    return-wide p1
.end method

.method public f()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;->selectableId:J

    return-wide v0
.end method

.method public g()Landroidx/compose/foundation/text/selection/Selection;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;->layoutResultCallback:Le8/a;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Le8/a;->invoke()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    move-object v6, v0

    .line 8
    .line 9
    check-cast v6, Landroidx/compose/ui/text/TextLayoutResult;

    .line 10
    .line 11
    if-nez v6, :cond_0

    .line 12
    const/4 v0, 0x0

    .line 13
    return-object v0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {v6}, Landroidx/compose/ui/text/TextLayoutResult;->k()Landroidx/compose/ui/text/TextLayoutInput;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/compose/ui/text/TextLayoutInput;->j()Landroidx/compose/ui/text/AnnotatedString;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/compose/ui/text/AnnotatedString;->length()I

    .line 25
    move-result v0

    .line 26
    const/4 v1, 0x0

    .line 27
    .line 28
    .line 29
    invoke-static {v1, v0}, Landroidx/compose/ui/text/TextRangeKt;->b(II)J

    .line 30
    move-result-wide v1

    .line 31
    const/4 v3, 0x0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;->f()J

    .line 35
    move-result-wide v4

    .line 36
    .line 37
    .line 38
    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegateKt;->a(JZJLandroidx/compose/ui/text/TextLayoutResult;)Landroidx/compose/foundation/text/selection/Selection;

    .line 39
    move-result-object v0

    .line 40
    return-object v0
.end method

.method public h(I)J
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;->layoutResultCallback:Le8/a;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Le8/a;->invoke()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/compose/ui/text/TextLayoutResult;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    sget-object p1, Landroidx/compose/ui/text/TextRange;->Companion:Landroidx/compose/ui/text/TextRange$Companion;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/compose/ui/text/TextRange$Companion;->a()J

    .line 16
    move-result-wide v0

    .line 17
    return-wide v0

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/text/TextLayoutResult;->k()Landroidx/compose/ui/text/TextLayoutInput;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Landroidx/compose/ui/text/TextLayoutInput;->j()Landroidx/compose/ui/text/AnnotatedString;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Landroidx/compose/ui/text/AnnotatedString;->length()I

    .line 29
    move-result v1

    .line 30
    const/4 v2, 0x1

    .line 31
    .line 32
    if-ge v1, v2, :cond_1

    .line 33
    .line 34
    sget-object p1, Landroidx/compose/ui/text/TextRange;->Companion:Landroidx/compose/ui/text/TextRange$Companion;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroidx/compose/ui/text/TextRange$Companion;->a()J

    .line 38
    move-result-wide v0

    .line 39
    return-wide v0

    .line 40
    :cond_1
    const/4 v3, 0x0

    .line 41
    sub-int/2addr v1, v2

    .line 42
    .line 43
    .line 44
    invoke-static {p1, v3, v1}, Lj8/m;->n(III)I

    .line 45
    move-result p1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/TextLayoutResult;->p(I)I

    .line 49
    move-result p1

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/TextLayoutResult;->t(I)I

    .line 53
    move-result v1

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p1, v2}, Landroidx/compose/ui/text/TextLayoutResult;->n(IZ)I

    .line 57
    move-result p1

    .line 58
    .line 59
    .line 60
    invoke-static {v1, p1}, Landroidx/compose/ui/text/TextRangeKt;->b(II)J

    .line 61
    move-result-wide v0

    .line 62
    return-wide v0
.end method
