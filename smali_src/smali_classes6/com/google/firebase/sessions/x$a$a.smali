.class final Lcom/google/firebase/sessions/x$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/sessions/x$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/h;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/sessions/x;


# direct methods
.method constructor <init>(Lcom/google/firebase/sessions/x;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/sessions/x$a$a;->this$0:Lcom/google/firebase/sessions/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(Lcom/google/firebase/sessions/l;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lcom/google/firebase/sessions/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/sessions/l;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object p2, p0, Lcom/google/firebase/sessions/x$a$a;->this$0:Lcom/google/firebase/sessions/x;

    .line 3
    .line 4
    .line 5
    invoke-static {p2}, Lcom/google/firebase/sessions/x;->e(Lcom/google/firebase/sessions/x;)Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 10
    .line 11
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 12
    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lcom/google/firebase/sessions/l;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/sessions/x$a$a;->e(Lcom/google/firebase/sessions/l;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
