.class final Lkotlinx/coroutines/v2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExecutors.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Executors.kt\nkotlinx/coroutines/ResumeUndispatchedRunnable\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,207:1\n1#2:208\n*E\n"
.end annotation


# instance fields
.field private final continuation:Lkotlinx/coroutines/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/o<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final dispatcher:Lkotlinx/coroutines/k0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/k0;Lkotlinx/coroutines/o;)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/k0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/coroutines/o;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/k0;",
            "Lkotlinx/coroutines/o<",
            "-",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lkotlinx/coroutines/v2;->dispatcher:Lkotlinx/coroutines/k0;

    .line 6
    .line 7
    iput-object p2, p0, Lkotlinx/coroutines/v2;->continuation:Lkotlinx/coroutines/o;

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/v2;->continuation:Lkotlinx/coroutines/o;

    .line 3
    .line 4
    iget-object v1, p0, Lkotlinx/coroutines/v2;->dispatcher:Lkotlinx/coroutines/k0;

    .line 5
    .line 6
    sget-object v2, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/o;->V(Lkotlinx/coroutines/k0;Ljava/lang/Object;)V

    .line 10
    return-void
.end method
