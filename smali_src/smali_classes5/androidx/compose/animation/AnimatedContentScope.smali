.class public final Landroidx/compose/animation/AnimatedContentScope;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/animation/core/Transition$Segment;


# annotations
.annotation runtime Landroidx/compose/animation/ExperimentalAnimationApi;
.end annotation

.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/animation/AnimatedContentScope$SlideDirection;,
        Landroidx/compose/animation/AnimatedContentScope$ChildData;,
        Landroidx/compose/animation/AnimatedContentScope$SizeModifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/compose/animation/core/Transition$Segment<",
        "TS;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnimatedContent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnimatedContent.kt\nandroidx/compose/animation/AnimatedContentScope\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,737:1\n76#2:738\n102#2,2:739\n76#2:755\n102#2,2:756\n36#3:741\n36#3:748\n1057#4,6:742\n1057#4,6:749\n*S KotlinDebug\n*F\n+ 1 AnimatedContent.kt\nandroidx/compose/animation/AnimatedContentScope\n*L\n447#1:738\n447#1:739,2\n462#1:755\n462#1:756,2\n462#1:741\n474#1:748\n462#1:742,6\n474#1:749,6\n*E\n"
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private animatedSize:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private contentAlignment:Landroidx/compose/ui/Alignment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final measuredSize$delegate:Landroidx/compose/runtime/MutableState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final targetSizeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TS;",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final transition:Landroidx/compose/animation/core/Transition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Transition<",
            "TS;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 1
    .param p1    # Landroidx/compose/animation/core/Transition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/Alignment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/unit/LayoutDirection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>;",
            "Landroidx/compose/ui/Alignment;",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "transition"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "contentAlignment"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "layoutDirection"

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
    iput-object p1, p0, Landroidx/compose/animation/AnimatedContentScope;->transition:Landroidx/compose/animation/core/Transition;

    .line 21
    .line 22
    iput-object p2, p0, Landroidx/compose/animation/AnimatedContentScope;->contentAlignment:Landroidx/compose/ui/Alignment;

    .line 23
    .line 24
    iput-object p3, p0, Landroidx/compose/animation/AnimatedContentScope;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 25
    .line 26
    sget-object p1, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntSize$Companion;->a()J

    .line 30
    move-result-wide p1

    .line 31
    .line 32
    .line 33
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSize;->b(J)Landroidx/compose/ui/unit/IntSize;

    .line 34
    move-result-object p1

    .line 35
    const/4 p2, 0x0

    .line 36
    const/4 p3, 0x2

    .line 37
    .line 38
    .line 39
    invoke-static {p1, p2, p3, p2}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    iput-object p1, p0, Landroidx/compose/animation/AnimatedContentScope;->measuredSize$delegate:Landroidx/compose/runtime/MutableState;

    .line 43
    .line 44
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 45
    .line 46
    .line 47
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 48
    .line 49
    iput-object p1, p0, Landroidx/compose/animation/AnimatedContentScope;->targetSizeMap:Ljava/util/Map;

    .line 50
    return-void
.end method

.method public static final synthetic d(Landroidx/compose/animation/AnimatedContentScope;JJ)J
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/animation/AnimatedContentScope;->f(JJ)J

    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static final synthetic e(Landroidx/compose/animation/AnimatedContentScope;)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/animation/AnimatedContentScope;->k()J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method private final f(JJ)J
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/animation/AnimatedContentScope;->contentAlignment:Landroidx/compose/ui/Alignment;

    .line 3
    .line 4
    sget-object v5, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 5
    move-wide v1, p1

    .line 6
    move-wide v3, p3

    .line 7
    .line 8
    .line 9
    invoke-interface/range {v0 .. v5}, Landroidx/compose/ui/Alignment;->a(JJLandroidx/compose/ui/unit/LayoutDirection;)J

    .line 10
    move-result-wide p1

    .line 11
    return-wide p1
.end method

.method private static final h(Landroidx/compose/runtime/MutableState;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    check-cast p0, Ljava/lang/Boolean;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static final i(Landroidx/compose/runtime/MutableState;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 8
    return-void
.end method

.method private final k()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/animation/AnimatedContentScope;->animatedSize:Landroidx/compose/runtime/State;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Landroidx/compose/ui/unit/IntSize;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntSize;->j()J

    .line 14
    move-result-wide v0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/animation/AnimatedContentScope;->l()J

    .line 19
    move-result-wide v0

    .line 20
    :goto_0
    return-wide v0
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/animation/core/e;->a(Landroidx/compose/animation/core/Transition$Segment;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/animation/AnimatedContentScope;->transition:Landroidx/compose/animation/core/Transition;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/animation/core/Transition;->k()Landroidx/compose/animation/core/Transition$Segment;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Landroidx/compose/animation/core/Transition$Segment;->b()Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/animation/AnimatedContentScope;->transition:Landroidx/compose/animation/core/Transition;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/animation/core/Transition;->k()Landroidx/compose/animation/core/Transition$Segment;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Landroidx/compose/animation/core/Transition$Segment;->c()Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final g(Landroidx/compose/animation/ContentTransform;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 9
    .param p1    # Landroidx/compose/animation/ContentTransform;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string p3, "contentTransform"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const p3, -0x506bf317

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 12
    .line 13
    .line 14
    const p3, 0x44faf204

    .line 15
    .line 16
    .line 17
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 21
    move-result v0

    .line 22
    .line 23
    .line 24
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 26
    const/4 v2, 0x0

    .line 27
    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    if-ne v1, v0, :cond_1

    .line 37
    .line 38
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 39
    const/4 v1, 0x2

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v2, v1, v2}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    .line 46
    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 50
    .line 51
    check-cast v1, Landroidx/compose/runtime/MutableState;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Landroidx/compose/animation/ContentTransform;->b()Landroidx/compose/animation/SizeTransform;

    .line 55
    move-result-object p1

    .line 56
    const/4 v0, 0x0

    .line 57
    .line 58
    .line 59
    invoke-static {p1, p2, v0}, Landroidx/compose/runtime/SnapshotStateKt;->n(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    iget-object v3, p0, Landroidx/compose/animation/AnimatedContentScope;->transition:Landroidx/compose/animation/core/Transition;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Landroidx/compose/animation/core/Transition;->g()Ljava/lang/Object;

    .line 66
    move-result-object v3

    .line 67
    .line 68
    iget-object v4, p0, Landroidx/compose/animation/AnimatedContentScope;->transition:Landroidx/compose/animation/core/Transition;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4}, Landroidx/compose/animation/core/Transition;->m()Ljava/lang/Object;

    .line 72
    move-result-object v4

    .line 73
    .line 74
    .line 75
    invoke-static {v3, v4}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    move-result v3

    .line 77
    .line 78
    if-eqz v3, :cond_2

    .line 79
    .line 80
    .line 81
    invoke-static {v1, v0}, Landroidx/compose/animation/AnimatedContentScope;->i(Landroidx/compose/runtime/MutableState;Z)V

    .line 82
    goto :goto_0

    .line 83
    .line 84
    .line 85
    :cond_2
    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 86
    move-result-object v0

    .line 87
    .line 88
    if-eqz v0, :cond_3

    .line 89
    const/4 v0, 0x1

    .line 90
    .line 91
    .line 92
    invoke-static {v1, v0}, Landroidx/compose/animation/AnimatedContentScope;->i(Landroidx/compose/runtime/MutableState;Z)V

    .line 93
    .line 94
    .line 95
    :cond_3
    :goto_0
    invoke-static {v1}, Landroidx/compose/animation/AnimatedContentScope;->h(Landroidx/compose/runtime/MutableState;)Z

    .line 96
    move-result v0

    .line 97
    .line 98
    if-eqz v0, :cond_7

    .line 99
    .line 100
    iget-object v3, p0, Landroidx/compose/animation/AnimatedContentScope;->transition:Landroidx/compose/animation/core/Transition;

    .line 101
    .line 102
    sget-object v0, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    .line 103
    .line 104
    .line 105
    invoke-static {v0}, Landroidx/compose/animation/core/VectorConvertersKt;->h(Landroidx/compose/ui/unit/IntSize$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    .line 106
    move-result-object v4

    .line 107
    const/4 v5, 0x0

    .line 108
    .line 109
    const/16 v7, 0x40

    .line 110
    const/4 v8, 0x2

    .line 111
    move-object v6, p2

    .line 112
    .line 113
    .line 114
    invoke-static/range {v3 .. v8}, Landroidx/compose/animation/core/TransitionKt;->b(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 115
    move-result-object v0

    .line 116
    .line 117
    .line 118
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 119
    .line 120
    .line 121
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 122
    move-result p3

    .line 123
    .line 124
    .line 125
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 126
    move-result-object v1

    .line 127
    .line 128
    if-nez p3, :cond_4

    .line 129
    .line 130
    sget-object p3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p3}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 134
    move-result-object p3

    .line 135
    .line 136
    if-ne v1, p3, :cond_6

    .line 137
    .line 138
    .line 139
    :cond_4
    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 140
    move-result-object p3

    .line 141
    .line 142
    check-cast p3, Landroidx/compose/animation/SizeTransform;

    .line 143
    .line 144
    if-eqz p3, :cond_5

    .line 145
    .line 146
    .line 147
    invoke-interface {p3}, Landroidx/compose/animation/SizeTransform;->b()Z

    .line 148
    move-result p3

    .line 149
    .line 150
    if-nez p3, :cond_5

    .line 151
    .line 152
    sget-object p3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 153
    goto :goto_1

    .line 154
    .line 155
    :cond_5
    sget-object p3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 156
    .line 157
    .line 158
    invoke-static {p3}, Landroidx/compose/ui/draw/ClipKt;->b(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 159
    move-result-object p3

    .line 160
    .line 161
    :goto_1
    new-instance v1, Landroidx/compose/animation/AnimatedContentScope$SizeModifier;

    .line 162
    .line 163
    .line 164
    invoke-direct {v1, p0, v0, p1}, Landroidx/compose/animation/AnimatedContentScope$SizeModifier;-><init>(Landroidx/compose/animation/AnimatedContentScope;Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/runtime/State;)V

    .line 165
    .line 166
    .line 167
    invoke-interface {p3, v1}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 168
    move-result-object v1

    .line 169
    .line 170
    .line 171
    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    :cond_6
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 175
    .line 176
    check-cast v1, Landroidx/compose/ui/Modifier;

    .line 177
    goto :goto_2

    .line 178
    .line 179
    :cond_7
    iput-object v2, p0, Landroidx/compose/animation/AnimatedContentScope;->animatedSize:Landroidx/compose/runtime/State;

    .line 180
    .line 181
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 182
    .line 183
    .line 184
    :goto_2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 185
    return-object v1
.end method

.method public final j()Landroidx/compose/ui/Alignment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/AnimatedContentScope;->contentAlignment:Landroidx/compose/ui/Alignment;

    return-object v0
.end method

.method public final l()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/animation/AnimatedContentScope;->measuredSize$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/compose/ui/unit/IntSize;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntSize;->j()J

    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public final m()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TS;",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/AnimatedContentScope;->targetSizeMap:Ljava/util/Map;

    return-object v0
.end method

.method public final n()Landroidx/compose/animation/core/Transition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/AnimatedContentScope;->transition:Landroidx/compose/animation/core/Transition;

    return-object v0
.end method

.method public final o(Landroidx/compose/runtime/State;)V
    .locals 0
    .param p1    # Landroidx/compose/runtime/State;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/animation/AnimatedContentScope;->animatedSize:Landroidx/compose/runtime/State;

    return-void
.end method

.method public final p(Landroidx/compose/ui/Alignment;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/Alignment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/animation/AnimatedContentScope;->contentAlignment:Landroidx/compose/ui/Alignment;

    return-void
.end method

.method public final q(Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/unit/LayoutDirection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/animation/AnimatedContentScope;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    return-void
.end method

.method public final r(J)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/animation/AnimatedContentScope;->measuredSize$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSize;->b(J)Landroidx/compose/ui/unit/IntSize;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 10
    return-void
.end method
