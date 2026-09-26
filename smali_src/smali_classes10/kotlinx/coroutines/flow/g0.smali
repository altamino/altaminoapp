.class final Lkotlinx/coroutines/flow/g0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final context:Lkotlin/coroutines/g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final extraBufferCapacity:I

.field public final onBufferOverflow:Lkotlinx/coroutines/channels/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final upstream:Lkotlinx/coroutines/flow/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/g<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/g;ILkotlinx/coroutines/channels/a;Lkotlin/coroutines/g;)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/flow/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlinx/coroutines/channels/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/coroutines/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/g<",
            "+TT;>;I",
            "Lkotlinx/coroutines/channels/a;",
            "Lkotlin/coroutines/g;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lkotlinx/coroutines/flow/g0;->upstream:Lkotlinx/coroutines/flow/g;

    .line 6
    .line 7
    iput p2, p0, Lkotlinx/coroutines/flow/g0;->extraBufferCapacity:I

    .line 8
    .line 9
    iput-object p3, p0, Lkotlinx/coroutines/flow/g0;->onBufferOverflow:Lkotlinx/coroutines/channels/a;

    .line 10
    .line 11
    iput-object p4, p0, Lkotlinx/coroutines/flow/g0;->context:Lkotlin/coroutines/g;

    .line 12
    return-void
.end method
