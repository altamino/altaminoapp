.class final Landroidx/compose/foundation/text/TextFieldSizeKt$textFieldMinSize$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/TextFieldSizeKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;)Landroidx/compose/ui/Modifier;
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
    value = "SMAP\nTextFieldSize.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextFieldSize.kt\nandroidx/compose/foundation/text/TextFieldSizeKt$textFieldMinSize$1\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 5 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,116:1\n76#2:117\n76#2:118\n76#2:119\n50#3:120\n49#3:121\n50#3:128\n49#3:129\n25#3:136\n1057#4,6:122\n1057#4,6:130\n1057#4,6:137\n76#5:143\n*S KotlinDebug\n*F\n+ 1 TextFieldSize.kt\nandroidx/compose/foundation/text/TextFieldSizeKt$textFieldMinSize$1\n*L\n40#1:117\n41#1:118\n42#1:119\n44#1:120\n44#1:121\n47#1:128\n47#1:129\n56#1:136\n44#1:122,6\n47#1:130,6\n56#1:137,6\n47#1:143\n*E\n"
.end annotation


# instance fields
.field final synthetic $style:Landroidx/compose/ui/text/TextStyle;


# direct methods
.method constructor <init>(Landroidx/compose/ui/text/TextStyle;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/text/TextFieldSizeKt$textFieldMinSize$1;->$style:Landroidx/compose/ui/text/TextStyle;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method

.method private static final b(Landroidx/compose/runtime/State;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 10
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
    .line 2
    const-string p3, "$this$composed"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const p1, 0x5e56a525

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    check-cast p1, Landroidx/compose/ui/unit/Density;

    .line 22
    .line 23
    .line 24
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->g()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 25
    move-result-object p3

    .line 26
    .line 27
    .line 28
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 29
    move-result-object p3

    .line 30
    .line 31
    check-cast p3, Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 32
    .line 33
    .line 34
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 40
    move-object v6, v0

    .line 41
    .line 42
    check-cast v6, Landroidx/compose/ui/unit/LayoutDirection;

    .line 43
    .line 44
    iget-object v0, p0, Landroidx/compose/foundation/text/TextFieldSizeKt$textFieldMinSize$1;->$style:Landroidx/compose/ui/text/TextStyle;

    .line 45
    .line 46
    .line 47
    const v1, 0x1e7b2b64

    .line 48
    .line 49
    .line 50
    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 51
    .line 52
    .line 53
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 54
    move-result v2

    .line 55
    .line 56
    .line 57
    invoke-interface {p2, v6}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 58
    move-result v3

    .line 59
    or-int/2addr v2, v3

    .line 60
    .line 61
    .line 62
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 63
    move-result-object v3

    .line 64
    .line 65
    if-nez v2, :cond_0

    .line 66
    .line 67
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 71
    move-result-object v2

    .line 72
    .line 73
    if-ne v3, v2, :cond_1

    .line 74
    .line 75
    .line 76
    :cond_0
    invoke-static {v0, v6}, Landroidx/compose/ui/text/TextStyleKt;->d(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/TextStyle;

    .line 77
    move-result-object v3

    .line 78
    .line 79
    .line 80
    invoke-interface {p2, v3}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    :cond_1
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 84
    move-object v7, v3

    .line 85
    .line 86
    check-cast v7, Landroidx/compose/ui/text/TextStyle;

    .line 87
    .line 88
    .line 89
    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 90
    .line 91
    .line 92
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 93
    move-result v0

    .line 94
    .line 95
    .line 96
    invoke-interface {p2, v7}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 97
    move-result v1

    .line 98
    or-int/2addr v0, v1

    .line 99
    .line 100
    .line 101
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 102
    move-result-object v1

    .line 103
    .line 104
    if-nez v0, :cond_2

    .line 105
    .line 106
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 110
    move-result-object v0

    .line 111
    .line 112
    if-ne v1, v0, :cond_6

    .line 113
    .line 114
    .line 115
    :cond_2
    invoke-virtual {v7}, Landroidx/compose/ui/text/TextStyle;->h()Landroidx/compose/ui/text/font/FontFamily;

    .line 116
    move-result-object v0

    .line 117
    .line 118
    .line 119
    invoke-virtual {v7}, Landroidx/compose/ui/text/TextStyle;->m()Landroidx/compose/ui/text/font/FontWeight;

    .line 120
    move-result-object v1

    .line 121
    .line 122
    if-nez v1, :cond_3

    .line 123
    .line 124
    sget-object v1, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1}, Landroidx/compose/ui/text/font/FontWeight$Companion;->d()Landroidx/compose/ui/text/font/FontWeight;

    .line 128
    move-result-object v1

    .line 129
    .line 130
    .line 131
    :cond_3
    invoke-virtual {v7}, Landroidx/compose/ui/text/TextStyle;->k()Landroidx/compose/ui/text/font/FontStyle;

    .line 132
    move-result-object v2

    .line 133
    .line 134
    if-eqz v2, :cond_4

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2}, Landroidx/compose/ui/text/font/FontStyle;->i()I

    .line 138
    move-result v2

    .line 139
    goto :goto_0

    .line 140
    .line 141
    :cond_4
    sget-object v2, Landroidx/compose/ui/text/font/FontStyle;->Companion:Landroidx/compose/ui/text/font/FontStyle$Companion;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2}, Landroidx/compose/ui/text/font/FontStyle$Companion;->b()I

    .line 145
    move-result v2

    .line 146
    .line 147
    .line 148
    :goto_0
    invoke-virtual {v7}, Landroidx/compose/ui/text/TextStyle;->l()Landroidx/compose/ui/text/font/FontSynthesis;

    .line 149
    move-result-object v3

    .line 150
    .line 151
    if-eqz v3, :cond_5

    .line 152
    .line 153
    .line 154
    invoke-virtual {v3}, Landroidx/compose/ui/text/font/FontSynthesis;->m()I

    .line 155
    move-result v3

    .line 156
    goto :goto_1

    .line 157
    .line 158
    :cond_5
    sget-object v3, Landroidx/compose/ui/text/font/FontSynthesis;->Companion:Landroidx/compose/ui/text/font/FontSynthesis$Companion;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v3}, Landroidx/compose/ui/text/font/FontSynthesis$Companion;->a()I

    .line 162
    move-result v3

    .line 163
    .line 164
    .line 165
    :goto_1
    invoke-interface {p3, v0, v1, v2, v3}, Landroidx/compose/ui/text/font/FontFamily$Resolver;->a(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/ui/text/font/FontWeight;II)Landroidx/compose/runtime/State;

    .line 166
    move-result-object v1

    .line 167
    .line 168
    .line 169
    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    :cond_6
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 173
    move-object v8, v1

    .line 174
    .line 175
    check-cast v8, Landroidx/compose/runtime/State;

    .line 176
    .line 177
    iget-object v4, p0, Landroidx/compose/foundation/text/TextFieldSizeKt$textFieldMinSize$1;->$style:Landroidx/compose/ui/text/TextStyle;

    .line 178
    .line 179
    .line 180
    const v0, -0x1d58f75c

    .line 181
    .line 182
    .line 183
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 184
    .line 185
    .line 186
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 187
    move-result-object v0

    .line 188
    .line 189
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 193
    move-result-object v1

    .line 194
    .line 195
    if-ne v0, v1, :cond_7

    .line 196
    .line 197
    new-instance v9, Landroidx/compose/foundation/text/TextFieldSize;

    .line 198
    .line 199
    .line 200
    invoke-static {v8}, Landroidx/compose/foundation/text/TextFieldSizeKt$textFieldMinSize$1;->b(Landroidx/compose/runtime/State;)Ljava/lang/Object;

    .line 201
    move-result-object v5

    .line 202
    move-object v0, v9

    .line 203
    move-object v1, v6

    .line 204
    move-object v2, p1

    .line 205
    move-object v3, p3

    .line 206
    .line 207
    .line 208
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/text/TextFieldSize;-><init>(Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/ui/text/TextStyle;Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    invoke-interface {p2, v9}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    :cond_7
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 215
    move-object v9, v0

    .line 216
    .line 217
    check-cast v9, Landroidx/compose/foundation/text/TextFieldSize;

    .line 218
    .line 219
    .line 220
    invoke-static {v8}, Landroidx/compose/foundation/text/TextFieldSizeKt$textFieldMinSize$1;->b(Landroidx/compose/runtime/State;)Ljava/lang/Object;

    .line 221
    move-result-object v5

    .line 222
    move-object v0, v9

    .line 223
    move-object v1, v6

    .line 224
    move-object v2, p1

    .line 225
    move-object v3, p3

    .line 226
    move-object v4, v7

    .line 227
    .line 228
    .line 229
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/foundation/text/TextFieldSize;->c(Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/ui/text/TextStyle;Ljava/lang/Object;)V

    .line 230
    .line 231
    sget-object p1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 232
    .line 233
    new-instance p3, Landroidx/compose/foundation/text/TextFieldSizeKt$textFieldMinSize$1$1;

    .line 234
    .line 235
    .line 236
    invoke-direct {p3, v9}, Landroidx/compose/foundation/text/TextFieldSizeKt$textFieldMinSize$1$1;-><init>(Landroidx/compose/foundation/text/TextFieldSize;)V

    .line 237
    .line 238
    .line 239
    invoke-static {p1, p3}, Landroidx/compose/ui/layout/LayoutModifierKt;->a(Landroidx/compose/ui/Modifier;Le8/q;)Landroidx/compose/ui/Modifier;

    .line 240
    move-result-object p1

    .line 241
    .line 242
    .line 243
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 244
    return-object p1
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
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/text/TextFieldSizeKt$textFieldMinSize$1;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
