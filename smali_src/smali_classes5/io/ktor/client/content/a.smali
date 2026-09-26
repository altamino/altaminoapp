.class public final Lio/ktor/client/content/a;
.super Lk7/b$d;
.source "SourceFile"


# instance fields
.field private final callContext:Lkotlin/coroutines/g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final content:Lio/ktor/utils/io/g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final delegate:Lk7/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final listener:Le8/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/q<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lk7/b;Lkotlin/coroutines/g;Le8/q;)V
    .locals 1
    .param p1    # Lk7/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Le8/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk7/b;",
            "Lkotlin/coroutines/g;",
            "Le8/q<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "delegate"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "callContext"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "listener"

    .line 13
    .line 14
    .line 15
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lk7/b$d;-><init>()V

    .line 19
    .line 20
    iput-object p1, p0, Lio/ktor/client/content/a;->delegate:Lk7/b;

    .line 21
    .line 22
    iput-object p2, p0, Lio/ktor/client/content/a;->callContext:Lkotlin/coroutines/g;

    .line 23
    .line 24
    iput-object p3, p0, Lio/ktor/client/content/a;->listener:Le8/q;

    .line 25
    .line 26
    instance-of p3, p1, Lk7/b$a;

    .line 27
    .line 28
    if-eqz p3, :cond_0

    .line 29
    .line 30
    check-cast p1, Lk7/b$a;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lk7/b$a;->d()[B

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-static {p1}, Lio/ktor/utils/io/d;->a([B)Lio/ktor/utils/io/g;

    .line 38
    move-result-object p1

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_0
    instance-of p3, p1, Lk7/b$c;

    .line 42
    .line 43
    if-nez p3, :cond_4

    .line 44
    .line 45
    instance-of p3, p1, Lk7/b$b;

    .line 46
    .line 47
    if-eqz p3, :cond_1

    .line 48
    .line 49
    sget-object p1, Lio/ktor/utils/io/g;->Companion:Lio/ktor/utils/io/g$a;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lio/ktor/utils/io/g$a;->a()Lio/ktor/utils/io/g;

    .line 53
    move-result-object p1

    .line 54
    goto :goto_0

    .line 55
    .line 56
    :cond_1
    instance-of p3, p1, Lk7/b$d;

    .line 57
    .line 58
    if-eqz p3, :cond_2

    .line 59
    .line 60
    check-cast p1, Lk7/b$d;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lk7/b$d;->d()Lio/ktor/utils/io/g;

    .line 64
    move-result-object p1

    .line 65
    goto :goto_0

    .line 66
    .line 67
    :cond_2
    instance-of p1, p1, Lk7/b$e;

    .line 68
    .line 69
    if-eqz p1, :cond_3

    .line 70
    .line 71
    sget-object p1, Lkotlinx/coroutines/t1;->INSTANCE:Lkotlinx/coroutines/t1;

    .line 72
    .line 73
    new-instance p3, Lio/ktor/client/content/a$a;

    .line 74
    const/4 v0, 0x0

    .line 75
    .line 76
    .line 77
    invoke-direct {p3, p0, v0}, Lio/ktor/client/content/a$a;-><init>(Lio/ktor/client/content/a;Lkotlin/coroutines/d;)V

    .line 78
    const/4 v0, 0x1

    .line 79
    .line 80
    .line 81
    invoke-static {p1, p2, v0, p3}, Lio/ktor/utils/io/q;->d(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;ZLe8/p;)Lio/ktor/utils/io/v;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    .line 85
    invoke-interface {p1}, Lio/ktor/utils/io/v;->d()Lio/ktor/utils/io/g;

    .line 86
    move-result-object p1

    .line 87
    .line 88
    :goto_0
    iput-object p1, p0, Lio/ktor/client/content/a;->content:Lio/ktor/utils/io/g;

    .line 89
    return-void

    .line 90
    .line 91
    :cond_3
    new-instance p1, Lw7/s;

    .line 92
    .line 93
    .line 94
    invoke-direct {p1}, Lw7/s;-><init>()V

    .line 95
    throw p1

    .line 96
    .line 97
    :cond_4
    new-instance p2, Lio/ktor/client/call/h;

    .line 98
    .line 99
    .line 100
    invoke-direct {p2, p1}, Lio/ktor/client/call/h;-><init>(Lk7/b;)V

    .line 101
    throw p2
.end method

.method public static final synthetic e(Lio/ktor/client/content/a;)Lk7/b;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lio/ktor/client/content/a;->delegate:Lk7/b;

    .line 3
    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/Long;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/ktor/client/content/a;->delegate:Lk7/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lk7/b;->a()Ljava/lang/Long;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public b()Lio/ktor/http/c;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/ktor/client/content/a;->delegate:Lk7/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lk7/b;->b()Lio/ktor/http/c;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public c()Lio/ktor/http/k;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/ktor/client/content/a;->delegate:Lk7/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lk7/b;->c()Lio/ktor/http/k;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public d()Lio/ktor/utils/io/g;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/ktor/client/content/a;->content:Lio/ktor/utils/io/g;

    .line 3
    .line 4
    iget-object v1, p0, Lio/ktor/client/content/a;->callContext:Lkotlin/coroutines/g;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lio/ktor/client/content/a;->a()Ljava/lang/Long;

    .line 8
    move-result-object v2

    .line 9
    .line 10
    iget-object v3, p0, Lio/ktor/client/content/a;->listener:Le8/q;

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1, v2, v3}, Lio/ktor/client/utils/a;->a(Lio/ktor/utils/io/g;Lkotlin/coroutines/g;Ljava/lang/Long;Le8/q;)Lio/ktor/utils/io/g;

    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method
