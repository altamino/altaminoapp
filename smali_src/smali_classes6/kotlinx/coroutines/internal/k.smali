.class public final Lkotlinx/coroutines/internal/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDispatchedContinuation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuationKt\n+ 2 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuation\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTaskKt\n+ 5 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n*L\n1#1,317:1\n297#1,5:325\n302#1,12:331\n314#1:387\n301#1:389\n302#1,12:391\n314#1:420\n217#2,7:318\n224#2:346\n243#2,8:347\n225#2:355\n255#2:356\n256#2,2:367\n258#2:371\n227#2:372\n229#2:388\n1#3:330\n1#3:390\n1#3:421\n200#4,3:343\n203#4,14:373\n200#4,17:403\n200#4,17:422\n107#5,10:357\n118#5,2:369\n*S KotlinDebug\n*F\n+ 1 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuationKt\n*L\n282#1:325,5\n282#1:331,12\n282#1:387\n287#1:389\n287#1:391,12\n287#1:420\n282#1:318,7\n282#1:346\n282#1:347,8\n282#1:355\n282#1:356\n282#1:367,2\n282#1:371\n282#1:372\n282#1:388\n282#1:330\n287#1:390\n282#1:343,3\n282#1:373,14\n287#1:403,17\n313#1:422,17\n282#1:357,10\n282#1:369,2\n*E\n"
.end annotation


# static fields
.field public static final REUSABLE_CLAIMED:Lkotlinx/coroutines/internal/i0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final UNDEFINED:Lkotlinx/coroutines/internal/i0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lkotlinx/coroutines/internal/i0;

    .line 3
    .line 4
    const-string v1, "UNDEFINED"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/i0;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    sput-object v0, Lkotlinx/coroutines/internal/k;->UNDEFINED:Lkotlinx/coroutines/internal/i0;

    .line 10
    .line 11
    new-instance v0, Lkotlinx/coroutines/internal/i0;

    .line 12
    .line 13
    const-string v1, "REUSABLE_CLAIMED"

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/i0;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    sput-object v0, Lkotlinx/coroutines/internal/k;->REUSABLE_CLAIMED:Lkotlinx/coroutines/internal/i0;

    .line 19
    return-void
.end method

.method public static final synthetic a()Lkotlinx/coroutines/internal/i0;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/internal/k;->UNDEFINED:Lkotlinx/coroutines/internal/i0;

    return-object v0
.end method

.method public static final b(Lkotlin/coroutines/d;Ljava/lang/Object;Le8/l;)V
    .locals 6
    .param p0    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/coroutines/d<",
            "-TT;>;",
            "Ljava/lang/Object;",
            "Le8/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p0, Lkotlinx/coroutines/internal/j;

    .line 3
    .line 4
    if-eqz v0, :cond_8

    .line 5
    .line 6
    check-cast p0, Lkotlinx/coroutines/internal/j;

    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2}, Lkotlinx/coroutines/g0;->b(Ljava/lang/Object;Le8/l;)Ljava/lang/Object;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    iget-object v0, p0, Lkotlinx/coroutines/internal/j;->dispatcher:Lkotlinx/coroutines/k0;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/j;->getContext()Lkotlin/coroutines/g;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/k0;->isDispatchNeeded(Lkotlin/coroutines/g;)Z

    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x1

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iput-object p2, p0, Lkotlinx/coroutines/internal/j;->_state:Ljava/lang/Object;

    .line 26
    .line 27
    iput v1, p0, Lkotlinx/coroutines/b1;->resumeMode:I

    .line 28
    .line 29
    iget-object p1, p0, Lkotlinx/coroutines/internal/j;->dispatcher:Lkotlinx/coroutines/k0;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/j;->getContext()Lkotlin/coroutines/g;

    .line 33
    move-result-object p2

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2, p0}, Lkotlinx/coroutines/k0;->dispatch(Lkotlin/coroutines/g;Ljava/lang/Runnable;)V

    .line 37
    .line 38
    goto/16 :goto_4

    .line 39
    .line 40
    :cond_0
    sget-object v0, Lkotlinx/coroutines/b3;->INSTANCE:Lkotlinx/coroutines/b3;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lkotlinx/coroutines/b3;->b()Lkotlinx/coroutines/k1;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lkotlinx/coroutines/k1;->K0()Z

    .line 48
    move-result v2

    .line 49
    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    iput-object p2, p0, Lkotlinx/coroutines/internal/j;->_state:Ljava/lang/Object;

    .line 53
    .line 54
    iput v1, p0, Lkotlinx/coroutines/b1;->resumeMode:I

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/k1;->G0(Lkotlinx/coroutines/b1;)V

    .line 58
    .line 59
    goto/16 :goto_4

    .line 60
    .line 61
    .line 62
    :cond_1
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/k1;->I0(Z)V

    .line 63
    const/4 v2, 0x0

    .line 64
    .line 65
    .line 66
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/j;->getContext()Lkotlin/coroutines/g;

    .line 67
    move-result-object v3

    .line 68
    .line 69
    sget-object v4, Lkotlinx/coroutines/b2;->Key:Lkotlinx/coroutines/b2$b;

    .line 70
    .line 71
    .line 72
    invoke-interface {v3, v4}, Lkotlin/coroutines/g;->get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    .line 73
    move-result-object v3

    .line 74
    .line 75
    check-cast v3, Lkotlinx/coroutines/b2;

    .line 76
    .line 77
    if-eqz v3, :cond_2

    .line 78
    .line 79
    .line 80
    invoke-interface {v3}, Lkotlinx/coroutines/b2;->isActive()Z

    .line 81
    move-result v4

    .line 82
    .line 83
    if-nez v4, :cond_2

    .line 84
    .line 85
    .line 86
    invoke-interface {v3}, Lkotlinx/coroutines/b2;->b0()Ljava/util/concurrent/CancellationException;

    .line 87
    move-result-object p1

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, p2, p1}, Lkotlinx/coroutines/internal/j;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 91
    .line 92
    sget-object p2, Lw7/v;->Companion:Lw7/v$a;

    .line 93
    .line 94
    .line 95
    invoke-static {p1}, Lw7/w;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 96
    move-result-object p1

    .line 97
    .line 98
    .line 99
    invoke-static {p1}, Lw7/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    move-result-object p1

    .line 101
    .line 102
    .line 103
    invoke-interface {p0, p1}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    .line 104
    goto :goto_1

    .line 105
    :catchall_0
    move-exception p1

    .line 106
    goto :goto_3

    .line 107
    .line 108
    :cond_2
    iget-object p2, p0, Lkotlinx/coroutines/internal/j;->continuation:Lkotlin/coroutines/d;

    .line 109
    .line 110
    iget-object v3, p0, Lkotlinx/coroutines/internal/j;->countOrElement:Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    invoke-interface {p2}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/g;

    .line 114
    move-result-object v4

    .line 115
    .line 116
    .line 117
    invoke-static {v4, v3}, Lkotlinx/coroutines/internal/m0;->c(Lkotlin/coroutines/g;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    move-result-object v3

    .line 119
    .line 120
    sget-object v5, Lkotlinx/coroutines/internal/m0;->NO_THREAD_ELEMENTS:Lkotlinx/coroutines/internal/i0;

    .line 121
    .line 122
    if-eq v3, v5, :cond_3

    .line 123
    .line 124
    .line 125
    invoke-static {p2, v4, v3}, Lkotlinx/coroutines/j0;->g(Lkotlin/coroutines/d;Lkotlin/coroutines/g;Ljava/lang/Object;)Lkotlinx/coroutines/h3;

    .line 126
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    goto :goto_0

    .line 128
    :cond_3
    move-object p2, v2

    .line 129
    .line 130
    :goto_0
    :try_start_1
    iget-object v5, p0, Lkotlinx/coroutines/internal/j;->continuation:Lkotlin/coroutines/d;

    .line 131
    .line 132
    .line 133
    invoke-interface {v5, p1}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    .line 134
    .line 135
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 136
    .line 137
    if-eqz p2, :cond_4

    .line 138
    .line 139
    .line 140
    :try_start_2
    invoke-virtual {p2}, Lkotlinx/coroutines/h3;->a1()Z

    .line 141
    move-result p1

    .line 142
    .line 143
    if-eqz p1, :cond_5

    .line 144
    .line 145
    .line 146
    :cond_4
    invoke-static {v4, v3}, Lkotlinx/coroutines/internal/m0;->a(Lkotlin/coroutines/g;Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    :cond_5
    :goto_1
    invoke-virtual {v0}, Lkotlinx/coroutines/k1;->N0()Z

    .line 150
    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 151
    .line 152
    if-nez p1, :cond_5

    .line 153
    .line 154
    .line 155
    :goto_2
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/k1;->L(Z)V

    .line 156
    goto :goto_4

    .line 157
    :catchall_1
    move-exception p1

    .line 158
    .line 159
    if-eqz p2, :cond_6

    .line 160
    .line 161
    .line 162
    :try_start_3
    invoke-virtual {p2}, Lkotlinx/coroutines/h3;->a1()Z

    .line 163
    move-result p2

    .line 164
    .line 165
    if-eqz p2, :cond_7

    .line 166
    .line 167
    .line 168
    :cond_6
    invoke-static {v4, v3}, Lkotlinx/coroutines/internal/m0;->a(Lkotlin/coroutines/g;Ljava/lang/Object;)V

    .line 169
    :cond_7
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 170
    .line 171
    .line 172
    :goto_3
    :try_start_4
    invoke-virtual {p0, p1, v2}, Lkotlinx/coroutines/b1;->g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 173
    goto :goto_2

    .line 174
    :catchall_2
    move-exception p0

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/k1;->L(Z)V

    .line 178
    throw p0

    .line 179
    .line 180
    .line 181
    :cond_8
    invoke-interface {p0, p1}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    .line 182
    :goto_4
    return-void
.end method

.method public static synthetic c(Lkotlin/coroutines/d;Ljava/lang/Object;Le8/l;ILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p3, p3, 0x2

    .line 3
    .line 4
    if-eqz p3, :cond_0

    .line 5
    const/4 p2, 0x0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/internal/k;->b(Lkotlin/coroutines/d;Ljava/lang/Object;Le8/l;)V

    .line 9
    return-void
.end method

.method public static final d(Lkotlinx/coroutines/internal/j;)Z
    .locals 5
    .param p0    # Lkotlinx/coroutines/internal/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/internal/j<",
            "-",
            "Lw7/l0;",
            ">;)Z"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 3
    .line 4
    sget-object v1, Lkotlinx/coroutines/b3;->INSTANCE:Lkotlinx/coroutines/b3;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Lkotlinx/coroutines/b3;->b()Lkotlinx/coroutines/k1;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lkotlinx/coroutines/k1;->L0()Z

    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    goto :goto_1

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {v1}, Lkotlinx/coroutines/k1;->K0()Z

    .line 20
    move-result v2

    .line 21
    const/4 v4, 0x1

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    iput-object v0, p0, Lkotlinx/coroutines/internal/j;->_state:Ljava/lang/Object;

    .line 26
    .line 27
    iput v4, p0, Lkotlinx/coroutines/b1;->resumeMode:I

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p0}, Lkotlinx/coroutines/k1;->G0(Lkotlinx/coroutines/b1;)V

    .line 31
    move v3, v4

    .line 32
    goto :goto_1

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-virtual {v1, v4}, Lkotlinx/coroutines/k1;->I0(Z)V

    .line 36
    .line 37
    .line 38
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/b1;->run()V

    .line 39
    .line 40
    .line 41
    :cond_2
    invoke-virtual {v1}, Lkotlinx/coroutines/k1;->N0()Z

    .line 42
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    if-nez v0, :cond_2

    .line 45
    .line 46
    .line 47
    :goto_0
    invoke-virtual {v1, v4}, Lkotlinx/coroutines/k1;->L(Z)V

    .line 48
    goto :goto_1

    .line 49
    :catchall_0
    move-exception v0

    .line 50
    const/4 v2, 0x0

    .line 51
    .line 52
    .line 53
    :try_start_1
    invoke-virtual {p0, v0, v2}, Lkotlinx/coroutines/b1;->g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 54
    goto :goto_0

    .line 55
    :goto_1
    return v3

    .line 56
    :catchall_1
    move-exception p0

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v4}, Lkotlinx/coroutines/k1;->L(Z)V

    .line 60
    throw p0
.end method
