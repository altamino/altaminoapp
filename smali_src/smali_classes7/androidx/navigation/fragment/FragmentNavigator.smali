.class public Landroidx/navigation/fragment/FragmentNavigator;
.super Landroidx/navigation/Navigator;
.source "SourceFile"


# annotations
.annotation runtime Landroidx/navigation/Navigator$Name;
    value = "fragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/fragment/FragmentNavigator$Destination;,
        Landroidx/navigation/fragment/FragmentNavigator$Extras;,
        Landroidx/navigation/fragment/FragmentNavigator$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/navigation/Navigator<",
        "Landroidx/navigation/fragment/FragmentNavigator$Destination;",
        ">;"
    }
.end annotation


# static fields
.field private static final Companion:Landroidx/navigation/fragment/FragmentNavigator$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final KEY_SAVED_IDS:Ljava/lang/String; = "androidx-nav-fragment:navigator:savedIds"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "FragmentNavigator"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final containerId:I

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final fragmentManager:Landroidx/fragment/app/FragmentManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final savedIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/navigation/fragment/FragmentNavigator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/navigation/fragment/FragmentNavigator$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Landroidx/navigation/fragment/FragmentNavigator;->Companion:Landroidx/navigation/fragment/FragmentNavigator$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/FragmentManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "fragmentManager"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Landroidx/navigation/Navigator;-><init>()V

    .line 14
    .line 15
    iput-object p1, p0, Landroidx/navigation/fragment/FragmentNavigator;->context:Landroid/content/Context;

    .line 16
    .line 17
    iput-object p2, p0, Landroidx/navigation/fragment/FragmentNavigator;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 18
    .line 19
    iput p3, p0, Landroidx/navigation/fragment/FragmentNavigator;->containerId:I

    .line 20
    .line 21
    new-instance p1, Ljava/util/LinkedHashSet;

    .line 22
    .line 23
    .line 24
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 25
    .line 26
    iput-object p1, p0, Landroidx/navigation/fragment/FragmentNavigator;->savedIds:Ljava/util/Set;

    .line 27
    return-void
.end method

.method private final m(Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V
    .locals 11

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/navigation/Navigator;->b()Landroidx/navigation/NavigatorState;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/navigation/NavigatorState;->b()Lkotlinx/coroutines/flow/l0;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Lkotlinx/coroutines/flow/l0;->getValue()Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Ljava/util/List;

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 18
    move-result v1

    .line 19
    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Landroidx/navigation/NavOptions;->i()Z

    .line 26
    move-result v2

    .line 27
    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    iget-object v2, p0, Landroidx/navigation/fragment/FragmentNavigator;->savedIds:Ljava/util/Set;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->g()Ljava/lang/String;

    .line 34
    move-result-object v3

    .line 35
    .line 36
    .line 37
    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 38
    move-result v2

    .line 39
    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    iget-object p2, p0, Landroidx/navigation/fragment/FragmentNavigator;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->g()Ljava/lang/String;

    .line 46
    move-result-object p3

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, p3}, Landroidx/fragment/app/FragmentManager;->w1(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Landroidx/navigation/Navigator;->b()Landroidx/navigation/NavigatorState;

    .line 53
    move-result-object p2

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, p1}, Landroidx/navigation/NavigatorState;->h(Landroidx/navigation/NavBackStackEntry;)V

    .line 57
    return-void

    .line 58
    .line 59
    .line 60
    :cond_0
    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    .line 61
    move-result-object v2

    .line 62
    .line 63
    check-cast v2, Landroidx/navigation/fragment/FragmentNavigator$Destination;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->d()Landroid/os/Bundle;

    .line 67
    move-result-object v3

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Landroidx/navigation/fragment/FragmentNavigator$Destination;->B()Ljava/lang/String;

    .line 71
    move-result-object v4

    .line 72
    const/4 v5, 0x0

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    .line 76
    move-result v6

    .line 77
    .line 78
    const/16 v7, 0x2e

    .line 79
    .line 80
    if-ne v6, v7, :cond_1

    .line 81
    .line 82
    new-instance v6, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    iget-object v7, p0, Landroidx/navigation/fragment/FragmentNavigator;->context:Landroid/content/Context;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 91
    move-result-object v7

    .line 92
    .line 93
    .line 94
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    move-result-object v4

    .line 102
    .line 103
    :cond_1
    iget-object v6, p0, Landroidx/navigation/fragment/FragmentNavigator;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v6}, Landroidx/fragment/app/FragmentManager;->z0()Landroidx/fragment/app/FragmentFactory;

    .line 107
    move-result-object v6

    .line 108
    .line 109
    iget-object v7, p0, Landroidx/navigation/fragment/FragmentNavigator;->context:Landroid/content/Context;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v7}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 113
    move-result-object v7

    .line 114
    .line 115
    .line 116
    invoke-virtual {v6, v7, v4}, Landroidx/fragment/app/FragmentFactory;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 117
    move-result-object v4

    .line 118
    .line 119
    const-string v6, "fragmentManager.fragment\u2026t.classLoader, className)"

    .line 120
    .line 121
    .line 122
    invoke-static {v4, v6}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 126
    .line 127
    iget-object v3, p0, Landroidx/navigation/fragment/FragmentNavigator;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 131
    move-result-object v3

    .line 132
    .line 133
    const-string v6, "fragmentManager.beginTransaction()"

    .line 134
    .line 135
    .line 136
    invoke-static {v3, v6}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    const/4 v6, -0x1

    .line 138
    .line 139
    if-eqz p2, :cond_2

    .line 140
    .line 141
    .line 142
    invoke-virtual {p2}, Landroidx/navigation/NavOptions;->a()I

    .line 143
    move-result v7

    .line 144
    goto :goto_0

    .line 145
    :cond_2
    move v7, v6

    .line 146
    .line 147
    :goto_0
    if-eqz p2, :cond_3

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2}, Landroidx/navigation/NavOptions;->b()I

    .line 151
    move-result v8

    .line 152
    goto :goto_1

    .line 153
    :cond_3
    move v8, v6

    .line 154
    .line 155
    :goto_1
    if-eqz p2, :cond_4

    .line 156
    .line 157
    .line 158
    invoke-virtual {p2}, Landroidx/navigation/NavOptions;->c()I

    .line 159
    move-result v9

    .line 160
    goto :goto_2

    .line 161
    :cond_4
    move v9, v6

    .line 162
    .line 163
    :goto_2
    if-eqz p2, :cond_5

    .line 164
    .line 165
    .line 166
    invoke-virtual {p2}, Landroidx/navigation/NavOptions;->d()I

    .line 167
    move-result v10

    .line 168
    goto :goto_3

    .line 169
    :cond_5
    move v10, v6

    .line 170
    .line 171
    :goto_3
    if-ne v7, v6, :cond_6

    .line 172
    .line 173
    if-ne v8, v6, :cond_6

    .line 174
    .line 175
    if-ne v9, v6, :cond_6

    .line 176
    .line 177
    if-eq v10, v6, :cond_b

    .line 178
    .line 179
    :cond_6
    if-eq v7, v6, :cond_7

    .line 180
    goto :goto_4

    .line 181
    :cond_7
    move v7, v5

    .line 182
    .line 183
    :goto_4
    if-eq v8, v6, :cond_8

    .line 184
    goto :goto_5

    .line 185
    :cond_8
    move v8, v5

    .line 186
    .line 187
    :goto_5
    if-eq v9, v6, :cond_9

    .line 188
    goto :goto_6

    .line 189
    :cond_9
    move v9, v5

    .line 190
    .line 191
    :goto_6
    if-eq v10, v6, :cond_a

    .line 192
    goto :goto_7

    .line 193
    :cond_a
    move v10, v5

    .line 194
    .line 195
    .line 196
    :goto_7
    invoke-virtual {v3, v7, v8, v9, v10}, Landroidx/fragment/app/FragmentTransaction;->z(IIII)Landroidx/fragment/app/FragmentTransaction;

    .line 197
    .line 198
    :cond_b
    iget v6, p0, Landroidx/navigation/fragment/FragmentNavigator;->containerId:I

    .line 199
    .line 200
    .line 201
    invoke-virtual {v3, v6, v4}, Landroidx/fragment/app/FragmentTransaction;->u(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentTransaction;->B(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v2}, Landroidx/navigation/NavDestination;->p()I

    .line 208
    move-result v2

    .line 209
    const/4 v4, 0x1

    .line 210
    .line 211
    if-eqz p2, :cond_c

    .line 212
    .line 213
    if-nez v1, :cond_c

    .line 214
    .line 215
    .line 216
    invoke-virtual {p2}, Landroidx/navigation/NavOptions;->g()Z

    .line 217
    move-result p2

    .line 218
    .line 219
    if-eqz p2, :cond_c

    .line 220
    .line 221
    .line 222
    invoke-static {v0}, Lkotlin/collections/t;->v0(Ljava/util/List;)Ljava/lang/Object;

    .line 223
    move-result-object p2

    .line 224
    .line 225
    check-cast p2, Landroidx/navigation/NavBackStackEntry;

    .line 226
    .line 227
    .line 228
    invoke-virtual {p2}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    .line 229
    move-result-object p2

    .line 230
    .line 231
    .line 232
    invoke-virtual {p2}, Landroidx/navigation/NavDestination;->p()I

    .line 233
    move-result p2

    .line 234
    .line 235
    if-ne p2, v2, :cond_c

    .line 236
    move p2, v4

    .line 237
    goto :goto_8

    .line 238
    :cond_c
    move p2, v5

    .line 239
    .line 240
    :goto_8
    if-eqz v1, :cond_d

    .line 241
    :goto_9
    move v5, v4

    .line 242
    goto :goto_a

    .line 243
    .line 244
    :cond_d
    if-eqz p2, :cond_e

    .line 245
    .line 246
    .line 247
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 248
    move-result p2

    .line 249
    .line 250
    if-le p2, v4, :cond_f

    .line 251
    .line 252
    iget-object p2, p0, Landroidx/navigation/fragment/FragmentNavigator;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 253
    .line 254
    .line 255
    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->g()Ljava/lang/String;

    .line 256
    move-result-object v0

    .line 257
    .line 258
    .line 259
    invoke-virtual {p2, v0, v4}, Landroidx/fragment/app/FragmentManager;->l1(Ljava/lang/String;I)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->g()Ljava/lang/String;

    .line 263
    move-result-object p2

    .line 264
    .line 265
    .line 266
    invoke-virtual {v3, p2}, Landroidx/fragment/app/FragmentTransaction;->h(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 267
    goto :goto_a

    .line 268
    .line 269
    .line 270
    :cond_e
    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->g()Ljava/lang/String;

    .line 271
    move-result-object p2

    .line 272
    .line 273
    .line 274
    invoke-virtual {v3, p2}, Landroidx/fragment/app/FragmentTransaction;->h(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 275
    goto :goto_9

    .line 276
    .line 277
    :cond_f
    :goto_a
    instance-of p2, p3, Landroidx/navigation/fragment/FragmentNavigator$Extras;

    .line 278
    .line 279
    if-eqz p2, :cond_10

    .line 280
    .line 281
    check-cast p3, Landroidx/navigation/fragment/FragmentNavigator$Extras;

    .line 282
    .line 283
    .line 284
    invoke-virtual {p3}, Landroidx/navigation/fragment/FragmentNavigator$Extras;->a()Ljava/util/Map;

    .line 285
    move-result-object p2

    .line 286
    .line 287
    .line 288
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 289
    move-result-object p2

    .line 290
    .line 291
    .line 292
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 293
    move-result-object p2

    .line 294
    .line 295
    .line 296
    :goto_b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 297
    move-result p3

    .line 298
    .line 299
    if-eqz p3, :cond_10

    .line 300
    .line 301
    .line 302
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 303
    move-result-object p3

    .line 304
    .line 305
    check-cast p3, Ljava/util/Map$Entry;

    .line 306
    .line 307
    .line 308
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 309
    move-result-object v0

    .line 310
    .line 311
    check-cast v0, Landroid/view/View;

    .line 312
    .line 313
    .line 314
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 315
    move-result-object p3

    .line 316
    .line 317
    check-cast p3, Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v3, v0, p3}, Landroidx/fragment/app/FragmentTransaction;->g(Landroid/view/View;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 321
    goto :goto_b

    .line 322
    .line 323
    .line 324
    :cond_10
    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentTransaction;->C(Z)Landroidx/fragment/app/FragmentTransaction;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 328
    .line 329
    if-eqz v5, :cond_11

    .line 330
    .line 331
    .line 332
    invoke-virtual {p0}, Landroidx/navigation/Navigator;->b()Landroidx/navigation/NavigatorState;

    .line 333
    move-result-object p2

    .line 334
    .line 335
    .line 336
    invoke-virtual {p2, p1}, Landroidx/navigation/NavigatorState;->h(Landroidx/navigation/NavBackStackEntry;)V

    .line 337
    :cond_11
    return-void
.end method


# virtual methods
.method public bridge synthetic a()Landroidx/navigation/NavDestination;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/navigation/fragment/FragmentNavigator;->l()Landroidx/navigation/fragment/FragmentNavigator$Destination;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public e(Ljava/util/List;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/navigation/NavOptions;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/navigation/Navigator$Extras;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/navigation/NavOptions;",
            "Landroidx/navigation/Navigator$Extras;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "entries"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/navigation/fragment/FragmentNavigator;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->V0()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const-string p1, "FragmentNavigator"

    .line 16
    .line 17
    const-string p2, "Ignoring navigate() call: FragmentManager has already saved its state"

    .line 18
    .line 19
    .line 20
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    return-void

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v0

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, v0, p2, p3}, Landroidx/navigation/fragment/FragmentNavigator;->m(Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    return-void
.end method

.method public h(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "savedState"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    const-string v0, "androidx-nav-fragment:navigator:savedIds"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/navigation/fragment/FragmentNavigator;->savedIds:Ljava/util/Set;

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/navigation/fragment/FragmentNavigator;->savedIds:Ljava/util/Set;

    .line 22
    .line 23
    .line 24
    invoke-static {v0, p1}, Lkotlin/collections/t;->D(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 25
    :cond_0
    return-void
.end method

.method public i()Landroid/os/Bundle;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/navigation/fragment/FragmentNavigator;->savedIds:Ljava/util/Set;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_0
    const/4 v0, 0x1

    .line 12
    .line 13
    new-array v0, v0, [Lw7/u;

    .line 14
    .line 15
    new-instance v1, Ljava/util/ArrayList;

    .line 16
    .line 17
    iget-object v2, p0, Landroidx/navigation/fragment/FragmentNavigator;->savedIds:Ljava/util/Set;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 21
    .line 22
    const-string v2, "androidx-nav-fragment:navigator:savedIds"

    .line 23
    .line 24
    .line 25
    invoke-static {v2, v1}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 26
    move-result-object v1

    .line 27
    const/4 v2, 0x0

    .line 28
    .line 29
    aput-object v1, v0, v2

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Landroidx/core/os/BundleKt;->a([Lw7/u;)Landroid/os/Bundle;

    .line 33
    move-result-object v0

    .line 34
    return-object v0
.end method

.method public j(Landroidx/navigation/NavBackStackEntry;Z)V
    .locals 6
    .param p1    # Landroidx/navigation/NavBackStackEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "popUpTo"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/navigation/fragment/FragmentNavigator;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->V0()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    const-string v1, "FragmentNavigator"

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const-string p1, "Ignoring popBackStack() call: FragmentManager has already saved its state"

    .line 19
    .line 20
    .line 21
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    return-void

    .line 23
    .line 24
    :cond_0
    if-eqz p2, :cond_2

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/navigation/Navigator;->b()Landroidx/navigation/NavigatorState;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/navigation/NavigatorState;->b()Lkotlinx/coroutines/flow/l0;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-interface {v0}, Lkotlinx/coroutines/flow/l0;->getValue()Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    check-cast v0, Ljava/util/List;

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Lkotlin/collections/t;->j0(Ljava/util/List;)Ljava/lang/Object;

    .line 42
    move-result-object v2

    .line 43
    .line 44
    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    .line 45
    .line 46
    .line 47
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 48
    move-result v3

    .line 49
    .line 50
    .line 51
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 52
    move-result v4

    .line 53
    .line 54
    .line 55
    invoke-interface {v0, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    check-cast v0, Ljava/lang/Iterable;

    .line 59
    .line 60
    .line 61
    invoke-static {v0}, Lkotlin/collections/t;->G0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    .line 65
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    .line 69
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    move-result v3

    .line 71
    .line 72
    if-eqz v3, :cond_3

    .line 73
    .line 74
    .line 75
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    move-result-object v3

    .line 77
    .line 78
    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    .line 79
    .line 80
    .line 81
    invoke-static {v3, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    move-result v4

    .line 83
    .line 84
    if-eqz v4, :cond_1

    .line 85
    .line 86
    new-instance v4, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    const-string v5, "FragmentManager cannot save the state of the initial destination "

    .line 92
    .line 93
    .line 94
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    move-result-object v3

    .line 102
    .line 103
    .line 104
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    goto :goto_0

    .line 106
    .line 107
    :cond_1
    iget-object v4, p0, Landroidx/navigation/fragment/FragmentNavigator;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3}, Landroidx/navigation/NavBackStackEntry;->g()Ljava/lang/String;

    .line 111
    move-result-object v5

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4, v5}, Landroidx/fragment/app/FragmentManager;->B1(Ljava/lang/String;)V

    .line 115
    .line 116
    iget-object v4, p0, Landroidx/navigation/fragment/FragmentNavigator;->savedIds:Ljava/util/Set;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3}, Landroidx/navigation/NavBackStackEntry;->g()Ljava/lang/String;

    .line 120
    move-result-object v3

    .line 121
    .line 122
    .line 123
    invoke-interface {v4, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 124
    goto :goto_0

    .line 125
    .line 126
    :cond_2
    iget-object v0, p0, Landroidx/navigation/fragment/FragmentNavigator;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->g()Ljava/lang/String;

    .line 130
    move-result-object v1

    .line 131
    const/4 v2, 0x1

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentManager;->l1(Ljava/lang/String;I)V

    .line 135
    .line 136
    .line 137
    :cond_3
    invoke-virtual {p0}, Landroidx/navigation/Navigator;->b()Landroidx/navigation/NavigatorState;

    .line 138
    move-result-object v0

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, p1, p2}, Landroidx/navigation/NavigatorState;->g(Landroidx/navigation/NavBackStackEntry;Z)V

    .line 142
    return-void
.end method

.method public l()Landroidx/navigation/fragment/FragmentNavigator$Destination;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/navigation/fragment/FragmentNavigator$Destination;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Landroidx/navigation/fragment/FragmentNavigator$Destination;-><init>(Landroidx/navigation/Navigator;)V

    .line 6
    return-object v0
.end method
