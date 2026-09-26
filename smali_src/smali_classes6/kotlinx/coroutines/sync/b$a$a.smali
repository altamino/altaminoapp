.class final Lkotlinx/coroutines/sync/b$a$a;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/sync/b$a;->b(Lw7/l0;Le8/l;)V
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
.field final synthetic this$0:Lkotlinx/coroutines/sync/b;

.field final synthetic this$1:Lkotlinx/coroutines/sync/b$a;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/sync/b;Lkotlinx/coroutines/sync/b$a;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/sync/b$a$a;->this$0:Lkotlinx/coroutines/sync/b;

    iput-object p2, p0, Lkotlinx/coroutines/sync/b$a$a;->this$1:Lkotlinx/coroutines/sync/b$a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/sync/b$a$a;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-object p1, p0, Lkotlinx/coroutines/sync/b$a$a;->this$0:Lkotlinx/coroutines/sync/b;

    iget-object v0, p0, Lkotlinx/coroutines/sync/b$a$a;->this$1:Lkotlinx/coroutines/sync/b$a;

    .line 2
    iget-object v0, v0, Lkotlinx/coroutines/sync/b$a;->owner:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/sync/b;->e(Ljava/lang/Object;)V

    return-void
.end method
