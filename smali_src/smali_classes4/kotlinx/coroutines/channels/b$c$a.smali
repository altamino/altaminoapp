.class final Lkotlinx/coroutines/channels/b$c$a;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/channels/b$c;->a(Lkotlinx/coroutines/selects/b;Ljava/lang/Object;Ljava/lang/Object;)Le8/l;
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
.field final synthetic $element:Ljava/lang/Object;

.field final synthetic $select:Lkotlinx/coroutines/selects/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/selects/b<",
            "*>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lkotlinx/coroutines/channels/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/b<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Lkotlinx/coroutines/channels/b;Lkotlinx/coroutines/selects/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlinx/coroutines/channels/b<",
            "TE;>;",
            "Lkotlinx/coroutines/selects/b<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/channels/b$c$a;->$element:Ljava/lang/Object;

    iput-object p2, p0, Lkotlinx/coroutines/channels/b$c$a;->this$0:Lkotlinx/coroutines/channels/b;

    iput-object p3, p0, Lkotlinx/coroutines/channels/b$c$a;->$select:Lkotlinx/coroutines/selects/b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/b$c$a;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-object p1, p0, Lkotlinx/coroutines/channels/b$c$a;->$element:Ljava/lang/Object;

    .line 2
    invoke-static {}, Lkotlinx/coroutines/channels/c;->z()Lkotlinx/coroutines/internal/i0;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lkotlinx/coroutines/channels/b$c$a;->this$0:Lkotlinx/coroutines/channels/b;

    iget-object p1, p1, Lkotlinx/coroutines/channels/b;->onUndeliveredElement:Le8/l;

    iget-object v0, p0, Lkotlinx/coroutines/channels/b$c$a;->$element:Ljava/lang/Object;

    iget-object v1, p0, Lkotlinx/coroutines/channels/b$c$a;->$select:Lkotlinx/coroutines/selects/b;

    invoke-interface {v1}, Lkotlinx/coroutines/selects/b;->getContext()Lkotlin/coroutines/g;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lkotlinx/coroutines/internal/a0;->b(Le8/l;Ljava/lang/Object;Lkotlin/coroutines/g;)V

    :cond_0
    return-void
.end method
