.class public final Lio/ktor/client/plugins/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li7/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/plugins/l;->a(Li7/d;)Lio/ktor/client/plugins/l$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $builder:Li7/d;

.field private final attributes:Lio/ktor/util/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final headers:Lio/ktor/http/k;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final method:Lio/ktor/http/t;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final url:Lio/ktor/http/p0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Li7/d;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lio/ktor/client/plugins/l$a;->$builder:Li7/d;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Li7/d;->g()Lio/ktor/http/t;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iput-object v0, p0, Lio/ktor/client/plugins/l$a;->method:Lio/ktor/http/t;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Li7/d;->h()Lio/ktor/http/f0;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lio/ktor/http/f0;->b()Lio/ktor/http/p0;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    iput-object v0, p0, Lio/ktor/client/plugins/l$a;->url:Lio/ktor/http/p0;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Li7/d;->b()Lio/ktor/util/b;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    iput-object v0, p0, Lio/ktor/client/plugins/l$a;->attributes:Lio/ktor/util/b;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Li7/d;->getHeaders()Lio/ktor/http/l;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lio/ktor/http/l;->n()Lio/ktor/http/k;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    iput-object p1, p0, Lio/ktor/client/plugins/l$a;->headers:Lio/ktor/http/k;

    .line 38
    return-void
.end method


# virtual methods
.method public L()Lio/ktor/util/b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/plugins/l$a;->attributes:Lio/ktor/util/b;

    return-object v0
.end method

.method public getCoroutineContext()Lkotlin/coroutines/g;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Li7/c$a;->a(Li7/c;)Lkotlin/coroutines/g;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getHeaders()Lio/ktor/http/k;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lio/ktor/client/plugins/l$a;->headers:Lio/ktor/http/k;

    return-object v0
.end method

.method public getMethod()Lio/ktor/http/t;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lio/ktor/client/plugins/l$a;->method:Lio/ktor/http/t;

    return-object v0
.end method

.method public getUrl()Lio/ktor/http/p0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lio/ktor/client/plugins/l$a;->url:Lio/ktor/http/p0;

    return-object v0
.end method

.method public y0()Lio/ktor/client/call/b;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 3
    .line 4
    const-string v1, "Call is not initialized"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 12
    throw v0
.end method
