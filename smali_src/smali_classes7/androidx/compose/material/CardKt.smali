.class public final Landroidx/compose/material/CardKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCard.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Card.kt\nandroidx/compose/material/CardKt\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 5 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n*L\n1#1,212:1\n155#2:213\n155#2:214\n155#2:222\n25#3:215\n25#3:223\n1057#4,6:216\n1057#4,6:224\n76#5:230\n*S KotlinDebug\n*F\n+ 1 Card.kt\nandroidx/compose/material/CardKt\n*L\n65#1:213\n116#1:214\n187#1:222\n117#1:215\n188#1:223\n117#1:216,6\n188#1:224,6\n189#1:230\n*E\n"
.end annotation


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLe8/p;Landroidx/compose/runtime/Composer;II)V
    .locals 13
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/graphics/Shape;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/foundation/BorderStroke;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJ",
            "Landroidx/compose/foundation/BorderStroke;",
            "F",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v12, p9

    .line 3
    .line 4
    move/from16 v0, p10

    .line 5
    .line 6
    const-string v1, "content"

    .line 7
    .line 8
    move-object/from16 v8, p8

    .line 9
    .line 10
    .line 11
    invoke-static {v8, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const v1, 0x74a1b8b8

    .line 15
    .line 16
    .line 17
    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 18
    .line 19
    and-int/lit8 v1, p11, 0x1

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object v1, p0

    .line 26
    .line 27
    :goto_0
    and-int/lit8 v2, p11, 0x2

    .line 28
    const/4 v3, 0x6

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    sget-object v2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v12, v3}, Landroidx/compose/material/MaterialTheme;->b(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Shapes;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Landroidx/compose/material/Shapes;->b()Landroidx/compose/foundation/shape/CornerBasedShape;

    .line 40
    move-result-object v2

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    move-object v2, p1

    .line 43
    .line 44
    :goto_1
    and-int/lit8 v4, p11, 0x4

    .line 45
    .line 46
    if-eqz v4, :cond_2

    .line 47
    .line 48
    sget-object v4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4, v12, v3}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 52
    move-result-object v3

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3}, Landroidx/compose/material/Colors;->n()J

    .line 56
    move-result-wide v3

    .line 57
    goto :goto_2

    .line 58
    :cond_2
    move-wide v3, p2

    .line 59
    .line 60
    :goto_2
    and-int/lit8 v5, p11, 0x8

    .line 61
    .line 62
    if-eqz v5, :cond_3

    .line 63
    .line 64
    shr-int/lit8 v5, v0, 0x6

    .line 65
    .line 66
    and-int/lit8 v5, v5, 0xe

    .line 67
    .line 68
    .line 69
    invoke-static {v3, v4, v12, v5}, Landroidx/compose/material/ColorsKt;->b(JLandroidx/compose/runtime/Composer;I)J

    .line 70
    move-result-wide v5

    .line 71
    goto :goto_3

    .line 72
    .line 73
    :cond_3
    move-wide/from16 v5, p4

    .line 74
    .line 75
    :goto_3
    and-int/lit8 v7, p11, 0x10

    .line 76
    .line 77
    if-eqz v7, :cond_4

    .line 78
    const/4 v7, 0x0

    .line 79
    goto :goto_4

    .line 80
    .line 81
    :cond_4
    move-object/from16 v7, p6

    .line 82
    .line 83
    :goto_4
    and-int/lit8 v9, p11, 0x20

    .line 84
    .line 85
    if-eqz v9, :cond_5

    .line 86
    const/4 v9, 0x1

    .line 87
    int-to-float v9, v9

    .line 88
    .line 89
    .line 90
    invoke-static {v9}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 91
    move-result v9

    .line 92
    goto :goto_5

    .line 93
    .line 94
    :cond_5
    move/from16 v9, p7

    .line 95
    .line 96
    :goto_5
    and-int/lit8 v10, v0, 0xe

    .line 97
    .line 98
    and-int/lit8 v11, v0, 0x70

    .line 99
    or-int/2addr v10, v11

    .line 100
    .line 101
    and-int/lit16 v11, v0, 0x380

    .line 102
    or-int/2addr v10, v11

    .line 103
    .line 104
    and-int/lit16 v11, v0, 0x1c00

    .line 105
    or-int/2addr v10, v11

    .line 106
    .line 107
    .line 108
    const v11, 0xe000

    .line 109
    and-int/2addr v11, v0

    .line 110
    or-int/2addr v10, v11

    .line 111
    .line 112
    const/high16 v11, 0x70000

    .line 113
    and-int/2addr v11, v0

    .line 114
    or-int/2addr v10, v11

    .line 115
    .line 116
    const/high16 v11, 0x380000

    .line 117
    and-int/2addr v0, v11

    .line 118
    or-int/2addr v10, v0

    .line 119
    const/4 v11, 0x0

    .line 120
    move-object v0, v1

    .line 121
    move-object v1, v2

    .line 122
    move-wide v2, v3

    .line 123
    move-wide v4, v5

    .line 124
    move-object v6, v7

    .line 125
    move v7, v9

    .line 126
    .line 127
    move-object/from16 v8, p8

    .line 128
    .line 129
    move-object/from16 v9, p9

    .line 130
    .line 131
    .line 132
    invoke-static/range {v0 .. v11}, Landroidx/compose/material/SurfaceKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLe8/p;Landroidx/compose/runtime/Composer;II)V

    .line 133
    .line 134
    .line 135
    invoke-interface/range {p9 .. p9}, Landroidx/compose/runtime/Composer;->Q()V

    .line 136
    return-void
.end method
