.class public Lkotlinx/coroutines/e2;
.super Lkotlinx/coroutines/j2;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/a0;


# instance fields
.field private final handlesException:Z


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/b2;)V
    .locals 1
    .param p1    # Lkotlinx/coroutines/b2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lkotlinx/coroutines/j2;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/j2;->q0(Lkotlinx/coroutines/b2;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lkotlinx/coroutines/e2;->W0()Z

    .line 11
    move-result p1

    .line 12
    .line 13
    iput-boolean p1, p0, Lkotlinx/coroutines/e2;->handlesException:Z

    .line 14
    return-void
.end method

.method private final W0()Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/coroutines/j2;->m0()Lkotlinx/coroutines/u;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v1, v0, Lkotlinx/coroutines/v;

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    check-cast v0, Lkotlinx/coroutines/v;

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v0, v2

    .line 14
    :goto_0
    const/4 v1, 0x0

    .line 15
    .line 16
    if-eqz v0, :cond_4

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lkotlinx/coroutines/i2;->s()Lkotlinx/coroutines/j2;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    goto :goto_2

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-virtual {v0}, Lkotlinx/coroutines/j2;->i0()Z

    .line 27
    move-result v3

    .line 28
    .line 29
    if-eqz v3, :cond_2

    .line 30
    const/4 v0, 0x1

    .line 31
    return v0

    .line 32
    .line 33
    .line 34
    :cond_2
    invoke-virtual {v0}, Lkotlinx/coroutines/j2;->m0()Lkotlinx/coroutines/u;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    instance-of v3, v0, Lkotlinx/coroutines/v;

    .line 38
    .line 39
    if-eqz v3, :cond_3

    .line 40
    .line 41
    check-cast v0, Lkotlinx/coroutines/v;

    .line 42
    goto :goto_1

    .line 43
    :cond_3
    move-object v0, v2

    .line 44
    .line 45
    :goto_1
    if-eqz v0, :cond_4

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lkotlinx/coroutines/i2;->s()Lkotlinx/coroutines/j2;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    if-nez v0, :cond_1

    .line 52
    :cond_4
    :goto_2
    return v1
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)Z
    .locals 4
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance v0, Lkotlinx/coroutines/c0;

    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p1, v3, v1, v2}, Lkotlinx/coroutines/c0;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/k;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/j2;->w0(Ljava/lang/Object;)Z

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public complete()Z
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/j2;->w0(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public i0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lkotlinx/coroutines/e2;->handlesException:Z

    return v0
.end method

.method public j0()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method
