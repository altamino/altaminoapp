.class final Landroidx/compose/material/ripple/StateLayer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRipple.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Ripple.kt\nandroidx/compose/material/ripple/StateLayer\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 DrawScope.kt\nandroidx/compose/ui/graphics/drawscope/DrawScopeKt\n*L\n1#1,355:1\n138#2:356\n213#3,8:357\n260#3,11:365\n*S KotlinDebug\n*F\n+ 1 Ripple.kt\nandroidx/compose/material/ripple/StateLayer\n*L\n304#1:356\n316#1:357,8\n316#1:365,11\n*E\n"
.end annotation


# instance fields
.field private final animatedAlpha:Landroidx/compose/animation/core/Animatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Animatable<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final bounded:Z

.field private currentInteraction:Landroidx/compose/foundation/interaction/Interaction;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final interactions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/foundation/interaction/Interaction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final rippleAlpha:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/material/ripple/RippleAlpha;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLandroidx/compose/runtime/State;)V
    .locals 1
    .param p2    # Landroidx/compose/runtime/State;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/material/ripple/RippleAlpha;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "rippleAlpha"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-boolean p1, p0, Landroidx/compose/material/ripple/StateLayer;->bounded:Z

    .line 11
    .line 12
    iput-object p2, p0, Landroidx/compose/material/ripple/StateLayer;->rippleAlpha:Landroidx/compose/runtime/State;

    .line 13
    const/4 p1, 0x2

    .line 14
    const/4 p2, 0x0

    .line 15
    const/4 v0, 0x0

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v0, p1, p2}, Landroidx/compose/animation/core/AnimatableKt;->b(FFILjava/lang/Object;)Landroidx/compose/animation/core/Animatable;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    iput-object p1, p0, Landroidx/compose/material/ripple/StateLayer;->animatedAlpha:Landroidx/compose/animation/core/Animatable;

    .line 22
    .line 23
    new-instance p1, Ljava/util/ArrayList;

    .line 24
    .line 25
    .line 26
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    iput-object p1, p0, Landroidx/compose/material/ripple/StateLayer;->interactions:Ljava/util/List;

    .line 29
    return-void
.end method

.method public static final synthetic a(Landroidx/compose/material/ripple/StateLayer;)Landroidx/compose/animation/core/Animatable;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/material/ripple/StateLayer;->animatedAlpha:Landroidx/compose/animation/core/Animatable;

    .line 3
    return-object p0
.end method


# virtual methods
.method public final b(Landroidx/compose/ui/graphics/drawscope/DrawScope;FJ)V
    .locals 16
    .param p1    # Landroidx/compose/ui/graphics/drawscope/DrawScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    const-string v2, "$this$drawStateLayer"

    .line 7
    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->isNaN(F)Z

    .line 13
    move-result v2

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    iget-boolean v2, v0, Landroidx/compose/material/ripple/StateLayer;->bounded:Z

    .line 18
    .line 19
    .line 20
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->c()J

    .line 21
    move-result-wide v3

    .line 22
    .line 23
    .line 24
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/material/ripple/RippleAnimationKt;->a(Landroidx/compose/ui/unit/Density;ZJ)F

    .line 25
    move-result v2

    .line 26
    :goto_0
    move v4, v2

    .line 27
    goto :goto_1

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-interface/range {p1 .. p2}, Landroidx/compose/ui/unit/Density;->H0(F)F

    .line 31
    move-result v2

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :goto_1
    iget-object v2, v0, Landroidx/compose/material/ripple/StateLayer;->animatedAlpha:Landroidx/compose/animation/core/Animatable;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Landroidx/compose/animation/core/Animatable;->n()Ljava/lang/Object;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    check-cast v2, Ljava/lang/Number;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 44
    move-result v7

    .line 45
    const/4 v2, 0x0

    .line 46
    .line 47
    cmpl-float v2, v7, v2

    .line 48
    .line 49
    if-lez v2, :cond_2

    .line 50
    const/4 v8, 0x0

    .line 51
    const/4 v9, 0x0

    .line 52
    const/4 v10, 0x0

    .line 53
    .line 54
    const/16 v11, 0xe

    .line 55
    const/4 v12, 0x0

    .line 56
    .line 57
    move-wide/from16 v5, p3

    .line 58
    .line 59
    .line 60
    invoke-static/range {v5 .. v12}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    .line 61
    move-result-wide v2

    .line 62
    .line 63
    iget-boolean v5, v0, Landroidx/compose/material/ripple/StateLayer;->bounded:Z

    .line 64
    .line 65
    if-eqz v5, :cond_1

    .line 66
    const/4 v7, 0x0

    .line 67
    const/4 v8, 0x0

    .line 68
    .line 69
    .line 70
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->c()J

    .line 71
    move-result-wide v5

    .line 72
    .line 73
    .line 74
    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 75
    move-result v9

    .line 76
    .line 77
    .line 78
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->c()J

    .line 79
    move-result-wide v5

    .line 80
    .line 81
    .line 82
    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Size;->g(J)F

    .line 83
    move-result v10

    .line 84
    .line 85
    sget-object v5, Landroidx/compose/ui/graphics/ClipOp;->Companion:Landroidx/compose/ui/graphics/ClipOp$Companion;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/ClipOp$Companion;->b()I

    .line 89
    move-result v11

    .line 90
    .line 91
    .line 92
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->T()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    .line 93
    move-result-object v13

    .line 94
    .line 95
    .line 96
    invoke-interface {v13}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->c()J

    .line 97
    move-result-wide v14

    .line 98
    .line 99
    .line 100
    invoke-interface {v13}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->a()Landroidx/compose/ui/graphics/Canvas;

    .line 101
    move-result-object v5

    .line 102
    .line 103
    .line 104
    invoke-interface {v5}, Landroidx/compose/ui/graphics/Canvas;->r()V

    .line 105
    .line 106
    .line 107
    invoke-interface {v13}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->d()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    .line 108
    move-result-object v6

    .line 109
    .line 110
    .line 111
    invoke-interface/range {v6 .. v11}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->a(FFFFI)V

    .line 112
    .line 113
    const-wide/16 v5, 0x0

    .line 114
    const/4 v8, 0x0

    .line 115
    const/4 v9, 0x0

    .line 116
    const/4 v10, 0x0

    .line 117
    .line 118
    const/16 v11, 0x7c

    .line 119
    const/4 v12, 0x0

    .line 120
    .line 121
    move-object/from16 v1, p1

    .line 122
    .line 123
    .line 124
    invoke-static/range {v1 .. v12}, Landroidx/compose/ui/graphics/drawscope/DrawScope$DefaultImpls;->a(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    invoke-interface {v13}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->a()Landroidx/compose/ui/graphics/Canvas;

    .line 128
    move-result-object v1

    .line 129
    .line 130
    .line 131
    invoke-interface {v1}, Landroidx/compose/ui/graphics/Canvas;->n()V

    .line 132
    .line 133
    .line 134
    invoke-interface {v13, v14, v15}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->b(J)V

    .line 135
    goto :goto_2

    .line 136
    .line 137
    :cond_1
    const-wide/16 v5, 0x0

    .line 138
    const/4 v7, 0x0

    .line 139
    const/4 v8, 0x0

    .line 140
    const/4 v9, 0x0

    .line 141
    const/4 v10, 0x0

    .line 142
    .line 143
    const/16 v11, 0x7c

    .line 144
    const/4 v12, 0x0

    .line 145
    .line 146
    move-object/from16 v1, p1

    .line 147
    .line 148
    .line 149
    invoke-static/range {v1 .. v12}, Landroidx/compose/ui/graphics/drawscope/DrawScope$DefaultImpls;->a(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 150
    :cond_2
    :goto_2
    return-void
.end method

.method public final c(Landroidx/compose/foundation/interaction/Interaction;Lkotlinx/coroutines/o0;)V
    .locals 9
    .param p1    # Landroidx/compose/foundation/interaction/Interaction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/coroutines/o0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "interaction"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "scope"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    instance-of v0, p1, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Landroidx/compose/material/ripple/StateLayer;->interactions:Ljava/util/List;

    .line 17
    .line 18
    .line 19
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/interaction/HoverInteraction$Exit;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    iget-object v1, p0, Landroidx/compose/material/ripple/StateLayer;->interactions:Ljava/util/List;

    .line 27
    move-object v2, p1

    .line 28
    .line 29
    check-cast v2, Landroidx/compose/foundation/interaction/HoverInteraction$Exit;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Landroidx/compose/foundation/interaction/HoverInteraction$Exit;->a()Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    .line 36
    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_1
    instance-of v1, p1, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 40
    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    iget-object v1, p0, Landroidx/compose/material/ripple/StateLayer;->interactions:Ljava/util/List;

    .line 44
    .line 45
    .line 46
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    goto :goto_0

    .line 48
    .line 49
    :cond_2
    instance-of v1, p1, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;

    .line 50
    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    iget-object v1, p0, Landroidx/compose/material/ripple/StateLayer;->interactions:Ljava/util/List;

    .line 54
    move-object v2, p1

    .line 55
    .line 56
    check-cast v2, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;->a()Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 60
    move-result-object v2

    .line 61
    .line 62
    .line 63
    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 64
    goto :goto_0

    .line 65
    .line 66
    :cond_3
    instance-of v1, p1, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 67
    .line 68
    if-eqz v1, :cond_4

    .line 69
    .line 70
    iget-object v1, p0, Landroidx/compose/material/ripple/StateLayer;->interactions:Ljava/util/List;

    .line 71
    .line 72
    .line 73
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    goto :goto_0

    .line 75
    .line 76
    :cond_4
    instance-of v1, p1, Landroidx/compose/foundation/interaction/DragInteraction$Stop;

    .line 77
    .line 78
    if-eqz v1, :cond_5

    .line 79
    .line 80
    iget-object v1, p0, Landroidx/compose/material/ripple/StateLayer;->interactions:Ljava/util/List;

    .line 81
    move-object v2, p1

    .line 82
    .line 83
    check-cast v2, Landroidx/compose/foundation/interaction/DragInteraction$Stop;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Landroidx/compose/foundation/interaction/DragInteraction$Stop;->a()Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 87
    move-result-object v2

    .line 88
    .line 89
    .line 90
    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 91
    goto :goto_0

    .line 92
    .line 93
    :cond_5
    instance-of v1, p1, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;

    .line 94
    .line 95
    if-eqz v1, :cond_a

    .line 96
    .line 97
    iget-object v1, p0, Landroidx/compose/material/ripple/StateLayer;->interactions:Ljava/util/List;

    .line 98
    move-object v2, p1

    .line 99
    .line 100
    check-cast v2, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2}, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;->a()Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 104
    move-result-object v2

    .line 105
    .line 106
    .line 107
    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 108
    .line 109
    :goto_0
    iget-object v1, p0, Landroidx/compose/material/ripple/StateLayer;->interactions:Ljava/util/List;

    .line 110
    .line 111
    .line 112
    invoke-static {v1}, Lkotlin/collections/t;->w0(Ljava/util/List;)Ljava/lang/Object;

    .line 113
    move-result-object v1

    .line 114
    .line 115
    check-cast v1, Landroidx/compose/foundation/interaction/Interaction;

    .line 116
    .line 117
    iget-object v2, p0, Landroidx/compose/material/ripple/StateLayer;->currentInteraction:Landroidx/compose/foundation/interaction/Interaction;

    .line 118
    .line 119
    .line 120
    invoke-static {v2, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 121
    move-result v2

    .line 122
    .line 123
    if-nez v2, :cond_a

    .line 124
    const/4 v2, 0x0

    .line 125
    .line 126
    if-eqz v1, :cond_9

    .line 127
    .line 128
    if-eqz v0, :cond_6

    .line 129
    .line 130
    iget-object p1, p0, Landroidx/compose/material/ripple/StateLayer;->rippleAlpha:Landroidx/compose/runtime/State;

    .line 131
    .line 132
    .line 133
    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 134
    move-result-object p1

    .line 135
    .line 136
    check-cast p1, Landroidx/compose/material/ripple/RippleAlpha;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1}, Landroidx/compose/material/ripple/RippleAlpha;->c()F

    .line 140
    move-result p1

    .line 141
    goto :goto_1

    .line 142
    .line 143
    :cond_6
    instance-of v0, p1, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 144
    .line 145
    if-eqz v0, :cond_7

    .line 146
    .line 147
    iget-object p1, p0, Landroidx/compose/material/ripple/StateLayer;->rippleAlpha:Landroidx/compose/runtime/State;

    .line 148
    .line 149
    .line 150
    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 151
    move-result-object p1

    .line 152
    .line 153
    check-cast p1, Landroidx/compose/material/ripple/RippleAlpha;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1}, Landroidx/compose/material/ripple/RippleAlpha;->b()F

    .line 157
    move-result p1

    .line 158
    goto :goto_1

    .line 159
    .line 160
    :cond_7
    instance-of p1, p1, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 161
    .line 162
    if-eqz p1, :cond_8

    .line 163
    .line 164
    iget-object p1, p0, Landroidx/compose/material/ripple/StateLayer;->rippleAlpha:Landroidx/compose/runtime/State;

    .line 165
    .line 166
    .line 167
    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 168
    move-result-object p1

    .line 169
    .line 170
    check-cast p1, Landroidx/compose/material/ripple/RippleAlpha;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1}, Landroidx/compose/material/ripple/RippleAlpha;->a()F

    .line 174
    move-result p1

    .line 175
    goto :goto_1

    .line 176
    :cond_8
    const/4 p1, 0x0

    .line 177
    .line 178
    .line 179
    :goto_1
    invoke-static {v1}, Landroidx/compose/material/ripple/RippleKt;->a(Landroidx/compose/foundation/interaction/Interaction;)Landroidx/compose/animation/core/AnimationSpec;

    .line 180
    move-result-object v0

    .line 181
    const/4 v4, 0x0

    .line 182
    const/4 v5, 0x0

    .line 183
    .line 184
    new-instance v6, Landroidx/compose/material/ripple/StateLayer$handleInteraction$1;

    .line 185
    .line 186
    .line 187
    invoke-direct {v6, p0, p1, v0, v2}, Landroidx/compose/material/ripple/StateLayer$handleInteraction$1;-><init>(Landroidx/compose/material/ripple/StateLayer;FLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/d;)V

    .line 188
    const/4 v7, 0x3

    .line 189
    const/4 v8, 0x0

    .line 190
    move-object v3, p2

    .line 191
    .line 192
    .line 193
    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;Lkotlinx/coroutines/q0;Le8/p;ILjava/lang/Object;)Lkotlinx/coroutines/b2;

    .line 194
    goto :goto_2

    .line 195
    .line 196
    :cond_9
    iget-object p1, p0, Landroidx/compose/material/ripple/StateLayer;->currentInteraction:Landroidx/compose/foundation/interaction/Interaction;

    .line 197
    .line 198
    .line 199
    invoke-static {p1}, Landroidx/compose/material/ripple/RippleKt;->b(Landroidx/compose/foundation/interaction/Interaction;)Landroidx/compose/animation/core/AnimationSpec;

    .line 200
    move-result-object p1

    .line 201
    const/4 v4, 0x0

    .line 202
    const/4 v5, 0x0

    .line 203
    .line 204
    new-instance v6, Landroidx/compose/material/ripple/StateLayer$handleInteraction$2;

    .line 205
    .line 206
    .line 207
    invoke-direct {v6, p0, p1, v2}, Landroidx/compose/material/ripple/StateLayer$handleInteraction$2;-><init>(Landroidx/compose/material/ripple/StateLayer;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/d;)V

    .line 208
    const/4 v7, 0x3

    .line 209
    const/4 v8, 0x0

    .line 210
    move-object v3, p2

    .line 211
    .line 212
    .line 213
    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;Lkotlinx/coroutines/q0;Le8/p;ILjava/lang/Object;)Lkotlinx/coroutines/b2;

    .line 214
    .line 215
    :goto_2
    iput-object v1, p0, Landroidx/compose/material/ripple/StateLayer;->currentInteraction:Landroidx/compose/foundation/interaction/Interaction;

    .line 216
    :cond_a
    return-void
.end method
