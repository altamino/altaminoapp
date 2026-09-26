.class final Landroidx/compose/material/SliderKt$RangeSlider$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/SliderKt;->b(Lj8/e;Le8/l;Landroidx/compose/ui/Modifier;ZLj8/e;ILe8/a;Landroidx/compose/material/SliderColors;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/q<",
        "Landroidx/compose/foundation/layout/BoxWithConstraintsScope;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lw7/l0;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSlider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Slider.kt\nandroidx/compose/material/SliderKt$RangeSlider$2\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 5 Effects.kt\nandroidx/compose/runtime/EffectsKt\n+ 6 Effects.kt\nandroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1\n*L\n1#1,1163:1\n76#2:1164\n76#2:1165\n25#3:1166\n25#3:1173\n25#3:1184\n83#3,3:1195\n50#3:1204\n49#3:1205\n50#3:1212\n49#3:1213\n1057#4,6:1167\n1057#4,6:1174\n1057#4,3:1185\n1060#4,3:1191\n1057#4,6:1198\n1057#4,6:1206\n1057#4,6:1214\n473#5,4:1180\n477#5,2:1188\n481#5:1194\n473#6:1190\n*S KotlinDebug\n*F\n+ 1 Slider.kt\nandroidx/compose/material/SliderKt$RangeSlider$2\n*L\n307#1:1164\n312#1:1165\n323#1:1166\n324#1:1173\n341#1:1184\n366#1:1195,3\n406#1:1204\n406#1:1205\n414#1:1212\n414#1:1213\n323#1:1167,6\n324#1:1174,6\n341#1:1185,3\n341#1:1191,3\n366#1:1198,6\n406#1:1206,6\n414#1:1214,6\n341#1:1180,4\n341#1:1188,2\n341#1:1194\n341#1:1190\n*E\n"
.end annotation


# instance fields
.field final synthetic $$dirty:I

.field final synthetic $colors:Landroidx/compose/material/SliderColors;

.field final synthetic $enabled:Z

.field final synthetic $endInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field final synthetic $onValueChangeFinished:Le8/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/a<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onValueChangeState:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Le8/l<",
            "Lj8/e<",
            "Ljava/lang/Float;",
            ">;",
            "Lw7/l0;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $startInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field final synthetic $steps:I

.field final synthetic $tickFractions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $valueRange:Lj8/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj8/e<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $values:Lj8/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj8/e<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lj8/e;Lj8/e;ILandroidx/compose/runtime/State;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/MutableInteractionSource;ZLjava/util/List;ILandroidx/compose/material/SliderColors;Le8/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj8/e<",
            "Ljava/lang/Float;",
            ">;",
            "Lj8/e<",
            "Ljava/lang/Float;",
            ">;I",
            "Landroidx/compose/runtime/State<",
            "+",
            "Le8/l<",
            "-",
            "Lj8/e<",
            "Ljava/lang/Float;",
            ">;",
            "Lw7/l0;",
            ">;>;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;I",
            "Landroidx/compose/material/SliderColors;",
            "Le8/a<",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$valueRange:Lj8/e;

    iput-object p2, p0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$values:Lj8/e;

    iput p3, p0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$$dirty:I

    iput-object p4, p0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$onValueChangeState:Landroidx/compose/runtime/State;

    iput-object p5, p0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$startInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p6, p0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$endInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-boolean p7, p0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$enabled:Z

    iput-object p8, p0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$tickFractions:Ljava/util/List;

    iput p9, p0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$steps:I

    iput-object p10, p0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$colors:Landroidx/compose/material/SliderColors;

    iput-object p11, p0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$onValueChangeFinished:Le8/a;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method

.method public static final synthetic a(Lj8/e;Lkotlin/jvm/internal/m0;Lkotlin/jvm/internal/m0;F)F
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material/SliderKt$RangeSlider$2;->d(Lj8/e;Lkotlin/jvm/internal/m0;Lkotlin/jvm/internal/m0;F)F

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic b(Lkotlin/jvm/internal/m0;Lkotlin/jvm/internal/m0;Lj8/e;Lj8/e;)Lj8/e;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material/SliderKt$RangeSlider$2;->e(Lkotlin/jvm/internal/m0;Lkotlin/jvm/internal/m0;Lj8/e;Lj8/e;)Lj8/e;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final d(Lj8/e;Lkotlin/jvm/internal/m0;Lkotlin/jvm/internal/m0;F)F
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj8/e<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/jvm/internal/m0;",
            "Lkotlin/jvm/internal/m0;",
            "F)F"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Lj8/f;->getStart()Ljava/lang/Comparable;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Ljava/lang/Number;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 10
    move-result v0

    .line 11
    .line 12
    .line 13
    invoke-interface {p0}, Lj8/f;->c()Ljava/lang/Comparable;

    .line 14
    move-result-object p0

    .line 15
    .line 16
    check-cast p0, Ljava/lang/Number;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 20
    move-result p0

    .line 21
    .line 22
    iget p1, p1, Lkotlin/jvm/internal/m0;->element:F

    .line 23
    .line 24
    iget p2, p2, Lkotlin/jvm/internal/m0;->element:F

    .line 25
    .line 26
    .line 27
    invoke-static {v0, p0, p3, p1, p2}, Landroidx/compose/material/SliderKt;->r(FFFFF)F

    .line 28
    move-result p0

    .line 29
    return p0
.end method

.method private static final e(Lkotlin/jvm/internal/m0;Lkotlin/jvm/internal/m0;Lj8/e;Lj8/e;)Lj8/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/m0;",
            "Lkotlin/jvm/internal/m0;",
            "Lj8/e<",
            "Ljava/lang/Float;",
            ">;",
            "Lj8/e<",
            "Ljava/lang/Float;",
            ">;)",
            "Lj8/e<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget p0, p0, Lkotlin/jvm/internal/m0;->element:F

    .line 3
    .line 4
    iget p1, p1, Lkotlin/jvm/internal/m0;->element:F

    .line 5
    .line 6
    .line 7
    invoke-interface {p2}, Lj8/f;->getStart()Ljava/lang/Comparable;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Ljava/lang/Number;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 14
    move-result v0

    .line 15
    .line 16
    .line 17
    invoke-interface {p2}, Lj8/f;->c()Ljava/lang/Comparable;

    .line 18
    move-result-object p2

    .line 19
    .line 20
    check-cast p2, Ljava/lang/Number;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    .line 24
    move-result p2

    .line 25
    .line 26
    .line 27
    invoke-static {p0, p1, p3, v0, p2}, Landroidx/compose/material/SliderKt;->s(FFLj8/e;FF)Lj8/e;

    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method


# virtual methods
.method public final c(Landroidx/compose/foundation/layout/BoxWithConstraintsScope;Landroidx/compose/runtime/Composer;I)V
    .locals 30
    .param p1    # Landroidx/compose/foundation/layout/BoxWithConstraintsScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    move-object/from16 v12, p2

    .line 7
    .line 8
    const-string v2, "$this$BoxWithConstraints"

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    and-int/lit8 v2, p3, 0xe

    .line 14
    const/4 v9, 0x2

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 20
    move-result v2

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    const/4 v2, 0x4

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v2, v9

    .line 26
    .line 27
    :goto_0
    or-int v2, p3, v2

    .line 28
    goto :goto_1

    .line 29
    .line 30
    :cond_1
    move/from16 v2, p3

    .line 31
    .line 32
    :goto_1
    and-int/lit8 v2, v2, 0x5b

    .line 33
    .line 34
    const/16 v3, 0x12

    .line 35
    .line 36
    if-ne v2, v3, :cond_3

    .line 37
    .line 38
    .line 39
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->b()Z

    .line 40
    move-result v2

    .line 41
    .line 42
    if-nez v2, :cond_2

    .line 43
    goto :goto_2

    .line 44
    .line 45
    .line 46
    :cond_2
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->g()V

    .line 47
    .line 48
    goto/16 :goto_5

    .line 49
    .line 50
    .line 51
    :cond_3
    :goto_2
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 52
    move-result-object v2

    .line 53
    .line 54
    .line 55
    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 56
    move-result-object v2

    .line 57
    .line 58
    sget-object v3, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    .line 59
    const/4 v10, 0x1

    .line 60
    const/4 v11, 0x0

    .line 61
    .line 62
    if-ne v2, v3, :cond_4

    .line 63
    .line 64
    move/from16 v19, v10

    .line 65
    goto :goto_3

    .line 66
    .line 67
    :cond_4
    move/from16 v19, v11

    .line 68
    .line 69
    .line 70
    :goto_3
    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;->b()J

    .line 71
    move-result-wide v1

    .line 72
    .line 73
    .line 74
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Constraints;->n(J)I

    .line 75
    move-result v1

    .line 76
    int-to-float v15, v1

    .line 77
    .line 78
    new-instance v14, Lkotlin/jvm/internal/m0;

    .line 79
    .line 80
    .line 81
    invoke-direct {v14}, Lkotlin/jvm/internal/m0;-><init>()V

    .line 82
    .line 83
    new-instance v13, Lkotlin/jvm/internal/m0;

    .line 84
    .line 85
    .line 86
    invoke-direct {v13}, Lkotlin/jvm/internal/m0;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 90
    move-result-object v1

    .line 91
    .line 92
    .line 93
    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 94
    move-result-object v1

    .line 95
    .line 96
    check-cast v1, Landroidx/compose/ui/unit/Density;

    .line 97
    .line 98
    .line 99
    invoke-static {}, Landroidx/compose/material/SliderKt;->z()F

    .line 100
    move-result v2

    .line 101
    .line 102
    .line 103
    invoke-interface {v1, v2}, Landroidx/compose/ui/unit/Density;->H0(F)F

    .line 104
    move-result v2

    .line 105
    .line 106
    sub-float v2, v15, v2

    .line 107
    .line 108
    iput v2, v14, Lkotlin/jvm/internal/m0;->element:F

    .line 109
    .line 110
    .line 111
    invoke-static {}, Landroidx/compose/material/SliderKt;->z()F

    .line 112
    move-result v2

    .line 113
    .line 114
    .line 115
    invoke-interface {v1, v2}, Landroidx/compose/ui/unit/Density;->H0(F)F

    .line 116
    move-result v1

    .line 117
    .line 118
    iput v1, v13, Lkotlin/jvm/internal/m0;->element:F

    .line 119
    .line 120
    sget-object v1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 121
    .line 122
    iget-object v1, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$values:Lj8/e;

    .line 123
    .line 124
    iget-object v2, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$valueRange:Lj8/e;

    .line 125
    .line 126
    .line 127
    const v7, -0x1d58f75c

    .line 128
    .line 129
    .line 130
    invoke-interface {v12, v7}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 131
    .line 132
    .line 133
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 134
    move-result-object v3

    .line 135
    .line 136
    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 137
    .line 138
    .line 139
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 140
    move-result-object v4

    .line 141
    const/4 v5, 0x0

    .line 142
    .line 143
    if-ne v3, v4, :cond_5

    .line 144
    .line 145
    .line 146
    invoke-interface {v1}, Lj8/f;->getStart()Ljava/lang/Comparable;

    .line 147
    move-result-object v1

    .line 148
    .line 149
    check-cast v1, Ljava/lang/Number;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 153
    move-result v1

    .line 154
    .line 155
    .line 156
    invoke-static {v2, v13, v14, v1}, Landroidx/compose/material/SliderKt$RangeSlider$2;->d(Lj8/e;Lkotlin/jvm/internal/m0;Lkotlin/jvm/internal/m0;F)F

    .line 157
    move-result v1

    .line 158
    .line 159
    .line 160
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 161
    move-result-object v1

    .line 162
    .line 163
    .line 164
    invoke-static {v1, v5, v9, v5}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 165
    move-result-object v3

    .line 166
    .line 167
    .line 168
    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    :cond_5
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 172
    .line 173
    move-object/from16 v17, v3

    .line 174
    .line 175
    check-cast v17, Landroidx/compose/runtime/MutableState;

    .line 176
    .line 177
    iget-object v1, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$values:Lj8/e;

    .line 178
    .line 179
    iget-object v2, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$valueRange:Lj8/e;

    .line 180
    .line 181
    .line 182
    invoke-interface {v12, v7}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 183
    .line 184
    .line 185
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 186
    move-result-object v3

    .line 187
    .line 188
    .line 189
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 190
    move-result-object v4

    .line 191
    .line 192
    if-ne v3, v4, :cond_6

    .line 193
    .line 194
    .line 195
    invoke-interface {v1}, Lj8/f;->c()Ljava/lang/Comparable;

    .line 196
    move-result-object v1

    .line 197
    .line 198
    check-cast v1, Ljava/lang/Number;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 202
    move-result v1

    .line 203
    .line 204
    .line 205
    invoke-static {v2, v13, v14, v1}, Landroidx/compose/material/SliderKt$RangeSlider$2;->d(Lj8/e;Lkotlin/jvm/internal/m0;Lkotlin/jvm/internal/m0;F)F

    .line 206
    move-result v1

    .line 207
    .line 208
    .line 209
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 210
    move-result-object v1

    .line 211
    .line 212
    .line 213
    invoke-static {v1, v5, v9, v5}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 214
    move-result-object v3

    .line 215
    .line 216
    .line 217
    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 218
    .line 219
    .line 220
    :cond_6
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 221
    .line 222
    move-object/from16 v18, v3

    .line 223
    .line 224
    check-cast v18, Landroidx/compose/runtime/MutableState;

    .line 225
    .line 226
    new-instance v1, Landroidx/compose/material/SliderKt$RangeSlider$2$2;

    .line 227
    .line 228
    iget-object v2, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$valueRange:Lj8/e;

    .line 229
    .line 230
    .line 231
    invoke-direct {v1, v2, v13, v14}, Landroidx/compose/material/SliderKt$RangeSlider$2$2;-><init>(Lj8/e;Lkotlin/jvm/internal/m0;Lkotlin/jvm/internal/m0;)V

    .line 232
    .line 233
    iget-object v2, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$valueRange:Lj8/e;

    .line 234
    .line 235
    iget v3, v13, Lkotlin/jvm/internal/m0;->element:F

    .line 236
    .line 237
    iget v4, v14, Lkotlin/jvm/internal/m0;->element:F

    .line 238
    .line 239
    .line 240
    invoke-static {v3, v4}, Lj8/m;->b(FF)Lj8/e;

    .line 241
    move-result-object v3

    .line 242
    .line 243
    iget-object v4, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$values:Lj8/e;

    .line 244
    .line 245
    .line 246
    invoke-interface {v4}, Lj8/f;->getStart()Ljava/lang/Comparable;

    .line 247
    move-result-object v4

    .line 248
    .line 249
    check-cast v4, Ljava/lang/Number;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 253
    move-result v5

    .line 254
    .line 255
    iget v4, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$$dirty:I

    .line 256
    .line 257
    shr-int/lit8 v4, v4, 0x9

    .line 258
    .line 259
    and-int/lit8 v4, v4, 0x70

    .line 260
    .line 261
    or-int/lit16 v6, v4, 0xc00

    .line 262
    .line 263
    move-object/from16 v4, v17

    .line 264
    .line 265
    move/from16 v20, v6

    .line 266
    .line 267
    move-object/from16 v6, p2

    .line 268
    move v8, v7

    .line 269
    .line 270
    move/from16 v7, v20

    .line 271
    .line 272
    .line 273
    invoke-static/range {v1 .. v7}, Landroidx/compose/material/SliderKt;->h(Le8/l;Lj8/e;Lj8/e;Landroidx/compose/runtime/MutableState;FLandroidx/compose/runtime/Composer;I)V

    .line 274
    .line 275
    new-instance v1, Landroidx/compose/material/SliderKt$RangeSlider$2$3;

    .line 276
    .line 277
    iget-object v2, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$valueRange:Lj8/e;

    .line 278
    .line 279
    .line 280
    invoke-direct {v1, v2, v13, v14}, Landroidx/compose/material/SliderKt$RangeSlider$2$3;-><init>(Lj8/e;Lkotlin/jvm/internal/m0;Lkotlin/jvm/internal/m0;)V

    .line 281
    .line 282
    iget-object v2, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$valueRange:Lj8/e;

    .line 283
    .line 284
    iget v3, v13, Lkotlin/jvm/internal/m0;->element:F

    .line 285
    .line 286
    iget v4, v14, Lkotlin/jvm/internal/m0;->element:F

    .line 287
    .line 288
    .line 289
    invoke-static {v3, v4}, Lj8/m;->b(FF)Lj8/e;

    .line 290
    move-result-object v3

    .line 291
    .line 292
    iget-object v4, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$values:Lj8/e;

    .line 293
    .line 294
    .line 295
    invoke-interface {v4}, Lj8/f;->c()Ljava/lang/Comparable;

    .line 296
    move-result-object v4

    .line 297
    .line 298
    check-cast v4, Ljava/lang/Number;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 302
    move-result v5

    .line 303
    .line 304
    iget v4, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$$dirty:I

    .line 305
    .line 306
    shr-int/lit8 v4, v4, 0x9

    .line 307
    .line 308
    and-int/lit8 v4, v4, 0x70

    .line 309
    .line 310
    or-int/lit16 v7, v4, 0xc00

    .line 311
    .line 312
    move-object/from16 v4, v18

    .line 313
    .line 314
    .line 315
    invoke-static/range {v1 .. v7}, Landroidx/compose/material/SliderKt;->h(Le8/l;Lj8/e;Lj8/e;Landroidx/compose/runtime/MutableState;FLandroidx/compose/runtime/Composer;I)V

    .line 316
    .line 317
    .line 318
    const v1, 0x2e20b340

    .line 319
    .line 320
    .line 321
    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 322
    .line 323
    .line 324
    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 325
    .line 326
    .line 327
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 328
    move-result-object v1

    .line 329
    .line 330
    .line 331
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 332
    move-result-object v2

    .line 333
    .line 334
    if-ne v1, v2, :cond_7

    .line 335
    .line 336
    sget-object v1, Lkotlin/coroutines/h;->INSTANCE:Lkotlin/coroutines/h;

    .line 337
    .line 338
    .line 339
    invoke-static {v1, v12}, Landroidx/compose/runtime/EffectsKt;->j(Lkotlin/coroutines/g;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/o0;

    .line 340
    move-result-object v1

    .line 341
    .line 342
    new-instance v2, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 343
    .line 344
    .line 345
    invoke-direct {v2, v1}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;-><init>(Lkotlinx/coroutines/o0;)V

    .line 346
    .line 347
    .line 348
    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 349
    move-object v1, v2

    .line 350
    .line 351
    .line 352
    :cond_7
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 353
    .line 354
    check-cast v1, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v1}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->a()Lkotlinx/coroutines/o0;

    .line 358
    move-result-object v27

    .line 359
    .line 360
    .line 361
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 362
    .line 363
    new-instance v1, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1;

    .line 364
    .line 365
    iget-object v2, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$tickFractions:Ljava/util/List;

    .line 366
    .line 367
    iget-object v3, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$onValueChangeFinished:Le8/a;

    .line 368
    .line 369
    iget-object v4, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$onValueChangeState:Landroidx/compose/runtime/State;

    .line 370
    .line 371
    iget-object v5, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$valueRange:Lj8/e;

    .line 372
    .line 373
    move-object/from16 v20, v1

    .line 374
    .line 375
    move-object/from16 v21, v17

    .line 376
    .line 377
    move-object/from16 v22, v18

    .line 378
    .line 379
    move-object/from16 v23, v2

    .line 380
    .line 381
    move-object/from16 v24, v13

    .line 382
    .line 383
    move-object/from16 v25, v14

    .line 384
    .line 385
    move-object/from16 v26, v3

    .line 386
    .line 387
    move-object/from16 v28, v4

    .line 388
    .line 389
    move-object/from16 v29, v5

    .line 390
    .line 391
    .line 392
    invoke-direct/range {v20 .. v29}, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Ljava/util/List;Lkotlin/jvm/internal/m0;Lkotlin/jvm/internal/m0;Le8/a;Lkotlinx/coroutines/o0;Landroidx/compose/runtime/State;Lj8/e;)V

    .line 393
    .line 394
    .line 395
    invoke-static {v1, v12, v11}, Landroidx/compose/runtime/SnapshotStateKt;->n(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 396
    move-result-object v1

    .line 397
    const/4 v2, 0x7

    .line 398
    .line 399
    new-array v3, v2, [Ljava/lang/Object;

    .line 400
    .line 401
    aput-object v17, v3, v11

    .line 402
    .line 403
    aput-object v18, v3, v10

    .line 404
    .line 405
    iget-object v4, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$valueRange:Lj8/e;

    .line 406
    .line 407
    aput-object v4, v3, v9

    .line 408
    .line 409
    iget v4, v13, Lkotlin/jvm/internal/m0;->element:F

    .line 410
    .line 411
    .line 412
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 413
    move-result-object v4

    .line 414
    const/4 v5, 0x3

    .line 415
    .line 416
    aput-object v4, v3, v5

    .line 417
    .line 418
    iget v4, v14, Lkotlin/jvm/internal/m0;->element:F

    .line 419
    .line 420
    .line 421
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 422
    move-result-object v4

    .line 423
    const/4 v5, 0x4

    .line 424
    .line 425
    aput-object v4, v3, v5

    .line 426
    .line 427
    iget-object v4, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$values:Lj8/e;

    .line 428
    const/4 v5, 0x5

    .line 429
    .line 430
    aput-object v4, v3, v5

    .line 431
    .line 432
    iget-object v5, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$onValueChangeState:Landroidx/compose/runtime/State;

    .line 433
    const/4 v6, 0x6

    .line 434
    .line 435
    aput-object v5, v3, v6

    .line 436
    .line 437
    iget-object v6, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$valueRange:Lj8/e;

    .line 438
    .line 439
    .line 440
    const v7, -0x21de6e89

    .line 441
    .line 442
    .line 443
    invoke-interface {v12, v7}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 444
    move v7, v11

    .line 445
    move v8, v7

    .line 446
    .line 447
    :goto_4
    if-ge v7, v2, :cond_8

    .line 448
    .line 449
    aget-object v9, v3, v7

    .line 450
    .line 451
    .line 452
    invoke-interface {v12, v9}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 453
    move-result v9

    .line 454
    or-int/2addr v8, v9

    .line 455
    .line 456
    add-int/lit8 v7, v7, 0x1

    .line 457
    goto :goto_4

    .line 458
    .line 459
    .line 460
    :cond_8
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 461
    move-result-object v2

    .line 462
    .line 463
    if-nez v8, :cond_9

    .line 464
    .line 465
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 466
    .line 467
    .line 468
    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 469
    move-result-object v3

    .line 470
    .line 471
    if-ne v2, v3, :cond_a

    .line 472
    .line 473
    :cond_9
    new-instance v2, Landroidx/compose/material/SliderKt$RangeSlider$2$onDrag$1$1;

    .line 474
    .line 475
    move-object/from16 v20, v2

    .line 476
    .line 477
    move-object/from16 v21, v17

    .line 478
    .line 479
    move-object/from16 v22, v18

    .line 480
    .line 481
    move-object/from16 v23, v4

    .line 482
    .line 483
    move-object/from16 v24, v13

    .line 484
    .line 485
    move-object/from16 v25, v14

    .line 486
    .line 487
    move-object/from16 v26, v5

    .line 488
    .line 489
    move-object/from16 v27, v6

    .line 490
    .line 491
    .line 492
    invoke-direct/range {v20 .. v27}, Landroidx/compose/material/SliderKt$RangeSlider$2$onDrag$1$1;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lj8/e;Lkotlin/jvm/internal/m0;Lkotlin/jvm/internal/m0;Landroidx/compose/runtime/State;Lj8/e;)V

    .line 493
    .line 494
    .line 495
    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 496
    .line 497
    .line 498
    :cond_a
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 499
    .line 500
    .line 501
    invoke-static {v2, v12, v11}, Landroidx/compose/runtime/SnapshotStateKt;->n(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 502
    move-result-object v23

    .line 503
    .line 504
    sget-object v9, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 505
    .line 506
    iget-object v2, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$startInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 507
    .line 508
    iget-object v3, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$endInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 509
    .line 510
    iget-boolean v4, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$enabled:Z

    .line 511
    .line 512
    iget-object v5, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$valueRange:Lj8/e;

    .line 513
    move-object v10, v13

    .line 514
    move-object v13, v9

    .line 515
    move-object v11, v14

    .line 516
    move-object v14, v2

    .line 517
    move v2, v15

    .line 518
    move-object v15, v3

    .line 519
    .line 520
    move-object/from16 v16, v17

    .line 521
    .line 522
    move-object/from16 v17, v18

    .line 523
    .line 524
    move/from16 v18, v4

    .line 525
    .line 526
    move/from16 v20, v2

    .line 527
    .line 528
    move-object/from16 v21, v5

    .line 529
    .line 530
    move-object/from16 v22, v1

    .line 531
    .line 532
    .line 533
    invoke-static/range {v13 .. v23}, Landroidx/compose/material/SliderKt;->q(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;ZZFLj8/e;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)Landroidx/compose/ui/Modifier;

    .line 534
    move-result-object v13

    .line 535
    .line 536
    iget-object v1, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$values:Lj8/e;

    .line 537
    .line 538
    .line 539
    invoke-interface {v1}, Lj8/f;->getStart()Ljava/lang/Comparable;

    .line 540
    move-result-object v1

    .line 541
    .line 542
    check-cast v1, Ljava/lang/Number;

    .line 543
    .line 544
    .line 545
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 546
    move-result v1

    .line 547
    .line 548
    iget-object v2, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$valueRange:Lj8/e;

    .line 549
    .line 550
    .line 551
    invoke-interface {v2}, Lj8/f;->getStart()Ljava/lang/Comparable;

    .line 552
    move-result-object v2

    .line 553
    .line 554
    check-cast v2, Ljava/lang/Number;

    .line 555
    .line 556
    .line 557
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 558
    move-result v2

    .line 559
    .line 560
    iget-object v3, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$values:Lj8/e;

    .line 561
    .line 562
    .line 563
    invoke-interface {v3}, Lj8/f;->c()Ljava/lang/Comparable;

    .line 564
    move-result-object v3

    .line 565
    .line 566
    check-cast v3, Ljava/lang/Number;

    .line 567
    .line 568
    .line 569
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 570
    move-result v3

    .line 571
    .line 572
    .line 573
    invoke-static {v1, v2, v3}, Lj8/m;->m(FFF)F

    .line 574
    move-result v1

    .line 575
    .line 576
    iget-object v2, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$values:Lj8/e;

    .line 577
    .line 578
    .line 579
    invoke-interface {v2}, Lj8/f;->c()Ljava/lang/Comparable;

    .line 580
    move-result-object v2

    .line 581
    .line 582
    check-cast v2, Ljava/lang/Number;

    .line 583
    .line 584
    .line 585
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 586
    move-result v2

    .line 587
    .line 588
    iget-object v3, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$values:Lj8/e;

    .line 589
    .line 590
    .line 591
    invoke-interface {v3}, Lj8/f;->getStart()Ljava/lang/Comparable;

    .line 592
    move-result-object v3

    .line 593
    .line 594
    check-cast v3, Ljava/lang/Number;

    .line 595
    .line 596
    .line 597
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 598
    move-result v3

    .line 599
    .line 600
    iget-object v4, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$valueRange:Lj8/e;

    .line 601
    .line 602
    .line 603
    invoke-interface {v4}, Lj8/f;->c()Ljava/lang/Comparable;

    .line 604
    move-result-object v4

    .line 605
    .line 606
    check-cast v4, Ljava/lang/Number;

    .line 607
    .line 608
    .line 609
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 610
    move-result v4

    .line 611
    .line 612
    .line 613
    invoke-static {v2, v3, v4}, Lj8/m;->m(FFF)F

    .line 614
    move-result v14

    .line 615
    .line 616
    iget-object v2, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$valueRange:Lj8/e;

    .line 617
    .line 618
    .line 619
    invoke-interface {v2}, Lj8/f;->getStart()Ljava/lang/Comparable;

    .line 620
    move-result-object v2

    .line 621
    .line 622
    check-cast v2, Ljava/lang/Number;

    .line 623
    .line 624
    .line 625
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 626
    move-result v2

    .line 627
    .line 628
    iget-object v3, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$valueRange:Lj8/e;

    .line 629
    .line 630
    .line 631
    invoke-interface {v3}, Lj8/f;->c()Ljava/lang/Comparable;

    .line 632
    move-result-object v3

    .line 633
    .line 634
    check-cast v3, Ljava/lang/Number;

    .line 635
    .line 636
    .line 637
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 638
    move-result v3

    .line 639
    .line 640
    .line 641
    invoke-static {v2, v3, v1}, Landroidx/compose/material/SliderKt;->o(FFF)F

    .line 642
    move-result v15

    .line 643
    .line 644
    iget-object v2, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$valueRange:Lj8/e;

    .line 645
    .line 646
    .line 647
    invoke-interface {v2}, Lj8/f;->getStart()Ljava/lang/Comparable;

    .line 648
    move-result-object v2

    .line 649
    .line 650
    check-cast v2, Ljava/lang/Number;

    .line 651
    .line 652
    .line 653
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 654
    move-result v2

    .line 655
    .line 656
    iget-object v3, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$valueRange:Lj8/e;

    .line 657
    .line 658
    .line 659
    invoke-interface {v3}, Lj8/f;->c()Ljava/lang/Comparable;

    .line 660
    move-result-object v3

    .line 661
    .line 662
    check-cast v3, Ljava/lang/Number;

    .line 663
    .line 664
    .line 665
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 666
    move-result v3

    .line 667
    .line 668
    .line 669
    invoke-static {v2, v3, v14}, Landroidx/compose/material/SliderKt;->o(FFF)F

    .line 670
    move-result v16

    .line 671
    .line 672
    iget-object v4, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$tickFractions:Ljava/util/List;

    .line 673
    .line 674
    iget-boolean v5, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$enabled:Z

    .line 675
    .line 676
    iget-object v2, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$onValueChangeState:Landroidx/compose/runtime/State;

    .line 677
    .line 678
    .line 679
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 680
    move-result-object v3

    .line 681
    .line 682
    iget-object v6, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$onValueChangeState:Landroidx/compose/runtime/State;

    .line 683
    .line 684
    .line 685
    const v8, 0x1e7b2b64

    .line 686
    .line 687
    .line 688
    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 689
    .line 690
    .line 691
    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 692
    move-result v2

    .line 693
    .line 694
    .line 695
    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 696
    move-result v3

    .line 697
    or-int/2addr v2, v3

    .line 698
    .line 699
    .line 700
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 701
    move-result-object v3

    .line 702
    .line 703
    if-nez v2, :cond_b

    .line 704
    .line 705
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 706
    .line 707
    .line 708
    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 709
    move-result-object v2

    .line 710
    .line 711
    if-ne v3, v2, :cond_c

    .line 712
    .line 713
    :cond_b
    new-instance v3, Landroidx/compose/material/SliderKt$RangeSlider$2$startThumbSemantics$1$1;

    .line 714
    .line 715
    .line 716
    invoke-direct {v3, v6, v14}, Landroidx/compose/material/SliderKt$RangeSlider$2$startThumbSemantics$1$1;-><init>(Landroidx/compose/runtime/State;F)V

    .line 717
    .line 718
    .line 719
    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 720
    .line 721
    .line 722
    :cond_c
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 723
    move-object v6, v3

    .line 724
    .line 725
    check-cast v6, Le8/l;

    .line 726
    .line 727
    iget-object v2, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$valueRange:Lj8/e;

    .line 728
    .line 729
    .line 730
    invoke-interface {v2}, Lj8/f;->getStart()Ljava/lang/Comparable;

    .line 731
    move-result-object v2

    .line 732
    .line 733
    check-cast v2, Ljava/lang/Number;

    .line 734
    .line 735
    .line 736
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 737
    move-result v2

    .line 738
    .line 739
    .line 740
    invoke-static {v2, v14}, Lj8/m;->b(FF)Lj8/e;

    .line 741
    move-result-object v7

    .line 742
    .line 743
    iget v3, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$steps:I

    .line 744
    move-object v2, v9

    .line 745
    .line 746
    move/from16 v17, v3

    .line 747
    move v3, v1

    .line 748
    .line 749
    move-object/from16 p1, v13

    .line 750
    move v13, v8

    .line 751
    .line 752
    move/from16 v8, v17

    .line 753
    .line 754
    .line 755
    invoke-static/range {v2 .. v8}, Landroidx/compose/material/SliderKt;->t(Landroidx/compose/ui/Modifier;FLjava/util/List;ZLe8/l;Lj8/e;I)Landroidx/compose/ui/Modifier;

    .line 756
    move-result-object v17

    .line 757
    .line 758
    iget-object v4, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$tickFractions:Ljava/util/List;

    .line 759
    .line 760
    iget-boolean v5, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$enabled:Z

    .line 761
    .line 762
    iget-object v2, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$onValueChangeState:Landroidx/compose/runtime/State;

    .line 763
    .line 764
    .line 765
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 766
    move-result-object v3

    .line 767
    .line 768
    iget-object v6, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$onValueChangeState:Landroidx/compose/runtime/State;

    .line 769
    .line 770
    .line 771
    invoke-interface {v12, v13}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 772
    .line 773
    .line 774
    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 775
    move-result v2

    .line 776
    .line 777
    .line 778
    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 779
    move-result v3

    .line 780
    or-int/2addr v2, v3

    .line 781
    .line 782
    .line 783
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 784
    move-result-object v3

    .line 785
    .line 786
    if-nez v2, :cond_d

    .line 787
    .line 788
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 789
    .line 790
    .line 791
    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 792
    move-result-object v2

    .line 793
    .line 794
    if-ne v3, v2, :cond_e

    .line 795
    .line 796
    :cond_d
    new-instance v3, Landroidx/compose/material/SliderKt$RangeSlider$2$endThumbSemantics$1$1;

    .line 797
    .line 798
    .line 799
    invoke-direct {v3, v6, v1}, Landroidx/compose/material/SliderKt$RangeSlider$2$endThumbSemantics$1$1;-><init>(Landroidx/compose/runtime/State;F)V

    .line 800
    .line 801
    .line 802
    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 803
    .line 804
    .line 805
    :cond_e
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 806
    move-object v6, v3

    .line 807
    .line 808
    check-cast v6, Le8/l;

    .line 809
    .line 810
    iget-object v2, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$valueRange:Lj8/e;

    .line 811
    .line 812
    .line 813
    invoke-interface {v2}, Lj8/f;->c()Ljava/lang/Comparable;

    .line 814
    move-result-object v2

    .line 815
    .line 816
    check-cast v2, Ljava/lang/Number;

    .line 817
    .line 818
    .line 819
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 820
    move-result v2

    .line 821
    .line 822
    .line 823
    invoke-static {v1, v2}, Lj8/m;->b(FF)Lj8/e;

    .line 824
    move-result-object v7

    .line 825
    .line 826
    iget v8, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$steps:I

    .line 827
    move-object v2, v9

    .line 828
    move v3, v14

    .line 829
    .line 830
    .line 831
    invoke-static/range {v2 .. v8}, Landroidx/compose/material/SliderKt;->t(Landroidx/compose/ui/Modifier;FLjava/util/List;ZLe8/l;Lj8/e;I)Landroidx/compose/ui/Modifier;

    .line 832
    move-result-object v13

    .line 833
    .line 834
    iget-boolean v1, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$enabled:Z

    .line 835
    .line 836
    iget-object v4, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$tickFractions:Ljava/util/List;

    .line 837
    .line 838
    iget-object v5, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$colors:Landroidx/compose/material/SliderColors;

    .line 839
    .line 840
    iget v2, v11, Lkotlin/jvm/internal/m0;->element:F

    .line 841
    .line 842
    iget v3, v10, Lkotlin/jvm/internal/m0;->element:F

    .line 843
    .line 844
    sub-float v6, v2, v3

    .line 845
    .line 846
    iget-object v7, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$startInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 847
    .line 848
    iget-object v8, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$endInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 849
    .line 850
    iget v2, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$$dirty:I

    .line 851
    .line 852
    shr-int/lit8 v3, v2, 0x9

    .line 853
    .line 854
    and-int/lit8 v3, v3, 0xe

    .line 855
    .line 856
    .line 857
    const v9, 0xd81000

    .line 858
    or-int/2addr v3, v9

    .line 859
    .line 860
    .line 861
    const v9, 0xe000

    .line 862
    .line 863
    shr-int/lit8 v2, v2, 0x9

    .line 864
    and-int/2addr v2, v9

    .line 865
    .line 866
    or-int v14, v3, v2

    .line 867
    .line 868
    const/16 v18, 0x0

    .line 869
    move v2, v15

    .line 870
    .line 871
    move/from16 v3, v16

    .line 872
    .line 873
    move-object/from16 v9, p1

    .line 874
    .line 875
    move-object/from16 v10, v17

    .line 876
    move-object v11, v13

    .line 877
    .line 878
    move-object/from16 v12, p2

    .line 879
    move v13, v14

    .line 880
    .line 881
    move/from16 v14, v18

    .line 882
    .line 883
    .line 884
    invoke-static/range {v1 .. v14}, Landroidx/compose/material/SliderKt;->i(ZFFLjava/util/List;Landroidx/compose/material/SliderColors;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    .line 885
    :goto_5
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;

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
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/material/SliderKt$RangeSlider$2;->c(Landroidx/compose/foundation/layout/BoxWithConstraintsScope;Landroidx/compose/runtime/Composer;I)V

    .line 14
    .line 15
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 16
    return-object p1
.end method
