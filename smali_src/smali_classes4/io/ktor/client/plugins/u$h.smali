.class final Lio/ktor/client/plugins/u$h;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/plugins/u;->m(Li7/d;)Li7/d;
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
.field final synthetic $subRequest:Li7/d;


# direct methods
.method constructor <init>(Li7/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/ktor/client/plugins/u$h;->$subRequest:Li7/d;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lio/ktor/client/plugins/u$h;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lio/ktor/client/plugins/u$h;->$subRequest:Li7/d;

    .line 2
    invoke-virtual {v0}, Li7/d;->f()Lkotlinx/coroutines/b2;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.CompletableJob"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lkotlinx/coroutines/a0;

    if-nez p1, :cond_0

    .line 3
    invoke-interface {v0}, Lkotlinx/coroutines/a0;->complete()Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0, p1}, Lkotlinx/coroutines/a0;->a(Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method
