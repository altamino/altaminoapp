.class public final Lkotlinx/coroutines/flow/n0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStateFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,428:1\n1#2:429\n*E\n"
.end annotation


# static fields
.field private static final NONE:Lkotlinx/coroutines/internal/i0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final PENDING:Lkotlinx/coroutines/internal/i0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lkotlinx/coroutines/internal/i0;

    .line 3
    .line 4
    const-string v1, "NONE"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/i0;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    sput-object v0, Lkotlinx/coroutines/flow/n0;->NONE:Lkotlinx/coroutines/internal/i0;

    .line 10
    .line 11
    new-instance v0, Lkotlinx/coroutines/internal/i0;

    .line 12
    .line 13
    const-string v1, "PENDING"

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/i0;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    sput-object v0, Lkotlinx/coroutines/flow/n0;->PENDING:Lkotlinx/coroutines/internal/i0;

    .line 19
    return-void
.end method

.method public static final a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lkotlinx/coroutines/flow/x<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lkotlinx/coroutines/flow/m0;

    .line 3
    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    sget-object p0, Lkotlinx/coroutines/flow/internal/s;->NULL:Lkotlinx/coroutines/internal/i0;

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-direct {v0, p0}, Lkotlinx/coroutines/flow/m0;-><init>(Ljava/lang/Object;)V

    .line 10
    return-object v0
.end method

.method public static final synthetic b()Lkotlinx/coroutines/internal/i0;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/flow/n0;->NONE:Lkotlinx/coroutines/internal/i0;

    return-object v0
.end method

.method public static final synthetic c()Lkotlinx/coroutines/internal/i0;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/flow/n0;->PENDING:Lkotlinx/coroutines/internal/i0;

    return-object v0
.end method

.method public static final d(Lkotlinx/coroutines/flow/l0;Lkotlin/coroutines/g;ILkotlinx/coroutines/channels/a;)Lkotlinx/coroutines/flow/g;
    .locals 1
    .param p0    # Lkotlinx/coroutines/flow/l0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/coroutines/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlinx/coroutines/channels/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/l0<",
            "+TT;>;",
            "Lkotlin/coroutines/g;",
            "I",
            "Lkotlinx/coroutines/channels/a;",
            ")",
            "Lkotlinx/coroutines/flow/g<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    if-ltz p2, :cond_0

    .line 3
    const/4 v0, 0x2

    .line 4
    .line 5
    if-ge p2, v0, :cond_0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, -0x2

    .line 8
    .line 9
    if-ne p2, v0, :cond_1

    .line 10
    .line 11
    :goto_0
    sget-object v0, Lkotlinx/coroutines/channels/a;->DROP_OLDEST:Lkotlinx/coroutines/channels/a;

    .line 12
    .line 13
    if-ne p3, v0, :cond_1

    .line 14
    return-object p0

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/flow/d0;->e(Lkotlinx/coroutines/flow/b0;Lkotlin/coroutines/g;ILkotlinx/coroutines/channels/a;)Lkotlinx/coroutines/flow/g;

    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method
