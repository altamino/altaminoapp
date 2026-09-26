.class final Lio/ktor/client/plugins/t$b;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/plugins/t;->c(Lkotlinx/coroutines/a0;Lkotlinx/coroutines/b2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Ljava/lang/Throwable;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $requestJob:Lkotlinx/coroutines/a0;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/a0;)V
    .locals 0

    iput-object p1, p0, Lio/ktor/client/plugins/t$b;->$requestJob:Lkotlinx/coroutines/a0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lio/ktor/client/plugins/t$b;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 3
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lio/ktor/client/plugins/t;->b()Lorg/slf4j/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cancelling request because engine Job failed with error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lio/ktor/client/plugins/t$b;->$requestJob:Lkotlinx/coroutines/a0;

    const-string v1, "Engine failed"

    .line 3
    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/f2;->d(Lkotlinx/coroutines/b2;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lio/ktor/client/plugins/t;->b()Lorg/slf4j/a;

    move-result-object p1

    const-string v0, "Cancelling request because engine Job completed"

    invoke-interface {p1, v0}, Lorg/slf4j/a;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lio/ktor/client/plugins/t$b;->$requestJob:Lkotlinx/coroutines/a0;

    .line 5
    invoke-interface {p1}, Lkotlinx/coroutines/a0;->complete()Z

    :goto_0
    return-void
.end method
