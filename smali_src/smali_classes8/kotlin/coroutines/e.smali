.class public interface abstract Lkotlin/coroutines/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/coroutines/g$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/coroutines/e$a;,
        Lkotlin/coroutines/e$b;
    }
.end annotation


# static fields
.field public static final Key:Lkotlin/coroutines/e$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lkotlin/coroutines/e$b;->$$INSTANCE:Lkotlin/coroutines/e$b;

    sput-object v0, Lkotlin/coroutines/e;->Key:Lkotlin/coroutines/e$b;

    return-void
.end method


# virtual methods
.method public abstract interceptContinuation(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .param p1    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/coroutines/d<",
            "-TT;>;)",
            "Lkotlin/coroutines/d<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract releaseInterceptedContinuation(Lkotlin/coroutines/d;)V
    .param p1    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "*>;)V"
        }
    .end annotation
.end method
