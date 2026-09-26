.class final Lkotlinx/coroutines/sync/b$a$b;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/sync/b$a;->d(Lw7/l0;Ljava/lang/Object;Le8/l;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Ljava/lang/Throwable;",
        "Lw7/l0;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMutex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Mutex.kt\nkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner$tryResume$token$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,310:1\n1#2:311\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lkotlinx/coroutines/sync/b;

.field final synthetic this$1:Lkotlinx/coroutines/sync/b$a;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/sync/b;Lkotlinx/coroutines/sync/b$a;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/sync/b$a$b;->this$0:Lkotlinx/coroutines/sync/b;

    iput-object p2, p0, Lkotlinx/coroutines/sync/b$a$b;->this$1:Lkotlinx/coroutines/sync/b$a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/sync/b$a$b;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 2
    invoke-static {}, Lkotlinx/coroutines/sync/b;->q()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object p1

    iget-object v0, p0, Lkotlinx/coroutines/sync/b$a$b;->this$0:Lkotlinx/coroutines/sync/b;

    iget-object v1, p0, Lkotlinx/coroutines/sync/b$a$b;->this$1:Lkotlinx/coroutines/sync/b$a;

    .line 3
    iget-object v1, v1, Lkotlinx/coroutines/sync/b$a;->owner:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lkotlinx/coroutines/sync/b$a$b;->this$0:Lkotlinx/coroutines/sync/b;

    iget-object v0, p0, Lkotlinx/coroutines/sync/b$a$b;->this$1:Lkotlinx/coroutines/sync/b$a;

    .line 4
    iget-object v0, v0, Lkotlinx/coroutines/sync/b$a;->owner:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/sync/b;->e(Ljava/lang/Object;)V

    return-void
.end method
