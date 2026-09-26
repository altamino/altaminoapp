.class public final Lkotlinx/coroutines/flow/v$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/v;->c(Lkotlinx/coroutines/flow/g;Lkotlinx/coroutines/flow/g;Le8/q;)Lkotlinx/coroutines/flow/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/g<",
        "TR;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt\n*L\n1#1,113:1\n33#2,2:114\n*E\n"
.end annotation


# instance fields
.field final synthetic $flow$inlined:Lkotlinx/coroutines/flow/g;

.field final synthetic $this_combine$inlined:Lkotlinx/coroutines/flow/g;

.field final synthetic $transform$inlined:Le8/q;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/g;Lkotlinx/coroutines/flow/g;Le8/q;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/flow/v$a;->$this_combine$inlined:Lkotlinx/coroutines/flow/g;

    .line 3
    .line 4
    iput-object p2, p0, Lkotlinx/coroutines/flow/v$a;->$flow$inlined:Lkotlinx/coroutines/flow/g;

    .line 5
    .line 6
    iput-object p3, p0, Lkotlinx/coroutines/flow/v$a;->$transform$inlined:Le8/q;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public collect(Lkotlinx/coroutines/flow/h;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 5
    .param p1    # Lkotlinx/coroutines/flow/h;
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
            "Lkotlinx/coroutines/flow/h<",
            "-TR;>;",
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
    const/4 v0, 0x2

    .line 2
    .line 3
    new-array v0, v0, [Lkotlinx/coroutines/flow/g;

    .line 4
    const/4 v1, 0x0

    .line 5
    .line 6
    iget-object v2, p0, Lkotlinx/coroutines/flow/v$a;->$this_combine$inlined:Lkotlinx/coroutines/flow/g;

    .line 7
    .line 8
    aput-object v2, v0, v1

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    iget-object v2, p0, Lkotlinx/coroutines/flow/v$a;->$flow$inlined:Lkotlinx/coroutines/flow/g;

    .line 12
    .line 13
    aput-object v2, v0, v1

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lkotlinx/coroutines/flow/v;->a()Le8/a;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    new-instance v2, Lkotlinx/coroutines/flow/v$b;

    .line 20
    .line 21
    iget-object v3, p0, Lkotlinx/coroutines/flow/v$a;->$transform$inlined:Le8/q;

    .line 22
    const/4 v4, 0x0

    .line 23
    .line 24
    .line 25
    invoke-direct {v2, v3, v4}, Lkotlinx/coroutines/flow/v$b;-><init>(Le8/q;Lkotlin/coroutines/d;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p1, v0, v1, v2, p2}, Lkotlinx/coroutines/flow/internal/k;->a(Lkotlinx/coroutines/flow/h;[Lkotlinx/coroutines/flow/g;Le8/a;Le8/q;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 33
    move-result-object p2

    .line 34
    .line 35
    if-ne p1, p2, :cond_0

    .line 36
    return-object p1

    .line 37
    .line 38
    :cond_0
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 39
    return-object p1
.end method
