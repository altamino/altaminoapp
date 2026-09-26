.class final Lcoil/fetch/k$c;
.super Lkotlin/coroutines/jvm/internal/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcoil/fetch/k;->c(Lokhttp3/Request;Lkotlin/coroutines/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "coil.fetch.HttpUriFetcher"
    f = "HttpUriFetcher.kt"
    l = {
        0xdf
    }
    m = "executeNetworkRequest"
.end annotation


# instance fields
.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcoil/fetch/k;


# direct methods
.method constructor <init>(Lcoil/fetch/k;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/fetch/k;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcoil/fetch/k$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcoil/fetch/k$c;->this$0:Lcoil/fetch/k;

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

    iput-object p1, p0, Lcoil/fetch/k$c;->result:Ljava/lang/Object;

    iget p1, p0, Lcoil/fetch/k$c;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcoil/fetch/k$c;->label:I

    iget-object p1, p0, Lcoil/fetch/k$c;->this$0:Lcoil/fetch/k;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lcoil/fetch/k;->b(Lcoil/fetch/k;Lokhttp3/Request;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
