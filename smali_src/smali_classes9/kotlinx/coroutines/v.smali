.class public final Lkotlinx/coroutines/v;
.super Lkotlinx/coroutines/d2;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/u;


# instance fields
.field public final childJob:Lkotlinx/coroutines/w;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/w;)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lkotlinx/coroutines/d2;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lkotlinx/coroutines/v;->childJob:Lkotlinx/coroutines/w;

    .line 6
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/coroutines/i2;->s()Lkotlinx/coroutines/j2;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lkotlinx/coroutines/j2;->W(Ljava/lang/Throwable;)Z

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public getParent()Lkotlinx/coroutines/b2;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/coroutines/i2;->s()Lkotlinx/coroutines/j2;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Ljava/lang/Throwable;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/v;->r(Ljava/lang/Throwable;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method

.method public r(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object p1, p0, Lkotlinx/coroutines/v;->childJob:Lkotlinx/coroutines/w;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lkotlinx/coroutines/i2;->s()Lkotlinx/coroutines/j2;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, v0}, Lkotlinx/coroutines/w;->j(Lkotlinx/coroutines/s2;)V

    .line 10
    return-void
.end method
