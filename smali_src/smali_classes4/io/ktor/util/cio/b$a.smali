.class final Lio/ktor/util/cio/b$a;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/util/cio/b;->a(Ljava/io/File;Lkotlin/coroutines/g;)Lio/ktor/utils/io/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/l;",
        "Le8/p<",
        "Lio/ktor/utils/io/u;",
        "Lkotlin/coroutines/d<",
        "-",
        "Lw7/l0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFileChannels.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileChannels.kt\nio/ktor/util/cio/FileChannelsKt$writeChannel$1\n+ 2 Closeable.kt\nio/ktor/utils/io/core/CloseableKt\n*L\n1#1,100:1\n8#2,4:101\n22#2,4:105\n12#2,9:109\n*S KotlinDebug\n*F\n+ 1 FileChannels.kt\nio/ktor/util/cio/FileChannelsKt$writeChannel$1\n*L\n95#1:101,4\n95#1:105,4\n95#1:109,9\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "io.ktor.util.cio.FileChannelsKt$writeChannel$1"
    f = "FileChannels.kt"
    l = {
        0x60
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $this_writeChannel:Ljava/io/File;

.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Ljava/io/File;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lio/ktor/util/cio/b$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/util/cio/b$a;->$this_writeChannel:Ljava/io/File;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 2
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

    new-instance v0, Lio/ktor/util/cio/b$a;

    iget-object v1, p0, Lio/ktor/util/cio/b$a;->$this_writeChannel:Ljava/io/File;

    invoke-direct {v0, v1, p2}, Lio/ktor/util/cio/b$a;-><init>(Ljava/io/File;Lkotlin/coroutines/d;)V

    iput-object p1, v0, Lio/ktor/util/cio/b$a;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final f(Lio/ktor/utils/io/u;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lio/ktor/utils/io/u;
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
            "Lio/ktor/utils/io/u;",
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
    invoke-virtual {p0, p1, p2}, Lio/ktor/util/cio/b$a;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lio/ktor/util/cio/b$a;

    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {p1, p2}, Lio/ktor/util/cio/b$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/ktor/utils/io/u;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lio/ktor/util/cio/b$a;->f(Lio/ktor/utils/io/u;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
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
    iget v1, p0, Lio/ktor/util/cio/b$a;->label:I

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
    iget-object v0, p0, Lio/ktor/util/cio/b$a;->L$1:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Ljava/io/RandomAccessFile;

    .line 16
    .line 17
    iget-object v1, p0, Lio/ktor/util/cio/b$a;->L$0:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Ljava/io/Closeable;

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
    goto :goto_1

    .line 26
    .line 27
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 30
    .line 31
    .line 32
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    throw p1

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 37
    .line 38
    iget-object p1, p0, Lio/ktor/util/cio/b$a;->L$0:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p1, Lio/ktor/utils/io/u;

    .line 41
    .line 42
    new-instance v1, Ljava/io/RandomAccessFile;

    .line 43
    .line 44
    iget-object v3, p0, Lio/ktor/util/cio/b$a;->$this_writeChannel:Ljava/io/File;

    .line 45
    .line 46
    const-string v4, "rw"

    .line 47
    .line 48
    .line 49
    invoke-direct {v1, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :try_start_1
    invoke-interface {p1}, Lio/ktor/utils/io/u;->d()Lio/ktor/utils/io/g;

    .line 53
    move-result-object v5

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 57
    move-result-object v6

    .line 58
    .line 59
    const-string p1, "file.channel"

    .line 60
    .line 61
    .line 62
    invoke-static {v6, p1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    const-wide/16 v7, 0x0

    .line 65
    const/4 v10, 0x2

    .line 66
    const/4 v11, 0x0

    .line 67
    .line 68
    iput-object v1, p0, Lio/ktor/util/cio/b$a;->L$0:Ljava/lang/Object;

    .line 69
    .line 70
    iput-object v1, p0, Lio/ktor/util/cio/b$a;->L$1:Ljava/lang/Object;

    .line 71
    const/4 p1, 0x0

    .line 72
    .line 73
    iput p1, p0, Lio/ktor/util/cio/b$a;->I$0:I

    .line 74
    .line 75
    iput v2, p0, Lio/ktor/util/cio/b$a;->label:I

    .line 76
    move-object v9, p0

    .line 77
    .line 78
    .line 79
    invoke-static/range {v5 .. v11}, Lio/ktor/utils/io/jvm/nio/a;->b(Lio/ktor/utils/io/g;Ljava/nio/channels/WritableByteChannel;JLkotlin/coroutines/d;ILjava/lang/Object;)Ljava/lang/Object;

    .line 80
    move-result-object p1

    .line 81
    .line 82
    if-ne p1, v0, :cond_2

    .line 83
    return-object v0

    .line 84
    :cond_2
    move-object v0, v1

    .line 85
    .line 86
    :goto_0
    check-cast p1, Ljava/lang/Number;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 90
    move-result-wide v2

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 94
    .line 95
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    .line 97
    .line 98
    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    .line 99
    .line 100
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 101
    return-object p1

    .line 102
    .line 103
    .line 104
    :goto_1
    :try_start_2
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 105
    goto :goto_2

    .line 106
    :catchall_1
    move-exception v0

    .line 107
    .line 108
    .line 109
    invoke-static {p1, v0}, Lr7/k;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 110
    :goto_2
    throw p1
.end method
