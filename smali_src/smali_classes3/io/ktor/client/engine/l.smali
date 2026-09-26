.class public final Lio/ktor/client/engine/l;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Ljava/lang/Throwable;",
        "Lw7/l0;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utils.kt\nio/ktor/client/engine/UtilsKt$attachToUserJob$cleanupHandler$1\n*L\n1#1,107:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $callJob:Lkotlinx/coroutines/b2;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/b2;)V
    .locals 0

    iput-object p1, p0, Lio/ktor/client/engine/l;->$callJob:Lkotlinx/coroutines/b2;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lio/ktor/client/engine/l;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lio/ktor/client/engine/l;->$callJob:Lkotlinx/coroutines/b2;

    .line 2
    new-instance v1, Ljava/util/concurrent/CancellationException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lkotlinx/coroutines/b2;->b(Ljava/util/concurrent/CancellationException;)V

    return-void
.end method
