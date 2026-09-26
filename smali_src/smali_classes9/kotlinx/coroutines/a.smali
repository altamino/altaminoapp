.class public abstract Lkotlinx/coroutines/a;
.super Lkotlinx/coroutines/j2;
.source "SourceFile"

# interfaces
.implements Lkotlin/coroutines/d;
.implements Lkotlinx/coroutines/o0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/j2;",
        "Lkotlin/coroutines/d<",
        "TT;>;",
        "Lkotlinx/coroutines/o0;"
    }
.end annotation


# instance fields
.field private final context:Lkotlin/coroutines/g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/coroutines/g;ZZ)V
    .locals 0
    .param p1    # Lkotlin/coroutines/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p3}, Lkotlinx/coroutines/j2;-><init>(Z)V

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    sget-object p2, Lkotlinx/coroutines/b2;->Key:Lkotlinx/coroutines/b2$b;

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, p2}, Lkotlin/coroutines/g;->get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    .line 11
    move-result-object p2

    .line 12
    .line 13
    check-cast p2, Lkotlinx/coroutines/b2;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/j2;->q0(Lkotlinx/coroutines/b2;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-interface {p1, p0}, Lkotlin/coroutines/g;->plus(Lkotlin/coroutines/g;)Lkotlin/coroutines/g;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    iput-object p1, p0, Lkotlinx/coroutines/a;->context:Lkotlin/coroutines/g;

    .line 23
    return-void
.end method


# virtual methods
.method public A0()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/a;->context:Lkotlin/coroutines/g;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lkotlinx/coroutines/j0;->b(Lkotlin/coroutines/g;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-super {p0}, Lkotlinx/coroutines/j2;->A0()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    .line 15
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    const/16 v2, 0x22

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v0, "\":"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-super {p0}, Lkotlinx/coroutines/j2;->A0()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    return-object v0
.end method

.method protected final G0(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    instance-of v0, p1, Lkotlinx/coroutines/c0;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lkotlinx/coroutines/c0;

    .line 7
    .line 8
    iget-object v0, p1, Lkotlinx/coroutines/c0;->cause:Ljava/lang/Throwable;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lkotlinx/coroutines/c0;->a()Z

    .line 12
    move-result p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0, p1}, Lkotlinx/coroutines/a;->X0(Ljava/lang/Throwable;Z)V

    .line 16
    goto :goto_0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/a;->Y0(Ljava/lang/Object;)V

    .line 20
    :goto_0
    return-void
.end method

.method protected P()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lkotlinx/coroutines/s0;->a(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v1, " was cancelled"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method

.method protected W0(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/j2;->C(Ljava/lang/Object;)V

    .line 4
    return-void
.end method

.method protected X0(Ljava/lang/Throwable;Z)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method protected Y0(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public final Z0(Lkotlinx/coroutines/q0;Ljava/lang/Object;Le8/p;)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/q0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/q0;",
            "TR;",
            "Le8/p<",
            "-TR;-",
            "Lkotlin/coroutines/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1, p3, p2, p0}, Lkotlinx/coroutines/q0;->b(Le8/p;Ljava/lang/Object;Lkotlin/coroutines/d;)V

    .line 4
    return-void
.end method

.method public final getContext()Lkotlin/coroutines/g;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/a;->context:Lkotlin/coroutines/g;

    return-object v0
.end method

.method public getCoroutineContext()Lkotlin/coroutines/g;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/a;->context:Lkotlin/coroutines/g;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lkotlinx/coroutines/j2;->isActive()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final p0(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/a;->context:Lkotlin/coroutines/g;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lkotlinx/coroutines/m0;->a(Lkotlin/coroutines/g;Ljava/lang/Throwable;)V

    .line 6
    return-void
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0, v1, v0}, Lkotlinx/coroutines/g0;->d(Ljava/lang/Object;Le8/l;ILjava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/j2;->x0(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    sget-object v0, Lkotlinx/coroutines/k2;->COMPLETING_WAITING_CHILDREN:Lkotlinx/coroutines/internal/i0;

    .line 13
    .line 14
    if-ne p1, v0, :cond_0

    .line 15
    return-void

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/a;->W0(Ljava/lang/Object;)V

    .line 19
    return-void
.end method
