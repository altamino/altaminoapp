.class Lkotlin/sequences/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final State_Done:I = 0x4

.field private static final State_Failed:I = 0x5

.field private static final State_ManyNotReady:I = 0x1

.field private static final State_ManyReady:I = 0x2

.field private static final State_NotReady:I = 0x0

.field private static final State_Ready:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Le8/p;)Ljava/util/Iterator;
    .locals 1
    .param p0    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le8/p<",
            "-",
            "Lkotlin/sequences/i<",
            "-TT;>;-",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "block"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Lkotlin/sequences/h;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Lkotlin/sequences/h;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {p0, v0, v0}, Lkotlin/coroutines/intrinsics/b;->a(Le8/p;Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    .line 14
    move-result-object p0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0}, Lkotlin/sequences/h;->h(Lkotlin/coroutines/d;)V

    .line 18
    return-object v0
.end method

.method public static b(Le8/p;)Lkotlin/sequences/g;
    .locals 1
    .param p0    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le8/p<",
            "-",
            "Lkotlin/sequences/i<",
            "-TT;>;-",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlin/sequences/g<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "block"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Lkotlin/sequences/k$a;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0}, Lkotlin/sequences/k$a;-><init>(Le8/p;)V

    .line 11
    return-object v0
.end method
