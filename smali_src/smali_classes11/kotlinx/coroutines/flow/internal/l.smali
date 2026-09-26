.class public final Lkotlinx/coroutines/flow/internal/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/coroutines/g;


# instance fields
.field private final synthetic $$delegate_0:Lkotlin/coroutines/g;

.field public final e:Ljava/lang/Throwable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Lkotlin/coroutines/g;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lkotlinx/coroutines/flow/internal/l;->e:Ljava/lang/Throwable;

    .line 6
    .line 7
    iput-object p2, p0, Lkotlinx/coroutines/flow/internal/l;->$$delegate_0:Lkotlin/coroutines/g;

    .line 8
    return-void
.end method


# virtual methods
.method public fold(Ljava/lang/Object;Le8/p;)Ljava/lang/Object;
    .locals 1
    .param p2    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Le8/p<",
            "-TR;-",
            "Lkotlin/coroutines/g$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/flow/internal/l;->$$delegate_0:Lkotlin/coroutines/g;

    invoke-interface {v0, p1, p2}, Lkotlin/coroutines/g;->fold(Ljava/lang/Object;Le8/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;
    .locals 1
    .param p1    # Lkotlin/coroutines/g$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lkotlin/coroutines/g$b;",
            ">(",
            "Lkotlin/coroutines/g$c<",
            "TE;>;)TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/flow/internal/l;->$$delegate_0:Lkotlin/coroutines/g;

    invoke-interface {v0, p1}, Lkotlin/coroutines/g;->get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    move-result-object p1

    return-object p1
.end method

.method public minusKey(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g;
    .locals 1
    .param p1    # Lkotlin/coroutines/g$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/g$c<",
            "*>;)",
            "Lkotlin/coroutines/g;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/flow/internal/l;->$$delegate_0:Lkotlin/coroutines/g;

    invoke-interface {v0, p1}, Lkotlin/coroutines/g;->minusKey(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g;

    move-result-object p1

    return-object p1
.end method

.method public plus(Lkotlin/coroutines/g;)Lkotlin/coroutines/g;
    .locals 1
    .param p1    # Lkotlin/coroutines/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/flow/internal/l;->$$delegate_0:Lkotlin/coroutines/g;

    invoke-interface {v0, p1}, Lkotlin/coroutines/g;->plus(Lkotlin/coroutines/g;)Lkotlin/coroutines/g;

    move-result-object p1

    return-object p1
.end method
