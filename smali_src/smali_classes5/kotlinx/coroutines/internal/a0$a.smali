.class final Lkotlinx/coroutines/internal/a0$a;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/internal/a0;->a(Le8/l;Ljava/lang/Object;Lkotlin/coroutines/g;)Le8/l;
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
.field final synthetic $context:Lkotlin/coroutines/g;

.field final synthetic $element:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field final synthetic $this_bindCancellationFun:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "TE;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Le8/l;Ljava/lang/Object;Lkotlin/coroutines/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/l<",
            "-TE;",
            "Lw7/l0;",
            ">;TE;",
            "Lkotlin/coroutines/g;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lkotlinx/coroutines/internal/a0$a;->$this_bindCancellationFun:Le8/l;

    iput-object p2, p0, Lkotlinx/coroutines/internal/a0$a;->$element:Ljava/lang/Object;

    iput-object p3, p0, Lkotlinx/coroutines/internal/a0$a;->$context:Lkotlin/coroutines/g;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/internal/a0$a;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-object p1, p0, Lkotlinx/coroutines/internal/a0$a;->$this_bindCancellationFun:Le8/l;

    iget-object v0, p0, Lkotlinx/coroutines/internal/a0$a;->$element:Ljava/lang/Object;

    iget-object v1, p0, Lkotlinx/coroutines/internal/a0$a;->$context:Lkotlin/coroutines/g;

    .line 2
    invoke-static {p1, v0, v1}, Lkotlinx/coroutines/internal/a0;->b(Le8/l;Ljava/lang/Object;Lkotlin/coroutines/g;)V

    return-void
.end method
