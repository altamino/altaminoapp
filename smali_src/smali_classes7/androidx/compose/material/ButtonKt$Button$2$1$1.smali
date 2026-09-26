.class final Landroidx/compose/material/ButtonKt$Button$2$1$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/ButtonKt$Button$2$1;->a(Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/p<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lw7/l0;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nButton.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Button.kt\nandroidx/compose/material/ButtonKt$Button$2$1$1\n+ 2 Row.kt\nandroidx/compose/foundation/layout/RowKt\n+ 3 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 4 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n*L\n1#1,615:1\n79#2,2:616\n81#2:644\n85#2:649\n75#3:618\n76#3,11:620\n89#3:648\n76#4:619\n460#5,13:631\n473#5,3:645\n*S KotlinDebug\n*F\n+ 1 Button.kt\nandroidx/compose/material/ButtonKt$Button$2$1$1\n*L\n119#1:616,2\n119#1:644\n119#1:649\n119#1:618\n119#1:620,11\n119#1:648\n119#1:619\n119#1:631,13\n119#1:645,3\n*E\n"
.end annotation


# instance fields
.field final synthetic $$dirty:I

.field final synthetic $content:Le8/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/q<",
            "Landroidx/compose/foundation/layout/RowScope;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $contentPadding:Landroidx/compose/foundation/layout/PaddingValues;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/layout/PaddingValues;Le8/q;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Le8/q<",
            "-",
            "Landroidx/compose/foundation/layout/RowScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/material/ButtonKt$Button$2$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    iput-object p2, p0, Landroidx/compose/material/ButtonKt$Button$2$1$1;->$content:Le8/q;

    iput p3, p0, Landroidx/compose/material/ButtonKt$Button$2$1$1;->$$dirty:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/Composer;I)V
    .locals 11
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
    .end annotation

    .line 1
    .line 2
    and-int/lit8 p2, p2, 0xb

    .line 3
    const/4 v0, 0x2

    .line 4
    .line 5
    if-ne p2, v0, :cond_1

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->b()Z

    .line 9
    move-result p2

    .line 10
    .line 11
    if-nez p2, :cond_0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->g()V

    .line 16
    .line 17
    goto/16 :goto_4

    .line 18
    .line 19
    :cond_1
    :goto_0
    sget-object p2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 20
    .line 21
    sget-object v1, Landroidx/compose/material/ButtonDefaults;->INSTANCE:Landroidx/compose/material/ButtonDefaults;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Landroidx/compose/material/ButtonDefaults;->e()F

    .line 25
    move-result v2

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Landroidx/compose/material/ButtonDefaults;->d()F

    .line 29
    move-result v1

    .line 30
    .line 31
    .line 32
    invoke-static {p2, v2, v1}, Landroidx/compose/foundation/layout/SizeKt;->g(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 33
    move-result-object p2

    .line 34
    .line 35
    iget-object v1, p0, Landroidx/compose/material/ButtonKt$Button$2$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 36
    .line 37
    .line 38
    invoke-static {p2, v1}, Landroidx/compose/foundation/layout/PaddingKt;->h(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 39
    move-result-object p2

    .line 40
    .line 41
    sget-object v1, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Landroidx/compose/foundation/layout/Arrangement;->b()Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    sget-object v2, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Landroidx/compose/ui/Alignment$Companion;->i()Landroidx/compose/ui/Alignment$Vertical;

    .line 51
    move-result-object v2

    .line 52
    .line 53
    iget-object v3, p0, Landroidx/compose/material/ButtonKt$Button$2$1$1;->$content:Le8/q;

    .line 54
    .line 55
    iget v4, p0, Landroidx/compose/material/ButtonKt$Button$2$1$1;->$$dirty:I

    .line 56
    .line 57
    shr-int/lit8 v4, v4, 0x12

    .line 58
    .line 59
    and-int/lit16 v4, v4, 0x1c00

    .line 60
    .line 61
    or-int/lit16 v4, v4, 0x1b0

    .line 62
    .line 63
    .line 64
    const v5, 0x2952b718

    .line 65
    .line 66
    .line 67
    invoke-interface {p1, v5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 68
    .line 69
    shr-int/lit8 v5, v4, 0x3

    .line 70
    .line 71
    and-int/lit8 v6, v5, 0xe

    .line 72
    .line 73
    and-int/lit8 v5, v5, 0x70

    .line 74
    or-int/2addr v5, v6

    .line 75
    .line 76
    .line 77
    invoke-static {v1, v2, p1, v5}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 78
    move-result-object v1

    .line 79
    .line 80
    shl-int/lit8 v2, v4, 0x3

    .line 81
    .line 82
    and-int/lit8 v2, v2, 0x70

    .line 83
    .line 84
    .line 85
    const v5, -0x4ee9b9da

    .line 86
    .line 87
    .line 88
    invoke-interface {p1, v5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 89
    .line 90
    .line 91
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 92
    move-result-object v5

    .line 93
    .line 94
    .line 95
    invoke-interface {p1, v5}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 96
    move-result-object v5

    .line 97
    .line 98
    check-cast v5, Landroidx/compose/ui/unit/Density;

    .line 99
    .line 100
    .line 101
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 102
    move-result-object v6

    .line 103
    .line 104
    .line 105
    invoke-interface {p1, v6}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 106
    move-result-object v6

    .line 107
    .line 108
    check-cast v6, Landroidx/compose/ui/unit/LayoutDirection;

    .line 109
    .line 110
    .line 111
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 112
    move-result-object v7

    .line 113
    .line 114
    .line 115
    invoke-interface {p1, v7}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 116
    move-result-object v7

    .line 117
    .line 118
    check-cast v7, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 119
    .line 120
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 124
    move-result-object v9

    .line 125
    .line 126
    .line 127
    invoke-static {p2}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 128
    move-result-object p2

    .line 129
    .line 130
    shl-int/lit8 v2, v2, 0x9

    .line 131
    .line 132
    and-int/lit16 v2, v2, 0x1c00

    .line 133
    .line 134
    or-int/lit8 v2, v2, 0x6

    .line 135
    .line 136
    .line 137
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 138
    move-result-object v10

    .line 139
    .line 140
    instance-of v10, v10, Landroidx/compose/runtime/Applier;

    .line 141
    .line 142
    if-nez v10, :cond_2

    .line 143
    .line 144
    .line 145
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 146
    .line 147
    .line 148
    :cond_2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->e()V

    .line 149
    .line 150
    .line 151
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->r()Z

    .line 152
    move-result v10

    .line 153
    .line 154
    if-eqz v10, :cond_3

    .line 155
    .line 156
    .line 157
    invoke-interface {p1, v9}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 158
    goto :goto_1

    .line 159
    .line 160
    .line 161
    :cond_3
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->c()V

    .line 162
    .line 163
    .line 164
    :goto_1
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->L()V

    .line 165
    .line 166
    .line 167
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 168
    move-result-object v9

    .line 169
    .line 170
    .line 171
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 172
    move-result-object v10

    .line 173
    .line 174
    .line 175
    invoke-static {v9, v1, v10}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 179
    move-result-object v1

    .line 180
    .line 181
    .line 182
    invoke-static {v9, v5, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 186
    move-result-object v1

    .line 187
    .line 188
    .line 189
    invoke-static {v9, v6, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 193
    move-result-object v1

    .line 194
    .line 195
    .line 196
    invoke-static {v9, v7, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 197
    .line 198
    .line 199
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->o()V

    .line 200
    .line 201
    .line 202
    invoke-static {p1}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 203
    move-result-object v1

    .line 204
    .line 205
    .line 206
    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 207
    move-result-object v1

    .line 208
    .line 209
    shr-int/lit8 v5, v2, 0x3

    .line 210
    .line 211
    and-int/lit8 v5, v5, 0x70

    .line 212
    .line 213
    .line 214
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 215
    move-result-object v5

    .line 216
    .line 217
    .line 218
    invoke-interface {p2, v1, p1, v5}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    const p2, 0x7ab4aae9

    .line 222
    .line 223
    .line 224
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 225
    .line 226
    shr-int/lit8 p2, v2, 0x9

    .line 227
    .line 228
    .line 229
    const v1, -0x286e2e7f

    .line 230
    .line 231
    .line 232
    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 233
    .line 234
    and-int/lit8 p2, p2, 0xa

    .line 235
    .line 236
    if-ne p2, v0, :cond_5

    .line 237
    .line 238
    .line 239
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->b()Z

    .line 240
    move-result p2

    .line 241
    .line 242
    if-nez p2, :cond_4

    .line 243
    goto :goto_2

    .line 244
    .line 245
    .line 246
    :cond_4
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->g()V

    .line 247
    goto :goto_3

    .line 248
    .line 249
    :cond_5
    :goto_2
    sget-object p2, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    .line 250
    .line 251
    shr-int/lit8 v0, v4, 0x6

    .line 252
    .line 253
    and-int/lit8 v0, v0, 0x70

    .line 254
    .line 255
    or-int/lit8 v0, v0, 0x6

    .line 256
    .line 257
    .line 258
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 259
    move-result-object v0

    .line 260
    .line 261
    .line 262
    invoke-interface {v3, p2, p1, v0}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    :goto_3
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 266
    .line 267
    .line 268
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 269
    .line 270
    .line 271
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->d()V

    .line 272
    .line 273
    .line 274
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 275
    .line 276
    .line 277
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 278
    :goto_4
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Number;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 8
    move-result p2

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/ButtonKt$Button$2$1$1;->a(Landroidx/compose/runtime/Composer;I)V

    .line 12
    .line 13
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 14
    return-object p1
.end method
