.class final Lio/ktor/client/engine/c$a;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/engine/c;-><init>(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/a<",
        "Lkotlin/coroutines/g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/ktor/client/engine/c;


# direct methods
.method constructor <init>(Lio/ktor/client/engine/c;)V
    .locals 0

    iput-object p1, p0, Lio/ktor/client/engine/c$a;->this$0:Lio/ktor/client/engine/c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()Lkotlin/coroutines/g;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    .line 4
    .line 5
    invoke-static {v0, v1, v0}, Lio/ktor/util/m;->b(Lkotlinx/coroutines/b2;ILjava/lang/Object;)Lkotlin/coroutines/g;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Lio/ktor/client/engine/c$a;->this$0:Lio/ktor/client/engine/c;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lio/ktor/client/engine/c;->h()Lkotlinx/coroutines/k0;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1}, Lkotlin/coroutines/g;->plus(Lkotlin/coroutines/g;)Lkotlin/coroutines/g;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    new-instance v1, Lkotlinx/coroutines/n0;

    .line 19
    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    iget-object v3, p0, Lio/ktor/client/engine/c$a;->this$0:Lio/ktor/client/engine/c;

    .line 26
    .line 27
    .line 28
    invoke-static {v3}, Lio/ktor/client/engine/c;->a(Lio/ktor/client/engine/c;)Ljava/lang/String;

    .line 29
    move-result-object v3

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v3, "-context"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v2

    .line 42
    .line 43
    .line 44
    invoke-direct {v1, v2}, Lkotlinx/coroutines/n0;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-interface {v0, v1}, Lkotlin/coroutines/g;->plus(Lkotlin/coroutines/g;)Lkotlin/coroutines/g;

    .line 48
    move-result-object v0

    .line 49
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lio/ktor/client/engine/c$a;->b()Lkotlin/coroutines/g;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
