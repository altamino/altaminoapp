.class final Lio/ktor/client/call/b$b;
.super Lkotlin/coroutines/jvm/internal/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/call/b;->a(Lo7/a;Lkotlin/coroutines/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "io.ktor.client.call.HttpClientCall"
    f = "HttpClientCall.kt"
    l = {
        0x56,
        0x59
    }
    m = "bodyNullable"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lio/ktor/client/call/b;


# direct methods
.method constructor <init>(Lio/ktor/client/call/b;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/call/b;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lio/ktor/client/call/b$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/client/call/b$b;->this$0:Lio/ktor/client/call/b;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/d;-><init>(Lkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iput-object p1, p0, Lio/ktor/client/call/b$b;->result:Ljava/lang/Object;

    iget p1, p0, Lio/ktor/client/call/b$b;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/ktor/client/call/b$b;->label:I

    iget-object p1, p0, Lio/ktor/client/call/b$b;->this$0:Lio/ktor/client/call/b;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lio/ktor/client/call/b;->a(Lo7/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
