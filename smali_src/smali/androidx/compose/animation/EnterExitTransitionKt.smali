.class public final Landroidx/compose/animation/EnterExitTransitionKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/animation/EnterExitTransitionKt$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEnterExitTransition.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EnterExitTransition.kt\nandroidx/compose/animation/EnterExitTransitionKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 Transition.kt\nandroidx/compose/animation/core/TransitionKt\n+ 5 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,1154:1\n36#2:1155\n36#2:1162\n25#2:1169\n25#2:1182\n1057#3,6:1156\n1057#3,6:1163\n1057#3,6:1170\n1057#3,6:1183\n934#4:1176\n852#4,5:1177\n934#4:1189\n852#4,5:1190\n847#4,10:1195\n76#5:1205\n102#5,2:1206\n76#5:1208\n102#5,2:1209\n76#5:1211\n76#5:1212\n76#5:1213\n*S KotlinDebug\n*F\n+ 1 EnterExitTransition.kt\nandroidx/compose/animation/EnterExitTransitionKt\n*L\n820#1:1155\n821#1:1162\n845#1:1169\n868#1:1182\n820#1:1156,6\n821#1:1163,6\n845#1:1170,6\n868#1:1183,6\n835#1:1176\n835#1:1177,5\n858#1:1189\n858#1:1190,5\n884#1:1195,10\n820#1:1205\n820#1:1206,2\n821#1:1208\n821#1:1209,2\n834#1:1211\n858#1:1212\n884#1:1213\n*E\n"
.end annotation


# static fields
.field private static final DefaultAlpha:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DefaultAlphaAndScaleSpring:Landroidx/compose/animation/core/SpringSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/SpringSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DefaultOffsetAnimationSpec:Landroidx/compose/animation/core/SpringSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/SpringSpec<",
            "Landroidx/compose/ui/unit/IntOffset;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DefaultSizeAnimationSpec:Landroidx/compose/animation/core/SpringSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/SpringSpec<",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TransformOriginVectorConverter:Landroidx/compose/animation/core/TwoWayConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "Landroidx/compose/ui/graphics/TransformOrigin;",
            "Landroidx/compose/animation/core/AnimationVector2D;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/animation/EnterExitTransitionKt$TransformOriginVectorConverter$1;->INSTANCE:Landroidx/compose/animation/EnterExitTransitionKt$TransformOriginVectorConverter$1;

    .line 3
    .line 4
    sget-object v1, Landroidx/compose/animation/EnterExitTransitionKt$TransformOriginVectorConverter$2;->INSTANCE:Landroidx/compose/animation/EnterExitTransitionKt$TransformOriginVectorConverter$2;

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroidx/compose/animation/core/VectorConvertersKt;->a(Le8/l;Le8/l;)Landroidx/compose/animation/core/TwoWayConverter;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    sput-object v0, Landroidx/compose/animation/EnterExitTransitionKt;->TransformOriginVectorConverter:Landroidx/compose/animation/core/TwoWayConverter;

    .line 11
    .line 12
    const/high16 v0, 0x3f800000    # 1.0f

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x2

    .line 18
    const/4 v2, 0x0

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v2, v1, v2}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    sput-object v0, Landroidx/compose/animation/EnterExitTransitionKt;->DefaultAlpha:Landroidx/compose/runtime/MutableState;

    .line 25
    const/4 v0, 0x5

    .line 26
    const/4 v1, 0x0

    .line 27
    .line 28
    const/high16 v3, 0x43c80000    # 400.0f

    .line 29
    .line 30
    .line 31
    invoke-static {v1, v3, v2, v0, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->i(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    sput-object v0, Landroidx/compose/animation/EnterExitTransitionKt;->DefaultAlphaAndScaleSpring:Landroidx/compose/animation/core/SpringSpec;

    .line 35
    .line 36
    sget-object v0, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Landroidx/compose/animation/core/VisibilityThresholdsKt;->e(Landroidx/compose/ui/unit/IntOffset$Companion;)J

    .line 40
    move-result-wide v4

    .line 41
    .line 42
    .line 43
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntOffset;->b(J)Landroidx/compose/ui/unit/IntOffset;

    .line 44
    move-result-object v0

    .line 45
    const/4 v4, 0x1

    .line 46
    .line 47
    .line 48
    invoke-static {v1, v3, v0, v4, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->i(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    sput-object v0, Landroidx/compose/animation/EnterExitTransitionKt;->DefaultOffsetAnimationSpec:Landroidx/compose/animation/core/SpringSpec;

    .line 52
    .line 53
    sget-object v0, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Landroidx/compose/animation/core/VisibilityThresholdsKt;->f(Landroidx/compose/ui/unit/IntSize$Companion;)J

    .line 57
    move-result-wide v5

    .line 58
    .line 59
    .line 60
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntSize;->b(J)Landroidx/compose/ui/unit/IntSize;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    .line 64
    invoke-static {v1, v3, v0, v4, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->i(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    sput-object v0, Landroidx/compose/animation/EnterExitTransitionKt;->DefaultSizeAnimationSpec:Landroidx/compose/animation/core/SpringSpec;

    .line 68
    return-void
.end method

.method private static final A(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/Transition;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Ljava/lang/String;)Landroidx/compose/ui/Modifier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/animation/core/Transition<",
            "Landroidx/compose/animation/EnterExitState;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/animation/ChangeSize;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/animation/ChangeSize;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/animation/EnterExitTransitionKt$shrinkExpand$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/compose/animation/EnterExitTransitionKt$shrinkExpand$1;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Ljava/lang/String;)V

    .line 6
    const/4 p1, 0x1

    .line 7
    const/4 p2, 0x0

    .line 8
    .line 9
    .line 10
    invoke-static {p0, p2, v0, p1, p2}, Landroidx/compose/ui/ComposedModifierKt;->d(Landroidx/compose/ui/Modifier;Le8/l;Le8/q;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public static final B(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment$Horizontal;ZLe8/l;)Landroidx/compose/animation/ExitTransition;
    .locals 1
    .param p0    # Landroidx/compose/animation/core/FiniteAnimationSpec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/Alignment$Horizontal;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;",
            "Landroidx/compose/ui/Alignment$Horizontal;",
            "Z",
            "Le8/l<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroidx/compose/animation/ExitTransition;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "animationSpec"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string/jumbo v0, "shrinkTowards"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string/jumbo v0, "targetWidth"

    .line 13
    .line 14
    .line 15
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Landroidx/compose/animation/EnterExitTransitionKt;->I(Landroidx/compose/ui/Alignment$Horizontal;)Landroidx/compose/ui/Alignment;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    new-instance v0, Landroidx/compose/animation/EnterExitTransitionKt$shrinkHorizontally$2;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p3}, Landroidx/compose/animation/EnterExitTransitionKt$shrinkHorizontally$2;-><init>(Le8/l;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p0, p1, p2, v0}, Landroidx/compose/animation/EnterExitTransitionKt;->D(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment;ZLe8/l;)Landroidx/compose/animation/ExitTransition;

    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method public static synthetic C(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment$Horizontal;ZLe8/l;ILjava/lang/Object;)Landroidx/compose/animation/ExitTransition;
    .locals 3

    .line 1
    .line 2
    and-int/lit8 p5, p4, 0x1

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    if-eqz p5, :cond_0

    .line 6
    .line 7
    sget-object p0, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Landroidx/compose/animation/core/VisibilityThresholdsKt;->f(Landroidx/compose/ui/unit/IntSize$Companion;)J

    .line 11
    move-result-wide v1

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSize;->b(J)Landroidx/compose/ui/unit/IntSize;

    .line 15
    move-result-object p0

    .line 16
    const/4 p5, 0x0

    .line 17
    const/4 v1, 0x0

    .line 18
    .line 19
    const/high16 v2, 0x43c80000    # 400.0f

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v2, p0, v0, p5}, Landroidx/compose/animation/core/AnimationSpecKt;->i(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    .line 23
    move-result-object p0

    .line 24
    .line 25
    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 26
    .line 27
    if-eqz p5, :cond_1

    .line 28
    .line 29
    sget-object p1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroidx/compose/ui/Alignment$Companion;->j()Landroidx/compose/ui/Alignment$Horizontal;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    :cond_1
    and-int/lit8 p5, p4, 0x4

    .line 36
    .line 37
    if-eqz p5, :cond_2

    .line 38
    move p2, v0

    .line 39
    .line 40
    :cond_2
    and-int/lit8 p4, p4, 0x8

    .line 41
    .line 42
    if-eqz p4, :cond_3

    .line 43
    .line 44
    sget-object p3, Landroidx/compose/animation/EnterExitTransitionKt$shrinkHorizontally$1;->INSTANCE:Landroidx/compose/animation/EnterExitTransitionKt$shrinkHorizontally$1;

    .line 45
    .line 46
    .line 47
    :cond_3
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/animation/EnterExitTransitionKt;->B(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment$Horizontal;ZLe8/l;)Landroidx/compose/animation/ExitTransition;

    .line 48
    move-result-object p0

    .line 49
    return-object p0
.end method

.method public static final D(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment;ZLe8/l;)Landroidx/compose/animation/ExitTransition;
    .locals 9
    .param p0    # Landroidx/compose/animation/core/FiniteAnimationSpec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/Alignment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;",
            "Landroidx/compose/ui/Alignment;",
            "Z",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/unit/IntSize;",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;)",
            "Landroidx/compose/animation/ExitTransition;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "animationSpec"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string/jumbo v0, "shrinkTowards"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string/jumbo v0, "targetSize"

    .line 13
    .line 14
    .line 15
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    new-instance v0, Landroidx/compose/animation/ExitTransitionImpl;

    .line 18
    .line 19
    new-instance v8, Landroidx/compose/animation/TransitionData;

    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x0

    .line 22
    .line 23
    new-instance v4, Landroidx/compose/animation/ChangeSize;

    .line 24
    .line 25
    .line 26
    invoke-direct {v4, p1, p3, p0, p2}, Landroidx/compose/animation/ChangeSize;-><init>(Landroidx/compose/ui/Alignment;Le8/l;Landroidx/compose/animation/core/FiniteAnimationSpec;Z)V

    .line 27
    const/4 v5, 0x0

    .line 28
    .line 29
    const/16 v6, 0xb

    .line 30
    const/4 v7, 0x0

    .line 31
    move-object v1, v8

    .line 32
    .line 33
    .line 34
    invoke-direct/range {v1 .. v7}, Landroidx/compose/animation/TransitionData;-><init>(Landroidx/compose/animation/Fade;Landroidx/compose/animation/Slide;Landroidx/compose/animation/ChangeSize;Landroidx/compose/animation/Scale;ILkotlin/jvm/internal/k;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, v8}, Landroidx/compose/animation/ExitTransitionImpl;-><init>(Landroidx/compose/animation/TransitionData;)V

    .line 38
    return-object v0
.end method

.method public static synthetic E(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment;ZLe8/l;ILjava/lang/Object;)Landroidx/compose/animation/ExitTransition;
    .locals 3

    .line 1
    .line 2
    and-int/lit8 p5, p4, 0x1

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    if-eqz p5, :cond_0

    .line 6
    .line 7
    sget-object p0, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Landroidx/compose/animation/core/VisibilityThresholdsKt;->f(Landroidx/compose/ui/unit/IntSize$Companion;)J

    .line 11
    move-result-wide v1

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSize;->b(J)Landroidx/compose/ui/unit/IntSize;

    .line 15
    move-result-object p0

    .line 16
    const/4 p5, 0x0

    .line 17
    const/4 v1, 0x0

    .line 18
    .line 19
    const/high16 v2, 0x43c80000    # 400.0f

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v2, p0, v0, p5}, Landroidx/compose/animation/core/AnimationSpecKt;->i(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    .line 23
    move-result-object p0

    .line 24
    .line 25
    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 26
    .line 27
    if-eqz p5, :cond_1

    .line 28
    .line 29
    sget-object p1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroidx/compose/ui/Alignment$Companion;->c()Landroidx/compose/ui/Alignment;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    :cond_1
    and-int/lit8 p5, p4, 0x4

    .line 36
    .line 37
    if-eqz p5, :cond_2

    .line 38
    move p2, v0

    .line 39
    .line 40
    :cond_2
    and-int/lit8 p4, p4, 0x8

    .line 41
    .line 42
    if-eqz p4, :cond_3

    .line 43
    .line 44
    sget-object p3, Landroidx/compose/animation/EnterExitTransitionKt$shrinkOut$1;->INSTANCE:Landroidx/compose/animation/EnterExitTransitionKt$shrinkOut$1;

    .line 45
    .line 46
    .line 47
    :cond_3
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/animation/EnterExitTransitionKt;->D(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment;ZLe8/l;)Landroidx/compose/animation/ExitTransition;

    .line 48
    move-result-object p0

    .line 49
    return-object p0
.end method

.method public static final F(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment$Vertical;ZLe8/l;)Landroidx/compose/animation/ExitTransition;
    .locals 1
    .param p0    # Landroidx/compose/animation/core/FiniteAnimationSpec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/Alignment$Vertical;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;",
            "Landroidx/compose/ui/Alignment$Vertical;",
            "Z",
            "Le8/l<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroidx/compose/animation/ExitTransition;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "animationSpec"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string/jumbo v0, "shrinkTowards"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string/jumbo v0, "targetHeight"

    .line 13
    .line 14
    .line 15
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Landroidx/compose/animation/EnterExitTransitionKt;->J(Landroidx/compose/ui/Alignment$Vertical;)Landroidx/compose/ui/Alignment;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    new-instance v0, Landroidx/compose/animation/EnterExitTransitionKt$shrinkVertically$2;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p3}, Landroidx/compose/animation/EnterExitTransitionKt$shrinkVertically$2;-><init>(Le8/l;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p0, p1, p2, v0}, Landroidx/compose/animation/EnterExitTransitionKt;->D(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment;ZLe8/l;)Landroidx/compose/animation/ExitTransition;

    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method public static synthetic G(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment$Vertical;ZLe8/l;ILjava/lang/Object;)Landroidx/compose/animation/ExitTransition;
    .locals 3

    .line 1
    .line 2
    and-int/lit8 p5, p4, 0x1

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    if-eqz p5, :cond_0

    .line 6
    .line 7
    sget-object p0, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Landroidx/compose/animation/core/VisibilityThresholdsKt;->f(Landroidx/compose/ui/unit/IntSize$Companion;)J

    .line 11
    move-result-wide v1

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSize;->b(J)Landroidx/compose/ui/unit/IntSize;

    .line 15
    move-result-object p0

    .line 16
    const/4 p5, 0x0

    .line 17
    const/4 v1, 0x0

    .line 18
    .line 19
    const/high16 v2, 0x43c80000    # 400.0f

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v2, p0, v0, p5}, Landroidx/compose/animation/core/AnimationSpecKt;->i(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    .line 23
    move-result-object p0

    .line 24
    .line 25
    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 26
    .line 27
    if-eqz p5, :cond_1

    .line 28
    .line 29
    sget-object p1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroidx/compose/ui/Alignment$Companion;->a()Landroidx/compose/ui/Alignment$Vertical;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    :cond_1
    and-int/lit8 p5, p4, 0x4

    .line 36
    .line 37
    if-eqz p5, :cond_2

    .line 38
    move p2, v0

    .line 39
    .line 40
    :cond_2
    and-int/lit8 p4, p4, 0x8

    .line 41
    .line 42
    if-eqz p4, :cond_3

    .line 43
    .line 44
    sget-object p3, Landroidx/compose/animation/EnterExitTransitionKt$shrinkVertically$1;->INSTANCE:Landroidx/compose/animation/EnterExitTransitionKt$shrinkVertically$1;

    .line 45
    .line 46
    .line 47
    :cond_3
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/animation/EnterExitTransitionKt;->F(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment$Vertical;ZLe8/l;)Landroidx/compose/animation/ExitTransition;

    .line 48
    move-result-object p0

    .line 49
    return-object p0
.end method

.method private static final H(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/Transition;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Ljava/lang/String;)Landroidx/compose/ui/Modifier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/animation/core/Transition<",
            "Landroidx/compose/animation/EnterExitState;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/animation/Slide;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/animation/Slide;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/animation/EnterExitTransitionKt$slideInOut$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/compose/animation/EnterExitTransitionKt$slideInOut$1;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Ljava/lang/String;)V

    .line 6
    const/4 p1, 0x1

    .line 7
    const/4 p2, 0x0

    .line 8
    .line 9
    .line 10
    invoke-static {p0, p2, v0, p1, p2}, Landroidx/compose/ui/ComposedModifierKt;->d(Landroidx/compose/ui/Modifier;Le8/l;Le8/q;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method private static final I(Landroidx/compose/ui/Alignment$Horizontal;)Landroidx/compose/ui/Alignment;
    .locals 2

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->k()Landroidx/compose/ui/Alignment$Horizontal;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->h()Landroidx/compose/ui/Alignment;

    .line 16
    move-result-object p0

    .line 17
    goto :goto_0

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->j()Landroidx/compose/ui/Alignment$Horizontal;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-static {p0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    move-result p0

    .line 26
    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->f()Landroidx/compose/ui/Alignment;

    .line 31
    move-result-object p0

    .line 32
    goto :goto_0

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->e()Landroidx/compose/ui/Alignment;

    .line 36
    move-result-object p0

    .line 37
    :goto_0
    return-object p0
.end method

.method private static final J(Landroidx/compose/ui/Alignment$Vertical;)Landroidx/compose/ui/Alignment;
    .locals 2

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->l()Landroidx/compose/ui/Alignment$Vertical;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->m()Landroidx/compose/ui/Alignment;

    .line 16
    move-result-object p0

    .line 17
    goto :goto_0

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->a()Landroidx/compose/ui/Alignment$Vertical;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-static {p0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    move-result p0

    .line 26
    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->b()Landroidx/compose/ui/Alignment;

    .line 31
    move-result-object p0

    .line 32
    goto :goto_0

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->e()Landroidx/compose/ui/Alignment;

    .line 36
    move-result-object p0

    .line 37
    :goto_0
    return-object p0
.end method

.method public static final synthetic a(Landroidx/compose/runtime/State;)F
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/animation/EnterExitTransitionKt;->i(Landroidx/compose/runtime/State;)F

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic b(Landroidx/compose/runtime/State;)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/animation/EnterExitTransitionKt;->j(Landroidx/compose/runtime/State;)J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static final synthetic c(Landroidx/compose/runtime/State;)F
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/animation/EnterExitTransitionKt;->n(Landroidx/compose/runtime/State;)F

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic d()Landroidx/compose/animation/core/SpringSpec;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/animation/EnterExitTransitionKt;->DefaultAlphaAndScaleSpring:Landroidx/compose/animation/core/SpringSpec;

    return-object v0
.end method

.method public static final synthetic e()Landroidx/compose/animation/core/SpringSpec;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/animation/EnterExitTransitionKt;->DefaultOffsetAnimationSpec:Landroidx/compose/animation/core/SpringSpec;

    return-object v0
.end method

.method public static final synthetic f()Landroidx/compose/animation/core/SpringSpec;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/animation/EnterExitTransitionKt;->DefaultSizeAnimationSpec:Landroidx/compose/animation/core/SpringSpec;

    return-object v0
.end method

.method public static final g(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 24
    .param p0    # Landroidx/compose/animation/core/Transition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/animation/EnterTransition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/animation/ExitTransition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/Transition<",
            "Landroidx/compose/animation/EnterExitState;",
            ">;",
            "Landroidx/compose/animation/EnterTransition;",
            "Landroidx/compose/animation/ExitTransition;",
            "Ljava/lang/String;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    const-string v0, "<this>"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enter"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exit"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "label"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x367a8aa2

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 1
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 2
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/animation/EnterTransition;->a()Landroidx/compose/animation/TransitionData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/animation/TransitionData;->d()Landroidx/compose/animation/Slide;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v12, v2}, Landroidx/compose/runtime/SnapshotStateKt;->n(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v1

    .line 3
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/animation/ExitTransition;->a()Landroidx/compose/animation/TransitionData;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/animation/TransitionData;->d()Landroidx/compose/animation/Slide;

    move-result-object v3

    invoke-static {v3, v12, v2}, Landroidx/compose/runtime/SnapshotStateKt;->n(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v3

    .line 4
    invoke-static {v0, v8, v1, v3, v11}, Landroidx/compose/animation/EnterExitTransitionKt;->H(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/Transition;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 5
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/animation/EnterTransition;->a()Landroidx/compose/animation/TransitionData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/animation/TransitionData;->a()Landroidx/compose/animation/ChangeSize;

    move-result-object v1

    invoke-static {v1, v12, v2}, Landroidx/compose/runtime/SnapshotStateKt;->n(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v1

    .line 6
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/animation/ExitTransition;->a()Landroidx/compose/animation/TransitionData;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/animation/TransitionData;->a()Landroidx/compose/animation/ChangeSize;

    move-result-object v3

    invoke-static {v3, v12, v2}, Landroidx/compose/runtime/SnapshotStateKt;->n(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v3

    .line 7
    invoke-static {v0, v8, v1, v3, v11}, Landroidx/compose/animation/EnterExitTransitionKt;->A(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/Transition;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v13

    and-int/lit8 v14, p5, 0xe

    const v0, 0x44faf204

    .line 8
    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 9
    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v1

    .line 10
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    move-result-object v3

    const/4 v15, 0x2

    const/4 v7, 0x0

    if-nez v1, :cond_0

    .line 11
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    move-result-object v1

    if-ne v3, v1, :cond_1

    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 12
    invoke-static {v1, v7, v15, v7}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    .line 13
    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 14
    :cond_1
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 15
    move-object v6, v3

    check-cast v6, Landroidx/compose/runtime/MutableState;

    .line 16
    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 17
    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v0

    .line 18
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_2

    .line 19
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    move-result-object v0

    if-ne v1, v0, :cond_3

    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 20
    invoke-static {v0, v7, v15, v7}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    .line 21
    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 22
    :cond_3
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 23
    move-object v5, v1

    check-cast v5, Landroidx/compose/runtime/MutableState;

    .line 24
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->g()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->m()Ljava/lang/Object;

    move-result-object v1

    const/4 v4, 0x1

    if-ne v0, v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->q()Z

    move-result v0

    if-nez v0, :cond_4

    .line 25
    invoke-static {v6, v2}, Landroidx/compose/animation/EnterExitTransitionKt;->k(Landroidx/compose/runtime/MutableState;Z)V

    .line 26
    invoke-static {v5, v2}, Landroidx/compose/animation/EnterExitTransitionKt;->m(Landroidx/compose/runtime/MutableState;Z)V

    goto :goto_0

    .line 27
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/animation/EnterTransition;->a()Landroidx/compose/animation/TransitionData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/animation/TransitionData;->b()Landroidx/compose/animation/Fade;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/animation/ExitTransition;->a()Landroidx/compose/animation/TransitionData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/animation/TransitionData;->b()Landroidx/compose/animation/Fade;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 28
    :cond_5
    invoke-static {v6, v4}, Landroidx/compose/animation/EnterExitTransitionKt;->k(Landroidx/compose/runtime/MutableState;Z)V

    .line 29
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/animation/EnterTransition;->a()Landroidx/compose/animation/TransitionData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/animation/TransitionData;->c()Landroidx/compose/animation/Scale;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/animation/ExitTransition;->a()Landroidx/compose/animation/TransitionData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/animation/TransitionData;->c()Landroidx/compose/animation/Scale;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 30
    :cond_7
    invoke-static {v5, v4}, Landroidx/compose/animation/EnterExitTransitionKt;->m(Landroidx/compose/runtime/MutableState;Z)V

    :cond_8
    :goto_0
    const v0, 0x62c77be4

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 31
    invoke-static {v6}, Landroidx/compose/animation/EnterExitTransitionKt;->h(Landroidx/compose/runtime/MutableState;)Z

    move-result v0

    const v3, -0x4fcbfb15

    const v2, -0x1d58f75c

    const/high16 v16, 0x70000

    const v1, -0x880d1ef

    const v17, 0xe000

    const/4 v15, 0x3

    const/high16 v18, 0x3f800000    # 1.0f

    if-eqz v0, :cond_10

    .line 32
    new-instance v0, Landroidx/compose/animation/EnterExitTransitionKt$createModifier$alpha$2;

    invoke-direct {v0, v9, v10}, Landroidx/compose/animation/EnterExitTransitionKt$createModifier$alpha$2;-><init>(Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;)V

    .line 33
    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 34
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    move-result-object v2

    .line 35
    sget-object v20, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    move-result-object v7

    if-ne v2, v7, :cond_9

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " alpha"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 37
    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 38
    :cond_9
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->Q()V

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    or-int/lit16 v2, v14, 0x180

    .line 39
    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 40
    sget-object v20, Lkotlin/jvm/internal/m;->INSTANCE:Lkotlin/jvm/internal/m;

    invoke-static/range {v20 .. v20}, Landroidx/compose/animation/core/VectorConvertersKt;->i(Lkotlin/jvm/internal/m;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v20

    and-int/lit8 v22, v2, 0xe

    shl-int/2addr v2, v15

    and-int/lit16 v3, v2, 0x380

    or-int v3, v22, v3

    and-int/lit16 v15, v2, 0x1c00

    or-int/2addr v3, v15

    and-int v2, v2, v17

    or-int/2addr v2, v3

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 41
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->g()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/animation/EnterExitState;

    const v15, 0x2d0ae6ce

    invoke-interface {v12, v15}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 42
    sget-object v23, Landroidx/compose/animation/EnterExitTransitionKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v23, v3

    if-eq v3, v4, :cond_a

    const/4 v1, 0x2

    if-eq v3, v1, :cond_c

    const/4 v1, 0x3

    if-ne v3, v1, :cond_b

    .line 43
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/animation/ExitTransition;->a()Landroidx/compose/animation/TransitionData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/animation/TransitionData;->b()Landroidx/compose/animation/Fade;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Landroidx/compose/animation/Fade;->a()F

    move-result v1

    goto :goto_1

    :cond_a
    move/from16 v1, v18

    goto :goto_1

    :cond_b
    new-instance v0, Lw7/s;

    invoke-direct {v0}, Lw7/s;-><init>()V

    throw v0

    .line 44
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/animation/EnterTransition;->a()Landroidx/compose/animation/TransitionData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/animation/TransitionData;->b()Landroidx/compose/animation/Fade;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Landroidx/compose/animation/Fade;->a()F

    move-result v1

    .line 45
    :goto_1
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->Q()V

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 46
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->m()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/animation/EnterExitState;

    invoke-interface {v12, v15}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 47
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v23, v3

    if-eq v3, v4, :cond_d

    const/4 v15, 0x2

    if-eq v3, v15, :cond_f

    const/4 v15, 0x3

    if-ne v3, v15, :cond_e

    .line 48
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/animation/ExitTransition;->a()Landroidx/compose/animation/TransitionData;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/animation/TransitionData;->b()Landroidx/compose/animation/Fade;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Landroidx/compose/animation/Fade;->a()F

    move-result v3

    goto :goto_2

    :cond_d
    move/from16 v3, v18

    goto :goto_2

    :cond_e
    new-instance v0, Lw7/s;

    invoke-direct {v0}, Lw7/s;-><init>()V

    throw v0

    .line 49
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/animation/EnterTransition;->a()Landroidx/compose/animation/TransitionData;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/animation/TransitionData;->b()Landroidx/compose/animation/Fade;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Landroidx/compose/animation/Fade;->a()F

    move-result v3

    .line 50
    :goto_2
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->Q()V

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 51
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->k()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object v15

    shr-int/lit8 v23, v2, 0x3

    and-int/lit8 v23, v23, 0x70

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v15, v12, v4}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroidx/compose/animation/core/FiniteAnimationSpec;

    and-int/lit8 v0, v2, 0xe

    shl-int/lit8 v15, v2, 0x9

    and-int v15, v15, v17

    or-int/2addr v0, v15

    shl-int/lit8 v2, v2, 0x6

    and-int v2, v2, v16

    or-int v15, v0, v2

    move-object/from16 v0, p0

    const v2, -0x880d1ef

    const v8, -0x1d58f75c

    move-object v2, v3

    move-object v3, v4

    move-object/from16 v4, v20

    move-object/from16 v19, v5

    move-object v5, v7

    move-object/from16 v20, v6

    move-object/from16 v6, p4

    const/16 v21, 0x0

    move v7, v15

    .line 52
    invoke-static/range {v0 .. v7}, Landroidx/compose/animation/core/TransitionKt;->c(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v0

    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 53
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->Q()V

    :goto_3
    move-object v15, v0

    goto :goto_4

    :cond_10
    move v8, v2

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    sget-object v0, Landroidx/compose/animation/EnterExitTransitionKt;->DefaultAlpha:Landroidx/compose/runtime/MutableState;

    goto :goto_3

    .line 54
    :goto_4
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 55
    invoke-static/range {v19 .. v19}, Landroidx/compose/animation/EnterExitTransitionKt;->l(Landroidx/compose/runtime/MutableState;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 56
    new-instance v0, Landroidx/compose/animation/EnterExitTransitionKt$createModifier$scale$2;

    invoke-direct {v0, v9, v10}, Landroidx/compose/animation/EnterExitTransitionKt$createModifier$scale$2;-><init>(Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;)V

    .line 57
    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 58
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    move-result-object v1

    .line 59
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_11

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " scale"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 62
    :cond_11
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->Q()V

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    or-int/lit16 v1, v14, 0x180

    const v2, -0x4fcbfb15

    .line 63
    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 64
    sget-object v2, Lkotlin/jvm/internal/m;->INSTANCE:Lkotlin/jvm/internal/m;

    invoke-static {v2}, Landroidx/compose/animation/core/VectorConvertersKt;->i(Lkotlin/jvm/internal/m;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v4

    and-int/lit8 v2, v1, 0xe

    const/4 v3, 0x3

    shl-int/2addr v1, v3

    and-int/lit16 v3, v1, 0x380

    or-int/2addr v2, v3

    and-int/lit16 v3, v1, 0x1c00

    or-int/2addr v2, v3

    and-int v1, v1, v17

    or-int/2addr v1, v2

    const v8, -0x880d1ef

    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 65
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->g()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/animation/EnterExitState;

    const v3, -0x23883891

    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 66
    sget-object v11, Landroidx/compose/animation/EnterExitTransitionKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v11, v2

    const/4 v7, 0x1

    if-eq v2, v7, :cond_12

    const/4 v6, 0x2

    if-eq v2, v6, :cond_14

    const/4 v6, 0x3

    if-ne v2, v6, :cond_13

    .line 67
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/animation/ExitTransition;->a()Landroidx/compose/animation/TransitionData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/animation/TransitionData;->c()Landroidx/compose/animation/Scale;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Landroidx/compose/animation/Scale;->b()F

    move-result v2

    goto :goto_5

    :cond_12
    move/from16 v2, v18

    goto :goto_5

    :cond_13
    new-instance v0, Lw7/s;

    invoke-direct {v0}, Lw7/s;-><init>()V

    throw v0

    .line 68
    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/animation/EnterTransition;->a()Landroidx/compose/animation/TransitionData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/animation/TransitionData;->c()Landroidx/compose/animation/Scale;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Landroidx/compose/animation/Scale;->b()F

    move-result v2

    .line 69
    :goto_5
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->Q()V

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 70
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->m()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/animation/EnterExitState;

    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 71
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v11, v3

    if-eq v3, v7, :cond_17

    const/4 v6, 0x2

    if-eq v3, v6, :cond_16

    const/4 v6, 0x3

    if-ne v3, v6, :cond_15

    .line 72
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/animation/ExitTransition;->a()Landroidx/compose/animation/TransitionData;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/animation/TransitionData;->c()Landroidx/compose/animation/Scale;

    move-result-object v3

    if-eqz v3, :cond_17

    invoke-virtual {v3}, Landroidx/compose/animation/Scale;->b()F

    move-result v18

    goto :goto_6

    :cond_15
    new-instance v0, Lw7/s;

    invoke-direct {v0}, Lw7/s;-><init>()V

    throw v0

    .line 73
    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/animation/EnterTransition;->a()Landroidx/compose/animation/TransitionData;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/animation/TransitionData;->c()Landroidx/compose/animation/Scale;

    move-result-object v3

    if-eqz v3, :cond_17

    invoke-virtual {v3}, Landroidx/compose/animation/Scale;->b()F

    move-result v18

    .line 74
    :cond_17
    :goto_6
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->Q()V

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 75
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->k()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object v6

    shr-int/lit8 v18, v1, 0x3

    and-int/lit8 v18, v18, 0x70

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v6, v12, v7}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroidx/compose/animation/core/FiniteAnimationSpec;

    and-int/lit8 v0, v1, 0xe

    shl-int/lit8 v7, v1, 0x9

    and-int v7, v7, v17

    or-int/2addr v0, v7

    shl-int/lit8 v1, v1, 0x6

    and-int v1, v1, v16

    or-int v7, v0, v1

    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v6

    move-object/from16 v6, p4

    .line 76
    invoke-static/range {v0 .. v7}, Landroidx/compose/animation/core/TransitionKt;->c(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v7

    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 77
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 78
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->g()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/compose/animation/EnterExitState;->PreEnter:Landroidx/compose/animation/EnterExitState;

    if-ne v0, v1, :cond_1a

    .line 79
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/animation/EnterTransition;->a()Landroidx/compose/animation/TransitionData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/animation/TransitionData;->c()Landroidx/compose/animation/Scale;

    move-result-object v0

    if-eqz v0, :cond_18

    :goto_7
    invoke-virtual {v0}, Landroidx/compose/animation/Scale;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/TransformOrigin;->b(J)Landroidx/compose/ui/graphics/TransformOrigin;

    move-result-object v0

    goto :goto_9

    :cond_18
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/animation/ExitTransition;->a()Landroidx/compose/animation/TransitionData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/animation/TransitionData;->c()Landroidx/compose/animation/Scale;

    move-result-object v0

    if-eqz v0, :cond_19

    goto :goto_7

    :cond_19
    move-object/from16 v0, v21

    goto :goto_9

    .line 80
    :cond_1a
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/animation/ExitTransition;->a()Landroidx/compose/animation/TransitionData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/animation/TransitionData;->c()Landroidx/compose/animation/Scale;

    move-result-object v0

    if-eqz v0, :cond_1b

    :goto_8
    invoke-virtual {v0}, Landroidx/compose/animation/Scale;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/TransformOrigin;->b(J)Landroidx/compose/ui/graphics/TransformOrigin;

    move-result-object v0

    goto :goto_9

    :cond_1b
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/animation/EnterTransition;->a()Landroidx/compose/animation/TransitionData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/animation/TransitionData;->c()Landroidx/compose/animation/Scale;

    move-result-object v0

    if-eqz v0, :cond_19

    goto :goto_8

    :goto_9
    sget-object v4, Landroidx/compose/animation/EnterExitTransitionKt;->TransformOriginVectorConverter:Landroidx/compose/animation/core/TwoWayConverter;

    const-string v5, "TransformOriginInterruptionHandling"

    or-int/lit16 v1, v14, 0xc40

    .line 81
    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 82
    sget-object v2, Landroidx/compose/animation/EnterExitTransitionKt$createModifier$$inlined$animateValue$1;->INSTANCE:Landroidx/compose/animation/EnterExitTransitionKt$createModifier$$inlined$animateValue$1;

    .line 83
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->g()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/animation/EnterExitState;

    const v6, -0x112d0e25

    invoke-interface {v12, v6}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 84
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v11, v3

    const/4 v8, 0x1

    if-eq v3, v8, :cond_21

    const/4 v14, 0x2

    if-eq v3, v14, :cond_1f

    const/4 v14, 0x3

    if-ne v3, v14, :cond_1e

    .line 85
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/animation/ExitTransition;->a()Landroidx/compose/animation/TransitionData;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/animation/TransitionData;->c()Landroidx/compose/animation/Scale;

    move-result-object v3

    if-eqz v3, :cond_1c

    :goto_a
    invoke-virtual {v3}, Landroidx/compose/animation/Scale;->c()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Landroidx/compose/ui/graphics/TransformOrigin;->b(J)Landroidx/compose/ui/graphics/TransformOrigin;

    move-result-object v3

    goto :goto_c

    :cond_1c
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/animation/EnterTransition;->a()Landroidx/compose/animation/TransitionData;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/animation/TransitionData;->c()Landroidx/compose/animation/Scale;

    move-result-object v3

    if-eqz v3, :cond_1d

    goto :goto_a

    :cond_1d
    move-object/from16 v3, v21

    goto :goto_c

    :cond_1e
    new-instance v0, Lw7/s;

    invoke-direct {v0}, Lw7/s;-><init>()V

    throw v0

    .line 86
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/animation/EnterTransition;->a()Landroidx/compose/animation/TransitionData;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/animation/TransitionData;->c()Landroidx/compose/animation/Scale;

    move-result-object v3

    if-eqz v3, :cond_20

    :goto_b
    invoke-virtual {v3}, Landroidx/compose/animation/Scale;->c()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Landroidx/compose/ui/graphics/TransformOrigin;->b(J)Landroidx/compose/ui/graphics/TransformOrigin;

    move-result-object v3

    goto :goto_c

    :cond_20
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/animation/ExitTransition;->a()Landroidx/compose/animation/TransitionData;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/animation/TransitionData;->c()Landroidx/compose/animation/Scale;

    move-result-object v3

    if-eqz v3, :cond_1d

    goto :goto_b

    :cond_21
    move-object v3, v0

    :goto_c
    if-eqz v3, :cond_22

    .line 87
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/TransformOrigin;->j()J

    move-result-wide v18

    goto :goto_d

    .line 88
    :cond_22
    sget-object v3, Landroidx/compose/ui/graphics/TransformOrigin;->Companion:Landroidx/compose/ui/graphics/TransformOrigin$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/TransformOrigin$Companion;->a()J

    move-result-wide v18

    .line 89
    :goto_d
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->Q()V

    invoke-static/range {v18 .. v19}, Landroidx/compose/ui/graphics/TransformOrigin;->b(J)Landroidx/compose/ui/graphics/TransformOrigin;

    move-result-object v3

    .line 90
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->m()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/animation/EnterExitState;

    invoke-interface {v12, v6}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 91
    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v11, v6

    if-eq v6, v8, :cond_28

    const/4 v8, 0x2

    if-eq v6, v8, :cond_26

    const/4 v0, 0x3

    if-ne v6, v0, :cond_25

    .line 92
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/animation/ExitTransition;->a()Landroidx/compose/animation/TransitionData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/animation/TransitionData;->c()Landroidx/compose/animation/Scale;

    move-result-object v0

    if-eqz v0, :cond_23

    :goto_e
    invoke-virtual {v0}, Landroidx/compose/animation/Scale;->c()J

    move-result-wide v8

    invoke-static {v8, v9}, Landroidx/compose/ui/graphics/TransformOrigin;->b(J)Landroidx/compose/ui/graphics/TransformOrigin;

    move-result-object v0

    goto :goto_10

    :cond_23
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/animation/EnterTransition;->a()Landroidx/compose/animation/TransitionData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/animation/TransitionData;->c()Landroidx/compose/animation/Scale;

    move-result-object v0

    if-eqz v0, :cond_24

    goto :goto_e

    :cond_24
    move-object/from16 v0, v21

    goto :goto_10

    :cond_25
    new-instance v0, Lw7/s;

    invoke-direct {v0}, Lw7/s;-><init>()V

    throw v0

    .line 93
    :cond_26
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/animation/EnterTransition;->a()Landroidx/compose/animation/TransitionData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/animation/TransitionData;->c()Landroidx/compose/animation/Scale;

    move-result-object v0

    if-eqz v0, :cond_27

    :goto_f
    invoke-virtual {v0}, Landroidx/compose/animation/Scale;->c()J

    move-result-wide v8

    invoke-static {v8, v9}, Landroidx/compose/ui/graphics/TransformOrigin;->b(J)Landroidx/compose/ui/graphics/TransformOrigin;

    move-result-object v0

    goto :goto_10

    :cond_27
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/animation/ExitTransition;->a()Landroidx/compose/animation/TransitionData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/animation/TransitionData;->c()Landroidx/compose/animation/Scale;

    move-result-object v0

    if-eqz v0, :cond_24

    goto :goto_f

    :cond_28
    :goto_10
    if-eqz v0, :cond_29

    .line 94
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/TransformOrigin;->j()J

    move-result-wide v8

    goto :goto_11

    .line 95
    :cond_29
    sget-object v0, Landroidx/compose/ui/graphics/TransformOrigin;->Companion:Landroidx/compose/ui/graphics/TransformOrigin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/TransformOrigin$Companion;->a()J

    move-result-wide v8

    .line 96
    :goto_11
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->Q()V

    invoke-static {v8, v9}, Landroidx/compose/ui/graphics/TransformOrigin;->b(J)Landroidx/compose/ui/graphics/TransformOrigin;

    move-result-object v6

    .line 97
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->k()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object v0

    shr-int/lit8 v8, v1, 0x3

    and-int/lit8 v8, v8, 0x70

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v0, v12, v8}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroidx/compose/animation/core/FiniteAnimationSpec;

    and-int/lit8 v0, v1, 0xe

    shl-int/lit8 v2, v1, 0x9

    and-int v2, v2, v17

    or-int/2addr v0, v2

    shl-int/lit8 v1, v1, 0x6

    and-int v1, v1, v16

    or-int v9, v0, v1

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v6

    move-object v3, v8

    move-object/from16 v6, p4

    move-object v8, v7

    move v7, v9

    .line 98
    invoke-static/range {v0 .. v7}, Landroidx/compose/animation/core/TransitionKt;->c(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v0

    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 99
    new-instance v1, Landroidx/compose/animation/EnterExitTransitionKt$createModifier$1;

    invoke-direct {v1, v15, v8, v0}, Landroidx/compose/animation/EnterExitTransitionKt$createModifier$1;-><init>(Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V

    invoke-static {v13, v1}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->a(Landroidx/compose/ui/Modifier;Le8/l;)Landroidx/compose/ui/Modifier;

    move-result-object v13

    goto :goto_12

    .line 100
    :cond_2a
    invoke-static/range {v20 .. v20}, Landroidx/compose/animation/EnterExitTransitionKt;->h(Landroidx/compose/runtime/MutableState;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 101
    new-instance v0, Landroidx/compose/animation/EnterExitTransitionKt$createModifier$2;

    invoke-direct {v0, v15}, Landroidx/compose/animation/EnterExitTransitionKt$createModifier$2;-><init>(Landroidx/compose/runtime/State;)V

    invoke-static {v13, v0}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->a(Landroidx/compose/ui/Modifier;Le8/l;)Landroidx/compose/ui/Modifier;

    move-result-object v13

    .line 102
    :cond_2b
    :goto_12
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->Q()V

    return-object v13
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

.method private static final i(Landroidx/compose/runtime/State;)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;)F"
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
    check-cast p0, Ljava/lang/Number;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static final j(Landroidx/compose/runtime/State;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/TransformOrigin;",
            ">;)J"
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
    check-cast p0, Landroidx/compose/ui/graphics/TransformOrigin;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/TransformOrigin;->j()J

    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method private static final k(Landroidx/compose/runtime/MutableState;Z)V
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

.method private static final l(Landroidx/compose/runtime/MutableState;)Z
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

.method private static final m(Landroidx/compose/runtime/MutableState;Z)V
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

.method private static final n(Landroidx/compose/runtime/State;)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;)F"
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
    check-cast p0, Ljava/lang/Number;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public static final o(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment$Horizontal;ZLe8/l;)Landroidx/compose/animation/EnterTransition;
    .locals 1
    .param p0    # Landroidx/compose/animation/core/FiniteAnimationSpec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/Alignment$Horizontal;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;",
            "Landroidx/compose/ui/Alignment$Horizontal;",
            "Z",
            "Le8/l<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroidx/compose/animation/EnterTransition;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "animationSpec"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "expandFrom"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "initialWidth"

    .line 13
    .line 14
    .line 15
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Landroidx/compose/animation/EnterExitTransitionKt;->I(Landroidx/compose/ui/Alignment$Horizontal;)Landroidx/compose/ui/Alignment;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    new-instance v0, Landroidx/compose/animation/EnterExitTransitionKt$expandHorizontally$2;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p3}, Landroidx/compose/animation/EnterExitTransitionKt$expandHorizontally$2;-><init>(Le8/l;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p0, p1, p2, v0}, Landroidx/compose/animation/EnterExitTransitionKt;->q(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment;ZLe8/l;)Landroidx/compose/animation/EnterTransition;

    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method public static synthetic p(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment$Horizontal;ZLe8/l;ILjava/lang/Object;)Landroidx/compose/animation/EnterTransition;
    .locals 3

    .line 1
    .line 2
    and-int/lit8 p5, p4, 0x1

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    if-eqz p5, :cond_0

    .line 6
    .line 7
    sget-object p0, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Landroidx/compose/animation/core/VisibilityThresholdsKt;->f(Landroidx/compose/ui/unit/IntSize$Companion;)J

    .line 11
    move-result-wide v1

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSize;->b(J)Landroidx/compose/ui/unit/IntSize;

    .line 15
    move-result-object p0

    .line 16
    const/4 p5, 0x0

    .line 17
    const/4 v1, 0x0

    .line 18
    .line 19
    const/high16 v2, 0x43c80000    # 400.0f

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v2, p0, v0, p5}, Landroidx/compose/animation/core/AnimationSpecKt;->i(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    .line 23
    move-result-object p0

    .line 24
    .line 25
    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 26
    .line 27
    if-eqz p5, :cond_1

    .line 28
    .line 29
    sget-object p1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroidx/compose/ui/Alignment$Companion;->j()Landroidx/compose/ui/Alignment$Horizontal;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    :cond_1
    and-int/lit8 p5, p4, 0x4

    .line 36
    .line 37
    if-eqz p5, :cond_2

    .line 38
    move p2, v0

    .line 39
    .line 40
    :cond_2
    and-int/lit8 p4, p4, 0x8

    .line 41
    .line 42
    if-eqz p4, :cond_3

    .line 43
    .line 44
    sget-object p3, Landroidx/compose/animation/EnterExitTransitionKt$expandHorizontally$1;->INSTANCE:Landroidx/compose/animation/EnterExitTransitionKt$expandHorizontally$1;

    .line 45
    .line 46
    .line 47
    :cond_3
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/animation/EnterExitTransitionKt;->o(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment$Horizontal;ZLe8/l;)Landroidx/compose/animation/EnterTransition;

    .line 48
    move-result-object p0

    .line 49
    return-object p0
.end method

.method public static final q(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment;ZLe8/l;)Landroidx/compose/animation/EnterTransition;
    .locals 9
    .param p0    # Landroidx/compose/animation/core/FiniteAnimationSpec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/Alignment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;",
            "Landroidx/compose/ui/Alignment;",
            "Z",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/unit/IntSize;",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;)",
            "Landroidx/compose/animation/EnterTransition;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "animationSpec"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "expandFrom"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "initialSize"

    .line 13
    .line 14
    .line 15
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    new-instance v0, Landroidx/compose/animation/EnterTransitionImpl;

    .line 18
    .line 19
    new-instance v8, Landroidx/compose/animation/TransitionData;

    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x0

    .line 22
    .line 23
    new-instance v4, Landroidx/compose/animation/ChangeSize;

    .line 24
    .line 25
    .line 26
    invoke-direct {v4, p1, p3, p0, p2}, Landroidx/compose/animation/ChangeSize;-><init>(Landroidx/compose/ui/Alignment;Le8/l;Landroidx/compose/animation/core/FiniteAnimationSpec;Z)V

    .line 27
    const/4 v5, 0x0

    .line 28
    .line 29
    const/16 v6, 0xb

    .line 30
    const/4 v7, 0x0

    .line 31
    move-object v1, v8

    .line 32
    .line 33
    .line 34
    invoke-direct/range {v1 .. v7}, Landroidx/compose/animation/TransitionData;-><init>(Landroidx/compose/animation/Fade;Landroidx/compose/animation/Slide;Landroidx/compose/animation/ChangeSize;Landroidx/compose/animation/Scale;ILkotlin/jvm/internal/k;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, v8}, Landroidx/compose/animation/EnterTransitionImpl;-><init>(Landroidx/compose/animation/TransitionData;)V

    .line 38
    return-object v0
.end method

.method public static synthetic r(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment;ZLe8/l;ILjava/lang/Object;)Landroidx/compose/animation/EnterTransition;
    .locals 3

    .line 1
    .line 2
    and-int/lit8 p5, p4, 0x1

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    if-eqz p5, :cond_0

    .line 6
    .line 7
    sget-object p0, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Landroidx/compose/animation/core/VisibilityThresholdsKt;->f(Landroidx/compose/ui/unit/IntSize$Companion;)J

    .line 11
    move-result-wide v1

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSize;->b(J)Landroidx/compose/ui/unit/IntSize;

    .line 15
    move-result-object p0

    .line 16
    const/4 p5, 0x0

    .line 17
    const/4 v1, 0x0

    .line 18
    .line 19
    const/high16 v2, 0x43c80000    # 400.0f

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v2, p0, v0, p5}, Landroidx/compose/animation/core/AnimationSpecKt;->i(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    .line 23
    move-result-object p0

    .line 24
    .line 25
    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 26
    .line 27
    if-eqz p5, :cond_1

    .line 28
    .line 29
    sget-object p1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroidx/compose/ui/Alignment$Companion;->c()Landroidx/compose/ui/Alignment;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    :cond_1
    and-int/lit8 p5, p4, 0x4

    .line 36
    .line 37
    if-eqz p5, :cond_2

    .line 38
    move p2, v0

    .line 39
    .line 40
    :cond_2
    and-int/lit8 p4, p4, 0x8

    .line 41
    .line 42
    if-eqz p4, :cond_3

    .line 43
    .line 44
    sget-object p3, Landroidx/compose/animation/EnterExitTransitionKt$expandIn$1;->INSTANCE:Landroidx/compose/animation/EnterExitTransitionKt$expandIn$1;

    .line 45
    .line 46
    .line 47
    :cond_3
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/animation/EnterExitTransitionKt;->q(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment;ZLe8/l;)Landroidx/compose/animation/EnterTransition;

    .line 48
    move-result-object p0

    .line 49
    return-object p0
.end method

.method public static final s(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment$Vertical;ZLe8/l;)Landroidx/compose/animation/EnterTransition;
    .locals 1
    .param p0    # Landroidx/compose/animation/core/FiniteAnimationSpec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/Alignment$Vertical;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;",
            "Landroidx/compose/ui/Alignment$Vertical;",
            "Z",
            "Le8/l<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroidx/compose/animation/EnterTransition;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "animationSpec"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "expandFrom"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "initialHeight"

    .line 13
    .line 14
    .line 15
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Landroidx/compose/animation/EnterExitTransitionKt;->J(Landroidx/compose/ui/Alignment$Vertical;)Landroidx/compose/ui/Alignment;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    new-instance v0, Landroidx/compose/animation/EnterExitTransitionKt$expandVertically$2;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p3}, Landroidx/compose/animation/EnterExitTransitionKt$expandVertically$2;-><init>(Le8/l;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p0, p1, p2, v0}, Landroidx/compose/animation/EnterExitTransitionKt;->q(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment;ZLe8/l;)Landroidx/compose/animation/EnterTransition;

    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method public static synthetic t(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment$Vertical;ZLe8/l;ILjava/lang/Object;)Landroidx/compose/animation/EnterTransition;
    .locals 3

    .line 1
    .line 2
    and-int/lit8 p5, p4, 0x1

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    if-eqz p5, :cond_0

    .line 6
    .line 7
    sget-object p0, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Landroidx/compose/animation/core/VisibilityThresholdsKt;->f(Landroidx/compose/ui/unit/IntSize$Companion;)J

    .line 11
    move-result-wide v1

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSize;->b(J)Landroidx/compose/ui/unit/IntSize;

    .line 15
    move-result-object p0

    .line 16
    const/4 p5, 0x0

    .line 17
    const/4 v1, 0x0

    .line 18
    .line 19
    const/high16 v2, 0x43c80000    # 400.0f

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v2, p0, v0, p5}, Landroidx/compose/animation/core/AnimationSpecKt;->i(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    .line 23
    move-result-object p0

    .line 24
    .line 25
    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 26
    .line 27
    if-eqz p5, :cond_1

    .line 28
    .line 29
    sget-object p1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroidx/compose/ui/Alignment$Companion;->a()Landroidx/compose/ui/Alignment$Vertical;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    :cond_1
    and-int/lit8 p5, p4, 0x4

    .line 36
    .line 37
    if-eqz p5, :cond_2

    .line 38
    move p2, v0

    .line 39
    .line 40
    :cond_2
    and-int/lit8 p4, p4, 0x8

    .line 41
    .line 42
    if-eqz p4, :cond_3

    .line 43
    .line 44
    sget-object p3, Landroidx/compose/animation/EnterExitTransitionKt$expandVertically$1;->INSTANCE:Landroidx/compose/animation/EnterExitTransitionKt$expandVertically$1;

    .line 45
    .line 46
    .line 47
    :cond_3
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/animation/EnterExitTransitionKt;->s(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment$Vertical;ZLe8/l;)Landroidx/compose/animation/EnterTransition;

    .line 48
    move-result-object p0

    .line 49
    return-object p0
.end method

.method public static final u(Landroidx/compose/animation/core/FiniteAnimationSpec;F)Landroidx/compose/animation/EnterTransition;
    .locals 9
    .param p0    # Landroidx/compose/animation/core/FiniteAnimationSpec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Ljava/lang/Float;",
            ">;F)",
            "Landroidx/compose/animation/EnterTransition;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "animationSpec"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Landroidx/compose/animation/EnterTransitionImpl;

    .line 8
    .line 9
    new-instance v8, Landroidx/compose/animation/TransitionData;

    .line 10
    .line 11
    new-instance v2, Landroidx/compose/animation/Fade;

    .line 12
    .line 13
    .line 14
    invoke-direct {v2, p1, p0}, Landroidx/compose/animation/Fade;-><init>(FLandroidx/compose/animation/core/FiniteAnimationSpec;)V

    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x0

    .line 18
    .line 19
    const/16 v6, 0xe

    .line 20
    const/4 v7, 0x0

    .line 21
    move-object v1, v8

    .line 22
    .line 23
    .line 24
    invoke-direct/range {v1 .. v7}, Landroidx/compose/animation/TransitionData;-><init>(Landroidx/compose/animation/Fade;Landroidx/compose/animation/Slide;Landroidx/compose/animation/ChangeSize;Landroidx/compose/animation/Scale;ILkotlin/jvm/internal/k;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v8}, Landroidx/compose/animation/EnterTransitionImpl;-><init>(Landroidx/compose/animation/TransitionData;)V

    .line 28
    return-object v0
.end method

.method public static synthetic v(Landroidx/compose/animation/core/FiniteAnimationSpec;FILjava/lang/Object;)Landroidx/compose/animation/EnterTransition;
    .locals 2

    .line 1
    .line 2
    and-int/lit8 p3, p2, 0x1

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    const/high16 p0, 0x43c80000    # 400.0f

    .line 8
    const/4 p3, 0x5

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    .line 12
    invoke-static {v0, p0, v1, p3, v1}, Landroidx/compose/animation/core/AnimationSpecKt;->i(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    .line 13
    move-result-object p0

    .line 14
    .line 15
    :cond_0
    and-int/lit8 p2, p2, 0x2

    .line 16
    .line 17
    if-eqz p2, :cond_1

    .line 18
    move p1, v0

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-static {p0, p1}, Landroidx/compose/animation/EnterExitTransitionKt;->u(Landroidx/compose/animation/core/FiniteAnimationSpec;F)Landroidx/compose/animation/EnterTransition;

    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public static final w(Landroidx/compose/animation/core/FiniteAnimationSpec;F)Landroidx/compose/animation/ExitTransition;
    .locals 9
    .param p0    # Landroidx/compose/animation/core/FiniteAnimationSpec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Ljava/lang/Float;",
            ">;F)",
            "Landroidx/compose/animation/ExitTransition;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "animationSpec"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Landroidx/compose/animation/ExitTransitionImpl;

    .line 8
    .line 9
    new-instance v8, Landroidx/compose/animation/TransitionData;

    .line 10
    .line 11
    new-instance v2, Landroidx/compose/animation/Fade;

    .line 12
    .line 13
    .line 14
    invoke-direct {v2, p1, p0}, Landroidx/compose/animation/Fade;-><init>(FLandroidx/compose/animation/core/FiniteAnimationSpec;)V

    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x0

    .line 18
    .line 19
    const/16 v6, 0xe

    .line 20
    const/4 v7, 0x0

    .line 21
    move-object v1, v8

    .line 22
    .line 23
    .line 24
    invoke-direct/range {v1 .. v7}, Landroidx/compose/animation/TransitionData;-><init>(Landroidx/compose/animation/Fade;Landroidx/compose/animation/Slide;Landroidx/compose/animation/ChangeSize;Landroidx/compose/animation/Scale;ILkotlin/jvm/internal/k;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v8}, Landroidx/compose/animation/ExitTransitionImpl;-><init>(Landroidx/compose/animation/TransitionData;)V

    .line 28
    return-object v0
.end method

.method public static synthetic x(Landroidx/compose/animation/core/FiniteAnimationSpec;FILjava/lang/Object;)Landroidx/compose/animation/ExitTransition;
    .locals 2

    .line 1
    .line 2
    and-int/lit8 p3, p2, 0x1

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    const/high16 p0, 0x43c80000    # 400.0f

    .line 8
    const/4 p3, 0x5

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    .line 12
    invoke-static {v0, p0, v1, p3, v1}, Landroidx/compose/animation/core/AnimationSpecKt;->i(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    .line 13
    move-result-object p0

    .line 14
    .line 15
    :cond_0
    and-int/lit8 p2, p2, 0x2

    .line 16
    .line 17
    if-eqz p2, :cond_1

    .line 18
    move p1, v0

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-static {p0, p1}, Landroidx/compose/animation/EnterExitTransitionKt;->w(Landroidx/compose/animation/core/FiniteAnimationSpec;F)Landroidx/compose/animation/ExitTransition;

    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public static final y(Landroidx/compose/animation/core/FiniteAnimationSpec;FJ)Landroidx/compose/animation/EnterTransition;
    .locals 13
    .param p0    # Landroidx/compose/animation/core/FiniteAnimationSpec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/animation/ExperimentalAnimationApi;
    .end annotation

    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Ljava/lang/Float;",
            ">;FJ)",
            "Landroidx/compose/animation/EnterTransition;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "animationSpec"

    .line 3
    move-object v5, p0

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    new-instance v0, Landroidx/compose/animation/EnterTransitionImpl;

    .line 9
    .line 10
    new-instance v8, Landroidx/compose/animation/TransitionData;

    .line 11
    const/4 v7, 0x0

    .line 12
    const/4 v9, 0x0

    .line 13
    const/4 v10, 0x0

    .line 14
    .line 15
    new-instance v11, Landroidx/compose/animation/Scale;

    .line 16
    const/4 v6, 0x0

    .line 17
    move-object v1, v11

    .line 18
    move v2, p1

    .line 19
    move-wide v3, p2

    .line 20
    .line 21
    .line 22
    invoke-direct/range {v1 .. v6}, Landroidx/compose/animation/Scale;-><init>(FJLandroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/internal/k;)V

    .line 23
    const/4 v6, 0x7

    .line 24
    const/4 v12, 0x0

    .line 25
    move-object v1, v8

    .line 26
    move-object v2, v7

    .line 27
    move-object v3, v9

    .line 28
    move-object v4, v10

    .line 29
    move-object v5, v11

    .line 30
    move-object v7, v12

    .line 31
    .line 32
    .line 33
    invoke-direct/range {v1 .. v7}, Landroidx/compose/animation/TransitionData;-><init>(Landroidx/compose/animation/Fade;Landroidx/compose/animation/Slide;Landroidx/compose/animation/ChangeSize;Landroidx/compose/animation/Scale;ILkotlin/jvm/internal/k;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, v8}, Landroidx/compose/animation/EnterTransitionImpl;-><init>(Landroidx/compose/animation/TransitionData;)V

    .line 37
    return-object v0
.end method

.method public static synthetic z(Landroidx/compose/animation/core/FiniteAnimationSpec;FJILjava/lang/Object;)Landroidx/compose/animation/EnterTransition;
    .locals 2

    .line 1
    .line 2
    and-int/lit8 p5, p4, 0x1

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    if-eqz p5, :cond_0

    .line 6
    .line 7
    const/high16 p0, 0x43c80000    # 400.0f

    .line 8
    const/4 p5, 0x5

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    .line 12
    invoke-static {v0, p0, v1, p5, v1}, Landroidx/compose/animation/core/AnimationSpecKt;->i(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    .line 13
    move-result-object p0

    .line 14
    .line 15
    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 16
    .line 17
    if-eqz p5, :cond_1

    .line 18
    move p1, v0

    .line 19
    .line 20
    :cond_1
    and-int/lit8 p4, p4, 0x4

    .line 21
    .line 22
    if-eqz p4, :cond_2

    .line 23
    .line 24
    sget-object p2, Landroidx/compose/ui/graphics/TransformOrigin;->Companion:Landroidx/compose/ui/graphics/TransformOrigin$Companion;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/TransformOrigin$Companion;->a()J

    .line 28
    move-result-wide p2

    .line 29
    .line 30
    .line 31
    :cond_2
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/animation/EnterExitTransitionKt;->y(Landroidx/compose/animation/core/FiniteAnimationSpec;FJ)Landroidx/compose/animation/EnterTransition;

    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method
