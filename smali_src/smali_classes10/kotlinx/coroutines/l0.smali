.class public interface abstract Lkotlinx/coroutines/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/coroutines/g$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/l0$a;,
        Lkotlinx/coroutines/l0$b;
    }
.end annotation


# static fields
.field public static final Key:Lkotlinx/coroutines/l0$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lkotlinx/coroutines/l0$b;->$$INSTANCE:Lkotlinx/coroutines/l0$b;

    sput-object v0, Lkotlinx/coroutines/l0;->Key:Lkotlinx/coroutines/l0$b;

    return-void
.end method


# virtual methods
.method public abstract handleException(Lkotlin/coroutines/g;Ljava/lang/Throwable;)V
    .param p1    # Lkotlin/coroutines/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
