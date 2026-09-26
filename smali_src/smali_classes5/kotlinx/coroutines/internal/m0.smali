.class public final Lkotlinx/coroutines/internal/m0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NO_THREAD_ELEMENTS:Lkotlinx/coroutines/internal/i0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final countAll:Le8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/p<",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/g$b;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final findOne:Le8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/p<",
            "Lkotlinx/coroutines/z2<",
            "*>;",
            "Lkotlin/coroutines/g$b;",
            "Lkotlinx/coroutines/z2<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final updateState:Le8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/p<",
            "Lkotlinx/coroutines/internal/s0;",
            "Lkotlin/coroutines/g$b;",
            "Lkotlinx/coroutines/internal/s0;",
            ">;"
        }
    .end annotation

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
    const-string v1, "NO_THREAD_ELEMENTS"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/i0;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    sput-object v0, Lkotlinx/coroutines/internal/m0;->NO_THREAD_ELEMENTS:Lkotlinx/coroutines/internal/i0;

    .line 10
    .line 11
    sget-object v0, Lkotlinx/coroutines/internal/m0$a;->INSTANCE:Lkotlinx/coroutines/internal/m0$a;

    .line 12
    .line 13
    sput-object v0, Lkotlinx/coroutines/internal/m0;->countAll:Le8/p;

    .line 14
    .line 15
    sget-object v0, Lkotlinx/coroutines/internal/m0$b;->INSTANCE:Lkotlinx/coroutines/internal/m0$b;

    .line 16
    .line 17
    sput-object v0, Lkotlinx/coroutines/internal/m0;->findOne:Le8/p;

    .line 18
    .line 19
    sget-object v0, Lkotlinx/coroutines/internal/m0$c;->INSTANCE:Lkotlinx/coroutines/internal/m0$c;

    .line 20
    .line 21
    sput-object v0, Lkotlinx/coroutines/internal/m0;->updateState:Le8/p;

    .line 22
    return-void
.end method

.method public static final a(Lkotlin/coroutines/g;Ljava/lang/Object;)V
    .locals 2
    .param p0    # Lkotlin/coroutines/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/internal/m0;->NO_THREAD_ELEMENTS:Lkotlinx/coroutines/internal/i0;

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    instance-of v0, p1, Lkotlinx/coroutines/internal/s0;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    check-cast p1, Lkotlinx/coroutines/internal/s0;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p0}, Lkotlinx/coroutines/internal/s0;->b(Lkotlin/coroutines/g;)V

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v0, 0x0

    .line 17
    .line 18
    sget-object v1, Lkotlinx/coroutines/internal/m0;->findOne:Le8/p;

    .line 19
    .line 20
    .line 21
    invoke-interface {p0, v0, v1}, Lkotlin/coroutines/g;->fold(Ljava/lang/Object;Le8/p;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    check-cast v0, Lkotlinx/coroutines/z2;

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, p0, p1}, Lkotlinx/coroutines/z2;->n(Lkotlin/coroutines/g;Ljava/lang/Object;)V

    .line 33
    :goto_0
    return-void
.end method

.method public static final b(Lkotlin/coroutines/g;)Ljava/lang/Object;
    .locals 2
    .param p0    # Lkotlin/coroutines/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    move-result-object v0

    .line 6
    .line 7
    sget-object v1, Lkotlinx/coroutines/internal/m0;->countAll:Le8/p;

    .line 8
    .line 9
    .line 10
    invoke-interface {p0, v0, v1}, Lkotlin/coroutines/g;->fold(Ljava/lang/Object;Le8/p;)Ljava/lang/Object;

    .line 11
    move-result-object p0

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 15
    return-object p0
.end method

.method public static final c(Lkotlin/coroutines/g;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0    # Lkotlin/coroutines/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-static {p0}, Lkotlinx/coroutines/internal/m0;->b(Lkotlin/coroutines/g;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    if-ne p1, v0, :cond_1

    .line 14
    .line 15
    sget-object p0, Lkotlinx/coroutines/internal/m0;->NO_THREAD_ELEMENTS:Lkotlinx/coroutines/internal/i0;

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    new-instance v0, Lkotlinx/coroutines/internal/s0;

    .line 23
    .line 24
    check-cast p1, Ljava/lang/Number;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 28
    move-result p1

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/internal/s0;-><init>(Lkotlin/coroutines/g;I)V

    .line 32
    .line 33
    sget-object p1, Lkotlinx/coroutines/internal/m0;->updateState:Le8/p;

    .line 34
    .line 35
    .line 36
    invoke-interface {p0, v0, p1}, Lkotlin/coroutines/g;->fold(Ljava/lang/Object;Le8/p;)Ljava/lang/Object;

    .line 37
    move-result-object p0

    .line 38
    goto :goto_0

    .line 39
    .line 40
    :cond_2
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    .line 41
    .line 42
    .line 43
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    check-cast p1, Lkotlinx/coroutines/z2;

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, p0}, Lkotlinx/coroutines/z2;->E0(Lkotlin/coroutines/g;)Ljava/lang/Object;

    .line 49
    move-result-object p0

    .line 50
    :goto_0
    return-object p0
.end method
