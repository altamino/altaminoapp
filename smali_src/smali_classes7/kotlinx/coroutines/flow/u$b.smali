.class public final Lkotlinx/coroutines/flow/u$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/u;->b(Lkotlinx/coroutines/flow/g;Le8/p;)Lkotlinx/coroutines/flow/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/g<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n*L\n1#1,113:1\n51#2,5:114\n*E\n"
.end annotation


# instance fields
.field final synthetic $action$inlined:Le8/p;

.field final synthetic $this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/g;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/g;Le8/p;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/flow/u$b;->$this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/g;

    .line 3
    .line 4
    iput-object p2, p0, Lkotlinx/coroutines/flow/u$b;->$action$inlined:Le8/p;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public collect(Lkotlinx/coroutines/flow/h;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lkotlinx/coroutines/flow/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/flow/u$b;->$this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/g;

    .line 3
    .line 4
    new-instance v1, Lkotlinx/coroutines/flow/u$b$a;

    .line 5
    .line 6
    iget-object v2, p0, Lkotlinx/coroutines/flow/u$b;->$action$inlined:Le8/p;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, p1, v2}, Lkotlinx/coroutines/flow/u$b$a;-><init>(Lkotlinx/coroutines/flow/h;Le8/p;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1, p2}, Lkotlinx/coroutines/flow/g;->collect(Lkotlinx/coroutines/flow/h;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 17
    move-result-object p2

    .line 18
    .line 19
    if-ne p1, p2, :cond_0

    .line 20
    return-object p1

    .line 21
    .line 22
    :cond_0
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 23
    return-object p1
.end method
