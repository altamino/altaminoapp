.class public final Landroidx/compose/foundation/text/CoreTextKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoreText.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoreText.kt\nandroidx/compose/foundation/text/CoreTextKt\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 3 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 4 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n*L\n1#1,660:1\n32#2,4:661\n37#2:698\n32#2,6:699\n72#3,4:665\n76#3,11:670\n89#3:697\n76#4:669\n460#5,16:681\n*S KotlinDebug\n*F\n+ 1 CoreText.kt\nandroidx/compose/foundation/text/CoreTextKt\n*L\n80#1:661,4\n80#1:698\n640#1:699,6\n81#1:665,4\n81#1:670,11\n81#1:697\n81#1:669\n81#1:681,16\n*E\n"
.end annotation


# static fields
.field private static final EmptyInlineContent:Lw7/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw7/u<",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "Landroidx/compose/ui/text/Placeholder;",
            ">;>;",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "Le8/q<",
            "Ljava/lang/String;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;>;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lw7/u;

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lkotlin/collections/t;->m()Ljava/util/List;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lkotlin/collections/t;->m()Ljava/util/List;

    .line 10
    move-result-object v2

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1, v2}, Lw7/u;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    .line 15
    sput-object v0, Landroidx/compose/foundation/text/CoreTextKt;->EmptyInlineContent:Lw7/u;

    .line 16
    return-void
.end method

.method public static final a(Landroidx/compose/ui/text/AnnotatedString;Ljava/util/List;Landroidx/compose/runtime/Composer;I)V
    .locals 16
    .param p0    # Landroidx/compose/ui/text/AnnotatedString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
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
            "Landroidx/compose/ui/text/AnnotatedString;",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "Le8/q<",
            "Ljava/lang/String;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;>;>;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    const-string v2, "text"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    const-string v2, "inlineContents"

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const v2, -0x69c49a4

    .line 18
    .line 19
    move-object/from16 v3, p2

    .line 20
    .line 21
    .line 22
    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    .line 26
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 27
    move-result v3

    .line 28
    const/4 v4, 0x0

    .line 29
    .line 30
    .line 31
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    move-result-object v5

    .line 33
    .line 34
    :goto_0
    if-ge v4, v3, :cond_2

    .line 35
    .line 36
    .line 37
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object v6

    .line 39
    .line 40
    check-cast v6, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v6}, Landroidx/compose/ui/text/AnnotatedString$Range;->a()Ljava/lang/Object;

    .line 44
    move-result-object v7

    .line 45
    .line 46
    check-cast v7, Le8/q;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v6}, Landroidx/compose/ui/text/AnnotatedString$Range;->b()I

    .line 50
    move-result v8

    .line 51
    .line 52
    .line 53
    invoke-virtual {v6}, Landroidx/compose/ui/text/AnnotatedString$Range;->c()I

    .line 54
    move-result v6

    .line 55
    .line 56
    sget-object v9, Landroidx/compose/foundation/text/CoreTextKt$InlineChildren$1$2;->INSTANCE:Landroidx/compose/foundation/text/CoreTextKt$InlineChildren$1$2;

    .line 57
    .line 58
    .line 59
    const v10, -0x4ee9b9da

    .line 60
    .line 61
    .line 62
    invoke-interface {v2, v10}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 63
    .line 64
    sget-object v10, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 65
    .line 66
    .line 67
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 68
    move-result-object v11

    .line 69
    .line 70
    .line 71
    invoke-interface {v2, v11}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 72
    move-result-object v11

    .line 73
    .line 74
    check-cast v11, Landroidx/compose/ui/unit/Density;

    .line 75
    .line 76
    .line 77
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 78
    move-result-object v12

    .line 79
    .line 80
    .line 81
    invoke-interface {v2, v12}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 82
    move-result-object v12

    .line 83
    .line 84
    check-cast v12, Landroidx/compose/ui/unit/LayoutDirection;

    .line 85
    .line 86
    .line 87
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 88
    move-result-object v13

    .line 89
    .line 90
    .line 91
    invoke-interface {v2, v13}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 92
    move-result-object v13

    .line 93
    .line 94
    check-cast v13, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 95
    .line 96
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 100
    move-result-object v15

    .line 101
    .line 102
    .line 103
    invoke-static {v10}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 104
    move-result-object v10

    .line 105
    .line 106
    move/from16 p2, v3

    .line 107
    .line 108
    .line 109
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 110
    move-result-object v3

    .line 111
    .line 112
    instance-of v3, v3, Landroidx/compose/runtime/Applier;

    .line 113
    .line 114
    if-nez v3, :cond_0

    .line 115
    .line 116
    .line 117
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 118
    .line 119
    .line 120
    :cond_0
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->e()V

    .line 121
    .line 122
    .line 123
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->r()Z

    .line 124
    move-result v3

    .line 125
    .line 126
    if-eqz v3, :cond_1

    .line 127
    .line 128
    .line 129
    invoke-interface {v2, v15}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 130
    goto :goto_1

    .line 131
    .line 132
    .line 133
    :cond_1
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->c()V

    .line 134
    .line 135
    .line 136
    :goto_1
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->L()V

    .line 137
    .line 138
    .line 139
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 140
    move-result-object v3

    .line 141
    .line 142
    .line 143
    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 144
    move-result-object v15

    .line 145
    .line 146
    .line 147
    invoke-static {v3, v9, v15}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 151
    move-result-object v9

    .line 152
    .line 153
    .line 154
    invoke-static {v3, v11, v9}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 158
    move-result-object v9

    .line 159
    .line 160
    .line 161
    invoke-static {v3, v12, v9}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 165
    move-result-object v9

    .line 166
    .line 167
    .line 168
    invoke-static {v3, v13, v9}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 169
    .line 170
    .line 171
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->o()V

    .line 172
    .line 173
    .line 174
    invoke-static {v2}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 175
    move-result-object v3

    .line 176
    .line 177
    .line 178
    invoke-static {v3}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 179
    move-result-object v3

    .line 180
    .line 181
    .line 182
    invoke-interface {v10, v3, v2, v5}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    const v3, 0x7ab4aae9

    .line 186
    .line 187
    .line 188
    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 189
    .line 190
    .line 191
    const v3, -0x45128e5

    .line 192
    .line 193
    .line 194
    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v8, v6}, Landroidx/compose/ui/text/AnnotatedString;->j(II)Landroidx/compose/ui/text/AnnotatedString;

    .line 198
    move-result-object v3

    .line 199
    .line 200
    .line 201
    invoke-virtual {v3}, Landroidx/compose/ui/text/AnnotatedString;->g()Ljava/lang/String;

    .line 202
    move-result-object v3

    .line 203
    .line 204
    .line 205
    invoke-interface {v7, v3, v2, v5}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 209
    .line 210
    .line 211
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 212
    .line 213
    .line 214
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->d()V

    .line 215
    .line 216
    .line 217
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 218
    .line 219
    add-int/lit8 v4, v4, 0x1

    .line 220
    .line 221
    move/from16 v3, p2

    .line 222
    .line 223
    goto/16 :goto_0

    .line 224
    .line 225
    .line 226
    :cond_2
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 227
    move-result-object v2

    .line 228
    .line 229
    if-nez v2, :cond_3

    .line 230
    goto :goto_2

    .line 231
    .line 232
    :cond_3
    new-instance v3, Landroidx/compose/foundation/text/CoreTextKt$InlineChildren$2;

    .line 233
    .line 234
    move/from16 v4, p3

    .line 235
    .line 236
    .line 237
    invoke-direct {v3, v0, v1, v4}, Landroidx/compose/foundation/text/CoreTextKt$InlineChildren$2;-><init>(Landroidx/compose/ui/text/AnnotatedString;Ljava/util/List;I)V

    .line 238
    .line 239
    .line 240
    invoke-interface {v2, v3}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 241
    :goto_2
    return-void
.end method

.method public static final b(Landroidx/compose/ui/text/AnnotatedString;Ljava/util/Map;)Lw7/u;
    .locals 10
    .param p0    # Landroidx/compose/ui/text/AnnotatedString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/AnnotatedString;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/compose/foundation/text/InlineTextContent;",
            ">;)",
            "Lw7/u<",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "Landroidx/compose/ui/text/Placeholder;",
            ">;>;",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "Le8/q<",
            "Ljava/lang/String;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;>;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "text"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "inlineContent"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    sget-object p0, Landroidx/compose/foundation/text/CoreTextKt;->EmptyInlineContent:Lw7/u;

    .line 19
    return-object p0

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/text/AnnotatedString;->length()I

    .line 23
    move-result v0

    .line 24
    .line 25
    const-string v1, "androidx.compose.foundation.text.inlineContent"

    .line 26
    const/4 v2, 0x0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v1, v2, v0}, Landroidx/compose/ui/text/AnnotatedString;->f(Ljava/lang/String;II)Ljava/util/List;

    .line 30
    move-result-object p0

    .line 31
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    .line 34
    .line 35
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    new-instance v1, Ljava/util/ArrayList;

    .line 38
    .line 39
    .line 40
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 44
    move-result v3

    .line 45
    .line 46
    :goto_0
    if-ge v2, v3, :cond_2

    .line 47
    .line 48
    .line 49
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    move-result-object v4

    .line 51
    .line 52
    check-cast v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4}, Landroidx/compose/ui/text/AnnotatedString$Range;->e()Ljava/lang/Object;

    .line 56
    move-result-object v5

    .line 57
    .line 58
    .line 59
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    move-result-object v5

    .line 61
    .line 62
    check-cast v5, Landroidx/compose/foundation/text/InlineTextContent;

    .line 63
    .line 64
    if-eqz v5, :cond_1

    .line 65
    .line 66
    new-instance v6, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v5}, Landroidx/compose/foundation/text/InlineTextContent;->b()Landroidx/compose/ui/text/Placeholder;

    .line 70
    move-result-object v7

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4}, Landroidx/compose/ui/text/AnnotatedString$Range;->f()I

    .line 74
    move-result v8

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4}, Landroidx/compose/ui/text/AnnotatedString$Range;->d()I

    .line 78
    move-result v9

    .line 79
    .line 80
    .line 81
    invoke-direct {v6, v7, v8, v9}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;II)V

    .line 82
    .line 83
    .line 84
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    new-instance v6, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v5}, Landroidx/compose/foundation/text/InlineTextContent;->a()Le8/q;

    .line 90
    move-result-object v5

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4}, Landroidx/compose/ui/text/AnnotatedString$Range;->f()I

    .line 94
    move-result v7

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4}, Landroidx/compose/ui/text/AnnotatedString$Range;->d()I

    .line 98
    move-result v4

    .line 99
    .line 100
    .line 101
    invoke-direct {v6, v5, v7, v4}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;II)V

    .line 102
    .line 103
    .line 104
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 107
    goto :goto_0

    .line 108
    .line 109
    :cond_2
    new-instance p0, Lw7/u;

    .line 110
    .line 111
    .line 112
    invoke-direct {p0, v0, v1}, Lw7/u;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 113
    return-object p0
.end method

.method public static final c(Landroidx/compose/foundation/text/TextDelegate;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;ZIILjava/util/List;)Landroidx/compose/foundation/text/TextDelegate;
    .locals 12
    .param p0    # Landroidx/compose/foundation/text/TextDelegate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/text/AnnotatedString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/text/TextStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/unit/Density;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/text/font/FontFamily$Resolver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/text/TextDelegate;",
            "Landroidx/compose/ui/text/AnnotatedString;",
            "Landroidx/compose/ui/text/TextStyle;",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/ui/text/font/FontFamily$Resolver;",
            "ZII",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "Landroidx/compose/ui/text/Placeholder;",
            ">;>;)",
            "Landroidx/compose/foundation/text/TextDelegate;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object v1, p1

    .line 2
    move-object v2, p2

    .line 3
    move-object v6, p3

    .line 4
    .line 5
    move-object/from16 v7, p4

    .line 6
    .line 7
    move-object/from16 v8, p8

    .line 8
    .line 9
    const-string v0, "current"

    .line 10
    move-object v3, p0

    .line 11
    .line 12
    .line 13
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    const-string v0, "text"

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    const-string v0, "style"

    .line 21
    .line 22
    .line 23
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    const-string v0, "density"

    .line 26
    .line 27
    .line 28
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    const-string v0, "fontFamilyResolver"

    .line 31
    .line 32
    .line 33
    invoke-static {v7, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    const-string v0, "placeholders"

    .line 36
    .line 37
    .line 38
    invoke-static {v8, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroidx/compose/foundation/text/TextDelegate;->k()Landroidx/compose/ui/text/AnnotatedString;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    .line 45
    invoke-static {v0, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    move-result v0

    .line 47
    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroidx/compose/foundation/text/TextDelegate;->j()Landroidx/compose/ui/text/TextStyle;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    .line 55
    invoke-static {v0, p2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    move-result v0

    .line 57
    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Landroidx/compose/foundation/text/TextDelegate;->i()Z

    .line 62
    move-result v0

    .line 63
    .line 64
    move/from16 v4, p5

    .line 65
    .line 66
    if-ne v0, v4, :cond_2

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Landroidx/compose/foundation/text/TextDelegate;->g()I

    .line 70
    move-result v0

    .line 71
    .line 72
    move/from16 v5, p6

    .line 73
    .line 74
    .line 75
    invoke-static {v0, v5}, Landroidx/compose/ui/text/style/TextOverflow;->e(II)Z

    .line 76
    move-result v0

    .line 77
    .line 78
    if-eqz v0, :cond_1

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Landroidx/compose/foundation/text/TextDelegate;->d()I

    .line 82
    move-result v0

    .line 83
    .line 84
    move/from16 v9, p7

    .line 85
    .line 86
    if-ne v0, v9, :cond_4

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Landroidx/compose/foundation/text/TextDelegate;->a()Landroidx/compose/ui/unit/Density;

    .line 90
    move-result-object v0

    .line 91
    .line 92
    .line 93
    invoke-static {v0, p3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 94
    move-result v0

    .line 95
    .line 96
    if-eqz v0, :cond_4

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Landroidx/compose/foundation/text/TextDelegate;->h()Ljava/util/List;

    .line 100
    move-result-object v0

    .line 101
    .line 102
    .line 103
    invoke-static {v0, v8}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 104
    move-result v0

    .line 105
    .line 106
    if-eqz v0, :cond_4

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Landroidx/compose/foundation/text/TextDelegate;->b()Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 110
    move-result-object v0

    .line 111
    .line 112
    if-eq v0, v7, :cond_0

    .line 113
    goto :goto_2

    .line 114
    :cond_0
    move-object v10, v3

    .line 115
    goto :goto_3

    .line 116
    .line 117
    :cond_1
    :goto_0
    move/from16 v9, p7

    .line 118
    goto :goto_2

    .line 119
    .line 120
    :cond_2
    :goto_1
    move/from16 v5, p6

    .line 121
    goto :goto_0

    .line 122
    .line 123
    :cond_3
    move/from16 v4, p5

    .line 124
    goto :goto_1

    .line 125
    .line 126
    :cond_4
    :goto_2
    new-instance v10, Landroidx/compose/foundation/text/TextDelegate;

    .line 127
    const/4 v11, 0x0

    .line 128
    move-object v0, v10

    .line 129
    move-object v1, p1

    .line 130
    move-object v2, p2

    .line 131
    .line 132
    move/from16 v3, p7

    .line 133
    .line 134
    move/from16 v4, p5

    .line 135
    .line 136
    move/from16 v5, p6

    .line 137
    move-object v6, p3

    .line 138
    .line 139
    move-object/from16 v7, p4

    .line 140
    .line 141
    move-object/from16 v8, p8

    .line 142
    move-object v9, v11

    .line 143
    .line 144
    .line 145
    invoke-direct/range {v0 .. v9}, Landroidx/compose/foundation/text/TextDelegate;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;IZILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;Lkotlin/jvm/internal/k;)V

    .line 146
    :goto_3
    return-object v10
.end method

.method public static synthetic d(Landroidx/compose/foundation/text/TextDelegate;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;ZIILjava/util/List;ILjava/lang/Object;)Landroidx/compose/foundation/text/TextDelegate;
    .locals 11

    .line 1
    .line 2
    move/from16 v0, p9

    .line 3
    .line 4
    and-int/lit8 v1, v0, 0x20

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    const/4 v1, 0x1

    .line 8
    move v7, v1

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    move/from16 v7, p5

    .line 12
    .line 13
    :goto_0
    and-int/lit8 v1, v0, 0x40

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    sget-object v1, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->a()I

    .line 21
    move-result v1

    .line 22
    move v8, v1

    .line 23
    goto :goto_1

    .line 24
    .line 25
    :cond_1
    move/from16 v8, p6

    .line 26
    .line 27
    :goto_1
    and-int/lit16 v0, v0, 0x80

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    .line 32
    const v0, 0x7fffffff

    .line 33
    move v9, v0

    .line 34
    goto :goto_2

    .line 35
    .line 36
    :cond_2
    move/from16 v9, p7

    .line 37
    :goto_2
    move-object v2, p0

    .line 38
    move-object v3, p1

    .line 39
    move-object v4, p2

    .line 40
    move-object v5, p3

    .line 41
    move-object v6, p4

    .line 42
    .line 43
    move-object/from16 v10, p8

    .line 44
    .line 45
    .line 46
    invoke-static/range {v2 .. v10}, Landroidx/compose/foundation/text/CoreTextKt;->c(Landroidx/compose/foundation/text/TextDelegate;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;ZIILjava/util/List;)Landroidx/compose/foundation/text/TextDelegate;

    .line 47
    move-result-object v0

    .line 48
    return-object v0
.end method

.method public static final e(Landroidx/compose/foundation/text/TextDelegate;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;ZII)Landroidx/compose/foundation/text/TextDelegate;
    .locals 17
    .param p0    # Landroidx/compose/foundation/text/TextDelegate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/text/TextStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/unit/Density;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/text/font/FontFamily$Resolver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v1, p1

    .line 3
    .line 4
    move-object/from16 v6, p2

    .line 5
    .line 6
    move-object/from16 v7, p3

    .line 7
    .line 8
    move-object/from16 v8, p4

    .line 9
    .line 10
    const-string v0, "current"

    .line 11
    .line 12
    move-object/from16 v2, p0

    .line 13
    .line 14
    .line 15
    invoke-static {v2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    const-string v0, "text"

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    const-string v0, "style"

    .line 23
    .line 24
    .line 25
    invoke-static {v6, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    const-string v0, "density"

    .line 28
    .line 29
    .line 30
    invoke-static {v7, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    const-string v0, "fontFamilyResolver"

    .line 33
    .line 34
    .line 35
    invoke-static {v8, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/text/TextDelegate;->k()Landroidx/compose/ui/text/AnnotatedString;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Landroidx/compose/ui/text/AnnotatedString;->g()Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    .line 46
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    move-result v0

    .line 48
    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    .line 52
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/text/TextDelegate;->j()Landroidx/compose/ui/text/TextStyle;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    .line 56
    invoke-static {v0, v6}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    move-result v0

    .line 58
    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    .line 62
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/text/TextDelegate;->i()Z

    .line 63
    move-result v0

    .line 64
    .line 65
    move/from16 v9, p5

    .line 66
    .line 67
    if-ne v0, v9, :cond_2

    .line 68
    .line 69
    .line 70
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/text/TextDelegate;->g()I

    .line 71
    move-result v0

    .line 72
    .line 73
    move/from16 v10, p6

    .line 74
    .line 75
    .line 76
    invoke-static {v0, v10}, Landroidx/compose/ui/text/style/TextOverflow;->e(II)Z

    .line 77
    move-result v0

    .line 78
    .line 79
    if-eqz v0, :cond_1

    .line 80
    .line 81
    .line 82
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/text/TextDelegate;->d()I

    .line 83
    move-result v0

    .line 84
    .line 85
    move/from16 v11, p7

    .line 86
    .line 87
    if-ne v0, v11, :cond_4

    .line 88
    .line 89
    .line 90
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/text/TextDelegate;->a()Landroidx/compose/ui/unit/Density;

    .line 91
    move-result-object v0

    .line 92
    .line 93
    .line 94
    invoke-static {v0, v7}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    move-result v0

    .line 96
    .line 97
    if-eqz v0, :cond_4

    .line 98
    .line 99
    .line 100
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/text/TextDelegate;->b()Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 101
    move-result-object v0

    .line 102
    .line 103
    if-eq v0, v8, :cond_0

    .line 104
    goto :goto_2

    .line 105
    :cond_0
    move-object v13, v2

    .line 106
    goto :goto_3

    .line 107
    .line 108
    :cond_1
    :goto_0
    move/from16 v11, p7

    .line 109
    goto :goto_2

    .line 110
    .line 111
    :cond_2
    :goto_1
    move/from16 v10, p6

    .line 112
    goto :goto_0

    .line 113
    .line 114
    :cond_3
    move/from16 v9, p5

    .line 115
    goto :goto_1

    .line 116
    .line 117
    :cond_4
    :goto_2
    new-instance v12, Landroidx/compose/ui/text/AnnotatedString;

    .line 118
    const/4 v2, 0x0

    .line 119
    const/4 v3, 0x0

    .line 120
    const/4 v4, 0x6

    .line 121
    const/4 v5, 0x0

    .line 122
    move-object v0, v12

    .line 123
    .line 124
    move-object/from16 v1, p1

    .line 125
    .line 126
    .line 127
    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/k;)V

    .line 128
    .line 129
    new-instance v13, Landroidx/compose/foundation/text/TextDelegate;

    .line 130
    const/4 v14, 0x0

    .line 131
    .line 132
    const/16 v15, 0x80

    .line 133
    .line 134
    const/16 v16, 0x0

    .line 135
    move-object v0, v13

    .line 136
    move-object v1, v12

    .line 137
    .line 138
    move-object/from16 v2, p2

    .line 139
    .line 140
    move/from16 v3, p7

    .line 141
    .line 142
    move/from16 v4, p5

    .line 143
    .line 144
    move/from16 v5, p6

    .line 145
    .line 146
    move-object/from16 v6, p3

    .line 147
    .line 148
    move-object/from16 v7, p4

    .line 149
    move-object v8, v14

    .line 150
    move v9, v15

    .line 151
    .line 152
    move-object/from16 v10, v16

    .line 153
    .line 154
    .line 155
    invoke-direct/range {v0 .. v10}, Landroidx/compose/foundation/text/TextDelegate;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;IZILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;ILkotlin/jvm/internal/k;)V

    .line 156
    :goto_3
    return-object v13
.end method
