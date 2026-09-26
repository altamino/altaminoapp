.class final Lio/ktor/utils/io/jvm/javaio/h$a;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/utils/io/jvm/javaio/h;->a(Ljava/io/InputStream;Lkotlin/coroutines/g;Lt7/g;)Lio/ktor/utils/io/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/l;",
        "Le8/p<",
        "Lio/ktor/utils/io/w;",
        "Lkotlin/coroutines/d<",
        "-",
        "Lw7/l0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "io.ktor.utils.io.jvm.javaio.ReadingKt$toByteReadChannel$1"
    f = "Reading.kt"
    l = {
        0x3d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $pool:Lt7/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt7/g<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $this_toByteReadChannel:Ljava/io/InputStream;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lt7/g;Ljava/io/InputStream;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt7/g<",
            "Ljava/nio/ByteBuffer;",
            ">;",
            "Ljava/io/InputStream;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lio/ktor/utils/io/jvm/javaio/h$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/ktor/utils/io/jvm/javaio/h$a;->$pool:Lt7/g;

    iput-object p2, p0, Lio/ktor/utils/io/jvm/javaio/h$a;->$this_toByteReadChannel:Ljava/io/InputStream;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/d<",
            "*>;)",
            "Lkotlin/coroutines/d<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lio/ktor/utils/io/jvm/javaio/h$a;

    iget-object v1, p0, Lio/ktor/utils/io/jvm/javaio/h$a;->$pool:Lt7/g;

    iget-object v2, p0, Lio/ktor/utils/io/jvm/javaio/h$a;->$this_toByteReadChannel:Ljava/io/InputStream;

    invoke-direct {v0, v1, v2, p2}, Lio/ktor/utils/io/jvm/javaio/h$a;-><init>(Lt7/g;Ljava/io/InputStream;Lkotlin/coroutines/d;)V

    iput-object p1, v0, Lio/ktor/utils/io/jvm/javaio/h$a;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final f(Lio/ktor/utils/io/w;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lio/ktor/utils/io/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/w;",
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
    invoke-virtual {p0, p1, p2}, Lio/ktor/utils/io/jvm/javaio/h$a;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lio/ktor/utils/io/jvm/javaio/h$a;

    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {p1, p2}, Lio/ktor/utils/io/jvm/javaio/h$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/ktor/utils/io/w;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lio/ktor/utils/io/jvm/javaio/h$a;->f(Lio/ktor/utils/io/w;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget v1, p0, Lio/ktor/utils/io/jvm/javaio/h$a;->label:I

    .line 7
    const/4 v2, 0x1

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lio/ktor/utils/io/jvm/javaio/h$a;->L$1:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Ljava/nio/ByteBuffer;

    .line 16
    .line 17
    iget-object v3, p0, Lio/ktor/utils/io/jvm/javaio/h$a;->L$0:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v3, Lio/ktor/utils/io/w;

    .line 20
    .line 21
    .line 22
    :try_start_0
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    move-object v0, p0

    .line 26
    goto :goto_2

    .line 27
    .line 28
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 31
    .line 32
    .line 33
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    throw p1

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 38
    .line 39
    iget-object p1, p0, Lio/ktor/utils/io/jvm/javaio/h$a;->L$0:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p1, Lio/ktor/utils/io/w;

    .line 42
    .line 43
    iget-object v1, p0, Lio/ktor/utils/io/jvm/javaio/h$a;->$pool:Lt7/g;

    .line 44
    .line 45
    .line 46
    invoke-interface {v1}, Lt7/g;->s0()Ljava/lang/Object;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    check-cast v1, Ljava/nio/ByteBuffer;

    .line 50
    move-object v3, p1

    .line 51
    :goto_0
    move-object p1, p0

    .line 52
    .line 53
    .line 54
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 55
    .line 56
    iget-object v4, p1, Lio/ktor/utils/io/jvm/javaio/h$a;->$this_toByteReadChannel:Ljava/io/InputStream;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    .line 60
    move-result-object v5

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 64
    move-result v6

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    .line 68
    move-result v7

    .line 69
    add-int/2addr v6, v7

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    .line 73
    move-result v7

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4, v5, v6, v7}, Ljava/io/InputStream;->read([BII)I

    .line 77
    move-result v4

    .line 78
    .line 79
    if-ltz v4, :cond_3

    .line 80
    .line 81
    if-eqz v4, :cond_2

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    .line 85
    move-result v5

    .line 86
    add-int/2addr v5, v4

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 93
    .line 94
    .line 95
    invoke-interface {v3}, Lio/ktor/utils/io/w;->d()Lio/ktor/utils/io/j;

    .line 96
    move-result-object v4

    .line 97
    .line 98
    iput-object v3, p1, Lio/ktor/utils/io/jvm/javaio/h$a;->L$0:Ljava/lang/Object;

    .line 99
    .line 100
    iput-object v1, p1, Lio/ktor/utils/io/jvm/javaio/h$a;->L$1:Ljava/lang/Object;

    .line 101
    .line 102
    iput v2, p1, Lio/ktor/utils/io/jvm/javaio/h$a;->label:I

    .line 103
    .line 104
    .line 105
    invoke-interface {v4, v1, p1}, Lio/ktor/utils/io/j;->d(Ljava/nio/ByteBuffer;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 106
    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 107
    .line 108
    if-ne v4, v0, :cond_2

    .line 109
    return-object v0

    .line 110
    :catchall_1
    move-exception v0

    .line 111
    move-object v8, v0

    .line 112
    move-object v0, p1

    .line 113
    move-object p1, v8

    .line 114
    goto :goto_2

    .line 115
    .line 116
    :cond_3
    iget-object v0, p1, Lio/ktor/utils/io/jvm/javaio/h$a;->$pool:Lt7/g;

    .line 117
    .line 118
    .line 119
    invoke-interface {v0, v1}, Lt7/g;->S(Ljava/lang/Object;)V

    .line 120
    .line 121
    iget-object p1, p1, Lio/ktor/utils/io/jvm/javaio/h$a;->$this_toByteReadChannel:Ljava/io/InputStream;

    .line 122
    .line 123
    .line 124
    :goto_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 125
    goto :goto_3

    .line 126
    .line 127
    .line 128
    :goto_2
    :try_start_2
    invoke-interface {v3}, Lio/ktor/utils/io/w;->d()Lio/ktor/utils/io/j;

    .line 129
    move-result-object v2

    .line 130
    .line 131
    .line 132
    invoke-interface {v2, p1}, Lio/ktor/utils/io/j;->c(Ljava/lang/Throwable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 133
    .line 134
    iget-object p1, v0, Lio/ktor/utils/io/jvm/javaio/h$a;->$pool:Lt7/g;

    .line 135
    .line 136
    .line 137
    invoke-interface {p1, v1}, Lt7/g;->S(Ljava/lang/Object;)V

    .line 138
    .line 139
    iget-object p1, v0, Lio/ktor/utils/io/jvm/javaio/h$a;->$this_toByteReadChannel:Ljava/io/InputStream;

    .line 140
    goto :goto_1

    .line 141
    .line 142
    :goto_3
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 143
    return-object p1

    .line 144
    :catchall_2
    move-exception p1

    .line 145
    .line 146
    iget-object v2, v0, Lio/ktor/utils/io/jvm/javaio/h$a;->$pool:Lt7/g;

    .line 147
    .line 148
    .line 149
    invoke-interface {v2, v1}, Lt7/g;->S(Ljava/lang/Object;)V

    .line 150
    .line 151
    iget-object v0, v0, Lio/ktor/utils/io/jvm/javaio/h$a;->$this_toByteReadChannel:Ljava/io/InputStream;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 155
    throw p1
.end method
