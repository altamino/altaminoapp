.class public final Lio/ktor/client/engine/android/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final METHODS_WITHOUT_BODY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/ktor/http/t;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    new-array v0, v0, [Lio/ktor/http/t;

    .line 4
    .line 5
    sget-object v1, Lio/ktor/http/t;->Companion:Lio/ktor/http/t$a;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Lio/ktor/http/t$a;->a()Lio/ktor/http/t;

    .line 9
    move-result-object v2

    .line 10
    const/4 v3, 0x0

    .line 11
    .line 12
    aput-object v2, v0, v3

    .line 13
    const/4 v2, 0x1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lio/ktor/http/t$a;->b()Lio/ktor/http/t;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    aput-object v1, v0, v2

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lkotlin/collections/t;->p([Ljava/lang/Object;)Ljava/util/List;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    sput-object v0, Lio/ktor/client/engine/android/c;->METHODS_WITHOUT_BODY:Ljava/util/List;

    .line 26
    return-void
.end method

.method public static final synthetic a()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/client/engine/android/c;->METHODS_WITHOUT_BODY:Ljava/util/List;

    return-object v0
.end method

.method public static final b(Lk7/b;Ljava/io/OutputStream;Lkotlin/coroutines/g;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 16
    .param p0    # Lk7/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/OutputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/g;
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
            "Lk7/b;",
            "Ljava/io/OutputStream;",
            "Lkotlin/coroutines/g;",
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
    move-object/from16 v7, p1

    .line 5
    .line 6
    move-object/from16 v1, p3

    .line 7
    .line 8
    instance-of v2, v1, Lio/ktor/client/engine/android/c$a;

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    move-object v2, v1

    .line 12
    .line 13
    check-cast v2, Lio/ktor/client/engine/android/c$a;

    .line 14
    .line 15
    iget v3, v2, Lio/ktor/client/engine/android/c$a;->label:I

    .line 16
    .line 17
    const/high16 v4, -0x80000000

    .line 18
    .line 19
    and-int v5, v3, v4

    .line 20
    .line 21
    if-eqz v5, :cond_0

    .line 22
    sub-int/2addr v3, v4

    .line 23
    .line 24
    iput v3, v2, Lio/ktor/client/engine/android/c$a;->label:I

    .line 25
    :goto_0
    move-object v4, v2

    .line 26
    goto :goto_1

    .line 27
    .line 28
    :cond_0
    new-instance v2, Lio/ktor/client/engine/android/c$a;

    .line 29
    .line 30
    .line 31
    invoke-direct {v2, v1}, Lio/ktor/client/engine/android/c$a;-><init>(Lkotlin/coroutines/d;)V

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :goto_1
    iget-object v1, v4, Lio/ktor/client/engine/android/c$a;->result:Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 38
    move-result-object v8

    .line 39
    .line 40
    iget v2, v4, Lio/ktor/client/engine/android/c$a;->label:I

    .line 41
    const/4 v9, 0x0

    .line 42
    const/4 v3, 0x2

    .line 43
    const/4 v5, 0x1

    .line 44
    .line 45
    if-eqz v2, :cond_3

    .line 46
    .line 47
    if-eq v2, v5, :cond_2

    .line 48
    .line 49
    if-ne v2, v3, :cond_1

    .line 50
    .line 51
    iget-object v0, v4, Lio/ktor/client/engine/android/c$a;->L$0:Ljava/lang/Object;

    .line 52
    move-object v2, v0

    .line 53
    .line 54
    check-cast v2, Ljava/io/Closeable;

    .line 55
    .line 56
    .line 57
    :try_start_0
    invoke-static {v1}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    goto/16 :goto_4

    .line 60
    :catchall_0
    move-exception v0

    .line 61
    move-object v1, v0

    .line 62
    move-object v7, v2

    .line 63
    .line 64
    goto/16 :goto_5

    .line 65
    .line 66
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 67
    .line 68
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 69
    .line 70
    .line 71
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 72
    throw v0

    .line 73
    .line 74
    :cond_2
    iget-object v0, v4, Lio/ktor/client/engine/android/c$a;->L$0:Ljava/lang/Object;

    .line 75
    move-object v2, v0

    .line 76
    .line 77
    check-cast v2, Ljava/io/Closeable;

    .line 78
    .line 79
    .line 80
    :try_start_1
    invoke-static {v1}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    goto :goto_2

    .line 82
    .line 83
    .line 84
    :cond_3
    invoke-static {v1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 85
    .line 86
    :try_start_2
    instance-of v1, v0, Lk7/b$a;

    .line 87
    .line 88
    if-eqz v1, :cond_4

    .line 89
    .line 90
    check-cast v0, Lk7/b$a;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Lk7/b$a;->d()[B

    .line 94
    move-result-object v0

    .line 95
    .line 96
    .line 97
    invoke-virtual {v7, v0}, Ljava/io/OutputStream;->write([B)V

    .line 98
    goto :goto_3

    .line 99
    :catchall_1
    move-exception v0

    .line 100
    move-object v1, v0

    .line 101
    goto :goto_5

    .line 102
    .line 103
    :cond_4
    instance-of v1, v0, Lk7/b$d;

    .line 104
    .line 105
    if-eqz v1, :cond_6

    .line 106
    .line 107
    check-cast v0, Lk7/b$d;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Lk7/b$d;->d()Lio/ktor/utils/io/g;

    .line 111
    move-result-object v0

    .line 112
    .line 113
    const-wide/16 v2, 0x0

    .line 114
    const/4 v6, 0x2

    .line 115
    const/4 v10, 0x0

    .line 116
    .line 117
    iput-object v7, v4, Lio/ktor/client/engine/android/c$a;->L$0:Ljava/lang/Object;

    .line 118
    .line 119
    iput v5, v4, Lio/ktor/client/engine/android/c$a;->label:I

    .line 120
    .line 121
    move-object/from16 v1, p1

    .line 122
    move v5, v6

    .line 123
    move-object v6, v10

    .line 124
    .line 125
    .line 126
    invoke-static/range {v0 .. v6}, Lio/ktor/utils/io/jvm/javaio/j;->b(Lio/ktor/utils/io/g;Ljava/io/OutputStream;JLkotlin/coroutines/d;ILjava/lang/Object;)Ljava/lang/Object;

    .line 127
    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 128
    .line 129
    if-ne v1, v8, :cond_5

    .line 130
    return-object v8

    .line 131
    :cond_5
    move-object v2, v7

    .line 132
    .line 133
    :goto_2
    :try_start_3
    check-cast v1, Ljava/lang/Number;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 137
    goto :goto_4

    .line 138
    .line 139
    :cond_6
    :try_start_4
    instance-of v1, v0, Lk7/b$e;

    .line 140
    .line 141
    if-eqz v1, :cond_7

    .line 142
    .line 143
    sget-object v10, Lkotlinx/coroutines/t1;->INSTANCE:Lkotlinx/coroutines/t1;

    .line 144
    const/4 v12, 0x0

    .line 145
    .line 146
    new-instance v13, Lio/ktor/client/engine/android/c$b;

    .line 147
    .line 148
    .line 149
    invoke-direct {v13, v0, v9}, Lio/ktor/client/engine/android/c$b;-><init>(Lk7/b;Lkotlin/coroutines/d;)V

    .line 150
    const/4 v14, 0x2

    .line 151
    const/4 v15, 0x0

    .line 152
    .line 153
    move-object/from16 v11, p2

    .line 154
    .line 155
    .line 156
    invoke-static/range {v10 .. v15}, Lio/ktor/utils/io/q;->f(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;ZLe8/p;ILjava/lang/Object;)Lio/ktor/utils/io/v;

    .line 157
    move-result-object v0

    .line 158
    .line 159
    .line 160
    invoke-interface {v0}, Lio/ktor/utils/io/v;->d()Lio/ktor/utils/io/g;

    .line 161
    move-result-object v0

    .line 162
    .line 163
    const-wide/16 v5, 0x0

    .line 164
    const/4 v10, 0x2

    .line 165
    const/4 v11, 0x0

    .line 166
    .line 167
    iput-object v7, v4, Lio/ktor/client/engine/android/c$a;->L$0:Ljava/lang/Object;

    .line 168
    .line 169
    iput v3, v4, Lio/ktor/client/engine/android/c$a;->label:I

    .line 170
    .line 171
    move-object/from16 v1, p1

    .line 172
    move-wide v2, v5

    .line 173
    move v5, v10

    .line 174
    move-object v6, v11

    .line 175
    .line 176
    .line 177
    invoke-static/range {v0 .. v6}, Lio/ktor/utils/io/jvm/javaio/j;->b(Lio/ktor/utils/io/g;Ljava/io/OutputStream;JLkotlin/coroutines/d;ILjava/lang/Object;)Ljava/lang/Object;

    .line 178
    move-result-object v0

    .line 179
    .line 180
    if-ne v0, v8, :cond_8

    .line 181
    return-object v8

    .line 182
    .line 183
    :cond_7
    instance-of v1, v0, Lk7/b$b;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 184
    .line 185
    if-eqz v1, :cond_9

    .line 186
    :cond_8
    :goto_3
    move-object v2, v7

    .line 187
    .line 188
    :goto_4
    :try_start_5
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 189
    .line 190
    .line 191
    invoke-static {v2, v9}, Lkotlin/io/c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 192
    .line 193
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 194
    return-object v0

    .line 195
    .line 196
    :cond_9
    :try_start_6
    new-instance v1, Lio/ktor/client/call/h;

    .line 197
    .line 198
    .line 199
    invoke-direct {v1, v0}, Lio/ktor/client/call/h;-><init>(Lk7/b;)V

    .line 200
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 201
    :goto_5
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 202
    :catchall_2
    move-exception v0

    .line 203
    move-object v2, v0

    .line 204
    .line 205
    .line 206
    invoke-static {v7, v1}, Lkotlin/io/c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 207
    throw v2
.end method
