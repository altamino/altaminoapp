.class final Lkotlinx/coroutines/channels/b$c;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/channels/b;-><init>(ILe8/l;)V
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
.field final synthetic this$0:Lkotlinx/coroutines/channels/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/b<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlinx/coroutines/channels/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/b<",
            "TE;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/channels/b$c;->this$0:Lkotlinx/coroutines/channels/b;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/selects/b;Ljava/lang/Object;Ljava/lang/Object;)Le8/l;
    .locals 1
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
    new-instance p2, Lkotlinx/coroutines/channels/b$c$a;

    .line 3
    .line 4
    iget-object v0, p0, Lkotlinx/coroutines/channels/b$c;->this$0:Lkotlinx/coroutines/channels/b;

    .line 5
    .line 6
    .line 7
    invoke-direct {p2, p3, v0, p1}, Lkotlinx/coroutines/channels/b$c$a;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/channels/b;Lkotlinx/coroutines/selects/b;)V

    .line 8
    return-object p2
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lkotlinx/coroutines/selects/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/coroutines/channels/b$c;->a(Lkotlinx/coroutines/selects/b;Ljava/lang/Object;Ljava/lang/Object;)Le8/l;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
