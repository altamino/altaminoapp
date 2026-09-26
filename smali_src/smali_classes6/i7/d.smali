.class public final Li7/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/ktor/http/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li7/d$a;
    }
.end annotation


# static fields
.field public static final Companion:Li7/d$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final attributes:Lio/ktor/util/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private body:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private executionContext:Lkotlinx/coroutines/b2;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final headers:Lio/ktor/http/l;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private method:Lio/ktor/http/t;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final url:Lio/ktor/http/f0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Li7/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Li7/d$a;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Li7/d;->Companion:Li7/d$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 13

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v12, Lio/ktor/http/f0;

    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x0

    .line 12
    const/4 v7, 0x0

    .line 13
    const/4 v8, 0x0

    .line 14
    const/4 v9, 0x0

    .line 15
    .line 16
    const/16 v10, 0x1ff

    .line 17
    const/4 v11, 0x0

    .line 18
    move-object v0, v12

    .line 19
    .line 20
    .line 21
    invoke-direct/range {v0 .. v11}, Lio/ktor/http/f0;-><init>(Lio/ktor/http/l0;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lio/ktor/http/z;Ljava/lang/String;ZILkotlin/jvm/internal/k;)V

    .line 22
    .line 23
    iput-object v12, p0, Li7/d;->url:Lio/ktor/http/f0;

    .line 24
    .line 25
    sget-object v0, Lio/ktor/http/t;->Companion:Lio/ktor/http/t$a;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lio/ktor/http/t$a;->a()Lio/ktor/http/t;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    iput-object v0, p0, Li7/d;->method:Lio/ktor/http/t;

    .line 32
    .line 33
    new-instance v0, Lio/ktor/http/l;

    .line 34
    const/4 v1, 0x0

    .line 35
    const/4 v2, 0x1

    .line 36
    const/4 v3, 0x0

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, v1, v2, v3}, Lio/ktor/http/l;-><init>(IILkotlin/jvm/internal/k;)V

    .line 40
    .line 41
    iput-object v0, p0, Li7/d;->headers:Lio/ktor/http/l;

    .line 42
    .line 43
    sget-object v0, Lio/ktor/client/utils/c;->INSTANCE:Lio/ktor/client/utils/c;

    .line 44
    .line 45
    iput-object v0, p0, Li7/d;->body:Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    invoke-static {v3, v2, v3}, Lkotlinx/coroutines/y2;->b(Lkotlinx/coroutines/b2;ILjava/lang/Object;)Lkotlinx/coroutines/a0;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    iput-object v0, p0, Li7/d;->executionContext:Lkotlinx/coroutines/b2;

    .line 52
    .line 53
    .line 54
    invoke-static {v2}, Lio/ktor/util/d;->a(Z)Lio/ktor/util/b;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    iput-object v0, p0, Li7/d;->attributes:Lio/ktor/util/b;

    .line 58
    return-void
.end method


# virtual methods
.method public final a()Li7/e;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v7, Li7/e;

    .line 3
    .line 4
    iget-object v0, p0, Li7/d;->url:Lio/ktor/http/f0;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lio/ktor/http/f0;->b()Lio/ktor/http/p0;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    iget-object v2, p0, Li7/d;->method:Lio/ktor/http/t;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Li7/d;->getHeaders()Lio/ktor/http/l;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lio/ktor/http/l;->n()Lio/ktor/http/k;

    .line 18
    move-result-object v3

    .line 19
    .line 20
    iget-object v0, p0, Li7/d;->body:Ljava/lang/Object;

    .line 21
    .line 22
    instance-of v4, v0, Lk7/b;

    .line 23
    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    check-cast v0, Lk7/b;

    .line 27
    :goto_0
    move-object v4, v0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :goto_1
    if-eqz v4, :cond_1

    .line 33
    .line 34
    iget-object v5, p0, Li7/d;->executionContext:Lkotlinx/coroutines/b2;

    .line 35
    .line 36
    iget-object v6, p0, Li7/d;->attributes:Lio/ktor/util/b;

    .line 37
    move-object v0, v7

    .line 38
    .line 39
    .line 40
    invoke-direct/range {v0 .. v6}, Li7/e;-><init>(Lio/ktor/http/p0;Lio/ktor/http/t;Lio/ktor/http/k;Lk7/b;Lkotlinx/coroutines/b2;Lio/ktor/util/b;)V

    .line 41
    return-object v7

    .line 42
    .line 43
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 44
    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    const-string v2, "No request transformation found: "

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    iget-object v2, p0, Li7/d;->body:Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 66
    move-result-object v1

    .line 67
    .line 68
    .line 69
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 70
    throw v0
.end method

.method public final b()Lio/ktor/util/b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Li7/d;->attributes:Lio/ktor/util/b;

    return-object v0
.end method

.method public final c()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Li7/d;->body:Ljava/lang/Object;

    return-object v0
.end method

.method public final d()Lo7/a;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Li7/d;->attributes:Lio/ktor/util/b;

    .line 3
    .line 4
    .line 5
    invoke-static {}, Li7/j;->a()Lio/ktor/util/a;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Lio/ktor/util/b;->e(Lio/ktor/util/a;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lo7/a;

    .line 13
    return-object v0
.end method

.method public final e(Lio/ktor/client/engine/e;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lio/ktor/client/engine/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ktor/client/engine/e<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "key"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Li7/d;->attributes:Lio/ktor/util/b;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lio/ktor/client/engine/f;->a()Lio/ktor/util/a;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Lio/ktor/util/b;->e(Lio/ktor/util/a;)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    check-cast v0, Ljava/util/Map;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    :goto_0
    return-object p1
.end method

.method public final f()Lkotlinx/coroutines/b2;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Li7/d;->executionContext:Lkotlinx/coroutines/b2;

    return-object v0
.end method

.method public final g()Lio/ktor/http/t;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Li7/d;->method:Lio/ktor/http/t;

    return-object v0
.end method

.method public getHeaders()Lio/ktor/http/l;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Li7/d;->headers:Lio/ktor/http/l;

    return-object v0
.end method

.method public final h()Lio/ktor/http/f0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Li7/d;->url:Lio/ktor/http/f0;

    return-object v0
.end method

.method public final i(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Li7/d;->body:Ljava/lang/Object;

    return-void
.end method

.method public final j(Lo7/a;)V
    .locals 2
    .param p1    # Lo7/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Li7/d;->attributes:Lio/ktor/util/b;

    .line 5
    .line 6
    .line 7
    invoke-static {}, Li7/j;->a()Lio/ktor/util/a;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1, p1}, Lio/ktor/util/b;->a(Lio/ktor/util/a;Ljava/lang/Object;)V

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    iget-object p1, p0, Li7/d;->attributes:Lio/ktor/util/b;

    .line 15
    .line 16
    .line 17
    invoke-static {}, Li7/j;->a()Lio/ktor/util/a;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, v0}, Lio/ktor/util/b;->c(Lio/ktor/util/a;)V

    .line 22
    :goto_0
    return-void
.end method

.method public final k(Lio/ktor/client/engine/e;Ljava/lang/Object;)V
    .locals 3
    .param p1    # Lio/ktor/client/engine/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ktor/client/engine/e<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "key"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "capability"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object v0, p0, Li7/d;->attributes:Lio/ktor/util/b;

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lio/ktor/client/engine/f;->a()Lio/ktor/util/a;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    sget-object v2, Li7/d$b;->INSTANCE:Li7/d$b;

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, v1, v2}, Lio/ktor/util/b;->g(Lio/ktor/util/a;Le8/a;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    check-cast v0, Ljava/util/Map;

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    return-void
.end method

.method public final l(Lkotlinx/coroutines/b2;)V
    .locals 1
    .param p1    # Lkotlinx/coroutines/b2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Li7/d;->executionContext:Lkotlinx/coroutines/b2;

    return-void
.end method

.method public final m(Lio/ktor/http/t;)V
    .locals 1
    .param p1    # Lio/ktor/http/t;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Li7/d;->method:Lio/ktor/http/t;

    return-void
.end method

.method public final n(Li7/d;)Li7/d;
    .locals 2
    .param p1    # Li7/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "builder"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p1, Li7/d;->method:Lio/ktor/http/t;

    .line 8
    .line 9
    iput-object v0, p0, Li7/d;->method:Lio/ktor/http/t;

    .line 10
    .line 11
    iget-object v0, p1, Li7/d;->body:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object v0, p0, Li7/d;->body:Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Li7/d;->d()Lo7/a;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Li7/d;->j(Lo7/a;)V

    .line 21
    .line 22
    iget-object v0, p0, Li7/d;->url:Lio/ktor/http/f0;

    .line 23
    .line 24
    iget-object v1, p1, Li7/d;->url:Lio/ktor/http/f0;

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v1}, Lio/ktor/http/n0;->g(Lio/ktor/http/f0;Lio/ktor/http/f0;)Lio/ktor/http/f0;

    .line 28
    .line 29
    iget-object v0, p0, Li7/d;->url:Lio/ktor/http/f0;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lio/ktor/http/f0;->g()Ljava/util/List;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lio/ktor/http/f0;->u(Ljava/util/List;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Li7/d;->getHeaders()Lio/ktor/http/l;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Li7/d;->getHeaders()Lio/ktor/http/l;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    invoke-static {v0, v1}, Lio/ktor/util/x;->c(Lio/ktor/util/u;Lio/ktor/util/u;)Lio/ktor/util/u;

    .line 48
    .line 49
    iget-object v0, p0, Li7/d;->attributes:Lio/ktor/util/b;

    .line 50
    .line 51
    iget-object p1, p1, Li7/d;->attributes:Lio/ktor/util/b;

    .line 52
    .line 53
    .line 54
    invoke-static {v0, p1}, Lio/ktor/util/e;->a(Lio/ktor/util/b;Lio/ktor/util/b;)V

    .line 55
    return-object p0
.end method

.method public final o(Li7/d;)Li7/d;
    .locals 1
    .param p1    # Li7/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "builder"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p1, Li7/d;->executionContext:Lkotlinx/coroutines/b2;

    .line 8
    .line 9
    iput-object v0, p0, Li7/d;->executionContext:Lkotlinx/coroutines/b2;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Li7/d;->n(Li7/d;)Li7/d;

    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method
