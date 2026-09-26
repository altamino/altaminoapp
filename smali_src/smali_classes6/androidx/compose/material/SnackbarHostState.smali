.class public final Landroidx/compose/material/SnackbarHostState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/Stable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material/SnackbarHostState$SnackbarDataImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSnackbarHost.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnackbarHost.kt\nandroidx/compose/material/SnackbarHostState\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 3 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n+ 4 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,373:1\n76#2:374\n102#2,2:375\n107#3,8:377\n116#3:396\n115#3:397\n314#4,11:385\n*S KotlinDebug\n*F\n+ 1 SnackbarHost.kt\nandroidx/compose/material/SnackbarHostState\n*L\n72#1:374\n72#1:375,2\n102#1:377,8\n102#1:396\n102#1:397\n104#1:385,11\n*E\n"
.end annotation


# instance fields
.field private final currentSnackbarData$delegate:Landroidx/compose/runtime/MutableState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mutex:Lkotlinx/coroutines/sync/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1, v2}, Lkotlinx/coroutines/sync/c;->b(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/a;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iput-object v0, p0, Landroidx/compose/material/SnackbarHostState;->mutex:Lkotlinx/coroutines/sync/a;

    .line 13
    const/4 v0, 0x2

    .line 14
    .line 15
    .line 16
    invoke-static {v2, v2, v0, v2}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    iput-object v0, p0, Landroidx/compose/material/SnackbarHostState;->currentSnackbarData$delegate:Landroidx/compose/runtime/MutableState;

    .line 20
    return-void
.end method

.method public static final synthetic a(Landroidx/compose/material/SnackbarHostState;Landroidx/compose/material/SnackbarData;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/compose/material/SnackbarHostState;->c(Landroidx/compose/material/SnackbarData;)V

    .line 4
    return-void
.end method

.method private final c(Landroidx/compose/material/SnackbarData;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/material/SnackbarHostState;->currentSnackbarData$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final b()Landroidx/compose/material/SnackbarData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/material/SnackbarHostState;->currentSnackbarData$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/compose/material/SnackbarData;

    .line 9
    return-object v0
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/material/SnackbarDuration;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/material/SnackbarDuration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroidx/compose/material/SnackbarDuration;",
            "Lkotlin/coroutines/d<",
            "-",
            "Landroidx/compose/material/SnackbarResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    instance-of v0, p4, Landroidx/compose/material/SnackbarHostState$showSnackbar$1;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p4

    .line 6
    .line 7
    check-cast v0, Landroidx/compose/material/SnackbarHostState$showSnackbar$1;

    .line 8
    .line 9
    iget v1, v0, Landroidx/compose/material/SnackbarHostState$showSnackbar$1;->label:I

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
    iput v1, v0, Landroidx/compose/material/SnackbarHostState$showSnackbar$1;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Landroidx/compose/material/SnackbarHostState$showSnackbar$1;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p4}, Landroidx/compose/material/SnackbarHostState$showSnackbar$1;-><init>(Landroidx/compose/material/SnackbarHostState;Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p4, v0, Landroidx/compose/material/SnackbarHostState$showSnackbar$1;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Landroidx/compose/material/SnackbarHostState$showSnackbar$1;->label:I

    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    const/4 v5, 0x0

    .line 36
    .line 37
    if-eqz v2, :cond_3

    .line 38
    .line 39
    if-eq v2, v4, :cond_2

    .line 40
    .line 41
    if-ne v2, v3, :cond_1

    .line 42
    .line 43
    iget-object p1, v0, Landroidx/compose/material/SnackbarHostState$showSnackbar$1;->L$5:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p1, Landroidx/compose/material/SnackbarHostState$showSnackbar$1;

    .line 46
    .line 47
    iget-object p1, v0, Landroidx/compose/material/SnackbarHostState$showSnackbar$1;->L$4:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast p1, Lkotlinx/coroutines/sync/a;

    .line 50
    .line 51
    iget-object p2, v0, Landroidx/compose/material/SnackbarHostState$showSnackbar$1;->L$3:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast p2, Landroidx/compose/material/SnackbarDuration;

    .line 54
    .line 55
    iget-object p2, v0, Landroidx/compose/material/SnackbarHostState$showSnackbar$1;->L$2:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast p2, Ljava/lang/String;

    .line 58
    .line 59
    iget-object p2, v0, Landroidx/compose/material/SnackbarHostState$showSnackbar$1;->L$1:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast p2, Ljava/lang/String;

    .line 62
    .line 63
    iget-object p2, v0, Landroidx/compose/material/SnackbarHostState$showSnackbar$1;->L$0:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast p2, Landroidx/compose/material/SnackbarHostState;

    .line 66
    .line 67
    .line 68
    :try_start_0
    invoke-static {p4}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .line 70
    goto/16 :goto_3

    .line 71
    :catchall_0
    move-exception p3

    .line 72
    .line 73
    goto/16 :goto_4

    .line 74
    .line 75
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 76
    .line 77
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 78
    .line 79
    .line 80
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 81
    throw p1

    .line 82
    .line 83
    :cond_2
    iget-object p1, v0, Landroidx/compose/material/SnackbarHostState$showSnackbar$1;->L$4:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast p1, Lkotlinx/coroutines/sync/a;

    .line 86
    .line 87
    iget-object p2, v0, Landroidx/compose/material/SnackbarHostState$showSnackbar$1;->L$3:Ljava/lang/Object;

    .line 88
    move-object p3, p2

    .line 89
    .line 90
    check-cast p3, Landroidx/compose/material/SnackbarDuration;

    .line 91
    .line 92
    iget-object p2, v0, Landroidx/compose/material/SnackbarHostState$showSnackbar$1;->L$2:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast p2, Ljava/lang/String;

    .line 95
    .line 96
    iget-object v2, v0, Landroidx/compose/material/SnackbarHostState$showSnackbar$1;->L$1:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v2, Ljava/lang/String;

    .line 99
    .line 100
    iget-object v6, v0, Landroidx/compose/material/SnackbarHostState$showSnackbar$1;->L$0:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v6, Landroidx/compose/material/SnackbarHostState;

    .line 103
    .line 104
    .line 105
    invoke-static {p4}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 106
    move-object p4, p1

    .line 107
    move-object p1, v2

    .line 108
    move-object v2, p3

    .line 109
    move-object p3, p2

    .line 110
    move-object p2, v6

    .line 111
    goto :goto_1

    .line 112
    .line 113
    .line 114
    :cond_3
    invoke-static {p4}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 115
    .line 116
    iget-object p4, p0, Landroidx/compose/material/SnackbarHostState;->mutex:Lkotlinx/coroutines/sync/a;

    .line 117
    .line 118
    iput-object p0, v0, Landroidx/compose/material/SnackbarHostState$showSnackbar$1;->L$0:Ljava/lang/Object;

    .line 119
    .line 120
    iput-object p1, v0, Landroidx/compose/material/SnackbarHostState$showSnackbar$1;->L$1:Ljava/lang/Object;

    .line 121
    .line 122
    iput-object p2, v0, Landroidx/compose/material/SnackbarHostState$showSnackbar$1;->L$2:Ljava/lang/Object;

    .line 123
    .line 124
    iput-object p3, v0, Landroidx/compose/material/SnackbarHostState$showSnackbar$1;->L$3:Ljava/lang/Object;

    .line 125
    .line 126
    iput-object p4, v0, Landroidx/compose/material/SnackbarHostState$showSnackbar$1;->L$4:Ljava/lang/Object;

    .line 127
    .line 128
    iput v4, v0, Landroidx/compose/material/SnackbarHostState$showSnackbar$1;->label:I

    .line 129
    .line 130
    .line 131
    invoke-interface {p4, v5, v0}, Lkotlinx/coroutines/sync/a;->d(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 132
    move-result-object v2

    .line 133
    .line 134
    if-ne v2, v1, :cond_4

    .line 135
    return-object v1

    .line 136
    :cond_4
    move-object v2, p3

    .line 137
    move-object p3, p2

    .line 138
    move-object p2, p0

    .line 139
    .line 140
    :goto_1
    :try_start_1
    iput-object p2, v0, Landroidx/compose/material/SnackbarHostState$showSnackbar$1;->L$0:Ljava/lang/Object;

    .line 141
    .line 142
    iput-object p1, v0, Landroidx/compose/material/SnackbarHostState$showSnackbar$1;->L$1:Ljava/lang/Object;

    .line 143
    .line 144
    iput-object p3, v0, Landroidx/compose/material/SnackbarHostState$showSnackbar$1;->L$2:Ljava/lang/Object;

    .line 145
    .line 146
    iput-object v2, v0, Landroidx/compose/material/SnackbarHostState$showSnackbar$1;->L$3:Ljava/lang/Object;

    .line 147
    .line 148
    iput-object p4, v0, Landroidx/compose/material/SnackbarHostState$showSnackbar$1;->L$4:Ljava/lang/Object;

    .line 149
    .line 150
    iput-object v0, v0, Landroidx/compose/material/SnackbarHostState$showSnackbar$1;->L$5:Ljava/lang/Object;

    .line 151
    .line 152
    iput v3, v0, Landroidx/compose/material/SnackbarHostState$showSnackbar$1;->label:I

    .line 153
    .line 154
    new-instance v3, Lkotlinx/coroutines/p;

    .line 155
    .line 156
    .line 157
    invoke-static {v0}, Lkotlin/coroutines/intrinsics/b;->c(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    .line 158
    move-result-object v6

    .line 159
    .line 160
    .line 161
    invoke-direct {v3, v6, v4}, Lkotlinx/coroutines/p;-><init>(Lkotlin/coroutines/d;I)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v3}, Lkotlinx/coroutines/p;->x()V

    .line 165
    .line 166
    new-instance v4, Landroidx/compose/material/SnackbarHostState$SnackbarDataImpl;

    .line 167
    .line 168
    .line 169
    invoke-direct {v4, p1, p3, v2, v3}, Landroidx/compose/material/SnackbarHostState$SnackbarDataImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/material/SnackbarDuration;Lkotlinx/coroutines/o;)V

    .line 170
    .line 171
    .line 172
    invoke-static {p2, v4}, Landroidx/compose/material/SnackbarHostState;->a(Landroidx/compose/material/SnackbarHostState;Landroidx/compose/material/SnackbarData;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v3}, Lkotlinx/coroutines/p;->u()Ljava/lang/Object;

    .line 176
    move-result-object p1

    .line 177
    .line 178
    .line 179
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 180
    move-result-object p3

    .line 181
    .line 182
    if-ne p1, p3, :cond_5

    .line 183
    .line 184
    .line 185
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/h;->c(Lkotlin/coroutines/d;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 186
    goto :goto_2

    .line 187
    :catchall_1
    move-exception p3

    .line 188
    move-object p1, p4

    .line 189
    goto :goto_4

    .line 190
    .line 191
    :cond_5
    :goto_2
    if-ne p1, v1, :cond_6

    .line 192
    return-object v1

    .line 193
    :cond_6
    move-object v7, p4

    .line 194
    move-object p4, p1

    .line 195
    move-object p1, v7

    .line 196
    .line 197
    .line 198
    :goto_3
    :try_start_2
    invoke-direct {p2, v5}, Landroidx/compose/material/SnackbarHostState;->c(Landroidx/compose/material/SnackbarData;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 199
    .line 200
    .line 201
    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/a;->e(Ljava/lang/Object;)V

    .line 202
    return-object p4

    .line 203
    :catchall_2
    move-exception p2

    .line 204
    goto :goto_5

    .line 205
    .line 206
    .line 207
    :goto_4
    :try_start_3
    invoke-direct {p2, v5}, Landroidx/compose/material/SnackbarHostState;->c(Landroidx/compose/material/SnackbarData;)V

    .line 208
    throw p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 209
    .line 210
    .line 211
    :goto_5
    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/a;->e(Ljava/lang/Object;)V

    .line 212
    throw p2
.end method
