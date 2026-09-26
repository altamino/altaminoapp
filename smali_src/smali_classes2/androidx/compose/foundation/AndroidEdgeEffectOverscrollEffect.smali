.class public final Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/OverscrollEffect;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidOverscroll.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidOverscroll.kt\nandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 3 InspectableValue.kt\nandroidx/compose/ui/platform/InspectableValueKt\n+ 4 DrawScope.kt\nandroidx/compose/ui/graphics/drawscope/DrawScopeKt\n*L\n1#1,546:1\n32#2,6:547\n79#2,2:554\n32#2,6:556\n81#2:562\n32#2,6:564\n135#3:553\n245#4:563\n*S KotlinDebug\n*F\n+ 1 AndroidOverscroll.kt\nandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect\n*L\n117#1:547,6\n254#1:554,2\n254#1:556,6\n254#1:562\n406#1:564,6\n305#1:553\n312#1:563\n*E\n"
.end annotation


# instance fields
.field private final allEffects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/EdgeEffect;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final bottomEffect:Landroid/widget/EdgeEffect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final bottomEffectNegation:Landroid/widget/EdgeEffect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private containerSize:J

.field private final effectModifier:Landroidx/compose/ui/Modifier;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private invalidationEnabled:Z

.field private isEnabled:Z

.field private final isEnabledState:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final leftEffect:Landroid/widget/EdgeEffect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final leftEffectNegation:Landroid/widget/EdgeEffect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final onNewSize:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Landroidx/compose/ui/unit/IntSize;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final overscrollConfig:Landroidx/compose/foundation/OverscrollConfiguration;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final redrawSignal:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final rightEffect:Landroid/widget/EdgeEffect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final rightEffectNegation:Landroid/widget/EdgeEffect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private scrollCycleInProgress:Z

.field private final topEffect:Landroid/widget/EdgeEffect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final topEffectNegation:Landroid/widget/EdgeEffect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/compose/foundation/OverscrollConfiguration;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/foundation/OverscrollConfiguration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "overscrollConfig"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    iput-object p2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->overscrollConfig:Landroidx/compose/foundation/OverscrollConfiguration;

    .line 16
    .line 17
    sget-object p2, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    .line 18
    const/4 v0, 0x0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, p1, v0}, Landroidx/compose/foundation/EdgeEffectCompat;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/EdgeEffect;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    iput-object v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->topEffect:Landroid/widget/EdgeEffect;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, p1, v0}, Landroidx/compose/foundation/EdgeEffectCompat;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/EdgeEffect;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    iput-object v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->bottomEffect:Landroid/widget/EdgeEffect;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, p1, v0}, Landroidx/compose/foundation/EdgeEffectCompat;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/EdgeEffect;

    .line 34
    move-result-object v3

    .line 35
    .line 36
    iput-object v3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->leftEffect:Landroid/widget/EdgeEffect;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, p1, v0}, Landroidx/compose/foundation/EdgeEffectCompat;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/EdgeEffect;

    .line 40
    move-result-object v4

    .line 41
    .line 42
    iput-object v4, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->rightEffect:Landroid/widget/EdgeEffect;

    .line 43
    const/4 v5, 0x4

    .line 44
    .line 45
    new-array v5, v5, [Landroid/widget/EdgeEffect;

    .line 46
    const/4 v6, 0x0

    .line 47
    .line 48
    aput-object v3, v5, v6

    .line 49
    const/4 v3, 0x1

    .line 50
    .line 51
    aput-object v1, v5, v3

    .line 52
    const/4 v1, 0x2

    .line 53
    .line 54
    aput-object v4, v5, v1

    .line 55
    const/4 v4, 0x3

    .line 56
    .line 57
    aput-object v2, v5, v4

    .line 58
    .line 59
    .line 60
    invoke-static {v5}, Lkotlin/collections/t;->p([Ljava/lang/Object;)Ljava/util/List;

    .line 61
    move-result-object v2

    .line 62
    .line 63
    iput-object v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->allEffects:Ljava/util/List;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, p1, v0}, Landroidx/compose/foundation/EdgeEffectCompat;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/EdgeEffect;

    .line 67
    move-result-object v4

    .line 68
    .line 69
    iput-object v4, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->topEffectNegation:Landroid/widget/EdgeEffect;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2, p1, v0}, Landroidx/compose/foundation/EdgeEffectCompat;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/EdgeEffect;

    .line 73
    move-result-object v4

    .line 74
    .line 75
    iput-object v4, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->bottomEffectNegation:Landroid/widget/EdgeEffect;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2, p1, v0}, Landroidx/compose/foundation/EdgeEffectCompat;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/EdgeEffect;

    .line 79
    move-result-object v4

    .line 80
    .line 81
    iput-object v4, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->leftEffectNegation:Landroid/widget/EdgeEffect;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2, p1, v0}, Landroidx/compose/foundation/EdgeEffectCompat;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/EdgeEffect;

    .line 85
    move-result-object p1

    .line 86
    .line 87
    iput-object p1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->rightEffectNegation:Landroid/widget/EdgeEffect;

    .line 88
    .line 89
    .line 90
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 91
    move-result p1

    .line 92
    .line 93
    :goto_0
    if-ge v6, p1, :cond_0

    .line 94
    .line 95
    .line 96
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 97
    move-result-object p2

    .line 98
    .line 99
    check-cast p2, Landroid/widget/EdgeEffect;

    .line 100
    .line 101
    iget-object v4, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->overscrollConfig:Landroidx/compose/foundation/OverscrollConfiguration;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4}, Landroidx/compose/foundation/OverscrollConfiguration;->b()J

    .line 105
    move-result-wide v4

    .line 106
    .line 107
    .line 108
    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/ColorKt;->l(J)I

    .line 109
    move-result v4

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2, v4}, Landroid/widget/EdgeEffect;->setColor(I)V

    .line 113
    .line 114
    add-int/lit8 v6, v6, 0x1

    .line 115
    goto :goto_0

    .line 116
    .line 117
    :cond_0
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 118
    .line 119
    .line 120
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->i()Landroidx/compose/runtime/SnapshotMutationPolicy;

    .line 121
    move-result-object p2

    .line 122
    .line 123
    .line 124
    invoke-static {p1, p2}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/MutableState;

    .line 125
    move-result-object p1

    .line 126
    .line 127
    iput-object p1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->redrawSignal:Landroidx/compose/runtime/MutableState;

    .line 128
    .line 129
    iput-boolean v3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->invalidationEnabled:Z

    .line 130
    .line 131
    sget-object p1, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Size$Companion;->b()J

    .line 135
    move-result-wide p1

    .line 136
    .line 137
    iput-wide p1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    .line 138
    .line 139
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 140
    .line 141
    .line 142
    invoke-static {p1, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 143
    move-result-object p1

    .line 144
    .line 145
    iput-object p1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->isEnabledState:Landroidx/compose/runtime/MutableState;

    .line 146
    .line 147
    new-instance p1, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$onNewSize$1;

    .line 148
    .line 149
    .line 150
    invoke-direct {p1, p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$onNewSize$1;-><init>(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;)V

    .line 151
    .line 152
    iput-object p1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->onNewSize:Le8/l;

    .line 153
    .line 154
    sget-object p2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 155
    .line 156
    .line 157
    invoke-static {}, Landroidx/compose/foundation/AndroidOverscrollKt;->a()Landroidx/compose/ui/Modifier;

    .line 158
    move-result-object v0

    .line 159
    .line 160
    .line 161
    invoke-virtual {p2, v0}, Landroidx/compose/ui/Modifier$Companion;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 162
    move-result-object p2

    .line 163
    .line 164
    .line 165
    invoke-static {p2, p1}, Landroidx/compose/ui/layout/OnRemeasuredModifierKt;->a(Landroidx/compose/ui/Modifier;Le8/l;)Landroidx/compose/ui/Modifier;

    .line 166
    move-result-object p1

    .line 167
    .line 168
    new-instance p2, Landroidx/compose/foundation/DrawOverscrollModifier;

    .line 169
    .line 170
    .line 171
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->c()Z

    .line 172
    move-result v0

    .line 173
    .line 174
    if-eqz v0, :cond_1

    .line 175
    .line 176
    new-instance v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$special$$inlined$debugInspectorInfo$1;

    .line 177
    .line 178
    .line 179
    invoke-direct {v0, p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$special$$inlined$debugInspectorInfo$1;-><init>(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;)V

    .line 180
    goto :goto_1

    .line 181
    .line 182
    .line 183
    :cond_1
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->a()Le8/l;

    .line 184
    move-result-object v0

    .line 185
    .line 186
    .line 187
    :goto_1
    invoke-direct {p2, p0, v0}, Landroidx/compose/foundation/DrawOverscrollModifier;-><init>(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Le8/l;)V

    .line 188
    .line 189
    .line 190
    invoke-interface {p1, p2}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 191
    move-result-object p1

    .line 192
    .line 193
    iput-object p1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->effectModifier:Landroidx/compose/ui/Modifier;

    .line 194
    return-void
.end method

.method private final A(JJ)F
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 4
    move-result p3

    .line 5
    .line 6
    iget-wide v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->g(J)F

    .line 10
    move-result p4

    .line 11
    div-float/2addr p3, p4

    .line 12
    .line 13
    .line 14
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 15
    move-result p1

    .line 16
    .line 17
    iget-wide v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 21
    move-result p2

    .line 22
    div-float/2addr p1, p2

    .line 23
    .line 24
    sget-object p2, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    .line 25
    .line 26
    iget-object p4, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->leftEffect:Landroid/widget/EdgeEffect;

    .line 27
    const/4 v0, 0x1

    .line 28
    int-to-float v0, v0

    .line 29
    sub-float/2addr v0, p3

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p4, p1, v0}, Landroidx/compose/foundation/EdgeEffectCompat;->d(Landroid/widget/EdgeEffect;FF)F

    .line 33
    move-result p1

    .line 34
    .line 35
    iget-wide p2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    .line 36
    .line 37
    .line 38
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 39
    move-result p2

    .line 40
    mul-float/2addr p1, p2

    .line 41
    return p1
.end method

.method private final B(JJ)F
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 4
    move-result p3

    .line 5
    .line 6
    iget-wide v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->g(J)F

    .line 10
    move-result p4

    .line 11
    div-float/2addr p3, p4

    .line 12
    .line 13
    .line 14
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 15
    move-result p1

    .line 16
    .line 17
    iget-wide v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 21
    move-result p2

    .line 22
    div-float/2addr p1, p2

    .line 23
    .line 24
    sget-object p2, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    .line 25
    .line 26
    iget-object p4, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->rightEffect:Landroid/widget/EdgeEffect;

    .line 27
    neg-float p1, p1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, p4, p1, p3}, Landroidx/compose/foundation/EdgeEffectCompat;->d(Landroid/widget/EdgeEffect;FF)F

    .line 31
    move-result p1

    .line 32
    neg-float p1, p1

    .line 33
    .line 34
    iget-wide p2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    .line 35
    .line 36
    .line 37
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 38
    move-result p2

    .line 39
    mul-float/2addr p1, p2

    .line 40
    return p1
.end method

.method private final C(JJ)F
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 4
    move-result p3

    .line 5
    .line 6
    iget-wide v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 10
    move-result p4

    .line 11
    div-float/2addr p3, p4

    .line 12
    .line 13
    .line 14
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 15
    move-result p1

    .line 16
    .line 17
    iget-wide v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->g(J)F

    .line 21
    move-result p2

    .line 22
    div-float/2addr p1, p2

    .line 23
    .line 24
    sget-object p2, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    .line 25
    .line 26
    iget-object p4, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->topEffect:Landroid/widget/EdgeEffect;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, p4, p1, p3}, Landroidx/compose/foundation/EdgeEffectCompat;->d(Landroid/widget/EdgeEffect;FF)F

    .line 30
    move-result p1

    .line 31
    .line 32
    iget-wide p2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    .line 33
    .line 34
    .line 35
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Size;->g(J)F

    .line 36
    move-result p2

    .line 37
    mul-float/2addr p1, p2

    .line 38
    return p1
.end method

.method private final D(J)Z
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->leftEffect:Landroid/widget/EdgeEffect;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 14
    move-result v0

    .line 15
    .line 16
    cmpg-float v0, v0, v1

    .line 17
    .line 18
    if-gez v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->leftEffect:Landroid/widget/EdgeEffect;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 24
    .line 25
    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->leftEffect:Landroid/widget/EdgeEffect;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 29
    move-result v0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v0, v2

    .line 32
    .line 33
    :goto_0
    iget-object v3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->rightEffect:Landroid/widget/EdgeEffect;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 37
    move-result v3

    .line 38
    const/4 v4, 0x1

    .line 39
    .line 40
    if-nez v3, :cond_3

    .line 41
    .line 42
    .line 43
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 44
    move-result v3

    .line 45
    .line 46
    cmpl-float v3, v3, v1

    .line 47
    .line 48
    if-lez v3, :cond_3

    .line 49
    .line 50
    iget-object v3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->rightEffect:Landroid/widget/EdgeEffect;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 54
    .line 55
    if-nez v0, :cond_2

    .line 56
    .line 57
    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->rightEffect:Landroid/widget/EdgeEffect;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 61
    move-result v0

    .line 62
    .line 63
    if-eqz v0, :cond_1

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    move v0, v2

    .line 66
    goto :goto_2

    .line 67
    :cond_2
    :goto_1
    move v0, v4

    .line 68
    .line 69
    :cond_3
    :goto_2
    iget-object v3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->topEffect:Landroid/widget/EdgeEffect;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 73
    move-result v3

    .line 74
    .line 75
    if-nez v3, :cond_6

    .line 76
    .line 77
    .line 78
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 79
    move-result v3

    .line 80
    .line 81
    cmpg-float v3, v3, v1

    .line 82
    .line 83
    if-gez v3, :cond_6

    .line 84
    .line 85
    iget-object v3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->topEffect:Landroid/widget/EdgeEffect;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 89
    .line 90
    if-nez v0, :cond_5

    .line 91
    .line 92
    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->topEffect:Landroid/widget/EdgeEffect;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 96
    move-result v0

    .line 97
    .line 98
    if-eqz v0, :cond_4

    .line 99
    goto :goto_3

    .line 100
    :cond_4
    move v0, v2

    .line 101
    goto :goto_4

    .line 102
    :cond_5
    :goto_3
    move v0, v4

    .line 103
    .line 104
    :cond_6
    :goto_4
    iget-object v3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->bottomEffect:Landroid/widget/EdgeEffect;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 108
    move-result v3

    .line 109
    .line 110
    if-nez v3, :cond_9

    .line 111
    .line 112
    .line 113
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 114
    move-result p1

    .line 115
    .line 116
    cmpl-float p1, p1, v1

    .line 117
    .line 118
    if-lez p1, :cond_9

    .line 119
    .line 120
    iget-object p1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->bottomEffect:Landroid/widget/EdgeEffect;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 124
    .line 125
    if-nez v0, :cond_7

    .line 126
    .line 127
    iget-object p1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->bottomEffect:Landroid/widget/EdgeEffect;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 131
    move-result p1

    .line 132
    .line 133
    if-eqz p1, :cond_8

    .line 134
    :cond_7
    move v2, v4

    .line 135
    :cond_8
    move v0, v2

    .line 136
    :cond_9
    return v0
.end method

.method private final E()Z
    .locals 8

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    .line 3
    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/SizeKt;->b(J)J

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    sget-object v2, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    .line 9
    .line 10
    iget-object v3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->leftEffect:Landroid/widget/EdgeEffect;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2, v3}, Landroidx/compose/foundation/EdgeEffectCompat;->b(Landroid/widget/EdgeEffect;)F

    .line 14
    move-result v3

    .line 15
    const/4 v4, 0x0

    .line 16
    .line 17
    cmpg-float v3, v3, v4

    .line 18
    const/4 v5, 0x1

    .line 19
    .line 20
    if-nez v3, :cond_0

    .line 21
    const/4 v3, 0x0

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    sget-object v3, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Landroidx/compose/ui/geometry/Offset$Companion;->c()J

    .line 28
    move-result-wide v6

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, v6, v7, v0, v1}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->A(JJ)F

    .line 32
    move v3, v5

    .line 33
    .line 34
    :goto_0
    iget-object v6, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->rightEffect:Landroid/widget/EdgeEffect;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v6}, Landroidx/compose/foundation/EdgeEffectCompat;->b(Landroid/widget/EdgeEffect;)F

    .line 38
    move-result v6

    .line 39
    .line 40
    cmpg-float v6, v6, v4

    .line 41
    .line 42
    if-nez v6, :cond_1

    .line 43
    goto :goto_1

    .line 44
    .line 45
    :cond_1
    sget-object v3, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Landroidx/compose/ui/geometry/Offset$Companion;->c()J

    .line 49
    move-result-wide v6

    .line 50
    .line 51
    .line 52
    invoke-direct {p0, v6, v7, v0, v1}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->B(JJ)F

    .line 53
    move v3, v5

    .line 54
    .line 55
    :goto_1
    iget-object v6, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->topEffect:Landroid/widget/EdgeEffect;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v6}, Landroidx/compose/foundation/EdgeEffectCompat;->b(Landroid/widget/EdgeEffect;)F

    .line 59
    move-result v6

    .line 60
    .line 61
    cmpg-float v6, v6, v4

    .line 62
    .line 63
    if-nez v6, :cond_2

    .line 64
    goto :goto_2

    .line 65
    .line 66
    :cond_2
    sget-object v3, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Landroidx/compose/ui/geometry/Offset$Companion;->c()J

    .line 70
    move-result-wide v6

    .line 71
    .line 72
    .line 73
    invoke-direct {p0, v6, v7, v0, v1}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->C(JJ)F

    .line 74
    move v3, v5

    .line 75
    .line 76
    :goto_2
    iget-object v6, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->bottomEffect:Landroid/widget/EdgeEffect;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v6}, Landroidx/compose/foundation/EdgeEffectCompat;->b(Landroid/widget/EdgeEffect;)F

    .line 80
    move-result v2

    .line 81
    .line 82
    cmpg-float v2, v2, v4

    .line 83
    .line 84
    if-nez v2, :cond_3

    .line 85
    move v5, v3

    .line 86
    goto :goto_3

    .line 87
    .line 88
    :cond_3
    sget-object v2, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Offset$Companion;->c()J

    .line 92
    move-result-wide v2

    .line 93
    .line 94
    .line 95
    invoke-direct {p0, v2, v3, v0, v1}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->z(JJ)F

    .line 96
    :goto_3
    return v5
.end method

.method public static final synthetic g(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->s()V

    .line 4
    return-void
.end method

.method public static final synthetic h(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;)Landroid/widget/EdgeEffect;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->bottomEffect:Landroid/widget/EdgeEffect;

    .line 3
    return-object p0
.end method

.method public static final synthetic i(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;)Landroid/widget/EdgeEffect;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->bottomEffectNegation:Landroid/widget/EdgeEffect;

    .line 3
    return-object p0
.end method

.method public static final synthetic j(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;)J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    .line 3
    return-wide v0
.end method

.method public static final synthetic k(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;)Landroid/widget/EdgeEffect;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->leftEffect:Landroid/widget/EdgeEffect;

    .line 3
    return-object p0
.end method

.method public static final synthetic l(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;)Landroid/widget/EdgeEffect;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->leftEffectNegation:Landroid/widget/EdgeEffect;

    .line 3
    return-object p0
.end method

.method public static final synthetic m(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;)Landroid/widget/EdgeEffect;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->rightEffect:Landroid/widget/EdgeEffect;

    .line 3
    return-object p0
.end method

.method public static final synthetic n(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;)Landroid/widget/EdgeEffect;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->rightEffectNegation:Landroid/widget/EdgeEffect;

    .line 3
    return-object p0
.end method

.method public static final synthetic o(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;)Landroid/widget/EdgeEffect;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->topEffect:Landroid/widget/EdgeEffect;

    .line 3
    return-object p0
.end method

.method public static final synthetic p(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;)Landroid/widget/EdgeEffect;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->topEffectNegation:Landroid/widget/EdgeEffect;

    .line 3
    return-object p0
.end method

.method public static final synthetic q(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->y()V

    .line 4
    return-void
.end method

.method public static final synthetic r(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;J)V
    .locals 0

    .line 1
    .line 2
    iput-wide p1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    .line 3
    return-void
.end method

.method private final s()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->allEffects:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    move v4, v3

    .line 10
    .line 11
    :goto_0
    if-ge v3, v1, :cond_2

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v5

    .line 16
    .line 17
    check-cast v5, Landroid/widget/EdgeEffect;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 24
    move-result v5

    .line 25
    .line 26
    if-nez v5, :cond_1

    .line 27
    .line 28
    if-eqz v4, :cond_0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    move v4, v2

    .line 31
    goto :goto_2

    .line 32
    :cond_1
    :goto_1
    const/4 v4, 0x1

    .line 33
    .line 34
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_2
    if-eqz v4, :cond_3

    .line 38
    .line 39
    .line 40
    invoke-direct {p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->y()V

    .line 41
    :cond_3
    return-void
.end method

.method private final t(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    .line 4
    move-result v0

    .line 5
    .line 6
    const/high16 v1, 0x43340000    # 180.0f

    .line 7
    .line 8
    .line 9
    invoke-virtual {p3, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->overscrollConfig:Landroidx/compose/foundation/OverscrollConfiguration;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Landroidx/compose/foundation/OverscrollConfiguration;->a()Landroidx/compose/foundation/layout/PaddingValues;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-interface {v1}, Landroidx/compose/foundation/layout/PaddingValues;->a()F

    .line 19
    move-result v1

    .line 20
    .line 21
    .line 22
    invoke-interface {p1, v1}, Landroidx/compose/ui/unit/Density;->H0(F)F

    .line 23
    move-result p1

    .line 24
    .line 25
    iget-wide v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 29
    move-result v1

    .line 30
    neg-float v1, v1

    .line 31
    .line 32
    iget-wide v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    .line 33
    .line 34
    .line 35
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->g(J)F

    .line 36
    move-result v2

    .line 37
    neg-float v2, v2

    .line 38
    add-float/2addr v2, p1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p3, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, p3}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 45
    move-result p1

    .line 46
    .line 47
    .line 48
    invoke-virtual {p3, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 49
    return p1
.end method

.method private final u(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    .line 4
    move-result v0

    .line 5
    .line 6
    const/high16 v1, 0x43870000    # 270.0f

    .line 7
    .line 8
    .line 9
    invoke-virtual {p3, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 10
    .line 11
    iget-wide v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Size;->g(J)F

    .line 15
    move-result v1

    .line 16
    neg-float v1, v1

    .line 17
    .line 18
    iget-object v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->overscrollConfig:Landroidx/compose/foundation/OverscrollConfiguration;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Landroidx/compose/foundation/OverscrollConfiguration;->a()Landroidx/compose/foundation/layout/PaddingValues;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    .line 25
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 26
    move-result-object v3

    .line 27
    .line 28
    .line 29
    invoke-interface {v2, v3}, Landroidx/compose/foundation/layout/PaddingValues;->b(Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 30
    move-result v2

    .line 31
    .line 32
    .line 33
    invoke-interface {p1, v2}, Landroidx/compose/ui/unit/Density;->H0(F)F

    .line 34
    move-result p1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3, v1, p1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, p3}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 41
    move-result p1

    .line 42
    .line 43
    .line 44
    invoke-virtual {p3, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 45
    return p1
.end method

.method private final w(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget-wide v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    .line 7
    .line 8
    .line 9
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 10
    move-result v1

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Lg8/a;->c(F)I

    .line 14
    move-result v1

    .line 15
    .line 16
    iget-object v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->overscrollConfig:Landroidx/compose/foundation/OverscrollConfiguration;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Landroidx/compose/foundation/OverscrollConfiguration;->a()Landroidx/compose/foundation/layout/PaddingValues;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 24
    move-result-object v3

    .line 25
    .line 26
    .line 27
    invoke-interface {v2, v3}, Landroidx/compose/foundation/layout/PaddingValues;->c(Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 28
    move-result v2

    .line 29
    .line 30
    const/high16 v3, 0x42b40000    # 90.0f

    .line 31
    .line 32
    .line 33
    invoke-virtual {p3, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 34
    int-to-float v1, v1

    .line 35
    neg-float v1, v1

    .line 36
    .line 37
    .line 38
    invoke-interface {p1, v2}, Landroidx/compose/ui/unit/Density;->H0(F)F

    .line 39
    move-result p1

    .line 40
    add-float/2addr v1, p1

    .line 41
    const/4 p1, 0x0

    .line 42
    .line 43
    .line 44
    invoke-virtual {p3, p1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, p3}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 48
    move-result p1

    .line 49
    .line 50
    .line 51
    invoke-virtual {p3, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 52
    return p1
.end method

.method private final x(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->overscrollConfig:Landroidx/compose/foundation/OverscrollConfiguration;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/compose/foundation/OverscrollConfiguration;->a()Landroidx/compose/foundation/layout/PaddingValues;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-interface {v1}, Landroidx/compose/foundation/layout/PaddingValues;->d()F

    .line 14
    move-result v1

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, v1}, Landroidx/compose/ui/unit/Density;->H0(F)F

    .line 18
    move-result p1

    .line 19
    const/4 v1, 0x0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p3, v1, p1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, p3}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 26
    move-result p1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p3, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 30
    return p1
.end method

.method private final y()V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->invalidationEnabled:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->redrawSignal:Landroidx/compose/runtime/MutableState;

    .line 7
    .line 8
    sget-object v1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 12
    :cond_0
    return-void
.end method

.method private final z(JJ)F
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 4
    move-result p3

    .line 5
    .line 6
    iget-wide v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 10
    move-result p4

    .line 11
    div-float/2addr p3, p4

    .line 12
    .line 13
    .line 14
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 15
    move-result p1

    .line 16
    .line 17
    iget-wide v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->g(J)F

    .line 21
    move-result p2

    .line 22
    div-float/2addr p1, p2

    .line 23
    .line 24
    sget-object p2, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    .line 25
    .line 26
    iget-object p4, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->bottomEffect:Landroid/widget/EdgeEffect;

    .line 27
    neg-float p1, p1

    .line 28
    const/4 v0, 0x1

    .line 29
    int-to-float v0, v0

    .line 30
    sub-float/2addr v0, p3

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, p4, p1, v0}, Landroidx/compose/foundation/EdgeEffectCompat;->d(Landroid/widget/EdgeEffect;FF)F

    .line 34
    move-result p1

    .line 35
    neg-float p1, p1

    .line 36
    .line 37
    iget-wide p2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    .line 38
    .line 39
    .line 40
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Size;->g(J)F

    .line 41
    move-result p2

    .line 42
    mul-float/2addr p1, p2

    .line 43
    return p1
.end method


# virtual methods
.method public a(JLkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 3
    .param p3    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
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
    const/4 p3, 0x0

    .line 2
    .line 3
    iput-boolean p3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->scrollCycleInProgress:Z

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->h(J)F

    .line 7
    move-result p3

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    cmpl-float p3, p3, v0

    .line 11
    .line 12
    if-lez p3, :cond_0

    .line 13
    .line 14
    sget-object p3, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    .line 15
    .line 16
    iget-object v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->leftEffect:Landroid/widget/EdgeEffect;

    .line 17
    .line 18
    .line 19
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->h(J)F

    .line 20
    move-result v2

    .line 21
    .line 22
    .line 23
    invoke-static {v2}, Lg8/a;->c(F)I

    .line 24
    move-result v2

    .line 25
    .line 26
    .line 27
    invoke-virtual {p3, v1, v2}, Landroidx/compose/foundation/EdgeEffectCompat;->c(Landroid/widget/EdgeEffect;I)V

    .line 28
    goto :goto_0

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->h(J)F

    .line 32
    move-result p3

    .line 33
    .line 34
    cmpg-float p3, p3, v0

    .line 35
    .line 36
    if-gez p3, :cond_1

    .line 37
    .line 38
    sget-object p3, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    .line 39
    .line 40
    iget-object v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->rightEffect:Landroid/widget/EdgeEffect;

    .line 41
    .line 42
    .line 43
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->h(J)F

    .line 44
    move-result v2

    .line 45
    .line 46
    .line 47
    invoke-static {v2}, Lg8/a;->c(F)I

    .line 48
    move-result v2

    .line 49
    neg-int v2, v2

    .line 50
    .line 51
    .line 52
    invoke-virtual {p3, v1, v2}, Landroidx/compose/foundation/EdgeEffectCompat;->c(Landroid/widget/EdgeEffect;I)V

    .line 53
    .line 54
    .line 55
    :cond_1
    :goto_0
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->i(J)F

    .line 56
    move-result p3

    .line 57
    .line 58
    cmpl-float p3, p3, v0

    .line 59
    .line 60
    if-lez p3, :cond_2

    .line 61
    .line 62
    sget-object p3, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    .line 63
    .line 64
    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->topEffect:Landroid/widget/EdgeEffect;

    .line 65
    .line 66
    .line 67
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->i(J)F

    .line 68
    move-result v1

    .line 69
    .line 70
    .line 71
    invoke-static {v1}, Lg8/a;->c(F)I

    .line 72
    move-result v1

    .line 73
    .line 74
    .line 75
    invoke-virtual {p3, v0, v1}, Landroidx/compose/foundation/EdgeEffectCompat;->c(Landroid/widget/EdgeEffect;I)V

    .line 76
    goto :goto_1

    .line 77
    .line 78
    .line 79
    :cond_2
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->i(J)F

    .line 80
    move-result p3

    .line 81
    .line 82
    cmpg-float p3, p3, v0

    .line 83
    .line 84
    if-gez p3, :cond_3

    .line 85
    .line 86
    sget-object p3, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    .line 87
    .line 88
    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->bottomEffect:Landroid/widget/EdgeEffect;

    .line 89
    .line 90
    .line 91
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->i(J)F

    .line 92
    move-result v1

    .line 93
    .line 94
    .line 95
    invoke-static {v1}, Lg8/a;->c(F)I

    .line 96
    move-result v1

    .line 97
    neg-int v1, v1

    .line 98
    .line 99
    .line 100
    invoke-virtual {p3, v0, v1}, Landroidx/compose/foundation/EdgeEffectCompat;->c(Landroid/widget/EdgeEffect;I)V

    .line 101
    .line 102
    :cond_3
    :goto_1
    sget-object p3, Landroidx/compose/ui/unit/Velocity;->Companion:Landroidx/compose/ui/unit/Velocity$Companion;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p3}, Landroidx/compose/ui/unit/Velocity$Companion;->a()J

    .line 106
    move-result-wide v0

    .line 107
    .line 108
    .line 109
    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/unit/Velocity;->g(JJ)Z

    .line 110
    move-result p1

    .line 111
    .line 112
    if-nez p1, :cond_4

    .line 113
    .line 114
    .line 115
    invoke-direct {p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->y()V

    .line 116
    .line 117
    .line 118
    :cond_4
    invoke-direct {p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->s()V

    .line 119
    .line 120
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 121
    return-object p1
.end method

.method public b()Z
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->allEffects:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    .line 10
    :goto_0
    if-ge v3, v1, :cond_2

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v4

    .line 15
    .line 16
    check-cast v4, Landroid/widget/EdgeEffect;

    .line 17
    .line 18
    sget-object v5, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v5, v4}, Landroidx/compose/foundation/EdgeEffectCompat;->b(Landroid/widget/EdgeEffect;)F

    .line 22
    move-result v4

    .line 23
    const/4 v5, 0x0

    .line 24
    .line 25
    cmpg-float v4, v4, v5

    .line 26
    const/4 v5, 0x1

    .line 27
    .line 28
    if-nez v4, :cond_0

    .line 29
    move v4, v5

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    move v4, v2

    .line 32
    :goto_1
    xor-int/2addr v4, v5

    .line 33
    .line 34
    if-eqz v4, :cond_1

    .line 35
    move v2, v5

    .line 36
    goto :goto_2

    .line 37
    .line 38
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    :goto_2
    return v2
.end method

.method public c()Landroidx/compose/ui/Modifier;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->effectModifier:Landroidx/compose/ui/Modifier;

    return-object v0
.end method

.method public d(JLandroidx/compose/ui/geometry/Offset;I)J
    .locals 4
    .param p3    # Landroidx/compose/ui/geometry/Offset;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-boolean p4, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->scrollCycleInProgress:Z

    .line 3
    .line 4
    if-nez p4, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->E()Z

    .line 8
    const/4 p4, 0x1

    .line 9
    .line 10
    iput-boolean p4, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->scrollCycleInProgress:Z

    .line 11
    .line 12
    :cond_0
    if-eqz p3, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p3}, Landroidx/compose/ui/geometry/Offset;->u()J

    .line 16
    move-result-wide p3

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_1
    iget-wide p3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    .line 20
    .line 21
    .line 22
    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/SizeKt;->b(J)J

    .line 23
    move-result-wide p3

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 27
    move-result v0

    .line 28
    const/4 v1, 0x0

    .line 29
    .line 30
    cmpg-float v0, v0, v1

    .line 31
    .line 32
    if-nez v0, :cond_2

    .line 33
    :goto_1
    move v2, v1

    .line 34
    goto :goto_2

    .line 35
    .line 36
    :cond_2
    sget-object v0, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    .line 37
    .line 38
    iget-object v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->topEffect:Landroid/widget/EdgeEffect;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2}, Landroidx/compose/foundation/EdgeEffectCompat;->b(Landroid/widget/EdgeEffect;)F

    .line 42
    move-result v2

    .line 43
    .line 44
    cmpg-float v2, v2, v1

    .line 45
    .line 46
    if-nez v2, :cond_4

    .line 47
    .line 48
    iget-object v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->bottomEffect:Landroid/widget/EdgeEffect;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v2}, Landroidx/compose/foundation/EdgeEffectCompat;->b(Landroid/widget/EdgeEffect;)F

    .line 52
    move-result v2

    .line 53
    .line 54
    cmpg-float v2, v2, v1

    .line 55
    .line 56
    if-nez v2, :cond_3

    .line 57
    goto :goto_1

    .line 58
    .line 59
    .line 60
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->z(JJ)F

    .line 61
    move-result v2

    .line 62
    .line 63
    iget-object v3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->bottomEffect:Landroid/widget/EdgeEffect;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v3}, Landroidx/compose/foundation/EdgeEffectCompat;->b(Landroid/widget/EdgeEffect;)F

    .line 67
    move-result v0

    .line 68
    .line 69
    cmpg-float v0, v0, v1

    .line 70
    .line 71
    if-nez v0, :cond_5

    .line 72
    .line 73
    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->bottomEffect:Landroid/widget/EdgeEffect;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 77
    goto :goto_2

    .line 78
    .line 79
    .line 80
    :cond_4
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->C(JJ)F

    .line 81
    move-result v2

    .line 82
    .line 83
    iget-object v3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->topEffect:Landroid/widget/EdgeEffect;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v3}, Landroidx/compose/foundation/EdgeEffectCompat;->b(Landroid/widget/EdgeEffect;)F

    .line 87
    move-result v0

    .line 88
    .line 89
    cmpg-float v0, v0, v1

    .line 90
    .line 91
    if-nez v0, :cond_5

    .line 92
    .line 93
    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->topEffect:Landroid/widget/EdgeEffect;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 97
    .line 98
    .line 99
    :cond_5
    :goto_2
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 100
    move-result v0

    .line 101
    .line 102
    cmpg-float v0, v0, v1

    .line 103
    .line 104
    if-nez v0, :cond_6

    .line 105
    goto :goto_4

    .line 106
    .line 107
    :cond_6
    sget-object v0, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    .line 108
    .line 109
    iget-object v3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->leftEffect:Landroid/widget/EdgeEffect;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v3}, Landroidx/compose/foundation/EdgeEffectCompat;->b(Landroid/widget/EdgeEffect;)F

    .line 113
    move-result v3

    .line 114
    .line 115
    cmpg-float v3, v3, v1

    .line 116
    .line 117
    if-nez v3, :cond_9

    .line 118
    .line 119
    iget-object v3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->rightEffect:Landroid/widget/EdgeEffect;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v3}, Landroidx/compose/foundation/EdgeEffectCompat;->b(Landroid/widget/EdgeEffect;)F

    .line 123
    move-result v3

    .line 124
    .line 125
    cmpg-float v3, v3, v1

    .line 126
    .line 127
    if-nez v3, :cond_7

    .line 128
    goto :goto_4

    .line 129
    .line 130
    .line 131
    :cond_7
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->B(JJ)F

    .line 132
    move-result p1

    .line 133
    .line 134
    iget-object p2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->rightEffect:Landroid/widget/EdgeEffect;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, p2}, Landroidx/compose/foundation/EdgeEffectCompat;->b(Landroid/widget/EdgeEffect;)F

    .line 138
    move-result p2

    .line 139
    .line 140
    cmpg-float p2, p2, v1

    .line 141
    .line 142
    if-nez p2, :cond_8

    .line 143
    .line 144
    iget-object p2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->rightEffect:Landroid/widget/EdgeEffect;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 148
    :cond_8
    :goto_3
    move v1, p1

    .line 149
    goto :goto_4

    .line 150
    .line 151
    .line 152
    :cond_9
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->A(JJ)F

    .line 153
    move-result p1

    .line 154
    .line 155
    iget-object p2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->leftEffect:Landroid/widget/EdgeEffect;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, p2}, Landroidx/compose/foundation/EdgeEffectCompat;->b(Landroid/widget/EdgeEffect;)F

    .line 159
    move-result p2

    .line 160
    .line 161
    cmpg-float p2, p2, v1

    .line 162
    .line 163
    if-nez p2, :cond_8

    .line 164
    .line 165
    iget-object p2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->leftEffect:Landroid/widget/EdgeEffect;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 169
    goto :goto_3

    .line 170
    .line 171
    .line 172
    :goto_4
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 173
    move-result-wide p1

    .line 174
    .line 175
    sget-object p3, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 176
    .line 177
    .line 178
    invoke-virtual {p3}, Landroidx/compose/ui/geometry/Offset$Companion;->c()J

    .line 179
    move-result-wide p3

    .line 180
    .line 181
    .line 182
    invoke-static {p1, p2, p3, p4}, Landroidx/compose/ui/geometry/Offset;->j(JJ)Z

    .line 183
    move-result p3

    .line 184
    .line 185
    if-nez p3, :cond_a

    .line 186
    .line 187
    .line 188
    invoke-direct {p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->y()V

    .line 189
    :cond_a
    return-wide p1
.end method

.method public e(JJLandroidx/compose/ui/geometry/Offset;I)V
    .locals 2
    .param p5    # Landroidx/compose/ui/geometry/Offset;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->Companion:Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;->a()I

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    invoke-static {p6, v0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->e(II)Z

    .line 10
    move-result p6

    .line 11
    .line 12
    if-eqz p6, :cond_5

    .line 13
    .line 14
    if-eqz p5, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p5}, Landroidx/compose/ui/geometry/Offset;->u()J

    .line 18
    move-result-wide p5

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    iget-wide p5, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    .line 22
    .line 23
    .line 24
    invoke-static {p5, p6}, Landroidx/compose/ui/geometry/SizeKt;->b(J)J

    .line 25
    move-result-wide p5

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 29
    move-result v0

    .line 30
    const/4 v1, 0x0

    .line 31
    .line 32
    cmpl-float v0, v0, v1

    .line 33
    .line 34
    if-lez v0, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, p3, p4, p5, p6}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->A(JJ)F

    .line 38
    goto :goto_1

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 42
    move-result v0

    .line 43
    .line 44
    cmpg-float v0, v0, v1

    .line 45
    .line 46
    if-gez v0, :cond_2

    .line 47
    .line 48
    .line 49
    invoke-direct {p0, p3, p4, p5, p6}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->B(JJ)F

    .line 50
    .line 51
    .line 52
    :cond_2
    :goto_1
    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 53
    move-result v0

    .line 54
    .line 55
    cmpl-float v0, v0, v1

    .line 56
    .line 57
    if-lez v0, :cond_3

    .line 58
    .line 59
    .line 60
    invoke-direct {p0, p3, p4, p5, p6}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->C(JJ)F

    .line 61
    goto :goto_2

    .line 62
    .line 63
    .line 64
    :cond_3
    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 65
    move-result v0

    .line 66
    .line 67
    cmpg-float v0, v0, v1

    .line 68
    .line 69
    if-gez v0, :cond_4

    .line 70
    .line 71
    .line 72
    invoke-direct {p0, p3, p4, p5, p6}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->z(JJ)F

    .line 73
    .line 74
    :cond_4
    :goto_2
    sget-object p5, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p5}, Landroidx/compose/ui/geometry/Offset$Companion;->c()J

    .line 78
    move-result-wide p5

    .line 79
    .line 80
    .line 81
    invoke-static {p3, p4, p5, p6}, Landroidx/compose/ui/geometry/Offset;->j(JJ)Z

    .line 82
    move-result p3

    .line 83
    .line 84
    xor-int/lit8 p3, p3, 0x1

    .line 85
    goto :goto_3

    .line 86
    :cond_5
    const/4 p3, 0x0

    .line 87
    .line 88
    .line 89
    :goto_3
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->D(J)Z

    .line 90
    move-result p1

    .line 91
    .line 92
    if-nez p1, :cond_6

    .line 93
    .line 94
    if-eqz p3, :cond_7

    .line 95
    .line 96
    .line 97
    :cond_6
    invoke-direct {p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->y()V

    .line 98
    :cond_7
    return-void
.end method

.method public f(JLkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 3
    .param p3    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/d<",
            "-",
            "Landroidx/compose/ui/unit/Velocity;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->h(J)F

    .line 4
    move-result p3

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    cmpl-float p3, p3, v0

    .line 8
    .line 9
    if-lez p3, :cond_1

    .line 10
    .line 11
    sget-object p3, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->leftEffect:Landroid/widget/EdgeEffect;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p3, v1}, Landroidx/compose/foundation/EdgeEffectCompat;->b(Landroid/widget/EdgeEffect;)F

    .line 17
    move-result v1

    .line 18
    .line 19
    cmpg-float v1, v1, v0

    .line 20
    .line 21
    if-nez v1, :cond_0

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    iget-object v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->leftEffect:Landroid/widget/EdgeEffect;

    .line 25
    .line 26
    .line 27
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->h(J)F

    .line 28
    move-result v2

    .line 29
    .line 30
    .line 31
    invoke-static {v2}, Lg8/a;->c(F)I

    .line 32
    move-result v2

    .line 33
    .line 34
    .line 35
    invoke-virtual {p3, v1, v2}, Landroidx/compose/foundation/EdgeEffectCompat;->c(Landroid/widget/EdgeEffect;I)V

    .line 36
    .line 37
    .line 38
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->h(J)F

    .line 39
    move-result p3

    .line 40
    goto :goto_2

    .line 41
    .line 42
    .line 43
    :cond_1
    :goto_0
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->h(J)F

    .line 44
    move-result p3

    .line 45
    .line 46
    cmpg-float p3, p3, v0

    .line 47
    .line 48
    if-gez p3, :cond_3

    .line 49
    .line 50
    sget-object p3, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    .line 51
    .line 52
    iget-object v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->rightEffect:Landroid/widget/EdgeEffect;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p3, v1}, Landroidx/compose/foundation/EdgeEffectCompat;->b(Landroid/widget/EdgeEffect;)F

    .line 56
    move-result v1

    .line 57
    .line 58
    cmpg-float v1, v1, v0

    .line 59
    .line 60
    if-nez v1, :cond_2

    .line 61
    goto :goto_1

    .line 62
    .line 63
    :cond_2
    iget-object v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->rightEffect:Landroid/widget/EdgeEffect;

    .line 64
    .line 65
    .line 66
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->h(J)F

    .line 67
    move-result v2

    .line 68
    .line 69
    .line 70
    invoke-static {v2}, Lg8/a;->c(F)I

    .line 71
    move-result v2

    .line 72
    neg-int v2, v2

    .line 73
    .line 74
    .line 75
    invoke-virtual {p3, v1, v2}, Landroidx/compose/foundation/EdgeEffectCompat;->c(Landroid/widget/EdgeEffect;I)V

    .line 76
    .line 77
    .line 78
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->h(J)F

    .line 79
    move-result p3

    .line 80
    goto :goto_2

    .line 81
    :cond_3
    :goto_1
    move p3, v0

    .line 82
    .line 83
    .line 84
    :goto_2
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->i(J)F

    .line 85
    move-result v1

    .line 86
    .line 87
    cmpl-float v1, v1, v0

    .line 88
    .line 89
    if-lez v1, :cond_5

    .line 90
    .line 91
    sget-object v1, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    .line 92
    .line 93
    iget-object v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->topEffect:Landroid/widget/EdgeEffect;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v2}, Landroidx/compose/foundation/EdgeEffectCompat;->b(Landroid/widget/EdgeEffect;)F

    .line 97
    move-result v2

    .line 98
    .line 99
    cmpg-float v2, v2, v0

    .line 100
    .line 101
    if-nez v2, :cond_4

    .line 102
    goto :goto_3

    .line 103
    .line 104
    :cond_4
    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->topEffect:Landroid/widget/EdgeEffect;

    .line 105
    .line 106
    .line 107
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->i(J)F

    .line 108
    move-result v2

    .line 109
    .line 110
    .line 111
    invoke-static {v2}, Lg8/a;->c(F)I

    .line 112
    move-result v2

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v0, v2}, Landroidx/compose/foundation/EdgeEffectCompat;->c(Landroid/widget/EdgeEffect;I)V

    .line 116
    .line 117
    .line 118
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->i(J)F

    .line 119
    move-result v0

    .line 120
    goto :goto_4

    .line 121
    .line 122
    .line 123
    :cond_5
    :goto_3
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->i(J)F

    .line 124
    move-result v1

    .line 125
    .line 126
    cmpg-float v1, v1, v0

    .line 127
    .line 128
    if-gez v1, :cond_7

    .line 129
    .line 130
    sget-object v1, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    .line 131
    .line 132
    iget-object v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->bottomEffect:Landroid/widget/EdgeEffect;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, v2}, Landroidx/compose/foundation/EdgeEffectCompat;->b(Landroid/widget/EdgeEffect;)F

    .line 136
    move-result v2

    .line 137
    .line 138
    cmpg-float v2, v2, v0

    .line 139
    .line 140
    if-nez v2, :cond_6

    .line 141
    goto :goto_4

    .line 142
    .line 143
    :cond_6
    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->bottomEffect:Landroid/widget/EdgeEffect;

    .line 144
    .line 145
    .line 146
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->i(J)F

    .line 147
    move-result v2

    .line 148
    .line 149
    .line 150
    invoke-static {v2}, Lg8/a;->c(F)I

    .line 151
    move-result v2

    .line 152
    neg-int v2, v2

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, v0, v2}, Landroidx/compose/foundation/EdgeEffectCompat;->c(Landroid/widget/EdgeEffect;I)V

    .line 156
    .line 157
    .line 158
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->i(J)F

    .line 159
    move-result v0

    .line 160
    .line 161
    .line 162
    :cond_7
    :goto_4
    invoke-static {p3, v0}, Landroidx/compose/ui/unit/VelocityKt;->a(FF)J

    .line 163
    move-result-wide p1

    .line 164
    .line 165
    sget-object p3, Landroidx/compose/ui/unit/Velocity;->Companion:Landroidx/compose/ui/unit/Velocity$Companion;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p3}, Landroidx/compose/ui/unit/Velocity$Companion;->a()J

    .line 169
    move-result-wide v0

    .line 170
    .line 171
    .line 172
    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/unit/Velocity;->g(JJ)Z

    .line 173
    move-result p3

    .line 174
    .line 175
    if-nez p3, :cond_8

    .line 176
    .line 177
    .line 178
    invoke-direct {p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->y()V

    .line 179
    .line 180
    .line 181
    :cond_8
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->b(J)Landroidx/compose/ui/unit/Velocity;

    .line 182
    move-result-object p1

    .line 183
    return-object p1
.end method

.method public isEnabled()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->isEnabledState:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/lang/Boolean;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public setEnabled(Z)V
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->isEnabled:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eq v0, p1, :cond_0

    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v0, v1

    .line 9
    .line 10
    :goto_0
    iget-object v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->isEnabledState:Landroidx/compose/runtime/MutableState;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    move-result-object v3

    .line 15
    .line 16
    .line 17
    invoke-interface {v2, v3}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 18
    .line 19
    iput-boolean p1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->isEnabled:Z

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iput-boolean v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->scrollCycleInProgress:Z

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->s()V

    .line 27
    :cond_1
    return-void
.end method

.method public final v(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    .locals 8
    .param p1    # Landroidx/compose/ui/graphics/drawscope/DrawScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->T()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->a()Landroidx/compose/ui/graphics/Canvas;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->redrawSignal:Landroidx/compose/runtime/MutableState;

    .line 16
    .line 17
    .line 18
    invoke-interface {v1}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->c(Landroidx/compose/ui/graphics/Canvas;)Landroid/graphics/Canvas;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    sget-object v1, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    .line 25
    .line 26
    iget-object v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->leftEffectNegation:Landroid/widget/EdgeEffect;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroidx/compose/foundation/EdgeEffectCompat;->b(Landroid/widget/EdgeEffect;)F

    .line 30
    move-result v2

    .line 31
    const/4 v3, 0x0

    .line 32
    .line 33
    cmpg-float v2, v2, v3

    .line 34
    .line 35
    if-nez v2, :cond_0

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_0
    iget-object v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->leftEffectNegation:Landroid/widget/EdgeEffect;

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, p1, v2, v0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->w(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    .line 42
    .line 43
    iget-object v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->leftEffectNegation:Landroid/widget/EdgeEffect;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->finish()V

    .line 47
    .line 48
    :goto_0
    iget-object v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->leftEffect:Landroid/widget/EdgeEffect;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 52
    move-result v2

    .line 53
    const/4 v4, 0x0

    .line 54
    .line 55
    if-nez v2, :cond_1

    .line 56
    .line 57
    iget-object v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->leftEffect:Landroid/widget/EdgeEffect;

    .line 58
    .line 59
    .line 60
    invoke-direct {p0, p1, v2, v0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->u(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    .line 61
    move-result v2

    .line 62
    .line 63
    iget-object v5, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->leftEffectNegation:Landroid/widget/EdgeEffect;

    .line 64
    .line 65
    iget-object v6, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->leftEffect:Landroid/widget/EdgeEffect;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v6}, Landroidx/compose/foundation/EdgeEffectCompat;->b(Landroid/widget/EdgeEffect;)F

    .line 69
    move-result v6

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v5, v6, v3}, Landroidx/compose/foundation/EdgeEffectCompat;->d(Landroid/widget/EdgeEffect;FF)F

    .line 73
    goto :goto_1

    .line 74
    :cond_1
    move v2, v4

    .line 75
    .line 76
    :goto_1
    iget-object v5, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->topEffectNegation:Landroid/widget/EdgeEffect;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v5}, Landroidx/compose/foundation/EdgeEffectCompat;->b(Landroid/widget/EdgeEffect;)F

    .line 80
    move-result v5

    .line 81
    .line 82
    cmpg-float v5, v5, v3

    .line 83
    .line 84
    if-nez v5, :cond_2

    .line 85
    goto :goto_2

    .line 86
    .line 87
    :cond_2
    iget-object v5, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->topEffectNegation:Landroid/widget/EdgeEffect;

    .line 88
    .line 89
    .line 90
    invoke-direct {p0, p1, v5, v0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->t(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    .line 91
    .line 92
    iget-object v5, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->topEffectNegation:Landroid/widget/EdgeEffect;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->finish()V

    .line 96
    .line 97
    :goto_2
    iget-object v5, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->topEffect:Landroid/widget/EdgeEffect;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 101
    move-result v5

    .line 102
    const/4 v6, 0x1

    .line 103
    .line 104
    if-nez v5, :cond_5

    .line 105
    .line 106
    iget-object v5, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->topEffect:Landroid/widget/EdgeEffect;

    .line 107
    .line 108
    .line 109
    invoke-direct {p0, p1, v5, v0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->x(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    .line 110
    move-result v5

    .line 111
    .line 112
    if-nez v5, :cond_4

    .line 113
    .line 114
    if-eqz v2, :cond_3

    .line 115
    goto :goto_3

    .line 116
    :cond_3
    move v2, v4

    .line 117
    goto :goto_4

    .line 118
    :cond_4
    :goto_3
    move v2, v6

    .line 119
    .line 120
    :goto_4
    iget-object v5, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->topEffectNegation:Landroid/widget/EdgeEffect;

    .line 121
    .line 122
    iget-object v7, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->topEffect:Landroid/widget/EdgeEffect;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, v7}, Landroidx/compose/foundation/EdgeEffectCompat;->b(Landroid/widget/EdgeEffect;)F

    .line 126
    move-result v7

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, v5, v7, v3}, Landroidx/compose/foundation/EdgeEffectCompat;->d(Landroid/widget/EdgeEffect;FF)F

    .line 130
    .line 131
    :cond_5
    iget-object v5, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->rightEffectNegation:Landroid/widget/EdgeEffect;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, v5}, Landroidx/compose/foundation/EdgeEffectCompat;->b(Landroid/widget/EdgeEffect;)F

    .line 135
    move-result v5

    .line 136
    .line 137
    cmpg-float v5, v5, v3

    .line 138
    .line 139
    if-nez v5, :cond_6

    .line 140
    goto :goto_5

    .line 141
    .line 142
    :cond_6
    iget-object v5, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->rightEffectNegation:Landroid/widget/EdgeEffect;

    .line 143
    .line 144
    .line 145
    invoke-direct {p0, p1, v5, v0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->u(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    .line 146
    .line 147
    iget-object v5, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->rightEffectNegation:Landroid/widget/EdgeEffect;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->finish()V

    .line 151
    .line 152
    :goto_5
    iget-object v5, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->rightEffect:Landroid/widget/EdgeEffect;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 156
    move-result v5

    .line 157
    .line 158
    if-nez v5, :cond_9

    .line 159
    .line 160
    iget-object v5, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->rightEffect:Landroid/widget/EdgeEffect;

    .line 161
    .line 162
    .line 163
    invoke-direct {p0, p1, v5, v0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->w(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    .line 164
    move-result v5

    .line 165
    .line 166
    if-nez v5, :cond_8

    .line 167
    .line 168
    if-eqz v2, :cond_7

    .line 169
    goto :goto_6

    .line 170
    :cond_7
    move v2, v4

    .line 171
    goto :goto_7

    .line 172
    :cond_8
    :goto_6
    move v2, v6

    .line 173
    .line 174
    :goto_7
    iget-object v5, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->rightEffectNegation:Landroid/widget/EdgeEffect;

    .line 175
    .line 176
    iget-object v7, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->rightEffect:Landroid/widget/EdgeEffect;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1, v7}, Landroidx/compose/foundation/EdgeEffectCompat;->b(Landroid/widget/EdgeEffect;)F

    .line 180
    move-result v7

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1, v5, v7, v3}, Landroidx/compose/foundation/EdgeEffectCompat;->d(Landroid/widget/EdgeEffect;FF)F

    .line 184
    .line 185
    :cond_9
    iget-object v5, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->bottomEffectNegation:Landroid/widget/EdgeEffect;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1, v5}, Landroidx/compose/foundation/EdgeEffectCompat;->b(Landroid/widget/EdgeEffect;)F

    .line 189
    move-result v5

    .line 190
    .line 191
    cmpg-float v5, v5, v3

    .line 192
    .line 193
    if-nez v5, :cond_a

    .line 194
    goto :goto_8

    .line 195
    .line 196
    :cond_a
    iget-object v5, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->bottomEffectNegation:Landroid/widget/EdgeEffect;

    .line 197
    .line 198
    .line 199
    invoke-direct {p0, p1, v5, v0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->x(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    .line 200
    .line 201
    iget-object v5, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->bottomEffectNegation:Landroid/widget/EdgeEffect;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->finish()V

    .line 205
    .line 206
    :goto_8
    iget-object v5, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->bottomEffect:Landroid/widget/EdgeEffect;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 210
    move-result v5

    .line 211
    .line 212
    if-nez v5, :cond_d

    .line 213
    .line 214
    iget-object v5, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->bottomEffect:Landroid/widget/EdgeEffect;

    .line 215
    .line 216
    .line 217
    invoke-direct {p0, p1, v5, v0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->t(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    .line 218
    move-result p1

    .line 219
    .line 220
    if-nez p1, :cond_b

    .line 221
    .line 222
    if-eqz v2, :cond_c

    .line 223
    :cond_b
    move v4, v6

    .line 224
    .line 225
    :cond_c
    iget-object p1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->bottomEffectNegation:Landroid/widget/EdgeEffect;

    .line 226
    .line 227
    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->bottomEffect:Landroid/widget/EdgeEffect;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v1, v0}, Landroidx/compose/foundation/EdgeEffectCompat;->b(Landroid/widget/EdgeEffect;)F

    .line 231
    move-result v0

    .line 232
    .line 233
    .line 234
    invoke-virtual {v1, p1, v0, v3}, Landroidx/compose/foundation/EdgeEffectCompat;->d(Landroid/widget/EdgeEffect;FF)F

    .line 235
    move v2, v4

    .line 236
    .line 237
    :cond_d
    if-eqz v2, :cond_e

    .line 238
    .line 239
    .line 240
    invoke-direct {p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->y()V

    .line 241
    :cond_e
    return-void
.end method
