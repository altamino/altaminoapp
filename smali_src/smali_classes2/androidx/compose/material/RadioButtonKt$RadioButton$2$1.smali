.class final Landroidx/compose/material/RadioButtonKt$RadioButton$2$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/RadioButtonKt;->a(ZLe8/a;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/RadioButtonColors;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
        "Lw7/l0;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRadioButton.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RadioButton.kt\nandroidx/compose/material/RadioButtonKt$RadioButton$2$1\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,227:1\n155#2:228\n*S KotlinDebug\n*F\n+ 1 RadioButton.kt\nandroidx/compose/material/RadioButtonKt$RadioButton$2$1\n*L\n118#1:228\n*E\n"
.end annotation


# instance fields
.field final synthetic $dotRadius:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/unit/Dp;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $radioColor:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/unit/Dp;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material/RadioButtonKt$RadioButton$2$1;->$radioColor:Landroidx/compose/runtime/State;

    iput-object p2, p0, Landroidx/compose/material/RadioButtonKt$RadioButton$2$1;->$dotRadius:Landroidx/compose/runtime/State;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    .locals 22
    .param p1    # Landroidx/compose/ui/graphics/drawscope/DrawScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v13, p1

    .line 5
    .line 6
    const-string v1, "$this$Canvas"

    .line 7
    .line 8
    .line 9
    invoke-static {v13, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Landroidx/compose/material/RadioButtonKt;->c()F

    .line 13
    move-result v1

    .line 14
    .line 15
    .line 16
    invoke-interface {v13, v1}, Landroidx/compose/ui/unit/Density;->H0(F)F

    .line 17
    move-result v3

    .line 18
    .line 19
    iget-object v1, v0, Landroidx/compose/material/RadioButtonKt$RadioButton$2$1;->$radioColor:Landroidx/compose/runtime/State;

    .line 20
    .line 21
    .line 22
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    check-cast v1, Landroidx/compose/ui/graphics/Color;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color;->v()J

    .line 29
    move-result-wide v10

    .line 30
    .line 31
    .line 32
    invoke-static {}, Landroidx/compose/material/RadioButtonKt;->b()F

    .line 33
    move-result v1

    .line 34
    .line 35
    .line 36
    invoke-interface {v13, v1}, Landroidx/compose/ui/unit/Density;->H0(F)F

    .line 37
    move-result v1

    .line 38
    const/4 v2, 0x2

    .line 39
    int-to-float v2, v2

    .line 40
    .line 41
    div-float v14, v3, v2

    .line 42
    .line 43
    sub-float v12, v1, v14

    .line 44
    .line 45
    const-wide/16 v15, 0x0

    .line 46
    .line 47
    const/16 v17, 0x0

    .line 48
    .line 49
    new-instance v18, Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 50
    const/4 v4, 0x0

    .line 51
    const/4 v5, 0x0

    .line 52
    const/4 v6, 0x0

    .line 53
    const/4 v7, 0x0

    .line 54
    .line 55
    const/16 v8, 0x1e

    .line 56
    const/4 v9, 0x0

    .line 57
    .line 58
    move-object/from16 v2, v18

    .line 59
    .line 60
    .line 61
    invoke-direct/range {v2 .. v9}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIILandroidx/compose/ui/graphics/PathEffect;ILkotlin/jvm/internal/k;)V

    .line 62
    .line 63
    const/16 v19, 0x0

    .line 64
    .line 65
    const/16 v20, 0x6c

    .line 66
    .line 67
    const/16 v21, 0x0

    .line 68
    .line 69
    move-object/from16 v1, p1

    .line 70
    move-wide v2, v10

    .line 71
    move v4, v12

    .line 72
    move-wide v5, v15

    .line 73
    .line 74
    move/from16 v7, v17

    .line 75
    .line 76
    move-object/from16 v8, v18

    .line 77
    .line 78
    move/from16 v10, v19

    .line 79
    .line 80
    move/from16 v11, v20

    .line 81
    .line 82
    move-object/from16 v12, v21

    .line 83
    .line 84
    .line 85
    invoke-static/range {v1 .. v12}, Landroidx/compose/ui/graphics/drawscope/a;->e(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 86
    .line 87
    iget-object v1, v0, Landroidx/compose/material/RadioButtonKt$RadioButton$2$1;->$dotRadius:Landroidx/compose/runtime/State;

    .line 88
    .line 89
    .line 90
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 91
    move-result-object v1

    .line 92
    .line 93
    check-cast v1, Landroidx/compose/ui/unit/Dp;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Landroidx/compose/ui/unit/Dp;->l()F

    .line 97
    move-result v1

    .line 98
    const/4 v2, 0x0

    .line 99
    int-to-float v2, v2

    .line 100
    .line 101
    .line 102
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 103
    move-result v2

    .line 104
    .line 105
    .line 106
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Dp;->e(FF)I

    .line 107
    move-result v1

    .line 108
    .line 109
    if-lez v1, :cond_0

    .line 110
    .line 111
    iget-object v1, v0, Landroidx/compose/material/RadioButtonKt$RadioButton$2$1;->$radioColor:Landroidx/compose/runtime/State;

    .line 112
    .line 113
    .line 114
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 115
    move-result-object v1

    .line 116
    .line 117
    check-cast v1, Landroidx/compose/ui/graphics/Color;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color;->v()J

    .line 121
    move-result-wide v2

    .line 122
    .line 123
    iget-object v1, v0, Landroidx/compose/material/RadioButtonKt$RadioButton$2$1;->$dotRadius:Landroidx/compose/runtime/State;

    .line 124
    .line 125
    .line 126
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 127
    move-result-object v1

    .line 128
    .line 129
    check-cast v1, Landroidx/compose/ui/unit/Dp;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1}, Landroidx/compose/ui/unit/Dp;->l()F

    .line 133
    move-result v1

    .line 134
    .line 135
    .line 136
    invoke-interface {v13, v1}, Landroidx/compose/ui/unit/Density;->H0(F)F

    .line 137
    move-result v1

    .line 138
    .line 139
    sub-float v4, v1, v14

    .line 140
    .line 141
    const-wide/16 v5, 0x0

    .line 142
    const/4 v7, 0x0

    .line 143
    .line 144
    sget-object v8, Landroidx/compose/ui/graphics/drawscope/Fill;->INSTANCE:Landroidx/compose/ui/graphics/drawscope/Fill;

    .line 145
    const/4 v9, 0x0

    .line 146
    const/4 v10, 0x0

    .line 147
    .line 148
    const/16 v11, 0x6c

    .line 149
    const/4 v12, 0x0

    .line 150
    .line 151
    move-object/from16 v1, p1

    .line 152
    .line 153
    .line 154
    invoke-static/range {v1 .. v12}, Landroidx/compose/ui/graphics/drawscope/a;->e(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 155
    :cond_0
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/material/RadioButtonKt$RadioButton$2$1;->a(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
