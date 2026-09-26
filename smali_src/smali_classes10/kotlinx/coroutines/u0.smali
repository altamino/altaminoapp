.class public final Lkotlinx/coroutines/u0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DefaultDelay:Lkotlinx/coroutines/x0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final defaultMainDelayOptIn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    const-string v0, "kotlinx.coroutines.main.delay"

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lkotlinx/coroutines/internal/j0;->f(Ljava/lang/String;Z)Z

    .line 7
    move-result v0

    .line 8
    .line 9
    sput-boolean v0, Lkotlinx/coroutines/u0;->defaultMainDelayOptIn:Z

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lkotlinx/coroutines/u0;->b()Lkotlinx/coroutines/x0;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    sput-object v0, Lkotlinx/coroutines/u0;->DefaultDelay:Lkotlinx/coroutines/x0;

    .line 16
    return-void
.end method

.method public static final a()Lkotlinx/coroutines/x0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lkotlinx/coroutines/u0;->DefaultDelay:Lkotlinx/coroutines/x0;

    return-object v0
.end method

.method private static final b()Lkotlinx/coroutines/x0;
    .locals 2

    .line 1
    .line 2
    sget-boolean v0, Lkotlinx/coroutines/u0;->defaultMainDelayOptIn:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Lkotlinx/coroutines/t0;->INSTANCE:Lkotlinx/coroutines/t0;

    .line 7
    return-object v0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/e1;->c()Lkotlinx/coroutines/n2;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lkotlinx/coroutines/internal/y;->c(Lkotlinx/coroutines/n2;)Z

    .line 15
    move-result v1

    .line 16
    .line 17
    if-nez v1, :cond_2

    .line 18
    .line 19
    instance-of v1, v0, Lkotlinx/coroutines/x0;

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_1
    check-cast v0, Lkotlinx/coroutines/x0;

    .line 25
    goto :goto_1

    .line 26
    .line 27
    :cond_2
    :goto_0
    sget-object v0, Lkotlinx/coroutines/t0;->INSTANCE:Lkotlinx/coroutines/t0;

    .line 28
    :goto_1
    return-object v0
.end method
