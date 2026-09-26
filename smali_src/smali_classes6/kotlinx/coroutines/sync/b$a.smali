.class final Lkotlinx/coroutines/sync/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/o;
.implements Lkotlinx/coroutines/j3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/sync/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/o<",
        "Lw7/l0;",
        ">;",
        "Lkotlinx/coroutines/j3;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMutex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Mutex.kt\nkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,310:1\n1#2:311\n*E\n"
.end annotation


# instance fields
.field public final cont:Lkotlinx/coroutines/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/p<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final owner:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field final synthetic this$0:Lkotlinx/coroutines/sync/b;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/sync/b;Lkotlinx/coroutines/p;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/sync/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/coroutines/p;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/p<",
            "-",
            "Lw7/l0;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/sync/b$a;->this$0:Lkotlinx/coroutines/sync/b;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    iput-object p2, p0, Lkotlinx/coroutines/sync/b$a;->cont:Lkotlinx/coroutines/p;

    .line 8
    .line 9
    iput-object p3, p0, Lkotlinx/coroutines/sync/b$a;->owner:Ljava/lang/Object;

    .line 10
    return-void
.end method


# virtual methods
.method public bridge synthetic B(Ljava/lang/Object;Le8/l;)V
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lw7/l0;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/sync/b$a;->b(Lw7/l0;Le8/l;)V

    .line 6
    return-void
.end method

.method public K(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/sync/b$a;->cont:Lkotlinx/coroutines/p;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/p;->K(Ljava/lang/Object;)V

    return-void
.end method

.method public M(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/sync/b$a;->cont:Lkotlinx/coroutines/p;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/p;->M(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public S(Le8/l;)V
    .locals 1
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/sync/b$a;->cont:Lkotlinx/coroutines/p;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/p;->S(Le8/l;)V

    return-void
.end method

.method public bridge synthetic V(Lkotlinx/coroutines/k0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    check-cast p2, Lw7/l0;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/sync/b$a;->c(Lkotlinx/coroutines/k0;Lw7/l0;)V

    .line 6
    return-void
.end method

.method public a(Lkotlinx/coroutines/internal/f0;I)V
    .locals 1
    .param p1    # Lkotlinx/coroutines/internal/f0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/internal/f0<",
            "*>;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/sync/b$a;->cont:Lkotlinx/coroutines/p;

    invoke-virtual {v0, p1, p2}, Lkotlinx/coroutines/p;->a(Lkotlinx/coroutines/internal/f0;I)V

    return-void
.end method

.method public b(Lw7/l0;Le8/l;)V
    .locals 2
    .param p1    # Lw7/l0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw7/l0;",
            "Le8/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lkotlinx/coroutines/sync/b;->q()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    iget-object v0, p0, Lkotlinx/coroutines/sync/b$a;->this$0:Lkotlinx/coroutines/sync/b;

    .line 7
    .line 8
    iget-object v1, p0, Lkotlinx/coroutines/sync/b$a;->owner:Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    .line 13
    iget-object p2, p0, Lkotlinx/coroutines/sync/b$a;->cont:Lkotlinx/coroutines/p;

    .line 14
    .line 15
    new-instance v0, Lkotlinx/coroutines/sync/b$a$a;

    .line 16
    .line 17
    iget-object v1, p0, Lkotlinx/coroutines/sync/b$a;->this$0:Lkotlinx/coroutines/sync/b;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1, p0}, Lkotlinx/coroutines/sync/b$a$a;-><init>(Lkotlinx/coroutines/sync/b;Lkotlinx/coroutines/sync/b$a;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, p1, v0}, Lkotlinx/coroutines/p;->B(Ljava/lang/Object;Le8/l;)V

    .line 24
    return-void
.end method

.method public c(Lkotlinx/coroutines/k0;Lw7/l0;)V
    .locals 1
    .param p1    # Lkotlinx/coroutines/k0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lw7/l0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/sync/b$a;->cont:Lkotlinx/coroutines/p;

    invoke-virtual {v0, p1, p2}, Lkotlinx/coroutines/p;->V(Lkotlinx/coroutines/k0;Ljava/lang/Object;)V

    return-void
.end method

.method public d(Lw7/l0;Ljava/lang/Object;Le8/l;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lw7/l0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw7/l0;",
            "Ljava/lang/Object;",
            "Le8/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object p3, p0, Lkotlinx/coroutines/sync/b$a;->this$0:Lkotlinx/coroutines/sync/b;

    .line 3
    .line 4
    iget-object v0, p0, Lkotlinx/coroutines/sync/b$a;->cont:Lkotlinx/coroutines/p;

    .line 5
    .line 6
    new-instance v1, Lkotlinx/coroutines/sync/b$a$b;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, p3, p0}, Lkotlinx/coroutines/sync/b$a$b;-><init>(Lkotlinx/coroutines/sync/b;Lkotlinx/coroutines/sync/b$a;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1, p2, v1}, Lkotlinx/coroutines/p;->r(Ljava/lang/Object;Ljava/lang/Object;Le8/l;)Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lkotlinx/coroutines/sync/b;->q()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 19
    move-result-object p2

    .line 20
    .line 21
    iget-object p3, p0, Lkotlinx/coroutines/sync/b$a;->this$0:Lkotlinx/coroutines/sync/b;

    .line 22
    .line 23
    iget-object v0, p0, Lkotlinx/coroutines/sync/b$a;->owner:Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, p3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    :cond_0
    return-object p1
.end method

.method public e(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/sync/b$a;->cont:Lkotlinx/coroutines/p;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/p;->e(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public getContext()Lkotlin/coroutines/g;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/sync/b$a;->cont:Lkotlinx/coroutines/p;

    invoke-virtual {v0}, Lkotlinx/coroutines/p;->getContext()Lkotlin/coroutines/g;

    move-result-object v0

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/sync/b$a;->cont:Lkotlinx/coroutines/p;

    invoke-virtual {v0}, Lkotlinx/coroutines/p;->isActive()Z

    move-result v0

    return v0
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/sync/b$a;->cont:Lkotlinx/coroutines/p;

    invoke-virtual {v0}, Lkotlinx/coroutines/p;->m()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic r(Ljava/lang/Object;Ljava/lang/Object;Le8/l;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lw7/l0;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/coroutines/sync/b$a;->d(Lw7/l0;Ljava/lang/Object;Le8/l;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-object v0, p0, Lkotlinx/coroutines/sync/b$a;->cont:Lkotlinx/coroutines/p;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/p;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
