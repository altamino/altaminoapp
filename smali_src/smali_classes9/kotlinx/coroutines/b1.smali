.class public abstract Lkotlinx/coroutines/b1;
.super Lkotlinx/coroutines/scheduling/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/scheduling/h;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDispatchedTask.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTask\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n+ 4 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTaskKt\n+ 5 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n+ 6 Exceptions.kt\nkotlinx/coroutines/ExceptionsKt\n*L\n1#1,222:1\n1#2:223\n107#3,10:224\n118#3,2:238\n220#4:234\n221#4:237\n61#5,2:235\n75#6:240\n*S KotlinDebug\n*F\n+ 1 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTask\n*L\n90#1:224,10\n90#1:238,2\n103#1:234\n103#1:237\n103#1:235,2\n142#1:240\n*E\n"
.end annotation


# instance fields
.field public resumeMode:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/h;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Lkotlinx/coroutines/b1;->resumeMode:I

    .line 6
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public abstract c()Lkotlin/coroutines/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/coroutines/d<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public d(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    instance-of v0, p1, Lkotlinx/coroutines/c0;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p1, Lkotlinx/coroutines/c0;

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object p1, v1

    .line 10
    .line 11
    :goto_0
    if-eqz p1, :cond_1

    .line 12
    .line 13
    iget-object v1, p1, Lkotlinx/coroutines/c0;->cause:Ljava/lang/Throwable;

    .line 14
    :cond_1
    return-object v1
.end method

.method public f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1
    return-object p1
.end method

.method public final g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    if-eqz p1, :cond_1

    .line 8
    .line 9
    if-eqz p2, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-static {p1, p2}, Lw7/e;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 13
    .line 14
    :cond_1
    if-nez p1, :cond_2

    .line 15
    move-object p1, p2

    .line 16
    .line 17
    :cond_2
    new-instance p2, Lkotlinx/coroutines/r0;

    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    const-string v1, "Fatal exception in coroutines machinery for "

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v1, ". Please read KDoc to \'handleFatalException\' method and report this incident to maintainers"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-direct {p2, v0, p1}, Lkotlinx/coroutines/r0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lkotlinx/coroutines/b1;->c()Lkotlin/coroutines/d;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    .line 52
    invoke-interface {p1}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/g;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    .line 56
    invoke-static {p1, p2}, Lkotlinx/coroutines/m0;->a(Lkotlin/coroutines/g;Ljava/lang/Throwable;)V

    .line 57
    return-void
.end method

.method public abstract h()Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public final run()V
    .locals 10

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/h;->taskContext:Lkotlinx/coroutines/scheduling/i;

    .line 3
    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/b1;->c()Lkotlin/coroutines/d;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTask>"

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    check-cast v1, Lkotlinx/coroutines/internal/j;

    .line 14
    .line 15
    iget-object v2, v1, Lkotlinx/coroutines/internal/j;->continuation:Lkotlin/coroutines/d;

    .line 16
    .line 17
    iget-object v1, v1, Lkotlinx/coroutines/internal/j;->countOrElement:Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    invoke-interface {v2}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/g;

    .line 21
    move-result-object v3

    .line 22
    .line 23
    .line 24
    invoke-static {v3, v1}, Lkotlinx/coroutines/internal/m0;->c(Lkotlin/coroutines/g;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    sget-object v4, Lkotlinx/coroutines/internal/m0;->NO_THREAD_ELEMENTS:Lkotlinx/coroutines/internal/i0;

    .line 28
    const/4 v5, 0x0

    .line 29
    .line 30
    if-eq v1, v4, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-static {v2, v3, v1}, Lkotlinx/coroutines/j0;->g(Lkotlin/coroutines/d;Lkotlin/coroutines/g;Ljava/lang/Object;)Lkotlinx/coroutines/h3;

    .line 34
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception v1

    .line 37
    .line 38
    goto/16 :goto_5

    .line 39
    :cond_0
    move-object v4, v5

    .line 40
    .line 41
    .line 42
    :goto_0
    :try_start_1
    invoke-interface {v2}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/g;

    .line 43
    move-result-object v6

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lkotlinx/coroutines/b1;->h()Ljava/lang/Object;

    .line 47
    move-result-object v7

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v7}, Lkotlinx/coroutines/b1;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 51
    move-result-object v8

    .line 52
    .line 53
    if-nez v8, :cond_1

    .line 54
    .line 55
    iget v9, p0, Lkotlinx/coroutines/b1;->resumeMode:I

    .line 56
    .line 57
    .line 58
    invoke-static {v9}, Lkotlinx/coroutines/c1;->b(I)Z

    .line 59
    move-result v9

    .line 60
    .line 61
    if-eqz v9, :cond_1

    .line 62
    .line 63
    sget-object v9, Lkotlinx/coroutines/b2;->Key:Lkotlinx/coroutines/b2$b;

    .line 64
    .line 65
    .line 66
    invoke-interface {v6, v9}, Lkotlin/coroutines/g;->get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    .line 67
    move-result-object v6

    .line 68
    .line 69
    check-cast v6, Lkotlinx/coroutines/b2;

    .line 70
    goto :goto_1

    .line 71
    :catchall_1
    move-exception v2

    .line 72
    goto :goto_4

    .line 73
    :cond_1
    move-object v6, v5

    .line 74
    .line 75
    :goto_1
    if-eqz v6, :cond_2

    .line 76
    .line 77
    .line 78
    invoke-interface {v6}, Lkotlinx/coroutines/b2;->isActive()Z

    .line 79
    move-result v9

    .line 80
    .line 81
    if-nez v9, :cond_2

    .line 82
    .line 83
    .line 84
    invoke-interface {v6}, Lkotlinx/coroutines/b2;->b0()Ljava/util/concurrent/CancellationException;

    .line 85
    move-result-object v6

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v7, v6}, Lkotlinx/coroutines/b1;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 89
    .line 90
    sget-object v7, Lw7/v;->Companion:Lw7/v$a;

    .line 91
    .line 92
    .line 93
    invoke-static {v6}, Lw7/w;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 94
    move-result-object v6

    .line 95
    .line 96
    .line 97
    invoke-static {v6}, Lw7/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    move-result-object v6

    .line 99
    .line 100
    .line 101
    invoke-interface {v2, v6}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    .line 102
    goto :goto_2

    .line 103
    .line 104
    :cond_2
    if-eqz v8, :cond_3

    .line 105
    .line 106
    sget-object v6, Lw7/v;->Companion:Lw7/v$a;

    .line 107
    .line 108
    .line 109
    invoke-static {v8}, Lw7/w;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 110
    move-result-object v6

    .line 111
    .line 112
    .line 113
    invoke-static {v6}, Lw7/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    move-result-object v6

    .line 115
    .line 116
    .line 117
    invoke-interface {v2, v6}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    .line 118
    goto :goto_2

    .line 119
    .line 120
    :cond_3
    sget-object v6, Lw7/v;->Companion:Lw7/v$a;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, v7}, Lkotlinx/coroutines/b1;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    move-result-object v6

    .line 125
    .line 126
    .line 127
    invoke-static {v6}, Lw7/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    move-result-object v6

    .line 129
    .line 130
    .line 131
    invoke-interface {v2, v6}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    .line 132
    .line 133
    :goto_2
    sget-object v2, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 134
    .line 135
    if-eqz v4, :cond_4

    .line 136
    .line 137
    .line 138
    :try_start_2
    invoke-virtual {v4}, Lkotlinx/coroutines/h3;->a1()Z

    .line 139
    move-result v2

    .line 140
    .line 141
    if-eqz v2, :cond_5

    .line 142
    .line 143
    .line 144
    :cond_4
    invoke-static {v3, v1}, Lkotlinx/coroutines/internal/m0;->a(Lkotlin/coroutines/g;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    .line 146
    .line 147
    :cond_5
    :try_start_3
    invoke-interface {v0}, Lkotlinx/coroutines/scheduling/i;->a()V

    .line 148
    .line 149
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 150
    .line 151
    .line 152
    invoke-static {v0}, Lw7/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 154
    goto :goto_3

    .line 155
    :catchall_2
    move-exception v0

    .line 156
    .line 157
    sget-object v1, Lw7/v;->Companion:Lw7/v$a;

    .line 158
    .line 159
    .line 160
    invoke-static {v0}, Lw7/w;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 161
    move-result-object v0

    .line 162
    .line 163
    .line 164
    invoke-static {v0}, Lw7/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    move-result-object v0

    .line 166
    .line 167
    .line 168
    :goto_3
    invoke-static {v0}, Lw7/v;->e(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 169
    move-result-object v0

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0, v5, v0}, Lkotlinx/coroutines/b1;->g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 173
    goto :goto_7

    .line 174
    .line 175
    :goto_4
    if-eqz v4, :cond_6

    .line 176
    .line 177
    .line 178
    :try_start_4
    invoke-virtual {v4}, Lkotlinx/coroutines/h3;->a1()Z

    .line 179
    move-result v4

    .line 180
    .line 181
    if-eqz v4, :cond_7

    .line 182
    .line 183
    .line 184
    :cond_6
    invoke-static {v3, v1}, Lkotlinx/coroutines/internal/m0;->a(Lkotlin/coroutines/g;Ljava/lang/Object;)V

    .line 185
    :cond_7
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 186
    .line 187
    :goto_5
    :try_start_5
    sget-object v2, Lw7/v;->Companion:Lw7/v$a;

    .line 188
    .line 189
    .line 190
    invoke-interface {v0}, Lkotlinx/coroutines/scheduling/i;->a()V

    .line 191
    .line 192
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 193
    .line 194
    .line 195
    invoke-static {v0}, Lw7/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 197
    goto :goto_6

    .line 198
    :catchall_3
    move-exception v0

    .line 199
    .line 200
    sget-object v2, Lw7/v;->Companion:Lw7/v$a;

    .line 201
    .line 202
    .line 203
    invoke-static {v0}, Lw7/w;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 204
    move-result-object v0

    .line 205
    .line 206
    .line 207
    invoke-static {v0}, Lw7/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    move-result-object v0

    .line 209
    .line 210
    .line 211
    :goto_6
    invoke-static {v0}, Lw7/v;->e(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 212
    move-result-object v0

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0, v1, v0}, Lkotlinx/coroutines/b1;->g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 216
    :goto_7
    return-void
.end method
