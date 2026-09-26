.class public interface abstract Lkotlinx/coroutines/b2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/coroutines/g$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/b2$a;,
        Lkotlinx/coroutines/b2$b;
    }
.end annotation


# static fields
.field public static final Key:Lkotlinx/coroutines/b2$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lkotlinx/coroutines/b2$b;->$$INSTANCE:Lkotlinx/coroutines/b2$b;

    sput-object v0, Lkotlinx/coroutines/b2;->Key:Lkotlinx/coroutines/b2$b;

    return-void
.end method


# virtual methods
.method public abstract O(ZZLe8/l;)Lkotlinx/coroutines/g1;
    .param p3    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Le8/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lw7/l0;",
            ">;)",
            "Lkotlinx/coroutines/g1;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract Q(Lkotlinx/coroutines/w;)Lkotlinx/coroutines/u;
    .param p1    # Lkotlinx/coroutines/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract U(Le8/l;)Lkotlinx/coroutines/g1;
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lw7/l0;",
            ">;)",
            "Lkotlinx/coroutines/g1;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract b(Ljava/util/concurrent/CancellationException;)V
    .param p1    # Ljava/util/concurrent/CancellationException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract b0()Ljava/util/concurrent/CancellationException;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getChildren()Lkotlin/sequences/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/sequences/g<",
            "Lkotlinx/coroutines/b2;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getParent()Lkotlinx/coroutines/b2;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract isActive()Z
.end method

.method public abstract isCancelled()Z
.end method

.method public abstract m()Z
.end method

.method public abstract start()Z
.end method

.method public abstract t0(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .param p1    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
