.class final Lkotlinx/coroutines/sync/b$b;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/sync/b;-><init>(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/q<",
        "Lkotlinx/coroutines/selects/b<",
        "*>;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Le8/l<",
        "-",
        "Ljava/lang/Throwable;",
        "+",
        "Lw7/l0;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lkotlinx/coroutines/sync/b;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/sync/b;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/sync/b$b;->this$0:Lkotlinx/coroutines/sync/b;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/selects/b;Ljava/lang/Object;Ljava/lang/Object;)Le8/l;
    .locals 0
    .param p1    # Lkotlinx/coroutines/selects/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/selects/b<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Le8/l<",
            "Ljava/lang/Throwable;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance p1, Lkotlinx/coroutines/sync/b$b$a;

    .line 3
    .line 4
    iget-object p3, p0, Lkotlinx/coroutines/sync/b$b;->this$0:Lkotlinx/coroutines/sync/b;

    .line 5
    .line 6
    .line 7
    invoke-direct {p1, p3, p2}, Lkotlinx/coroutines/sync/b$b$a;-><init>(Lkotlinx/coroutines/sync/b;Ljava/lang/Object;)V

    .line 8
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lkotlinx/coroutines/selects/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/coroutines/sync/b$b;->a(Lkotlinx/coroutines/selects/b;Ljava/lang/Object;Ljava/lang/Object;)Le8/l;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
