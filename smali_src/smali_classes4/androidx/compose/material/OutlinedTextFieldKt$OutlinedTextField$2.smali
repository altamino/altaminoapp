.class final Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/OutlinedTextFieldKt;->b(Ljava/lang/String;Le8/l;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Le8/p;Le8/p;Le8/p;Le8/p;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZILandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material/TextFieldColors;Landroidx/compose/runtime/Composer;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/q<",
        "Le8/p<",
        "-",
        "Landroidx/compose/runtime/Composer;",
        "-",
        "Ljava/lang/Integer;",
        "+",
        "Lw7/l0;",
        ">;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $$dirty:I

.field final synthetic $$dirty1:I

.field final synthetic $colors:Landroidx/compose/material/TextFieldColors;

.field final synthetic $enabled:Z

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field final synthetic $isError:Z

.field final synthetic $label:Le8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/p<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $leadingIcon:Le8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/p<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $placeholder:Le8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/p<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $shape:Landroidx/compose/ui/graphics/Shape;

.field final synthetic $singleLine:Z

.field final synthetic $trailingIcon:Le8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/p<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $value:Ljava/lang/String;

.field final synthetic $visualTransformation:Landroidx/compose/ui/text/input/VisualTransformation;


# direct methods
.method constructor <init>(Ljava/lang/String;ZZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/MutableInteractionSource;ZLe8/p;Le8/p;Le8/p;Le8/p;Landroidx/compose/material/TextFieldColors;IILandroidx/compose/ui/graphics/Shape;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ",
            "Landroidx/compose/ui/text/input/VisualTransformation;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Z",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/material/TextFieldColors;",
            "II",
            "Landroidx/compose/ui/graphics/Shape;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$2;->$value:Ljava/lang/String;

    iput-boolean p2, p0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$2;->$enabled:Z

    iput-boolean p3, p0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$2;->$singleLine:Z

    iput-object p4, p0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$2;->$visualTransformation:Landroidx/compose/ui/text/input/VisualTransformation;

    iput-object p5, p0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$2;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-boolean p6, p0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$2;->$isError:Z

    iput-object p7, p0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$2;->$label:Le8/p;

    iput-object p8, p0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$2;->$placeholder:Le8/p;

    iput-object p9, p0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$2;->$leadingIcon:Le8/p;

    iput-object p10, p0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$2;->$trailingIcon:Le8/p;

    iput-object p11, p0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$2;->$colors:Landroidx/compose/material/TextFieldColors;

    iput p12, p0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$2;->$$dirty:I

    iput p13, p0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$2;->$$dirty1:I

    iput-object p14, p0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$2;->$shape:Landroidx/compose/ui/graphics/Shape;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Le8/p;Landroidx/compose/runtime/Composer;I)V
    .locals 28
    .param p1    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/Composer;
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
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v3, p1

    .line 5
    .line 6
    move-object/from16 v15, p2

    .line 7
    .line 8
    const-string v1, "innerTextField"

    .line 9
    .line 10
    .line 11
    invoke-static {v3, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    and-int/lit8 v1, p3, 0xe

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 19
    move-result v1

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    const/4 v1, 0x4

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v1, 0x2

    .line 25
    .line 26
    :goto_0
    or-int v1, p3, v1

    .line 27
    .line 28
    move/from16 v16, v1

    .line 29
    goto :goto_1

    .line 30
    .line 31
    :cond_1
    move/from16 v16, p3

    .line 32
    .line 33
    :goto_1
    and-int/lit8 v1, v16, 0x5b

    .line 34
    .line 35
    const/16 v2, 0x12

    .line 36
    .line 37
    if-ne v1, v2, :cond_3

    .line 38
    .line 39
    .line 40
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->b()Z

    .line 41
    move-result v1

    .line 42
    .line 43
    if-nez v1, :cond_2

    .line 44
    goto :goto_2

    .line 45
    .line 46
    .line 47
    :cond_2
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->g()V

    .line 48
    .line 49
    goto/16 :goto_3

    .line 50
    .line 51
    :cond_3
    :goto_2
    sget-object v1, Landroidx/compose/material/TextFieldDefaults;->INSTANCE:Landroidx/compose/material/TextFieldDefaults;

    .line 52
    .line 53
    iget-object v2, v0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$2;->$value:Ljava/lang/String;

    .line 54
    .line 55
    iget-boolean v14, v0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$2;->$enabled:Z

    .line 56
    move v4, v14

    .line 57
    .line 58
    iget-boolean v5, v0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$2;->$singleLine:Z

    .line 59
    .line 60
    iget-object v6, v0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$2;->$visualTransformation:Landroidx/compose/ui/text/input/VisualTransformation;

    .line 61
    .line 62
    iget-object v13, v0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$2;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 63
    move-object v7, v13

    .line 64
    .line 65
    iget-boolean v12, v0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$2;->$isError:Z

    .line 66
    move v8, v12

    .line 67
    .line 68
    iget-object v9, v0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$2;->$label:Le8/p;

    .line 69
    .line 70
    iget-object v10, v0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$2;->$placeholder:Le8/p;

    .line 71
    .line 72
    iget-object v11, v0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$2;->$leadingIcon:Le8/p;

    .line 73
    .line 74
    iget-object v3, v0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$2;->$trailingIcon:Le8/p;

    .line 75
    .line 76
    move/from16 v19, v12

    .line 77
    move-object v12, v3

    .line 78
    .line 79
    iget-object v3, v0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$2;->$colors:Landroidx/compose/material/TextFieldColors;

    .line 80
    .line 81
    move-object/from16 v20, v13

    .line 82
    move-object v13, v3

    .line 83
    .line 84
    const/16 v17, 0x0

    .line 85
    .line 86
    move/from16 v18, v14

    .line 87
    .line 88
    move-object/from16 v14, v17

    .line 89
    .line 90
    new-instance v14, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$2$1;

    .line 91
    .line 92
    move-object/from16 v25, v1

    .line 93
    .line 94
    iget-object v1, v0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$2;->$shape:Landroidx/compose/ui/graphics/Shape;

    .line 95
    .line 96
    move-object/from16 v26, v2

    .line 97
    .line 98
    iget v2, v0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$2;->$$dirty:I

    .line 99
    .line 100
    move/from16 v27, v4

    .line 101
    .line 102
    iget v4, v0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$2;->$$dirty1:I

    .line 103
    .line 104
    move-object/from16 v17, v14

    .line 105
    .line 106
    move-object/from16 v21, v3

    .line 107
    .line 108
    move-object/from16 v22, v1

    .line 109
    .line 110
    move/from16 v23, v2

    .line 111
    .line 112
    move/from16 v24, v4

    .line 113
    .line 114
    .line 115
    invoke-direct/range {v17 .. v24}, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$2$1;-><init>(ZZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/TextFieldColors;Landroidx/compose/ui/graphics/Shape;II)V

    .line 116
    .line 117
    .line 118
    const v1, 0x13a46a2d

    .line 119
    const/4 v2, 0x1

    .line 120
    .line 121
    .line 122
    invoke-static {v15, v1, v2, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 123
    move-result-object v1

    .line 124
    move-object v15, v1

    .line 125
    .line 126
    iget v1, v0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$2;->$$dirty:I

    .line 127
    .line 128
    and-int/lit8 v2, v1, 0xe

    .line 129
    .line 130
    shl-int/lit8 v3, v16, 0x3

    .line 131
    .line 132
    and-int/lit8 v3, v3, 0x70

    .line 133
    or-int/2addr v2, v3

    .line 134
    .line 135
    shr-int/lit8 v3, v1, 0x3

    .line 136
    .line 137
    and-int/lit16 v3, v3, 0x380

    .line 138
    or-int/2addr v2, v3

    .line 139
    .line 140
    iget v3, v0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$2;->$$dirty1:I

    .line 141
    .line 142
    shr-int/lit8 v4, v3, 0x3

    .line 143
    .line 144
    and-int/lit16 v4, v4, 0x1c00

    .line 145
    or-int/2addr v2, v4

    .line 146
    .line 147
    shl-int/lit8 v4, v3, 0x9

    .line 148
    .line 149
    .line 150
    const v14, 0xe000

    .line 151
    and-int/2addr v4, v14

    .line 152
    or-int/2addr v2, v4

    .line 153
    .line 154
    shr-int/lit8 v4, v3, 0x3

    .line 155
    .line 156
    const/high16 v14, 0x70000

    .line 157
    and-int/2addr v4, v14

    .line 158
    or-int/2addr v2, v4

    .line 159
    .line 160
    shl-int/lit8 v4, v3, 0x12

    .line 161
    .line 162
    const/high16 v14, 0x380000

    .line 163
    and-int/2addr v4, v14

    .line 164
    or-int/2addr v2, v4

    .line 165
    .line 166
    shl-int/lit8 v4, v1, 0x3

    .line 167
    .line 168
    const/high16 v14, 0x1c00000

    .line 169
    and-int/2addr v4, v14

    .line 170
    or-int/2addr v2, v4

    .line 171
    .line 172
    shl-int/lit8 v4, v1, 0x3

    .line 173
    .line 174
    const/high16 v14, 0xe000000

    .line 175
    and-int/2addr v4, v14

    .line 176
    or-int/2addr v2, v4

    .line 177
    .line 178
    shl-int/lit8 v4, v1, 0x3

    .line 179
    .line 180
    const/high16 v14, 0x70000000

    .line 181
    and-int/2addr v4, v14

    .line 182
    .line 183
    or-int v17, v2, v4

    .line 184
    .line 185
    shr-int/lit8 v1, v1, 0x1b

    .line 186
    .line 187
    and-int/lit8 v1, v1, 0xe

    .line 188
    .line 189
    or-int/lit16 v1, v1, 0x6c00

    .line 190
    .line 191
    shr-int/lit8 v2, v3, 0x15

    .line 192
    .line 193
    and-int/lit8 v2, v2, 0x70

    .line 194
    .line 195
    or-int v18, v1, v2

    .line 196
    .line 197
    const/16 v19, 0x1000

    .line 198
    .line 199
    move-object/from16 v3, p1

    .line 200
    .line 201
    move-object/from16 v16, p2

    .line 202
    .line 203
    move-object/from16 v1, v25

    .line 204
    .line 205
    move-object/from16 v2, v26

    .line 206
    .line 207
    move/from16 v4, v27

    .line 208
    const/4 v14, 0x0

    .line 209
    .line 210
    .line 211
    invoke-virtual/range {v1 .. v19}, Landroidx/compose/material/TextFieldDefaults;->b(Ljava/lang/String;Le8/p;ZZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/InteractionSource;ZLe8/p;Le8/p;Le8/p;Le8/p;Landroidx/compose/material/TextFieldColors;Landroidx/compose/foundation/layout/PaddingValues;Le8/p;Landroidx/compose/runtime/Composer;III)V

    .line 212
    :goto_3
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Le8/p;

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
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$2;->a(Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 14
    .line 15
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 16
    return-object p1
.end method
