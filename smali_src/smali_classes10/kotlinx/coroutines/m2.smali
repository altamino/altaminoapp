.class final Lkotlinx/coroutines/m2;
.super Lkotlinx/coroutines/w2;
.source "SourceFile"


# instance fields
.field private final continuation:Lkotlin/coroutines/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/d<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/coroutines/g;Le8/p;)V
    .locals 1
    .param p1    # Lkotlin/coroutines/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/g;",
            "Le8/p<",
            "-",
            "Lkotlinx/coroutines/o0;",
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
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/w2;-><init>(Lkotlin/coroutines/g;Z)V

    .line 5
    .line 6
    .line 7
    invoke-static {p2, p0, p0}, Lkotlin/coroutines/intrinsics/b;->a(Le8/p;Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    iput-object p1, p0, Lkotlinx/coroutines/m2;->continuation:Lkotlin/coroutines/d;

    .line 11
    return-void
.end method


# virtual methods
.method protected H0()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/m2;->continuation:Lkotlin/coroutines/d;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ll8/a;->c(Lkotlin/coroutines/d;Lkotlin/coroutines/d;)V

    .line 6
    return-void
.end method
