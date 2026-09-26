.class final Lio/ktor/client/plugins/k$c;
.super Lkotlin/coroutines/jvm/internal/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/plugins/k;->e(Ljava/lang/Throwable;Li7/c;Lkotlin/coroutines/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "io.ktor.client.plugins.HttpCallValidator"
    f = "HttpCallValidator.kt"
    l = {
        0x3a,
        0x3b
    }
    m = "processException"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lio/ktor/client/plugins/k;


# direct methods
.method constructor <init>(Lio/ktor/client/plugins/k;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/plugins/k;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lio/ktor/client/plugins/k$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/client/plugins/k$c;->this$0:Lio/ktor/client/plugins/k;

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

    iput-object p1, p0, Lio/ktor/client/plugins/k$c;->result:Ljava/lang/Object;

    iget p1, p0, Lio/ktor/client/plugins/k$c;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/ktor/client/plugins/k$c;->label:I

    iget-object p1, p0, Lio/ktor/client/plugins/k$c;->this$0:Lio/ktor/client/plugins/k;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, p0}, Lio/ktor/client/plugins/k;->c(Lio/ktor/client/plugins/k;Ljava/lang/Throwable;Li7/c;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
