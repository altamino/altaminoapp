.class final Lio/ktor/utils/io/internal/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/utils/io/internal/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le8/l<",
        "Ljava/lang/Throwable;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field private handler:Lkotlinx/coroutines/g1;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final job:Lkotlinx/coroutines/b2;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lio/ktor/utils/io/internal/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/utils/io/internal/b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/ktor/utils/io/internal/b;Lkotlinx/coroutines/b2;)V
    .locals 7
    .param p1    # Lio/ktor/utils/io/internal/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/b2;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "job"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Lio/ktor/utils/io/internal/b$a;->this$0:Lio/ktor/utils/io/internal/b;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    iput-object p2, p0, Lio/ktor/utils/io/internal/b$a;->job:Lkotlinx/coroutines/b2;

    .line 13
    const/4 v2, 0x1

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v5, 0x2

    .line 16
    const/4 v6, 0x0

    .line 17
    move-object v1, p2

    .line 18
    move-object v4, p0

    .line 19
    .line 20
    .line 21
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/b2$a;->d(Lkotlinx/coroutines/b2;ZZLe8/l;ILjava/lang/Object;)Lkotlinx/coroutines/g1;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-interface {p2}, Lkotlinx/coroutines/b2;->isActive()Z

    .line 26
    move-result p2

    .line 27
    .line 28
    if-eqz p2, :cond_0

    .line 29
    .line 30
    iput-object p1, p0, Lio/ktor/utils/io/internal/b$a;->handler:Lkotlinx/coroutines/g1;

    .line 31
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lio/ktor/utils/io/internal/b$a;->handler:Lkotlinx/coroutines/g1;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    iput-object v1, p0, Lio/ktor/utils/io/internal/b$a;->handler:Lkotlinx/coroutines/g1;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Lkotlinx/coroutines/g1;->t()V

    .line 11
    :cond_0
    return-void
.end method

.method public final b()Lkotlinx/coroutines/b2;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/utils/io/internal/b$a;->job:Lkotlinx/coroutines/b2;

    return-object v0
.end method

.method public c(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lio/ktor/utils/io/internal/b$a;->this$0:Lio/ktor/utils/io/internal/b;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Lio/ktor/utils/io/internal/b;->a(Lio/ktor/utils/io/internal/b;Lio/ktor/utils/io/internal/b$a;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lio/ktor/utils/io/internal/b$a;->a()V

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lio/ktor/utils/io/internal/b$a;->this$0:Lio/ktor/utils/io/internal/b;

    .line 13
    .line 14
    iget-object v1, p0, Lio/ktor/utils/io/internal/b$a;->job:Lkotlinx/coroutines/b2;

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1, p1}, Lio/ktor/utils/io/internal/b;->b(Lio/ktor/utils/io/internal/b;Lkotlinx/coroutines/b2;Ljava/lang/Throwable;)V

    .line 18
    :cond_0
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Ljava/lang/Throwable;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lio/ktor/utils/io/internal/b$a;->c(Ljava/lang/Throwable;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
