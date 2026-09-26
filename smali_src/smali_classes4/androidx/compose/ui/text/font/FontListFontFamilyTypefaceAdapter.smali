.class public final Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/text/font/FontFamilyTypefaceAdapter;


# annotations
.annotation runtime Landroidx/compose/ui/text/ExperimentalTextApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFontListFontFamilyTypefaceAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FontListFontFamilyTypefaceAdapter.kt\nandroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter\n+ 2 TempListUtils.kt\nandroidx/compose/ui/text/TempListUtilsKt\n+ 3 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 4 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n*L\n1#1,432:1\n34#2,3:433\n37#2,2:440\n39#2:443\n54#2,4:455\n58#2,3:463\n61#2:467\n32#3,4:436\n37#3:442\n126#3,3:444\n32#3,4:447\n129#3,2:451\n37#3:453\n131#3:454\n32#3,4:459\n37#3:466\n32#3,6:468\n49#4,4:474\n*S KotlinDebug\n*F\n+ 1 FontListFontFamilyTypefaceAdapter.kt\nandroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter\n*L\n70#1:433,3\n70#1:440,2\n70#1:443\n72#1:455,4\n72#1:463,3\n72#1:467\n70#1:436,4\n70#1:442\n71#1:444,3\n71#1:447,4\n71#1:451,2\n71#1:453\n71#1:454\n72#1:459,4\n72#1:466\n76#1:468,6\n157#1:474,4\n*E\n"
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DropExceptionHandler:Lkotlinx/coroutines/l0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final fontMatcher:Landroidx/compose/ui/text/font/FontMatcher;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private asyncLoadScope:Lkotlinx/coroutines/o0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final asyncTypefaceCache:Landroidx/compose/ui/text/font/AsyncTypefaceCache;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$Companion;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;->Companion:Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$Companion;

    .line 9
    .line 10
    new-instance v0, Landroidx/compose/ui/text/font/FontMatcher;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Landroidx/compose/ui/text/font/FontMatcher;-><init>()V

    .line 14
    .line 15
    sput-object v0, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;->fontMatcher:Landroidx/compose/ui/text/font/FontMatcher;

    .line 16
    .line 17
    sget-object v0, Lkotlinx/coroutines/l0;->Key:Lkotlinx/coroutines/l0$b;

    .line 18
    .line 19
    new-instance v1, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$special$$inlined$CoroutineExceptionHandler$1;

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v0}, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$special$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlinx/coroutines/l0$b;)V

    .line 23
    .line 24
    sput-object v1, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;->DropExceptionHandler:Lkotlinx/coroutines/l0;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;-><init>(Landroidx/compose/ui/text/font/AsyncTypefaceCache;Lkotlin/coroutines/g;ILkotlin/jvm/internal/k;)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/text/font/AsyncTypefaceCache;Lkotlin/coroutines/g;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/text/font/AsyncTypefaceCache;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "asyncTypefaceCache"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "injectedContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;->asyncTypefaceCache:Landroidx/compose/ui/text/font/AsyncTypefaceCache;

    sget-object p1, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;->DropExceptionHandler:Lkotlinx/coroutines/l0;

    .line 3
    invoke-interface {p1, p2}, Lkotlin/coroutines/g;->plus(Lkotlin/coroutines/g;)Lkotlin/coroutines/g;

    move-result-object p1

    sget-object v0, Lkotlinx/coroutines/b2;->Key:Lkotlinx/coroutines/b2$b;

    invoke-interface {p2, v0}, Lkotlin/coroutines/g;->get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    move-result-object p2

    check-cast p2, Lkotlinx/coroutines/b2;

    invoke-static {p2}, Lkotlinx/coroutines/y2;->a(Lkotlinx/coroutines/b2;)Lkotlinx/coroutines/a0;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/coroutines/g;->plus(Lkotlin/coroutines/g;)Lkotlin/coroutines/g;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lkotlinx/coroutines/p0;->a(Lkotlin/coroutines/g;)Lkotlinx/coroutines/o0;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;->asyncLoadScope:Lkotlinx/coroutines/o0;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/text/font/AsyncTypefaceCache;Lkotlin/coroutines/g;ILkotlin/jvm/internal/k;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 5
    new-instance p1, Landroidx/compose/ui/text/font/AsyncTypefaceCache;

    invoke-direct {p1}, Landroidx/compose/ui/text/font/AsyncTypefaceCache;-><init>()V

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 6
    sget-object p2, Lkotlin/coroutines/h;->INSTANCE:Lkotlin/coroutines/h;

    .line 7
    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;-><init>(Landroidx/compose/ui/text/font/AsyncTypefaceCache;Lkotlin/coroutines/g;)V

    return-void
.end method

.method public static final synthetic a(Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;)Landroidx/compose/ui/text/font/AsyncTypefaceCache;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;->asyncTypefaceCache:Landroidx/compose/ui/text/font/AsyncTypefaceCache;

    .line 3
    return-object p0
.end method


# virtual methods
.method public final b(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/ui/text/font/PlatformFontLoader;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 17
    .param p1    # Landroidx/compose/ui/text/font/FontFamily;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/text/font/PlatformFontLoader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/font/FontFamily;",
            "Landroidx/compose/ui/text/font/PlatformFontLoader;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v8, p1

    .line 5
    .line 6
    move-object/from16 v9, p2

    .line 7
    .line 8
    instance-of v1, v8, Landroidx/compose/ui/text/font/FontListFontFamily;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    sget-object v1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 13
    return-object v1

    .line 14
    :cond_0
    move-object v1, v8

    .line 15
    .line 16
    check-cast v1, Landroidx/compose/ui/text/font/FontListFontFamily;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Landroidx/compose/ui/text/font/FontListFontFamily;->q()Ljava/util/List;

    .line 20
    move-result-object v10

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Landroidx/compose/ui/text/font/FontListFontFamily;->q()Ljava/util/List;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    new-instance v2, Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 30
    move-result v3

    .line 31
    .line 32
    .line 33
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 37
    move-result v3

    .line 38
    const/4 v4, 0x0

    .line 39
    move v5, v4

    .line 40
    .line 41
    :goto_0
    if-ge v5, v3, :cond_2

    .line 42
    .line 43
    .line 44
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    move-result-object v6

    .line 46
    move-object v7, v6

    .line 47
    .line 48
    check-cast v7, Landroidx/compose/ui/text/font/Font;

    .line 49
    .line 50
    .line 51
    invoke-interface {v7}, Landroidx/compose/ui/text/font/Font;->a()I

    .line 52
    move-result v7

    .line 53
    .line 54
    sget-object v11, Landroidx/compose/ui/text/font/FontLoadingStrategy;->Companion:Landroidx/compose/ui/text/font/FontLoadingStrategy$Companion;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v11}, Landroidx/compose/ui/text/font/FontLoadingStrategy$Companion;->a()I

    .line 58
    move-result v11

    .line 59
    .line 60
    .line 61
    invoke-static {v7, v11}, Landroidx/compose/ui/text/font/FontLoadingStrategy;->f(II)Z

    .line 62
    move-result v7

    .line 63
    .line 64
    if-eqz v7, :cond_1

    .line 65
    .line 66
    .line 67
    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 70
    goto :goto_0

    .line 71
    .line 72
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    .line 73
    .line 74
    .line 75
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 76
    move-result v3

    .line 77
    .line 78
    .line 79
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 80
    .line 81
    .line 82
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 83
    move-result v3

    .line 84
    move v5, v4

    .line 85
    .line 86
    :goto_1
    if-ge v5, v3, :cond_3

    .line 87
    .line 88
    .line 89
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 90
    move-result-object v6

    .line 91
    .line 92
    check-cast v6, Landroidx/compose/ui/text/font/Font;

    .line 93
    .line 94
    .line 95
    invoke-interface {v6}, Landroidx/compose/ui/text/font/Font;->b()Landroidx/compose/ui/text/font/FontWeight;

    .line 96
    move-result-object v7

    .line 97
    .line 98
    .line 99
    invoke-interface {v6}, Landroidx/compose/ui/text/font/Font;->c()I

    .line 100
    move-result v6

    .line 101
    .line 102
    .line 103
    invoke-static {v6}, Landroidx/compose/ui/text/font/FontStyle;->c(I)Landroidx/compose/ui/text/font/FontStyle;

    .line 104
    move-result-object v6

    .line 105
    .line 106
    .line 107
    invoke-static {v7, v6}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 108
    move-result-object v6

    .line 109
    .line 110
    .line 111
    invoke-interface {v1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    add-int/lit8 v5, v5, 0x1

    .line 114
    goto :goto_1

    .line 115
    .line 116
    :cond_3
    new-instance v2, Ljava/util/HashSet;

    .line 117
    .line 118
    .line 119
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 120
    move-result v3

    .line 121
    .line 122
    .line 123
    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 124
    .line 125
    new-instance v11, Ljava/util/ArrayList;

    .line 126
    .line 127
    .line 128
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 129
    move-result v3

    .line 130
    .line 131
    .line 132
    invoke-direct {v11, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 133
    .line 134
    .line 135
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 136
    move-result v3

    .line 137
    move v5, v4

    .line 138
    .line 139
    :goto_2
    if-ge v5, v3, :cond_5

    .line 140
    .line 141
    .line 142
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 143
    move-result-object v6

    .line 144
    move-object v7, v6

    .line 145
    .line 146
    check-cast v7, Lw7/u;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 150
    move-result v7

    .line 151
    .line 152
    if-eqz v7, :cond_4

    .line 153
    .line 154
    .line 155
    invoke-interface {v11, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 156
    .line 157
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 158
    goto :goto_2

    .line 159
    .line 160
    :cond_5
    new-instance v12, Ljava/util/ArrayList;

    .line 161
    .line 162
    .line 163
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .line 165
    .line 166
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 167
    move-result v13

    .line 168
    move v14, v4

    .line 169
    .line 170
    :goto_3
    if-ge v14, v13, :cond_7

    .line 171
    .line 172
    .line 173
    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 174
    move-result-object v1

    .line 175
    .line 176
    check-cast v1, Lw7/u;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1}, Lw7/u;->a()Ljava/lang/Object;

    .line 180
    move-result-object v2

    .line 181
    move-object v3, v2

    .line 182
    .line 183
    check-cast v3, Landroidx/compose/ui/text/font/FontWeight;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1}, Lw7/u;->b()Ljava/lang/Object;

    .line 187
    move-result-object v1

    .line 188
    .line 189
    check-cast v1, Landroidx/compose/ui/text/font/FontStyle;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1}, Landroidx/compose/ui/text/font/FontStyle;->i()I

    .line 193
    move-result v4

    .line 194
    .line 195
    sget-object v1, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;->fontMatcher:Landroidx/compose/ui/text/font/FontMatcher;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1, v10, v3, v4}, Landroidx/compose/ui/text/font/FontMatcher;->a(Ljava/util/List;Landroidx/compose/ui/text/font/FontWeight;I)Ljava/util/List;

    .line 199
    move-result-object v15

    .line 200
    .line 201
    new-instance v7, Landroidx/compose/ui/text/font/TypefaceRequest;

    .line 202
    .line 203
    sget-object v1, Landroidx/compose/ui/text/font/FontSynthesis;->Companion:Landroidx/compose/ui/text/font/FontSynthesis$Companion;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v1}, Landroidx/compose/ui/text/font/FontSynthesis$Companion;->a()I

    .line 207
    move-result v5

    .line 208
    .line 209
    .line 210
    invoke-interface/range {p2 .. p2}, Landroidx/compose/ui/text/font/PlatformFontLoader;->a()Ljava/lang/Object;

    .line 211
    move-result-object v6

    .line 212
    .line 213
    const/16 v16, 0x0

    .line 214
    move-object v1, v7

    .line 215
    .line 216
    move-object/from16 v2, p1

    .line 217
    move-object v8, v7

    .line 218
    .line 219
    move-object/from16 v7, v16

    .line 220
    .line 221
    .line 222
    invoke-direct/range {v1 .. v7}, Landroidx/compose/ui/text/font/TypefaceRequest;-><init>(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/ui/text/font/FontWeight;IILjava/lang/Object;Lkotlin/jvm/internal/k;)V

    .line 223
    .line 224
    iget-object v1, v0, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;->asyncTypefaceCache:Landroidx/compose/ui/text/font/AsyncTypefaceCache;

    .line 225
    .line 226
    sget-object v2, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$2$1;->INSTANCE:Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$2$1;

    .line 227
    .line 228
    .line 229
    invoke-static {v15, v8, v1, v9, v2}, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapterKt;->a(Ljava/util/List;Landroidx/compose/ui/text/font/TypefaceRequest;Landroidx/compose/ui/text/font/AsyncTypefaceCache;Landroidx/compose/ui/text/font/PlatformFontLoader;Le8/l;)Lw7/u;

    .line 230
    move-result-object v1

    .line 231
    .line 232
    .line 233
    invoke-virtual {v1}, Lw7/u;->a()Ljava/lang/Object;

    .line 234
    move-result-object v1

    .line 235
    .line 236
    check-cast v1, Ljava/util/List;

    .line 237
    .line 238
    if-eqz v1, :cond_6

    .line 239
    .line 240
    .line 241
    invoke-static {v1}, Lkotlin/collections/t;->j0(Ljava/util/List;)Ljava/lang/Object;

    .line 242
    move-result-object v1

    .line 243
    .line 244
    .line 245
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    .line 247
    :cond_6
    add-int/lit8 v14, v14, 0x1

    .line 248
    .line 249
    move-object/from16 v8, p1

    .line 250
    goto :goto_3

    .line 251
    .line 252
    :cond_7
    new-instance v1, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3;

    .line 253
    const/4 v2, 0x0

    .line 254
    .line 255
    .line 256
    invoke-direct {v1, v12, v0, v9, v2}, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3;-><init>(Ljava/util/List;Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;Landroidx/compose/ui/text/font/PlatformFontLoader;Lkotlin/coroutines/d;)V

    .line 257
    .line 258
    move-object/from16 v2, p3

    .line 259
    .line 260
    .line 261
    invoke-static {v1, v2}, Lkotlinx/coroutines/p0;->f(Le8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 262
    move-result-object v1

    .line 263
    .line 264
    .line 265
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 266
    move-result-object v2

    .line 267
    .line 268
    if-ne v1, v2, :cond_8

    .line 269
    return-object v1

    .line 270
    .line 271
    :cond_8
    sget-object v1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 272
    return-object v1
.end method

.method public c(Landroidx/compose/ui/text/font/TypefaceRequest;Landroidx/compose/ui/text/font/PlatformFontLoader;Le8/l;Le8/l;)Landroidx/compose/ui/text/font/TypefaceResult;
    .locals 16
    .param p1    # Landroidx/compose/ui/text/font/TypefaceRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/text/font/PlatformFontLoader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/font/TypefaceRequest;",
            "Landroidx/compose/ui/text/font/PlatformFontLoader;",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/text/font/TypefaceResult$Immutable;",
            "Lw7/l0;",
            ">;",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/text/font/TypefaceRequest;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Landroidx/compose/ui/text/font/TypefaceResult;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v4, p1

    .line 5
    .line 6
    move-object/from16 v7, p2

    .line 7
    .line 8
    move-object/from16 v1, p4

    .line 9
    .line 10
    const-string v2, "typefaceRequest"

    .line 11
    .line 12
    .line 13
    invoke-static {v4, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    const-string v2, "platformFontLoader"

    .line 16
    .line 17
    .line 18
    invoke-static {v7, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    const-string v2, "onAsyncCompletion"

    .line 21
    .line 22
    move-object/from16 v6, p3

    .line 23
    .line 24
    .line 25
    invoke-static {v6, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    const-string v2, "createDefaultTypeface"

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/font/TypefaceRequest;->c()Landroidx/compose/ui/text/font/FontFamily;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    instance-of v2, v2, Landroidx/compose/ui/text/font/FontListFontFamily;

    .line 37
    const/4 v8, 0x0

    .line 38
    .line 39
    if-nez v2, :cond_0

    .line 40
    return-object v8

    .line 41
    .line 42
    :cond_0
    sget-object v2, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;->fontMatcher:Landroidx/compose/ui/text/font/FontMatcher;

    .line 43
    .line 44
    .line 45
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/font/TypefaceRequest;->c()Landroidx/compose/ui/text/font/FontFamily;

    .line 46
    move-result-object v3

    .line 47
    .line 48
    check-cast v3, Landroidx/compose/ui/text/font/FontListFontFamily;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Landroidx/compose/ui/text/font/FontListFontFamily;->q()Ljava/util/List;

    .line 52
    move-result-object v3

    .line 53
    .line 54
    .line 55
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/font/TypefaceRequest;->f()Landroidx/compose/ui/text/font/FontWeight;

    .line 56
    move-result-object v5

    .line 57
    .line 58
    .line 59
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/font/TypefaceRequest;->d()I

    .line 60
    move-result v9

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v3, v5, v9}, Landroidx/compose/ui/text/font/FontMatcher;->a(Ljava/util/List;Landroidx/compose/ui/text/font/FontWeight;I)Ljava/util/List;

    .line 64
    move-result-object v2

    .line 65
    .line 66
    iget-object v3, v0, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;->asyncTypefaceCache:Landroidx/compose/ui/text/font/AsyncTypefaceCache;

    .line 67
    .line 68
    .line 69
    invoke-static {v2, v4, v3, v7, v1}, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapterKt;->a(Ljava/util/List;Landroidx/compose/ui/text/font/TypefaceRequest;Landroidx/compose/ui/text/font/AsyncTypefaceCache;Landroidx/compose/ui/text/font/PlatformFontLoader;Le8/l;)Lw7/u;

    .line 70
    move-result-object v1

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Lw7/u;->a()Ljava/lang/Object;

    .line 74
    move-result-object v2

    .line 75
    .line 76
    check-cast v2, Ljava/util/List;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Lw7/u;->b()Ljava/lang/Object;

    .line 80
    move-result-object v3

    .line 81
    .line 82
    if-nez v2, :cond_1

    .line 83
    .line 84
    new-instance v1, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;

    .line 85
    const/4 v2, 0x0

    .line 86
    const/4 v4, 0x2

    .line 87
    .line 88
    .line 89
    invoke-direct {v1, v3, v2, v4, v8}, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;-><init>(Ljava/lang/Object;ZILkotlin/jvm/internal/k;)V

    .line 90
    return-object v1

    .line 91
    .line 92
    :cond_1
    new-instance v9, Landroidx/compose/ui/text/font/AsyncFontListLoader;

    .line 93
    .line 94
    iget-object v5, v0, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;->asyncTypefaceCache:Landroidx/compose/ui/text/font/AsyncTypefaceCache;

    .line 95
    move-object v1, v9

    .line 96
    .line 97
    move-object/from16 v4, p1

    .line 98
    .line 99
    move-object/from16 v6, p3

    .line 100
    .line 101
    move-object/from16 v7, p2

    .line 102
    .line 103
    .line 104
    invoke-direct/range {v1 .. v7}, Landroidx/compose/ui/text/font/AsyncFontListLoader;-><init>(Ljava/util/List;Ljava/lang/Object;Landroidx/compose/ui/text/font/TypefaceRequest;Landroidx/compose/ui/text/font/AsyncTypefaceCache;Le8/l;Landroidx/compose/ui/text/font/PlatformFontLoader;)V

    .line 105
    .line 106
    iget-object v10, v0, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;->asyncLoadScope:Lkotlinx/coroutines/o0;

    .line 107
    const/4 v11, 0x0

    .line 108
    .line 109
    sget-object v12, Lkotlinx/coroutines/q0;->UNDISPATCHED:Lkotlinx/coroutines/q0;

    .line 110
    .line 111
    new-instance v13, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$resolve$1;

    .line 112
    .line 113
    .line 114
    invoke-direct {v13, v9, v8}, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$resolve$1;-><init>(Landroidx/compose/ui/text/font/AsyncFontListLoader;Lkotlin/coroutines/d;)V

    .line 115
    const/4 v14, 0x1

    .line 116
    const/4 v15, 0x0

    .line 117
    .line 118
    .line 119
    invoke-static/range {v10 .. v15}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;Lkotlinx/coroutines/q0;Le8/p;ILjava/lang/Object;)Lkotlinx/coroutines/b2;

    .line 120
    .line 121
    new-instance v1, Landroidx/compose/ui/text/font/TypefaceResult$Async;

    .line 122
    .line 123
    .line 124
    invoke-direct {v1, v9}, Landroidx/compose/ui/text/font/TypefaceResult$Async;-><init>(Landroidx/compose/ui/text/font/AsyncFontListLoader;)V

    .line 125
    return-object v1
.end method
