.class final Landroidx/compose/material/SliderKt$Slider$3;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/SliderKt;->d(FLe8/l;Landroidx/compose/ui/Modifier;ZLj8/e;ILe8/a;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/SliderColors;Landroidx/compose/runtime/Composer;II)V
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
    value = "SMAP\nSlider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Slider.kt\nandroidx/compose/material/SliderKt$Slider$3\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Effects.kt\nandroidx/compose/runtime/EffectsKt\n+ 4 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 5 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 6 Effects.kt\nandroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1\n*L\n1#1,1163:1\n76#2:1164\n76#2:1165\n473#3,4:1166\n477#3,2:1174\n481#3:1180\n25#4:1170\n25#4:1181\n25#4:1188\n67#4,3:1195\n66#4:1198\n36#4:1205\n1057#5,3:1171\n1060#5,3:1177\n1057#5,6:1182\n1057#5,6:1189\n1057#5,6:1199\n1057#5,6:1206\n473#6:1176\n*S KotlinDebug\n*F\n+ 1 Slider.kt\nandroidx/compose/material/SliderKt$Slider$3\n*L\n168#1:1164\n173#1:1165\n184#1:1166,4\n184#1:1174,2\n184#1:1180\n184#1:1170\n185#1:1181\n186#1:1188\n188#1:1195,3\n188#1:1198\n228#1:1205\n184#1:1171,3\n184#1:1177,3\n185#1:1182,6\n186#1:1189,6\n188#1:1199,6\n228#1:1206,6\n184#1:1176\n*E\n"
.end annotation


# instance fields
.field final synthetic $$dirty:I

.field final synthetic $colors:Landroidx/compose/material/SliderColors;

.field final synthetic $enabled:Z

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

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
            "Ljava/lang/Float;",
            "Lw7/l0;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $tickFractions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $value:F

.field final synthetic $valueRange:Lj8/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj8/e<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lj8/e;IFLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLjava/util/List;Landroidx/compose/material/SliderColors;Landroidx/compose/runtime/State;Le8/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj8/e<",
            "Ljava/lang/Float;",
            ">;IF",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/material/SliderColors;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Le8/l<",
            "-",
            "Ljava/lang/Float;",
            "Lw7/l0;",
            ">;>;",
            "Le8/a<",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/material/SliderKt$Slider$3;->$valueRange:Lj8/e;

    iput p2, p0, Landroidx/compose/material/SliderKt$Slider$3;->$$dirty:I

    iput p3, p0, Landroidx/compose/material/SliderKt$Slider$3;->$value:F

    iput-object p4, p0, Landroidx/compose/material/SliderKt$Slider$3;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-boolean p5, p0, Landroidx/compose/material/SliderKt$Slider$3;->$enabled:Z

    iput-object p6, p0, Landroidx/compose/material/SliderKt$Slider$3;->$tickFractions:Ljava/util/List;

    iput-object p7, p0, Landroidx/compose/material/SliderKt$Slider$3;->$colors:Landroidx/compose/material/SliderColors;

    iput-object p8, p0, Landroidx/compose/material/SliderKt$Slider$3;->$onValueChangeState:Landroidx/compose/runtime/State;

    iput-object p9, p0, Landroidx/compose/material/SliderKt$Slider$3;->$onValueChangeFinished:Le8/a;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method

.method public static final synthetic a(Lj8/e;Lkotlin/jvm/internal/m0;Lkotlin/jvm/internal/m0;F)F
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material/SliderKt$Slider$3;->d(Lj8/e;Lkotlin/jvm/internal/m0;Lkotlin/jvm/internal/m0;F)F

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic b(Lkotlin/jvm/internal/m0;Lkotlin/jvm/internal/m0;Lj8/e;F)F
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material/SliderKt$Slider$3;->e(Lkotlin/jvm/internal/m0;Lkotlin/jvm/internal/m0;Lj8/e;F)F

    .line 4
    move-result p0

    .line 5
    return p0
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

.method private static final e(Lkotlin/jvm/internal/m0;Lkotlin/jvm/internal/m0;Lj8/e;F)F
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/m0;",
            "Lkotlin/jvm/internal/m0;",
            "Lj8/e<",
            "Ljava/lang/Float;",
            ">;F)F"
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
    invoke-static {p0, p1, p3, v0, p2}, Landroidx/compose/material/SliderKt;->r(FFFFF)F

    .line 28
    move-result p0

    .line 29
    return p0
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
    move-object/from16 v8, p2

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
    const/4 v3, 0x2

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

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
    move v2, v3

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
    const/16 v4, 0x12

    .line 35
    .line 36
    if-ne v2, v4, :cond_3

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
    goto/16 :goto_4

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
    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 56
    move-result-object v2

    .line 57
    .line 58
    sget-object v4, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    .line 59
    const/4 v9, 0x0

    .line 60
    .line 61
    if-ne v2, v4, :cond_4

    .line 62
    const/4 v2, 0x1

    .line 63
    .line 64
    move/from16 v19, v2

    .line 65
    goto :goto_3

    .line 66
    .line 67
    :cond_4
    move/from16 v19, v9

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
    int-to-float v13, v1

    .line 77
    .line 78
    new-instance v15, Lkotlin/jvm/internal/m0;

    .line 79
    .line 80
    .line 81
    invoke-direct {v15}, Lkotlin/jvm/internal/m0;-><init>()V

    .line 82
    .line 83
    new-instance v14, Lkotlin/jvm/internal/m0;

    .line 84
    .line 85
    .line 86
    invoke-direct {v14}, Lkotlin/jvm/internal/m0;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 90
    move-result-object v1

    .line 91
    .line 92
    .line 93
    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

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
    sub-float v2, v13, v2

    .line 107
    const/4 v4, 0x0

    .line 108
    .line 109
    .line 110
    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    .line 111
    move-result v2

    .line 112
    .line 113
    iput v2, v15, Lkotlin/jvm/internal/m0;->element:F

    .line 114
    .line 115
    .line 116
    invoke-static {}, Landroidx/compose/material/SliderKt;->z()F

    .line 117
    move-result v2

    .line 118
    .line 119
    .line 120
    invoke-interface {v1, v2}, Landroidx/compose/ui/unit/Density;->H0(F)F

    .line 121
    move-result v1

    .line 122
    .line 123
    iget v2, v15, Lkotlin/jvm/internal/m0;->element:F

    .line 124
    .line 125
    .line 126
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    .line 127
    move-result v1

    .line 128
    .line 129
    iput v1, v14, Lkotlin/jvm/internal/m0;->element:F

    .line 130
    .line 131
    .line 132
    const v1, 0x2e20b340

    .line 133
    .line 134
    .line 135
    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 136
    .line 137
    .line 138
    const v1, -0x1d58f75c

    .line 139
    .line 140
    .line 141
    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 142
    .line 143
    .line 144
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 145
    move-result-object v2

    .line 146
    .line 147
    sget-object v28, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 148
    .line 149
    .line 150
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 151
    move-result-object v5

    .line 152
    .line 153
    if-ne v2, v5, :cond_5

    .line 154
    .line 155
    sget-object v2, Lkotlin/coroutines/h;->INSTANCE:Lkotlin/coroutines/h;

    .line 156
    .line 157
    .line 158
    invoke-static {v2, v8}, Landroidx/compose/runtime/EffectsKt;->j(Lkotlin/coroutines/g;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/o0;

    .line 159
    move-result-object v2

    .line 160
    .line 161
    new-instance v5, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 162
    .line 163
    .line 164
    invoke-direct {v5, v2}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;-><init>(Lkotlinx/coroutines/o0;)V

    .line 165
    .line 166
    .line 167
    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 168
    move-object v2, v5

    .line 169
    .line 170
    .line 171
    :cond_5
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 172
    .line 173
    check-cast v2, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->a()Lkotlinx/coroutines/o0;

    .line 177
    move-result-object v10

    .line 178
    .line 179
    .line 180
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 181
    .line 182
    iget v2, v0, Landroidx/compose/material/SliderKt$Slider$3;->$value:F

    .line 183
    .line 184
    iget-object v5, v0, Landroidx/compose/material/SliderKt$Slider$3;->$valueRange:Lj8/e;

    .line 185
    .line 186
    .line 187
    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 188
    .line 189
    .line 190
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 191
    move-result-object v6

    .line 192
    .line 193
    .line 194
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 195
    move-result-object v7

    .line 196
    const/4 v12, 0x0

    .line 197
    .line 198
    if-ne v6, v7, :cond_6

    .line 199
    .line 200
    .line 201
    invoke-static {v5, v14, v15, v2}, Landroidx/compose/material/SliderKt$Slider$3;->d(Lj8/e;Lkotlin/jvm/internal/m0;Lkotlin/jvm/internal/m0;F)F

    .line 202
    move-result v2

    .line 203
    .line 204
    .line 205
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 206
    move-result-object v2

    .line 207
    .line 208
    .line 209
    invoke-static {v2, v12, v3, v12}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 210
    move-result-object v6

    .line 211
    .line 212
    .line 213
    invoke-interface {v8, v6}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    :cond_6
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 217
    .line 218
    move-object/from16 v16, v6

    .line 219
    .line 220
    check-cast v16, Landroidx/compose/runtime/MutableState;

    .line 221
    .line 222
    .line 223
    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 224
    .line 225
    .line 226
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 227
    move-result-object v1

    .line 228
    .line 229
    .line 230
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 231
    move-result-object v2

    .line 232
    .line 233
    if-ne v1, v2, :cond_7

    .line 234
    .line 235
    .line 236
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 237
    move-result-object v1

    .line 238
    .line 239
    .line 240
    invoke-static {v1, v12, v3, v12}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 241
    move-result-object v1

    .line 242
    .line 243
    .line 244
    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 245
    .line 246
    .line 247
    :cond_7
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 248
    .line 249
    move-object/from16 v17, v1

    .line 250
    .line 251
    check-cast v17, Landroidx/compose/runtime/MutableState;

    .line 252
    .line 253
    iget v1, v14, Lkotlin/jvm/internal/m0;->element:F

    .line 254
    .line 255
    .line 256
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 257
    move-result-object v1

    .line 258
    .line 259
    iget v2, v15, Lkotlin/jvm/internal/m0;->element:F

    .line 260
    .line 261
    .line 262
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 263
    move-result-object v2

    .line 264
    .line 265
    iget-object v3, v0, Landroidx/compose/material/SliderKt$Slider$3;->$valueRange:Lj8/e;

    .line 266
    .line 267
    iget-object v4, v0, Landroidx/compose/material/SliderKt$Slider$3;->$onValueChangeState:Landroidx/compose/runtime/State;

    .line 268
    .line 269
    .line 270
    const v5, 0x607fb4c4

    .line 271
    .line 272
    .line 273
    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 274
    .line 275
    .line 276
    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 277
    move-result v1

    .line 278
    .line 279
    .line 280
    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 281
    move-result v2

    .line 282
    or-int/2addr v1, v2

    .line 283
    .line 284
    .line 285
    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 286
    move-result v2

    .line 287
    or-int/2addr v1, v2

    .line 288
    .line 289
    .line 290
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 291
    move-result-object v2

    .line 292
    .line 293
    if-nez v1, :cond_8

    .line 294
    .line 295
    .line 296
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 297
    move-result-object v1

    .line 298
    .line 299
    if-ne v2, v1, :cond_9

    .line 300
    .line 301
    :cond_8
    new-instance v2, Landroidx/compose/material/SliderDraggableState;

    .line 302
    .line 303
    new-instance v1, Landroidx/compose/material/SliderKt$Slider$3$draggableState$1$1;

    .line 304
    .line 305
    move-object/from16 v20, v1

    .line 306
    .line 307
    move-object/from16 v21, v16

    .line 308
    .line 309
    move-object/from16 v22, v17

    .line 310
    .line 311
    move-object/from16 v23, v14

    .line 312
    .line 313
    move-object/from16 v24, v15

    .line 314
    .line 315
    move-object/from16 v25, v4

    .line 316
    .line 317
    move-object/from16 v26, v3

    .line 318
    .line 319
    .line 320
    invoke-direct/range {v20 .. v26}, Landroidx/compose/material/SliderKt$Slider$3$draggableState$1$1;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/internal/m0;Lkotlin/jvm/internal/m0;Landroidx/compose/runtime/State;Lj8/e;)V

    .line 321
    .line 322
    .line 323
    invoke-direct {v2, v1}, Landroidx/compose/material/SliderDraggableState;-><init>(Le8/l;)V

    .line 324
    .line 325
    .line 326
    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 327
    .line 328
    .line 329
    :cond_9
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 330
    .line 331
    move-object/from16 v29, v2

    .line 332
    .line 333
    check-cast v29, Landroidx/compose/material/SliderDraggableState;

    .line 334
    .line 335
    new-instance v1, Landroidx/compose/material/SliderKt$Slider$3$2;

    .line 336
    .line 337
    iget-object v2, v0, Landroidx/compose/material/SliderKt$Slider$3;->$valueRange:Lj8/e;

    .line 338
    .line 339
    .line 340
    invoke-direct {v1, v2, v14, v15}, Landroidx/compose/material/SliderKt$Slider$3$2;-><init>(Lj8/e;Lkotlin/jvm/internal/m0;Lkotlin/jvm/internal/m0;)V

    .line 341
    .line 342
    iget-object v2, v0, Landroidx/compose/material/SliderKt$Slider$3;->$valueRange:Lj8/e;

    .line 343
    .line 344
    iget v3, v14, Lkotlin/jvm/internal/m0;->element:F

    .line 345
    .line 346
    iget v4, v15, Lkotlin/jvm/internal/m0;->element:F

    .line 347
    .line 348
    .line 349
    invoke-static {v3, v4}, Lj8/m;->b(FF)Lj8/e;

    .line 350
    move-result-object v3

    .line 351
    .line 352
    iget v5, v0, Landroidx/compose/material/SliderKt$Slider$3;->$value:F

    .line 353
    .line 354
    iget v4, v0, Landroidx/compose/material/SliderKt$Slider$3;->$$dirty:I

    .line 355
    .line 356
    shr-int/lit8 v6, v4, 0x9

    .line 357
    .line 358
    and-int/lit8 v6, v6, 0x70

    .line 359
    .line 360
    or-int/lit16 v6, v6, 0xc00

    .line 361
    .line 362
    shl-int/lit8 v4, v4, 0xc

    .line 363
    .line 364
    .line 365
    const v7, 0xe000

    .line 366
    and-int/2addr v4, v7

    .line 367
    .line 368
    or-int v7, v6, v4

    .line 369
    .line 370
    move-object/from16 v4, v16

    .line 371
    .line 372
    move-object/from16 v6, p2

    .line 373
    .line 374
    .line 375
    invoke-static/range {v1 .. v7}, Landroidx/compose/material/SliderKt;->h(Le8/l;Lj8/e;Lj8/e;Landroidx/compose/runtime/MutableState;FLandroidx/compose/runtime/Composer;I)V

    .line 376
    .line 377
    new-instance v1, Landroidx/compose/material/SliderKt$Slider$3$gestureEndAction$1;

    .line 378
    .line 379
    iget-object v2, v0, Landroidx/compose/material/SliderKt$Slider$3;->$tickFractions:Ljava/util/List;

    .line 380
    .line 381
    iget-object v3, v0, Landroidx/compose/material/SliderKt$Slider$3;->$onValueChangeFinished:Le8/a;

    .line 382
    .line 383
    move-object/from16 v20, v1

    .line 384
    .line 385
    move-object/from16 v21, v16

    .line 386
    .line 387
    move-object/from16 v22, v2

    .line 388
    .line 389
    move-object/from16 v23, v14

    .line 390
    .line 391
    move-object/from16 v24, v15

    .line 392
    .line 393
    move-object/from16 v25, v10

    .line 394
    .line 395
    move-object/from16 v26, v29

    .line 396
    .line 397
    move-object/from16 v27, v3

    .line 398
    .line 399
    .line 400
    invoke-direct/range {v20 .. v27}, Landroidx/compose/material/SliderKt$Slider$3$gestureEndAction$1;-><init>(Landroidx/compose/runtime/MutableState;Ljava/util/List;Lkotlin/jvm/internal/m0;Lkotlin/jvm/internal/m0;Lkotlinx/coroutines/o0;Landroidx/compose/material/SliderDraggableState;Le8/a;)V

    .line 401
    .line 402
    .line 403
    invoke-static {v1, v8, v9}, Landroidx/compose/runtime/SnapshotStateKt;->n(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 404
    move-result-object v1

    .line 405
    .line 406
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 407
    .line 408
    iget-object v3, v0, Landroidx/compose/material/SliderKt$Slider$3;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 409
    .line 410
    iget-boolean v4, v0, Landroidx/compose/material/SliderKt$Slider$3;->$enabled:Z

    .line 411
    move-object v10, v2

    .line 412
    .line 413
    move-object/from16 v11, v29

    .line 414
    move-object v5, v12

    .line 415
    move-object v12, v3

    .line 416
    move-object v3, v14

    .line 417
    .line 418
    move/from16 v14, v19

    .line 419
    move-object v6, v15

    .line 420
    .line 421
    move-object/from16 v15, v16

    .line 422
    .line 423
    move-object/from16 v16, v1

    .line 424
    .line 425
    move/from16 v18, v4

    .line 426
    .line 427
    .line 428
    invoke-static/range {v10 .. v18}, Landroidx/compose/material/SliderKt;->u(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;FZLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Z)Landroidx/compose/ui/Modifier;

    .line 429
    move-result-object v4

    .line 430
    .line 431
    sget-object v12, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 432
    .line 433
    .line 434
    invoke-virtual/range {v29 .. v29}, Landroidx/compose/material/SliderDraggableState;->g()Z

    .line 435
    move-result v15

    .line 436
    .line 437
    iget-boolean v13, v0, Landroidx/compose/material/SliderKt$Slider$3;->$enabled:Z

    .line 438
    .line 439
    iget-object v14, v0, Landroidx/compose/material/SliderKt$Slider$3;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 440
    .line 441
    const/16 v16, 0x0

    .line 442
    .line 443
    .line 444
    const v7, 0x44faf204

    .line 445
    .line 446
    .line 447
    invoke-interface {v8, v7}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 448
    .line 449
    .line 450
    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 451
    move-result v7

    .line 452
    .line 453
    .line 454
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 455
    move-result-object v9

    .line 456
    .line 457
    if-nez v7, :cond_a

    .line 458
    .line 459
    .line 460
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 461
    move-result-object v7

    .line 462
    .line 463
    if-ne v9, v7, :cond_b

    .line 464
    .line 465
    :cond_a
    new-instance v9, Landroidx/compose/material/SliderKt$Slider$3$drag$1$1;

    .line 466
    .line 467
    .line 468
    invoke-direct {v9, v1, v5}, Landroidx/compose/material/SliderKt$Slider$3$drag$1$1;-><init>(Landroidx/compose/runtime/State;Lkotlin/coroutines/d;)V

    .line 469
    .line 470
    .line 471
    invoke-interface {v8, v9}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 472
    .line 473
    .line 474
    :cond_b
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 475
    .line 476
    move-object/from16 v17, v9

    .line 477
    .line 478
    check-cast v17, Le8/q;

    .line 479
    .line 480
    const/16 v1, 0x20

    .line 481
    .line 482
    const/16 v20, 0x0

    .line 483
    move-object v10, v2

    .line 484
    .line 485
    move-object/from16 v11, v29

    .line 486
    .line 487
    move/from16 v18, v19

    .line 488
    .line 489
    move/from16 v19, v1

    .line 490
    .line 491
    .line 492
    invoke-static/range {v10 .. v20}, Landroidx/compose/foundation/gestures/DraggableKt;->j(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLe8/q;Le8/q;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 493
    move-result-object v1

    .line 494
    .line 495
    iget v2, v0, Landroidx/compose/material/SliderKt$Slider$3;->$value:F

    .line 496
    .line 497
    iget-object v5, v0, Landroidx/compose/material/SliderKt$Slider$3;->$valueRange:Lj8/e;

    .line 498
    .line 499
    .line 500
    invoke-interface {v5}, Lj8/f;->getStart()Ljava/lang/Comparable;

    .line 501
    move-result-object v5

    .line 502
    .line 503
    check-cast v5, Ljava/lang/Number;

    .line 504
    .line 505
    .line 506
    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    .line 507
    move-result v5

    .line 508
    .line 509
    iget-object v7, v0, Landroidx/compose/material/SliderKt$Slider$3;->$valueRange:Lj8/e;

    .line 510
    .line 511
    .line 512
    invoke-interface {v7}, Lj8/f;->c()Ljava/lang/Comparable;

    .line 513
    move-result-object v7

    .line 514
    .line 515
    check-cast v7, Ljava/lang/Number;

    .line 516
    .line 517
    .line 518
    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    .line 519
    move-result v7

    .line 520
    .line 521
    .line 522
    invoke-static {v2, v5, v7}, Lj8/m;->m(FFF)F

    .line 523
    move-result v2

    .line 524
    .line 525
    iget-object v5, v0, Landroidx/compose/material/SliderKt$Slider$3;->$valueRange:Lj8/e;

    .line 526
    .line 527
    .line 528
    invoke-interface {v5}, Lj8/f;->getStart()Ljava/lang/Comparable;

    .line 529
    move-result-object v5

    .line 530
    .line 531
    check-cast v5, Ljava/lang/Number;

    .line 532
    .line 533
    .line 534
    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    .line 535
    move-result v5

    .line 536
    .line 537
    iget-object v7, v0, Landroidx/compose/material/SliderKt$Slider$3;->$valueRange:Lj8/e;

    .line 538
    .line 539
    .line 540
    invoke-interface {v7}, Lj8/f;->c()Ljava/lang/Comparable;

    .line 541
    move-result-object v7

    .line 542
    .line 543
    check-cast v7, Ljava/lang/Number;

    .line 544
    .line 545
    .line 546
    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    .line 547
    move-result v7

    .line 548
    .line 549
    .line 550
    invoke-static {v5, v7, v2}, Landroidx/compose/material/SliderKt;->o(FFF)F

    .line 551
    move-result v2

    .line 552
    .line 553
    iget-boolean v5, v0, Landroidx/compose/material/SliderKt$Slider$3;->$enabled:Z

    .line 554
    .line 555
    iget-object v7, v0, Landroidx/compose/material/SliderKt$Slider$3;->$tickFractions:Ljava/util/List;

    .line 556
    .line 557
    iget-object v9, v0, Landroidx/compose/material/SliderKt$Slider$3;->$colors:Landroidx/compose/material/SliderColors;

    .line 558
    .line 559
    iget v6, v6, Lkotlin/jvm/internal/m0;->element:F

    .line 560
    .line 561
    iget v3, v3, Lkotlin/jvm/internal/m0;->element:F

    .line 562
    sub-float/2addr v6, v3

    .line 563
    .line 564
    iget-object v10, v0, Landroidx/compose/material/SliderKt$Slider$3;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 565
    .line 566
    .line 567
    invoke-interface {v4, v1}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 568
    move-result-object v11

    .line 569
    .line 570
    iget v1, v0, Landroidx/compose/material/SliderKt$Slider$3;->$$dirty:I

    .line 571
    .line 572
    shr-int/lit8 v3, v1, 0x9

    .line 573
    .line 574
    and-int/lit8 v3, v3, 0xe

    .line 575
    .line 576
    or-int/lit16 v3, v3, 0x200

    .line 577
    .line 578
    shr-int/lit8 v4, v1, 0xf

    .line 579
    .line 580
    and-int/lit16 v4, v4, 0x1c00

    .line 581
    or-int/2addr v3, v4

    .line 582
    .line 583
    shr-int/lit8 v1, v1, 0x6

    .line 584
    .line 585
    const/high16 v4, 0x70000

    .line 586
    and-int/2addr v1, v4

    .line 587
    .line 588
    or-int v12, v3, v1

    .line 589
    move v1, v5

    .line 590
    move-object v3, v7

    .line 591
    move-object v4, v9

    .line 592
    move v5, v6

    .line 593
    move-object v6, v10

    .line 594
    move-object v7, v11

    .line 595
    .line 596
    move-object/from16 v8, p2

    .line 597
    move v9, v12

    .line 598
    .line 599
    .line 600
    invoke-static/range {v1 .. v9}, Landroidx/compose/material/SliderKt;->j(ZFLjava/util/List;Landroidx/compose/material/SliderColors;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 601
    :goto_4
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
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/material/SliderKt$Slider$3;->c(Landroidx/compose/foundation/layout/BoxWithConstraintsScope;Landroidx/compose/runtime/Composer;I)V

    .line 14
    .line 15
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 16
    return-object p1
.end method
