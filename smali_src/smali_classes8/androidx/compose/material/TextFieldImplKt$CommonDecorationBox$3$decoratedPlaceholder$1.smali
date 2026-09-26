.class final Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3$decoratedPlaceholder$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->a(FJJFLandroidx/compose/runtime/Composer;I)V
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
        "Lw7/l0;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextFieldImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextFieldImpl.kt\nandroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3$decoratedPlaceholder$1\n+ 2 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 3 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 4 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n*L\n1#1,374:1\n67#2,6:375\n73#2:407\n77#2:412\n75#3:381\n76#3,11:383\n89#3:411\n76#4:382\n460#5,13:394\n473#5,3:408\n*S KotlinDebug\n*F\n+ 1 TextFieldImpl.kt\nandroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3$decoratedPlaceholder$1\n*L\n137#1:375,6\n137#1:407\n137#1:412\n137#1:381\n137#1:383,11\n137#1:411\n137#1:382\n137#1:394,13\n137#1:408,3\n*E\n"
.end annotation


# instance fields
.field final synthetic $$dirty:I

.field final synthetic $$dirty1:I

.field final synthetic $colors:Landroidx/compose/material/TextFieldColors;

.field final synthetic $enabled:Z

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

.field final synthetic $placeholderAlphaProgress:F


# direct methods
.method constructor <init>(FLandroidx/compose/material/TextFieldColors;ZIILe8/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Landroidx/compose/material/TextFieldColors;",
            "ZII",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput p1, p0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3$decoratedPlaceholder$1;->$placeholderAlphaProgress:F

    iput-object p2, p0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3$decoratedPlaceholder$1;->$colors:Landroidx/compose/material/TextFieldColors;

    iput-boolean p3, p0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3$decoratedPlaceholder$1;->$enabled:Z

    iput p4, p0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3$decoratedPlaceholder$1;->$$dirty:I

    iput p5, p0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3$decoratedPlaceholder$1;->$$dirty1:I

    iput-object p6, p0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3$decoratedPlaceholder$1;->$placeholder:Le8/p;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 12
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

    .annotation build Landroidx/compose/runtime/ComposableTarget;
    .end annotation

    .line 1
    .line 2
    const-string v0, "modifier"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    and-int/lit8 v0, p3, 0xe

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    const/4 v0, 0x4

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x2

    .line 19
    :goto_0
    or-int/2addr p3, v0

    .line 20
    .line 21
    :cond_1
    and-int/lit8 p3, p3, 0x5b

    .line 22
    .line 23
    const/16 v0, 0x12

    .line 24
    .line 25
    if-ne p3, v0, :cond_3

    .line 26
    .line 27
    .line 28
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->b()Z

    .line 29
    move-result p3

    .line 30
    .line 31
    if-nez p3, :cond_2

    .line 32
    goto :goto_1

    .line 33
    .line 34
    .line 35
    :cond_2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->g()V

    .line 36
    .line 37
    goto/16 :goto_3

    .line 38
    .line 39
    :cond_3
    :goto_1
    iget p3, p0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3$decoratedPlaceholder$1;->$placeholderAlphaProgress:F

    .line 40
    .line 41
    .line 42
    invoke-static {p1, p3}, Landroidx/compose/ui/draw/AlphaKt;->a(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    iget-object p3, p0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3$decoratedPlaceholder$1;->$colors:Landroidx/compose/material/TextFieldColors;

    .line 46
    .line 47
    iget-boolean v0, p0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3$decoratedPlaceholder$1;->$enabled:Z

    .line 48
    .line 49
    iget v1, p0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3$decoratedPlaceholder$1;->$$dirty:I

    .line 50
    .line 51
    iget v2, p0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3$decoratedPlaceholder$1;->$$dirty1:I

    .line 52
    .line 53
    iget-object v7, p0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3$decoratedPlaceholder$1;->$placeholder:Le8/p;

    .line 54
    .line 55
    .line 56
    const v3, 0x2bb5b5d7

    .line 57
    .line 58
    .line 59
    invoke-interface {p2, v3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 60
    .line 61
    sget-object v3, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3}, Landroidx/compose/ui/Alignment$Companion;->o()Landroidx/compose/ui/Alignment;

    .line 65
    move-result-object v3

    .line 66
    const/4 v4, 0x0

    .line 67
    .line 68
    .line 69
    invoke-static {v3, v4, p2, v4}, Landroidx/compose/foundation/layout/BoxKt;->h(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 70
    move-result-object v3

    .line 71
    .line 72
    .line 73
    const v5, -0x4ee9b9da

    .line 74
    .line 75
    .line 76
    invoke-interface {p2, v5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 77
    .line 78
    .line 79
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 80
    move-result-object v5

    .line 81
    .line 82
    .line 83
    invoke-interface {p2, v5}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 84
    move-result-object v5

    .line 85
    .line 86
    check-cast v5, Landroidx/compose/ui/unit/Density;

    .line 87
    .line 88
    .line 89
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 90
    move-result-object v6

    .line 91
    .line 92
    .line 93
    invoke-interface {p2, v6}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 94
    move-result-object v6

    .line 95
    .line 96
    check-cast v6, Landroidx/compose/ui/unit/LayoutDirection;

    .line 97
    .line 98
    .line 99
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 100
    move-result-object v8

    .line 101
    .line 102
    .line 103
    invoke-interface {p2, v8}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 104
    move-result-object v8

    .line 105
    .line 106
    check-cast v8, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 107
    .line 108
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 112
    move-result-object v10

    .line 113
    .line 114
    .line 115
    invoke-static {p1}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 116
    move-result-object p1

    .line 117
    .line 118
    .line 119
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 120
    move-result-object v11

    .line 121
    .line 122
    instance-of v11, v11, Landroidx/compose/runtime/Applier;

    .line 123
    .line 124
    if-nez v11, :cond_4

    .line 125
    .line 126
    .line 127
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 128
    .line 129
    .line 130
    :cond_4
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->e()V

    .line 131
    .line 132
    .line 133
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->r()Z

    .line 134
    move-result v11

    .line 135
    .line 136
    if-eqz v11, :cond_5

    .line 137
    .line 138
    .line 139
    invoke-interface {p2, v10}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 140
    goto :goto_2

    .line 141
    .line 142
    .line 143
    :cond_5
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->c()V

    .line 144
    .line 145
    .line 146
    :goto_2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->L()V

    .line 147
    .line 148
    .line 149
    invoke-static {p2}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 150
    move-result-object v10

    .line 151
    .line 152
    .line 153
    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 154
    move-result-object v11

    .line 155
    .line 156
    .line 157
    invoke-static {v10, v3, v11}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 161
    move-result-object v3

    .line 162
    .line 163
    .line 164
    invoke-static {v10, v5, v3}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 168
    move-result-object v3

    .line 169
    .line 170
    .line 171
    invoke-static {v10, v6, v3}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 175
    move-result-object v3

    .line 176
    .line 177
    .line 178
    invoke-static {v10, v8, v3}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 179
    .line 180
    .line 181
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->o()V

    .line 182
    .line 183
    .line 184
    invoke-static {p2}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 185
    move-result-object v3

    .line 186
    .line 187
    .line 188
    invoke-static {v3}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 189
    move-result-object v3

    .line 190
    .line 191
    .line 192
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 193
    move-result-object v4

    .line 194
    .line 195
    .line 196
    invoke-interface {p1, v3, p2, v4}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    const p1, 0x7ab4aae9

    .line 200
    .line 201
    .line 202
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 203
    .line 204
    .line 205
    const p1, -0x7f65a980

    .line 206
    .line 207
    .line 208
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 209
    .line 210
    sget-object p1, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 211
    .line 212
    .line 213
    const p1, 0x46d06884

    .line 214
    .line 215
    .line 216
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 217
    .line 218
    shr-int/lit8 p1, v1, 0x1b

    .line 219
    .line 220
    and-int/lit8 p1, p1, 0xe

    .line 221
    const/4 v3, 0x6

    .line 222
    shr-int/2addr v2, v3

    .line 223
    .line 224
    and-int/lit8 v2, v2, 0x70

    .line 225
    or-int/2addr p1, v2

    .line 226
    .line 227
    .line 228
    invoke-interface {p3, v0, p2, p1}, Landroidx/compose/material/TextFieldColors;->f(ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 229
    move-result-object p1

    .line 230
    .line 231
    .line 232
    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 233
    move-result-object p1

    .line 234
    .line 235
    check-cast p1, Landroidx/compose/ui/graphics/Color;

    .line 236
    .line 237
    .line 238
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/Color;->v()J

    .line 239
    move-result-wide v4

    .line 240
    .line 241
    sget-object p1, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 242
    .line 243
    .line 244
    invoke-virtual {p1, p2, v3}, Landroidx/compose/material/MaterialTheme;->c(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Typography;

    .line 245
    move-result-object p1

    .line 246
    .line 247
    .line 248
    invoke-virtual {p1}, Landroidx/compose/material/Typography;->g()Landroidx/compose/ui/text/TextStyle;

    .line 249
    move-result-object p1

    .line 250
    const/4 v6, 0x0

    .line 251
    .line 252
    shr-int/lit8 p3, v1, 0x6

    .line 253
    .line 254
    and-int/lit16 v9, p3, 0x1c00

    .line 255
    const/4 v10, 0x4

    .line 256
    move-wide v3, v4

    .line 257
    move-object v5, p1

    .line 258
    move-object v8, p2

    .line 259
    .line 260
    .line 261
    invoke-static/range {v3 .. v10}, Landroidx/compose/material/TextFieldImplKt;->b(JLandroidx/compose/ui/text/TextStyle;Ljava/lang/Float;Le8/p;Landroidx/compose/runtime/Composer;II)V

    .line 262
    .line 263
    .line 264
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 265
    .line 266
    .line 267
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 268
    .line 269
    .line 270
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 271
    .line 272
    .line 273
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->d()V

    .line 274
    .line 275
    .line 276
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 277
    .line 278
    .line 279
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 280
    :goto_3
    return-void
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
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3$decoratedPlaceholder$1;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 14
    .line 15
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 16
    return-object p1
.end method
