.class public final Lkotlinx/coroutines/i1;
.super Lkotlinx/coroutines/i2;
.source "SourceFile"


# instance fields
.field private final handle:Lkotlinx/coroutines/g1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/g1;)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/g1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lkotlinx/coroutines/i2;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lkotlinx/coroutines/i1;->handle:Lkotlinx/coroutines/g1;

    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Ljava/lang/Throwable;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/i1;->r(Ljava/lang/Throwable;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method

.method public r(Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object p1, p0, Lkotlinx/coroutines/i1;->handle:Lkotlinx/coroutines/g1;

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Lkotlinx/coroutines/g1;->t()V

    .line 6
    return-void
.end method
