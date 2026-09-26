.class public interface abstract Lkotlinx/coroutines/x0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/x0$a;
    }
.end annotation


# virtual methods
.method public abstract invokeOnTimeout(JLjava/lang/Runnable;Lkotlin/coroutines/g;)Lkotlinx/coroutines/g1;
    .param p3    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/coroutines/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract scheduleResumeAfterDelay(JLkotlinx/coroutines/o;)V
    .param p3    # Lkotlinx/coroutines/o;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlinx/coroutines/o<",
            "-",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation
.end method
