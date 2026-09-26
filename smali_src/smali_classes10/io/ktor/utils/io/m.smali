.class final Lio/ktor/utils/io/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/ktor/utils/io/u;
.implements Lio/ktor/utils/io/w;
.implements Lkotlinx/coroutines/o0;


# instance fields
.field private final synthetic $$delegate_0:Lkotlinx/coroutines/o0;

.field private final channel:Lio/ktor/utils/io/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/o0;Lio/ktor/utils/io/c;)V
    .locals 1
    .param p1    # Lkotlinx/coroutines/o0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/ktor/utils/io/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "delegate"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "channel"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    iput-object p2, p0, Lio/ktor/utils/io/m;->channel:Lio/ktor/utils/io/c;

    .line 16
    .line 17
    iput-object p1, p0, Lio/ktor/utils/io/m;->$$delegate_0:Lkotlinx/coroutines/o0;

    .line 18
    return-void
.end method


# virtual methods
.method public a()Lio/ktor/utils/io/c;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/utils/io/m;->channel:Lio/ktor/utils/io/c;

    return-object v0
.end method

.method public bridge synthetic d()Lio/ktor/utils/io/g;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/ktor/utils/io/m;->a()Lio/ktor/utils/io/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Lio/ktor/utils/io/j;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/ktor/utils/io/m;->a()Lio/ktor/utils/io/c;

    move-result-object v0

    return-object v0
.end method

.method public getCoroutineContext()Lkotlin/coroutines/g;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lio/ktor/utils/io/m;->$$delegate_0:Lkotlinx/coroutines/o0;

    invoke-interface {v0}, Lkotlinx/coroutines/o0;->getCoroutineContext()Lkotlin/coroutines/g;

    move-result-object v0

    return-object v0
.end method
