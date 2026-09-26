.class final Lio/ktor/client/plugins/q$b$a;
.super Lkotlin/coroutines/jvm/internal/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/plugins/q$b;->e(Lio/ktor/client/plugins/e0;Li7/d;Lio/ktor/client/call/b;ZLio/ktor/client/a;Lkotlin/coroutines/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "io.ktor.client.plugins.HttpRedirect$Plugin"
    f = "HttpRedirect.kt"
    l = {
        0x71
    }
    m = "handleCall"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field L$7:Ljava/lang/Object;

.field L$8:Ljava/lang/Object;

.field Z$0:Z

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lio/ktor/client/plugins/q$b;


# direct methods
.method constructor <init>(Lio/ktor/client/plugins/q$b;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/plugins/q$b;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lio/ktor/client/plugins/q$b$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/client/plugins/q$b$a;->this$0:Lio/ktor/client/plugins/q$b;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/d;-><init>(Lkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iput-object p1, p0, Lio/ktor/client/plugins/q$b$a;->result:Ljava/lang/Object;

    iget p1, p0, Lio/ktor/client/plugins/q$b$a;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/ktor/client/plugins/q$b$a;->label:I

    iget-object v0, p0, Lio/ktor/client/plugins/q$b$a;->this$0:Lio/ktor/client/plugins/q$b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lio/ktor/client/plugins/q$b;->c(Lio/ktor/client/plugins/q$b;Lio/ktor/client/plugins/e0;Li7/d;Lio/ktor/client/call/b;ZLio/ktor/client/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
