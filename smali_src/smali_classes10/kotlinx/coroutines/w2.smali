.class Lkotlinx/coroutines/w2;
.super Lkotlinx/coroutines/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/coroutines/a<",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lkotlin/coroutines/g;Z)V
    .locals 1
    .param p1    # Lkotlin/coroutines/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, v0, p2}, Lkotlinx/coroutines/a;-><init>(Lkotlin/coroutines/g;ZZ)V

    .line 5
    return-void
.end method


# virtual methods
.method protected o0(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/coroutines/a;->getContext()Lkotlin/coroutines/g;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0, p1}, Lkotlinx/coroutines/m0;->a(Lkotlin/coroutines/g;Ljava/lang/Throwable;)V

    .line 8
    const/4 p1, 0x1

    .line 9
    return p1
.end method
