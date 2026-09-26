.class final Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/Recomposer;->t0(Lkotlin/coroutines/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/l;",
        "Le8/q<",
        "Lkotlinx/coroutines/o0;",
        "Landroidx/compose/runtime/MonotonicFrameClock;",
        "Lkotlin/coroutines/d<",
        "-",
        "Lw7/l0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecomposer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2\n+ 2 ActualJvm.jvm.kt\nandroidx/compose/runtime/ActualJvm_jvmKt\n+ 3 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n*L\n1#1,1200:1\n66#2:1201\n66#2:1202\n32#3,6:1203\n*S KotlinDebug\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2\n*L\n440#1:1201\n429#1:1202\n430#1:1203,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "androidx.compose.runtime.Recomposer$runRecomposeAndApplyChanges$2"
    f = "Recomposer.kt"
    l = {
        0x1b4,
        0x1c6
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/compose/runtime/Recomposer;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/Recomposer;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/Recomposer;",
            "Lkotlin/coroutines/d<",
            "-",
            "Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->this$0:Landroidx/compose/runtime/Recomposer;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method

.method public static final synthetic f(Ljava/util/List;Landroidx/compose/runtime/Recomposer;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->h(Ljava/util/List;Landroidx/compose/runtime/Recomposer;)V

    return-void
.end method

.method private static final h(Ljava/util/List;Landroidx/compose/runtime/Recomposer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/MovableContentStateReference;",
            ">;",
            "Landroidx/compose/runtime/Recomposer;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroidx/compose/runtime/Recomposer;->I(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    monitor-enter v0

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-static {p1}, Landroidx/compose/runtime/Recomposer;->x(Landroidx/compose/runtime/Recomposer;)Ljava/util/List;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    .line 19
    :goto_0
    if-ge v3, v2, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object v4

    .line 24
    .line 25
    check-cast v4, Landroidx/compose/runtime/MovableContentStateReference;

    .line 26
    move-object v5, p0

    .line 27
    .line 28
    check-cast v5, Ljava/util/Collection;

    .line 29
    .line 30
    .line 31
    invoke-interface {v5, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    add-int/lit8 v3, v3, 0x1

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_1

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-static {p1}, Landroidx/compose/runtime/Recomposer;->x(Landroidx/compose/runtime/Recomposer;)Ljava/util/List;

    .line 40
    move-result-object p0

    .line 41
    .line 42
    .line 43
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 44
    .line 45
    sget-object p0, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit v0

    .line 47
    return-void

    .line 48
    :goto_1
    monitor-exit v0

    .line 49
    throw p0
.end method


# virtual methods
.method public final g(Lkotlinx/coroutines/o0;Landroidx/compose/runtime/MonotonicFrameClock;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lkotlinx/coroutines/o0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/MonotonicFrameClock;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/o0;",
            "Landroidx/compose/runtime/MonotonicFrameClock;",
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
    new-instance p1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;

    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->this$0:Landroidx/compose/runtime/Recomposer;

    invoke-direct {p1, v0, p3}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;-><init>(Landroidx/compose/runtime/Recomposer;Lkotlin/coroutines/d;)V

    iput-object p2, p1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$0:Ljava/lang/Object;

    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/o0;

    check-cast p2, Landroidx/compose/runtime/MonotonicFrameClock;

    check-cast p3, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->g(Lkotlinx/coroutines/o0;Landroidx/compose/runtime/MonotonicFrameClock;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget v2, v1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->label:I

    .line 9
    const/4 v3, 0x2

    .line 10
    const/4 v4, 0x1

    .line 11
    .line 12
    if-eqz v2, :cond_2

    .line 13
    .line 14
    if-eq v2, v4, :cond_1

    .line 15
    .line 16
    if-ne v2, v3, :cond_0

    .line 17
    .line 18
    iget-object v2, v1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$5:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v2, Ljava/util/Set;

    .line 21
    .line 22
    iget-object v5, v1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$4:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v5, Ljava/util/Set;

    .line 25
    .line 26
    iget-object v6, v1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$3:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v6, Ljava/util/List;

    .line 29
    .line 30
    iget-object v7, v1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$2:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v7, Ljava/util/List;

    .line 33
    .line 34
    iget-object v8, v1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$1:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v8, Ljava/util/List;

    .line 37
    .line 38
    iget-object v9, v1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$0:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v9, Landroidx/compose/runtime/MonotonicFrameClock;

    .line 41
    .line 42
    .line 43
    invoke-static/range {p1 .. p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 44
    move-object v10, v1

    .line 45
    move-object v14, v6

    .line 46
    move v6, v3

    .line 47
    .line 48
    move-object/from16 v16, v9

    .line 49
    move-object v9, v2

    .line 50
    .line 51
    move-object/from16 v2, v16

    .line 52
    .line 53
    move-object/from16 v17, v8

    .line 54
    move-object v8, v5

    .line 55
    .line 56
    move-object/from16 v5, v17

    .line 57
    .line 58
    goto/16 :goto_3

    .line 59
    .line 60
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 61
    .line 62
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 63
    .line 64
    .line 65
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 66
    throw v0

    .line 67
    .line 68
    :cond_1
    iget-object v2, v1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$5:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v2, Ljava/util/Set;

    .line 71
    .line 72
    iget-object v5, v1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$4:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v5, Ljava/util/Set;

    .line 75
    .line 76
    iget-object v6, v1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$3:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v6, Ljava/util/List;

    .line 79
    .line 80
    iget-object v7, v1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$2:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v7, Ljava/util/List;

    .line 83
    .line 84
    iget-object v8, v1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$1:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v8, Ljava/util/List;

    .line 87
    .line 88
    iget-object v9, v1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$0:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v9, Landroidx/compose/runtime/MonotonicFrameClock;

    .line 91
    .line 92
    .line 93
    invoke-static/range {p1 .. p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 94
    move-object v11, v1

    .line 95
    move-object v10, v2

    .line 96
    move-object v15, v5

    .line 97
    move-object v14, v6

    .line 98
    move-object v13, v7

    .line 99
    move-object v12, v8

    .line 100
    move-object v2, v9

    .line 101
    goto :goto_1

    .line 102
    .line 103
    .line 104
    :cond_2
    invoke-static/range {p1 .. p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 105
    .line 106
    iget-object v2, v1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$0:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v2, Landroidx/compose/runtime/MonotonicFrameClock;

    .line 109
    .line 110
    new-instance v5, Ljava/util/ArrayList;

    .line 111
    .line 112
    .line 113
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .line 115
    new-instance v6, Ljava/util/ArrayList;

    .line 116
    .line 117
    .line 118
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .line 120
    new-instance v7, Ljava/util/ArrayList;

    .line 121
    .line 122
    .line 123
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .line 125
    new-instance v8, Ljava/util/LinkedHashSet;

    .line 126
    .line 127
    .line 128
    invoke-direct {v8}, Ljava/util/LinkedHashSet;-><init>()V

    .line 129
    .line 130
    new-instance v9, Ljava/util/LinkedHashSet;

    .line 131
    .line 132
    .line 133
    invoke-direct {v9}, Ljava/util/LinkedHashSet;-><init>()V

    .line 134
    move-object v10, v1

    .line 135
    .line 136
    :goto_0
    iget-object v11, v10, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->this$0:Landroidx/compose/runtime/Recomposer;

    .line 137
    .line 138
    .line 139
    invoke-static {v11}, Landroidx/compose/runtime/Recomposer;->G(Landroidx/compose/runtime/Recomposer;)Z

    .line 140
    move-result v11

    .line 141
    .line 142
    if-eqz v11, :cond_7

    .line 143
    .line 144
    iget-object v11, v10, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->this$0:Landroidx/compose/runtime/Recomposer;

    .line 145
    .line 146
    iput-object v2, v10, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$0:Ljava/lang/Object;

    .line 147
    .line 148
    iput-object v5, v10, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$1:Ljava/lang/Object;

    .line 149
    .line 150
    iput-object v6, v10, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$2:Ljava/lang/Object;

    .line 151
    .line 152
    iput-object v7, v10, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$3:Ljava/lang/Object;

    .line 153
    .line 154
    iput-object v8, v10, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$4:Ljava/lang/Object;

    .line 155
    .line 156
    iput-object v9, v10, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$5:Ljava/lang/Object;

    .line 157
    .line 158
    iput v4, v10, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->label:I

    .line 159
    .line 160
    .line 161
    invoke-static {v11, v10}, Landroidx/compose/runtime/Recomposer;->r(Landroidx/compose/runtime/Recomposer;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 162
    move-result-object v11

    .line 163
    .line 164
    if-ne v11, v0, :cond_3

    .line 165
    return-object v0

    .line 166
    :cond_3
    move-object v12, v5

    .line 167
    move-object v13, v6

    .line 168
    move-object v14, v7

    .line 169
    move-object v15, v8

    .line 170
    move-object v11, v10

    .line 171
    move-object v10, v9

    .line 172
    .line 173
    :goto_1
    iget-object v5, v11, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->this$0:Landroidx/compose/runtime/Recomposer;

    .line 174
    .line 175
    .line 176
    invoke-static {v5}, Landroidx/compose/runtime/Recomposer;->I(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Object;

    .line 177
    move-result-object v5

    .line 178
    .line 179
    iget-object v6, v11, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->this$0:Landroidx/compose/runtime/Recomposer;

    .line 180
    monitor-enter v5

    .line 181
    .line 182
    .line 183
    :try_start_0
    invoke-static {v6}, Landroidx/compose/runtime/Recomposer;->B(Landroidx/compose/runtime/Recomposer;)Z

    .line 184
    move-result v7

    .line 185
    const/4 v8, 0x0

    .line 186
    .line 187
    if-nez v7, :cond_4

    .line 188
    .line 189
    .line 190
    invoke-static {v6}, Landroidx/compose/runtime/Recomposer;->P(Landroidx/compose/runtime/Recomposer;)V

    .line 191
    .line 192
    .line 193
    invoke-static {v6}, Landroidx/compose/runtime/Recomposer;->B(Landroidx/compose/runtime/Recomposer;)Z

    .line 194
    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    .line 196
    if-nez v6, :cond_4

    .line 197
    move v8, v4

    .line 198
    goto :goto_2

    .line 199
    :catchall_0
    move-exception v0

    .line 200
    goto :goto_4

    .line 201
    :cond_4
    :goto_2
    monitor-exit v5

    .line 202
    .line 203
    if-eqz v8, :cond_5

    .line 204
    move-object v9, v10

    .line 205
    move-object v10, v11

    .line 206
    move-object v5, v12

    .line 207
    move-object v6, v13

    .line 208
    move-object v7, v14

    .line 209
    move-object v8, v15

    .line 210
    goto :goto_0

    .line 211
    .line 212
    :cond_5
    new-instance v9, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$2;

    .line 213
    .line 214
    iget-object v6, v11, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->this$0:Landroidx/compose/runtime/Recomposer;

    .line 215
    move-object v5, v9

    .line 216
    move-object v7, v12

    .line 217
    move-object v8, v13

    .line 218
    move-object v4, v9

    .line 219
    move-object v9, v15

    .line 220
    .line 221
    move-object/from16 p1, v10

    .line 222
    move-object v10, v14

    .line 223
    move-object v3, v11

    .line 224
    .line 225
    move-object/from16 v11, p1

    .line 226
    .line 227
    .line 228
    invoke-direct/range {v5 .. v11}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$2;-><init>(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Ljava/util/List;Ljava/util/Set;Ljava/util/List;Ljava/util/Set;)V

    .line 229
    .line 230
    iput-object v2, v3, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$0:Ljava/lang/Object;

    .line 231
    .line 232
    iput-object v12, v3, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$1:Ljava/lang/Object;

    .line 233
    .line 234
    iput-object v13, v3, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$2:Ljava/lang/Object;

    .line 235
    .line 236
    iput-object v14, v3, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$3:Ljava/lang/Object;

    .line 237
    .line 238
    iput-object v15, v3, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$4:Ljava/lang/Object;

    .line 239
    .line 240
    move-object/from16 v9, p1

    .line 241
    .line 242
    iput-object v9, v3, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->L$5:Ljava/lang/Object;

    .line 243
    const/4 v6, 0x2

    .line 244
    .line 245
    iput v6, v3, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->label:I

    .line 246
    .line 247
    .line 248
    invoke-interface {v2, v4, v3}, Landroidx/compose/runtime/MonotonicFrameClock;->k(Le8/l;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 249
    move-result-object v4

    .line 250
    .line 251
    if-ne v4, v0, :cond_6

    .line 252
    return-object v0

    .line 253
    :cond_6
    move-object v10, v3

    .line 254
    move-object v5, v12

    .line 255
    move-object v7, v13

    .line 256
    move-object v8, v15

    .line 257
    :goto_3
    move v3, v6

    .line 258
    move-object v6, v7

    .line 259
    move-object v7, v14

    .line 260
    const/4 v4, 0x1

    .line 261
    goto :goto_0

    .line 262
    :goto_4
    monitor-exit v5

    .line 263
    throw v0

    .line 264
    .line 265
    :cond_7
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 266
    return-object v0
.end method
