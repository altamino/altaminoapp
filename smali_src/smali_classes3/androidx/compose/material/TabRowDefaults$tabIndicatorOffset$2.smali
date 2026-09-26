.class final Landroidx/compose/material/TabRowDefaults$tabIndicatorOffset$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/TabRowDefaults;->e(Landroidx/compose/ui/Modifier;Landroidx/compose/material/TabPosition;)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/q<",
        "Landroidx/compose/ui/Modifier;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Landroidx/compose/ui/Modifier;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTabRow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TabRow.kt\nandroidx/compose/material/TabRowDefaults$tabIndicatorOffset$2\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,517:1\n76#2:518\n76#2:519\n*S KotlinDebug\n*F\n+ 1 TabRow.kt\nandroidx/compose/material/TabRowDefaults$tabIndicatorOffset$2\n*L\n409#1:518\n413#1:519\n*E\n"
.end annotation


# instance fields
.field final synthetic $currentTabPosition:Landroidx/compose/material/TabPosition;


# direct methods
.method constructor <init>(Landroidx/compose/material/TabPosition;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material/TabRowDefaults$tabIndicatorOffset$2;->$currentTabPosition:Landroidx/compose/material/TabPosition;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method

.method private static final b(Landroidx/compose/runtime/State;)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/unit/Dp;",
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
    check-cast p0, Landroidx/compose/ui/unit/Dp;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/compose/ui/unit/Dp;->l()F

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static final c(Landroidx/compose/runtime/State;)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/unit/Dp;",
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
    check-cast p0, Landroidx/compose/ui/unit/Dp;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/compose/ui/unit/Dp;->l()F

    .line 10
    move-result p0

    .line 11
    return p0
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 14
    .param p1    # Landroidx/compose/ui/Modifier;
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
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    .line 4
    const-string v2, "$this$composed"

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const v2, -0x17c48fe7

    .line 11
    .line 12
    move-object/from16 v9, p2

    .line 13
    .line 14
    .line 15
    invoke-interface {v9, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 16
    .line 17
    iget-object v2, v0, Landroidx/compose/material/TabRowDefaults$tabIndicatorOffset$2;->$currentTabPosition:Landroidx/compose/material/TabPosition;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Landroidx/compose/material/TabPosition;->c()F

    .line 21
    move-result v3

    .line 22
    .line 23
    .line 24
    invoke-static {}, Landroidx/compose/animation/core/EasingKt;->a()Landroidx/compose/animation/core/Easing;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    const/16 v10, 0xfa

    .line 28
    const/4 v11, 0x0

    .line 29
    const/4 v12, 0x2

    .line 30
    const/4 v13, 0x0

    .line 31
    .line 32
    .line 33
    invoke-static {v10, v11, v2, v12, v13}, Landroidx/compose/animation/core/AnimationSpecKt;->k(IILandroidx/compose/animation/core/Easing;ILjava/lang/Object;)Landroidx/compose/animation/core/TweenSpec;

    .line 34
    move-result-object v4

    .line 35
    const/4 v5, 0x0

    .line 36
    const/4 v7, 0x0

    .line 37
    const/4 v8, 0x4

    .line 38
    .line 39
    move-object/from16 v6, p2

    .line 40
    .line 41
    .line 42
    invoke-static/range {v3 .. v8}, Landroidx/compose/animation/core/AnimateAsStateKt;->c(FLandroidx/compose/animation/core/AnimationSpec;Le8/l;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    iget-object v3, v0, Landroidx/compose/material/TabRowDefaults$tabIndicatorOffset$2;->$currentTabPosition:Landroidx/compose/material/TabPosition;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Landroidx/compose/material/TabPosition;->a()F

    .line 49
    move-result v3

    .line 50
    .line 51
    .line 52
    invoke-static {}, Landroidx/compose/animation/core/EasingKt;->a()Landroidx/compose/animation/core/Easing;

    .line 53
    move-result-object v4

    .line 54
    .line 55
    .line 56
    invoke-static {v10, v11, v4, v12, v13}, Landroidx/compose/animation/core/AnimationSpecKt;->k(IILandroidx/compose/animation/core/Easing;ILjava/lang/Object;)Landroidx/compose/animation/core/TweenSpec;

    .line 57
    move-result-object v4

    .line 58
    .line 59
    .line 60
    invoke-static/range {v3 .. v8}, Landroidx/compose/animation/core/AnimateAsStateKt;->c(FLandroidx/compose/animation/core/AnimationSpec;Le8/l;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    .line 61
    move-result-object v3

    .line 62
    const/4 v4, 0x1

    .line 63
    const/4 v5, 0x0

    .line 64
    .line 65
    .line 66
    invoke-static {p1, v5, v4, v13}, Landroidx/compose/foundation/layout/SizeKt;->n(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 67
    move-result-object v1

    .line 68
    .line 69
    sget-object v4, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4}, Landroidx/compose/ui/Alignment$Companion;->d()Landroidx/compose/ui/Alignment;

    .line 73
    move-result-object v4

    .line 74
    .line 75
    .line 76
    invoke-static {v1, v4, v11, v12, v13}, Landroidx/compose/foundation/layout/SizeKt;->H(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 77
    move-result-object v1

    .line 78
    .line 79
    .line 80
    invoke-static {v3}, Landroidx/compose/material/TabRowDefaults$tabIndicatorOffset$2;->c(Landroidx/compose/runtime/State;)F

    .line 81
    move-result v3

    .line 82
    .line 83
    .line 84
    invoke-static {v1, v3, v5, v12, v13}, Landroidx/compose/foundation/layout/OffsetKt;->c(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 85
    move-result-object v1

    .line 86
    .line 87
    .line 88
    invoke-static {v2}, Landroidx/compose/material/TabRowDefaults$tabIndicatorOffset$2;->b(Landroidx/compose/runtime/State;)F

    .line 89
    move-result v2

    .line 90
    .line 91
    .line 92
    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->D(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 93
    move-result-object v1

    .line 94
    .line 95
    .line 96
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 97
    return-object v1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/Modifier;

    .line 3
    .line 4
    check-cast p2, Landroidx/compose/runtime/Composer;

    .line 5
    .line 6
    check-cast p3, Ljava/lang/Number;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    .line 10
    move-result p3

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/material/TabRowDefaults$tabIndicatorOffset$2;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
