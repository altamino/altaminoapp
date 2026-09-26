.class public interface abstract Lcoil/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/e$a;
    }
.end annotation


# virtual methods
.method public abstract a()Lcoil/request/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract b(Lcoil/request/h;)Lcoil/request/d;
    .param p1    # Lcoil/request/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract c(Lcoil/request/h;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .param p1    # Lcoil/request/h;
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
            "Lcoil/request/h;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcoil/request/i;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract d()Lcoil/memory/MemoryCache;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getComponents()Lcoil/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
