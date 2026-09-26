.class final synthetic Lkotlinx/coroutines/flow/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChannels.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Channels.kt\nkotlinx/coroutines/flow/FlowKt__ChannelsKt\n+ 2 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,176:1\n107#2:177\n*S KotlinDebug\n*F\n+ 1 Channels.kt\nkotlinx/coroutines/flow/FlowKt__ChannelsKt\n*L\n153#1:177\n*E\n"
.end annotation


# direct methods
.method public static final synthetic a(Lkotlinx/coroutines/flow/h;Lkotlinx/coroutines/channels/t;ZLkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/flow/k;->c(Lkotlinx/coroutines/flow/h;Lkotlinx/coroutines/channels/t;ZLkotlin/coroutines/d;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final b(Lkotlinx/coroutines/flow/h;Lkotlinx/coroutines/channels/t;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 1
    .param p0    # Lkotlinx/coroutines/flow/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlinx/coroutines/channels/t;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/h<",
            "-TT;>;",
            "Lkotlinx/coroutines/channels/t<",
            "+TT;>;",
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
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-static {p0, p1, v0, p2}, Lkotlinx/coroutines/flow/k;->c(Lkotlinx/coroutines/flow/h;Lkotlinx/coroutines/channels/t;ZLkotlin/coroutines/d;)Ljava/lang/Object;

    .line 5
    move-result-object p0

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    if-ne p0, p1, :cond_0

    .line 12
    return-object p0

    .line 13
    .line 14
    :cond_0
    sget-object p0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 15
    return-object p0
.end method

.method private static final c(Lkotlinx/coroutines/flow/h;Lkotlinx/coroutines/channels/t;ZLkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/h<",
            "-TT;>;",
            "Lkotlinx/coroutines/channels/t<",
            "+TT;>;Z",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p3, Lkotlinx/coroutines/flow/k$a;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p3

    .line 6
    .line 7
    check-cast v0, Lkotlinx/coroutines/flow/k$a;

    .line 8
    .line 9
    iget v1, v0, Lkotlinx/coroutines/flow/k$a;->label:I

    .line 10
    .line 11
    const/high16 v2, -0x80000000

    .line 12
    .line 13
    and-int v3, v1, v2

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    sub-int/2addr v1, v2

    .line 17
    .line 18
    iput v1, v0, Lkotlinx/coroutines/flow/k$a;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/k$a;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p3}, Lkotlinx/coroutines/flow/k$a;-><init>(Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p3, v0, Lkotlinx/coroutines/flow/k$a;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Lkotlinx/coroutines/flow/k$a;->label:I

    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    .line 36
    if-eqz v2, :cond_4

    .line 37
    .line 38
    if-eq v2, v4, :cond_3

    .line 39
    .line 40
    if-ne v2, v3, :cond_2

    .line 41
    .line 42
    iget-boolean p2, v0, Lkotlinx/coroutines/flow/k$a;->Z$0:Z

    .line 43
    .line 44
    iget-object p0, v0, Lkotlinx/coroutines/flow/k$a;->L$2:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p0, Lkotlinx/coroutines/channels/f;

    .line 47
    .line 48
    iget-object p1, v0, Lkotlinx/coroutines/flow/k$a;->L$1:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p1, Lkotlinx/coroutines/channels/t;

    .line 51
    .line 52
    iget-object v2, v0, Lkotlinx/coroutines/flow/k$a;->L$0:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v2, Lkotlinx/coroutines/flow/h;

    .line 55
    .line 56
    .line 57
    :try_start_0
    invoke-static {p3}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :cond_1
    move-object p3, p0

    .line 59
    move-object p0, v2

    .line 60
    goto :goto_1

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto :goto_3

    .line 63
    .line 64
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 65
    .line 66
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 67
    .line 68
    .line 69
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 70
    throw p0

    .line 71
    .line 72
    :cond_3
    iget-boolean p2, v0, Lkotlinx/coroutines/flow/k$a;->Z$0:Z

    .line 73
    .line 74
    iget-object p0, v0, Lkotlinx/coroutines/flow/k$a;->L$2:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast p0, Lkotlinx/coroutines/channels/f;

    .line 77
    .line 78
    iget-object p1, v0, Lkotlinx/coroutines/flow/k$a;->L$1:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast p1, Lkotlinx/coroutines/channels/t;

    .line 81
    .line 82
    iget-object v2, v0, Lkotlinx/coroutines/flow/k$a;->L$0:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v2, Lkotlinx/coroutines/flow/h;

    .line 85
    .line 86
    .line 87
    :try_start_1
    invoke-static {p3}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    goto :goto_2

    .line 89
    .line 90
    .line 91
    :cond_4
    invoke-static {p3}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    invoke-static {p0}, Lkotlinx/coroutines/flow/i;->s(Lkotlinx/coroutines/flow/h;)V

    .line 95
    .line 96
    .line 97
    :try_start_2
    invoke-interface {p1}, Lkotlinx/coroutines/channels/t;->iterator()Lkotlinx/coroutines/channels/f;

    .line 98
    move-result-object p3

    .line 99
    .line 100
    :goto_1
    iput-object p0, v0, Lkotlinx/coroutines/flow/k$a;->L$0:Ljava/lang/Object;

    .line 101
    .line 102
    iput-object p1, v0, Lkotlinx/coroutines/flow/k$a;->L$1:Ljava/lang/Object;

    .line 103
    .line 104
    iput-object p3, v0, Lkotlinx/coroutines/flow/k$a;->L$2:Ljava/lang/Object;

    .line 105
    .line 106
    iput-boolean p2, v0, Lkotlinx/coroutines/flow/k$a;->Z$0:Z

    .line 107
    .line 108
    iput v4, v0, Lkotlinx/coroutines/flow/k$a;->label:I

    .line 109
    .line 110
    .line 111
    invoke-interface {p3, v0}, Lkotlinx/coroutines/channels/f;->b(Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 112
    move-result-object v2

    .line 113
    .line 114
    if-ne v2, v1, :cond_5

    .line 115
    return-object v1

    .line 116
    :cond_5
    move-object v5, v2

    .line 117
    move-object v2, p0

    .line 118
    move-object p0, p3

    .line 119
    move-object p3, v5

    .line 120
    .line 121
    :goto_2
    check-cast p3, Ljava/lang/Boolean;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 125
    move-result p3

    .line 126
    .line 127
    if-eqz p3, :cond_6

    .line 128
    .line 129
    .line 130
    invoke-interface {p0}, Lkotlinx/coroutines/channels/f;->next()Ljava/lang/Object;

    .line 131
    move-result-object p3

    .line 132
    .line 133
    iput-object v2, v0, Lkotlinx/coroutines/flow/k$a;->L$0:Ljava/lang/Object;

    .line 134
    .line 135
    iput-object p1, v0, Lkotlinx/coroutines/flow/k$a;->L$1:Ljava/lang/Object;

    .line 136
    .line 137
    iput-object p0, v0, Lkotlinx/coroutines/flow/k$a;->L$2:Ljava/lang/Object;

    .line 138
    .line 139
    iput-boolean p2, v0, Lkotlinx/coroutines/flow/k$a;->Z$0:Z

    .line 140
    .line 141
    iput v3, v0, Lkotlinx/coroutines/flow/k$a;->label:I

    .line 142
    .line 143
    .line 144
    invoke-interface {v2, p3, v0}, Lkotlinx/coroutines/flow/h;->emit(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 145
    move-result-object p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 146
    .line 147
    if-ne p3, v1, :cond_1

    .line 148
    return-object v1

    .line 149
    .line 150
    :cond_6
    if-eqz p2, :cond_7

    .line 151
    const/4 p0, 0x0

    .line 152
    .line 153
    .line 154
    invoke-static {p1, p0}, Lkotlinx/coroutines/channels/j;->a(Lkotlinx/coroutines/channels/t;Ljava/lang/Throwable;)V

    .line 155
    .line 156
    :cond_7
    sget-object p0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 157
    return-object p0

    .line 158
    :goto_3
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 159
    :catchall_1
    move-exception p3

    .line 160
    .line 161
    if-eqz p2, :cond_8

    .line 162
    .line 163
    .line 164
    invoke-static {p1, p0}, Lkotlinx/coroutines/channels/j;->a(Lkotlinx/coroutines/channels/t;Ljava/lang/Throwable;)V

    .line 165
    :cond_8
    throw p3
.end method
