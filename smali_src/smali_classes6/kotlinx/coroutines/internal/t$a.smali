.class public abstract Lkotlinx/coroutines/internal/t$a;
.super Lkotlinx/coroutines/internal/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/internal/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/coroutines/internal/b<",
        "Lkotlinx/coroutines/internal/t;",
        ">;"
    }
.end annotation


# instance fields
.field public final newNode:Lkotlinx/coroutines/internal/t;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public oldNext:Lkotlinx/coroutines/internal/t;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/internal/t;)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/internal/t;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lkotlinx/coroutines/internal/b;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lkotlinx/coroutines/internal/t$a;->newNode:Lkotlinx/coroutines/internal/t;

    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lkotlinx/coroutines/internal/t;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/internal/t$a;->e(Lkotlinx/coroutines/internal/t;Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public e(Lkotlinx/coroutines/internal/t;Ljava/lang/Object;)V
    .locals 2
    .param p1    # Lkotlinx/coroutines/internal/t;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    const/4 p2, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p2, 0x0

    .line 6
    .line 7
    :goto_0
    if-eqz p2, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lkotlinx/coroutines/internal/t$a;->newNode:Lkotlinx/coroutines/internal/t;

    .line 10
    goto :goto_1

    .line 11
    .line 12
    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/internal/t$a;->oldNext:Lkotlinx/coroutines/internal/t;

    .line 13
    .line 14
    :goto_1
    if-eqz v0, :cond_2

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lkotlinx/coroutines/internal/t;->d()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-static {v1, p1, p0, v0}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    move-result p1

    .line 23
    .line 24
    if-eqz p1, :cond_2

    .line 25
    .line 26
    if-eqz p2, :cond_2

    .line 27
    .line 28
    iget-object p1, p0, Lkotlinx/coroutines/internal/t$a;->newNode:Lkotlinx/coroutines/internal/t;

    .line 29
    .line 30
    iget-object p2, p0, Lkotlinx/coroutines/internal/t$a;->oldNext:Lkotlinx/coroutines/internal/t;

    .line 31
    .line 32
    .line 33
    invoke-static {p2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p1, p2}, Lkotlinx/coroutines/internal/t;->c(Lkotlinx/coroutines/internal/t;Lkotlinx/coroutines/internal/t;)V

    .line 37
    :cond_2
    return-void
.end method
