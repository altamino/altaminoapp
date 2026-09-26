.class public Lio/ktor/client/call/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/o0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/client/call/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttpClientCall.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpClientCall.kt\nio/ktor/client/call/HttpClientCall\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,208:1\n1#2:209\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lio/ktor/client/call/b$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final CustomResponse:Lio/ktor/util/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/util/a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final synthetic received$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private final allowDoubleReceive:Z

.field private final client:Lio/ktor/client/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile synthetic received:I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field protected request:Li7/c;

.field protected response:Lio/ktor/client/statement/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lio/ktor/client/call/b$a;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lio/ktor/client/call/b$a;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Lio/ktor/client/call/b;->Companion:Lio/ktor/client/call/b$a;

    .line 9
    .line 10
    new-instance v0, Lio/ktor/util/a;

    .line 11
    .line 12
    const-string v1, "CustomResponse"

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1}, Lio/ktor/util/a;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    sput-object v0, Lio/ktor/client/call/b;->CustomResponse:Lio/ktor/util/a;

    .line 18
    .line 19
    const-class v0, Lio/ktor/client/call/b;

    .line 20
    .line 21
    const-string v1, "received"

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    sput-object v0, Lio/ktor/client/call/b;->received$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 28
    return-void
.end method

.method public constructor <init>(Lio/ktor/client/a;)V
    .locals 1
    .param p1    # Lio/ktor/client/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/client/call/b;->client:Lio/ktor/client/a;

    const/4 p1, 0x0

    iput p1, p0, Lio/ktor/client/call/b;->received:I

    return-void
.end method

.method public constructor <init>(Lio/ktor/client/a;Li7/e;Li7/h;)V
    .locals 1
    .param p1    # Lio/ktor/client/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Li7/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Li7/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseData"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lio/ktor/client/call/b;-><init>(Lio/ktor/client/a;)V

    .line 3
    new-instance p1, Li7/b;

    invoke-direct {p1, p0, p2}, Li7/b;-><init>(Lio/ktor/client/call/b;Li7/e;)V

    invoke-virtual {p0, p1}, Lio/ktor/client/call/b;->i(Li7/c;)V

    .line 4
    new-instance p1, Lio/ktor/client/statement/a;

    invoke-direct {p1, p0, p3}, Lio/ktor/client/statement/a;-><init>(Lio/ktor/client/call/b;Li7/h;)V

    invoke-virtual {p0, p1}, Lio/ktor/client/call/b;->j(Lio/ktor/client/statement/c;)V

    .line 5
    invoke-virtual {p3}, Li7/h;->a()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lio/ktor/utils/io/g;

    if-nez p1, :cond_0

    .line 6
    invoke-virtual {p0}, Lio/ktor/client/call/b;->L()Lio/ktor/util/b;

    move-result-object p1

    sget-object p2, Lio/ktor/client/call/b;->CustomResponse:Lio/ktor/util/a;

    invoke-virtual {p3}, Li7/h;->a()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lio/ktor/util/b;->a(Lio/ktor/util/a;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic h(Lio/ktor/client/call/b;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/call/b;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lio/ktor/utils/io/g;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lio/ktor/client/call/b;->f()Lio/ktor/client/statement/c;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lio/ktor/client/statement/c;->a()Lio/ktor/utils/io/g;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method


# virtual methods
.method public final L()Lio/ktor/util/b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lio/ktor/client/call/b;->e()Li7/c;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Li7/c;->L()Lio/ktor/util/b;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final a(Lo7/a;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 6
    .param p1    # Lo7/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo7/a;",
            "Lkotlin/coroutines/d<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    instance-of v0, p2, Lio/ktor/client/call/b$b;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p2

    .line 6
    .line 7
    check-cast v0, Lio/ktor/client/call/b$b;

    .line 8
    .line 9
    iget v1, v0, Lio/ktor/client/call/b$b;->label:I

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
    iput v1, v0, Lio/ktor/client/call/b$b;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lio/ktor/client/call/b$b;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p2}, Lio/ktor/client/call/b$b;-><init>(Lio/ktor/client/call/b;Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p2, v0, Lio/ktor/client/call/b$b;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Lio/ktor/client/call/b$b;->label:I

    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    if-eq v2, v4, :cond_2

    .line 39
    .line 40
    if-ne v2, v3, :cond_1

    .line 41
    .line 42
    iget-object p1, v0, Lio/ktor/client/call/b$b;->L$1:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p1, Lo7/a;

    .line 45
    .line 46
    iget-object v0, v0, Lio/ktor/client/call/b$b;->L$0:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v0, Lio/ktor/client/call/b;

    .line 49
    .line 50
    .line 51
    :try_start_0
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    goto/16 :goto_3

    .line 54
    :catchall_0
    move-exception p1

    .line 55
    .line 56
    goto/16 :goto_6

    .line 57
    .line 58
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 59
    .line 60
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 61
    .line 62
    .line 63
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 64
    throw p1

    .line 65
    .line 66
    :cond_2
    iget-object p1, v0, Lio/ktor/client/call/b$b;->L$1:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast p1, Lo7/a;

    .line 69
    .line 70
    iget-object v2, v0, Lio/ktor/client/call/b$b;->L$0:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v2, Lio/ktor/client/call/b;

    .line 73
    .line 74
    .line 75
    :try_start_1
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 76
    goto :goto_2

    .line 77
    :catchall_1
    move-exception p1

    .line 78
    move-object v0, v2

    .line 79
    .line 80
    goto/16 :goto_6

    .line 81
    .line 82
    .line 83
    :cond_3
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    :try_start_2
    invoke-virtual {p0}, Lio/ktor/client/call/b;->f()Lio/ktor/client/statement/c;

    .line 87
    move-result-object p2

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Lo7/a;->a()Lkotlin/reflect/KClass;

    .line 91
    move-result-object v2

    .line 92
    .line 93
    .line 94
    invoke-static {p2, v2}, Lo7/b;->a(Ljava/lang/Object;Lkotlin/reflect/KClass;)Z

    .line 95
    move-result p2

    .line 96
    .line 97
    if-eqz p2, :cond_4

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Lio/ktor/client/call/b;->f()Lio/ktor/client/statement/c;

    .line 101
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Lio/ktor/client/call/b;->f()Lio/ktor/client/statement/c;

    .line 105
    move-result-object p2

    .line 106
    .line 107
    .line 108
    invoke-static {p2}, Lio/ktor/client/statement/e;->d(Lio/ktor/client/statement/c;)V

    .line 109
    return-object p1

    .line 110
    :catchall_2
    move-exception p1

    .line 111
    move-object v0, p0

    .line 112
    .line 113
    goto/16 :goto_6

    .line 114
    .line 115
    .line 116
    :cond_4
    :try_start_3
    invoke-virtual {p0}, Lio/ktor/client/call/b;->b()Z

    .line 117
    move-result p2

    .line 118
    .line 119
    if-nez p2, :cond_6

    .line 120
    .line 121
    sget-object p2, Lio/ktor/client/call/b;->received$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 122
    const/4 v2, 0x0

    .line 123
    .line 124
    .line 125
    invoke-virtual {p2, p0, v2, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 126
    move-result p2

    .line 127
    .line 128
    if-eqz p2, :cond_5

    .line 129
    goto :goto_1

    .line 130
    .line 131
    :cond_5
    new-instance p1, Lio/ktor/client/call/a;

    .line 132
    .line 133
    .line 134
    invoke-direct {p1, p0}, Lio/ktor/client/call/a;-><init>(Lio/ktor/client/call/b;)V

    .line 135
    throw p1

    .line 136
    .line 137
    .line 138
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lio/ktor/client/call/b;->L()Lio/ktor/util/b;

    .line 139
    move-result-object p2

    .line 140
    .line 141
    sget-object v2, Lio/ktor/client/call/b;->CustomResponse:Lio/ktor/util/a;

    .line 142
    .line 143
    .line 144
    invoke-interface {p2, v2}, Lio/ktor/util/b;->e(Lio/ktor/util/a;)Ljava/lang/Object;

    .line 145
    move-result-object p2

    .line 146
    .line 147
    if-nez p2, :cond_7

    .line 148
    .line 149
    iput-object p0, v0, Lio/ktor/client/call/b$b;->L$0:Ljava/lang/Object;

    .line 150
    .line 151
    iput-object p1, v0, Lio/ktor/client/call/b$b;->L$1:Ljava/lang/Object;

    .line 152
    .line 153
    iput v4, v0, Lio/ktor/client/call/b$b;->label:I

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0, v0}, Lio/ktor/client/call/b;->g(Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 157
    move-result-object p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 158
    .line 159
    if-ne p2, v1, :cond_7

    .line 160
    return-object v1

    .line 161
    :cond_7
    move-object v2, p0

    .line 162
    .line 163
    :goto_2
    :try_start_4
    new-instance v5, Lio/ktor/client/statement/d;

    .line 164
    .line 165
    .line 166
    invoke-direct {v5, p1, p2}, Lio/ktor/client/statement/d;-><init>(Lo7/a;Ljava/lang/Object;)V

    .line 167
    .line 168
    iget-object p2, v2, Lio/ktor/client/call/b;->client:Lio/ktor/client/a;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p2}, Lio/ktor/client/a;->o()Lio/ktor/client/statement/f;

    .line 172
    move-result-object p2

    .line 173
    .line 174
    iput-object v2, v0, Lio/ktor/client/call/b$b;->L$0:Ljava/lang/Object;

    .line 175
    .line 176
    iput-object p1, v0, Lio/ktor/client/call/b$b;->L$1:Ljava/lang/Object;

    .line 177
    .line 178
    iput v3, v0, Lio/ktor/client/call/b$b;->label:I

    .line 179
    .line 180
    .line 181
    invoke-virtual {p2, v2, v5, v0}, Lio/ktor/util/pipeline/d;->d(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 182
    move-result-object p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 183
    .line 184
    if-ne p2, v1, :cond_8

    .line 185
    return-object v1

    .line 186
    :cond_8
    move-object v0, v2

    .line 187
    .line 188
    :goto_3
    :try_start_5
    check-cast p2, Lio/ktor/client/statement/d;

    .line 189
    .line 190
    .line 191
    invoke-virtual {p2}, Lio/ktor/client/statement/d;->c()Ljava/lang/Object;

    .line 192
    move-result-object p2

    .line 193
    .line 194
    sget-object v1, Lk7/a;->INSTANCE:Lk7/a;

    .line 195
    .line 196
    .line 197
    invoke-static {p2, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 198
    move-result v1

    .line 199
    xor-int/2addr v1, v4

    .line 200
    .line 201
    if-eqz v1, :cond_9

    .line 202
    goto :goto_4

    .line 203
    :cond_9
    const/4 p2, 0x0

    .line 204
    .line 205
    :goto_4
    if-eqz p2, :cond_b

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1}, Lo7/a;->a()Lkotlin/reflect/KClass;

    .line 209
    move-result-object v1

    .line 210
    .line 211
    .line 212
    invoke-static {p2, v1}, Lo7/b;->a(Ljava/lang/Object;Lkotlin/reflect/KClass;)Z

    .line 213
    move-result v1

    .line 214
    .line 215
    if-eqz v1, :cond_a

    .line 216
    goto :goto_5

    .line 217
    .line 218
    .line 219
    :cond_a
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 220
    move-result-object p2

    .line 221
    .line 222
    .line 223
    invoke-static {p2}, Lkotlin/jvm/internal/q0;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 224
    move-result-object p2

    .line 225
    .line 226
    .line 227
    invoke-virtual {p1}, Lo7/a;->a()Lkotlin/reflect/KClass;

    .line 228
    move-result-object p1

    .line 229
    .line 230
    new-instance v1, Lio/ktor/client/call/c;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0}, Lio/ktor/client/call/b;->f()Lio/ktor/client/statement/c;

    .line 234
    move-result-object v2

    .line 235
    .line 236
    .line 237
    invoke-direct {v1, v2, p2, p1}, Lio/ktor/client/call/c;-><init>(Lio/ktor/client/statement/c;Lkotlin/reflect/KClass;Lkotlin/reflect/KClass;)V

    .line 238
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 239
    .line 240
    .line 241
    :cond_b
    :goto_5
    invoke-virtual {v0}, Lio/ktor/client/call/b;->f()Lio/ktor/client/statement/c;

    .line 242
    move-result-object p1

    .line 243
    .line 244
    .line 245
    invoke-static {p1}, Lio/ktor/client/statement/e;->d(Lio/ktor/client/statement/c;)V

    .line 246
    return-object p2

    .line 247
    .line 248
    .line 249
    :goto_6
    :try_start_6
    invoke-virtual {v0}, Lio/ktor/client/call/b;->f()Lio/ktor/client/statement/c;

    .line 250
    move-result-object p2

    .line 251
    .line 252
    const-string v1, "Receive failed"

    .line 253
    .line 254
    .line 255
    invoke-static {p2, v1, p1}, Lkotlinx/coroutines/p0;->c(Lkotlinx/coroutines/o0;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 256
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 257
    :catchall_3
    move-exception p1

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0}, Lio/ktor/client/call/b;->f()Lio/ktor/client/statement/c;

    .line 261
    move-result-object p2

    .line 262
    .line 263
    .line 264
    invoke-static {p2}, Lio/ktor/client/statement/e;->d(Lio/ktor/client/statement/c;)V

    .line 265
    throw p1
.end method

.method protected b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/ktor/client/call/b;->allowDoubleReceive:Z

    return v0
.end method

.method public final c()Lio/ktor/client/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/call/b;->client:Lio/ktor/client/a;

    return-object v0
.end method

.method public final e()Li7/c;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/ktor/client/call/b;->request:Li7/c;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "request"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final f()Lio/ktor/client/statement/c;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/ktor/client/call/b;->response:Lio/ktor/client/statement/c;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "response"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method protected g(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Lio/ktor/utils/io/g;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lio/ktor/client/call/b;->h(Lio/ktor/client/call/b;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getCoroutineContext()Lkotlin/coroutines/g;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lio/ktor/client/call/b;->f()Lio/ktor/client/statement/c;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lkotlinx/coroutines/o0;->getCoroutineContext()Lkotlin/coroutines/g;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method protected final i(Li7/c;)V
    .locals 1
    .param p1    # Li7/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/ktor/client/call/b;->request:Li7/c;

    return-void
.end method

.method protected final j(Lio/ktor/client/statement/c;)V
    .locals 1
    .param p1    # Lio/ktor/client/statement/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/ktor/client/call/b;->response:Lio/ktor/client/statement/c;

    return-void
.end method

.method public final k(Lio/ktor/client/statement/c;)V
    .locals 1
    .param p1    # Lio/ktor/client/statement/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "response"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lio/ktor/client/call/b;->j(Lio/ktor/client/statement/c;)V

    .line 9
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "HttpClientCall["

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lio/ktor/client/call/b;->e()Li7/c;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-interface {v1}, Li7/c;->getUrl()Lio/ktor/http/p0;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v1, ", "

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lio/ktor/client/call/b;->f()Lio/ktor/client/statement/c;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Lio/ktor/client/statement/c;->e()Lio/ktor/http/v;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const/16 v1, 0x5d

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    return-object v0
.end method
