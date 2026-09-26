.class public final Lkotlinx/coroutines/flow/s$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/s;->b(Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/h<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLimit.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt$collectWhile$collector$1\n+ 2 Reduce.kt\nkotlinx/coroutines/flow/FlowKt__ReduceKt\n*L\n1#1,141:1\n93#2,2:142\n*E\n"
.end annotation


# instance fields
.field final synthetic $result$inlined:Lkotlin/jvm/internal/p0;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/p0;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/flow/s$a;->$result$inlined:Lkotlin/jvm/internal/p0;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public emit(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
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
    iget-object p2, p0, Lkotlinx/coroutines/flow/s$a;->$result$inlined:Lkotlin/jvm/internal/p0;

    .line 3
    .line 4
    iput-object p1, p2, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 5
    .line 6
    new-instance p1, Lkotlinx/coroutines/flow/internal/a;

    .line 7
    .line 8
    .line 9
    invoke-direct {p1, p0}, Lkotlinx/coroutines/flow/internal/a;-><init>(Lkotlinx/coroutines/flow/h;)V

    .line 10
    throw p1
.end method
