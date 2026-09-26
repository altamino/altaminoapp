.class final Lcom/narvii/account/vm/LoginViewModel$sendPublicKey$1;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/vm/LoginViewModel;->sendPublicKey(Lcom/narvii/util/http/ApiResponseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/l;",
        "Le8/p<",
        "Lkotlinx/coroutines/o0;",
        "Lkotlin/coroutines/d<",
        "-",
        "Lw7/l0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "com.narvii.account.vm.LoginViewModel$sendPublicKey$1"
    f = "LoginViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $listener:Lcom/narvii/util/http/ApiResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/narvii/account/vm/LoginViewModel;


# direct methods
.method constructor <init>(Lcom/narvii/account/vm/LoginViewModel;Lcom/narvii/util/http/ApiResponseListener;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/account/vm/LoginViewModel;",
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/narvii/account/vm/LoginViewModel$sendPublicKey$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/narvii/account/vm/LoginViewModel$sendPublicKey$1;->this$0:Lcom/narvii/account/vm/LoginViewModel;

    iput-object p2, p0, Lcom/narvii/account/vm/LoginViewModel$sendPublicKey$1;->$listener:Lcom/narvii/util/http/ApiResponseListener;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/d<",
            "*>;)",
            "Lkotlin/coroutines/d<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p1, Lcom/narvii/account/vm/LoginViewModel$sendPublicKey$1;

    iget-object v0, p0, Lcom/narvii/account/vm/LoginViewModel$sendPublicKey$1;->this$0:Lcom/narvii/account/vm/LoginViewModel;

    iget-object v1, p0, Lcom/narvii/account/vm/LoginViewModel$sendPublicKey$1;->$listener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-direct {p1, v0, v1, p2}, Lcom/narvii/account/vm/LoginViewModel$sendPublicKey$1;-><init>(Lcom/narvii/account/vm/LoginViewModel;Lcom/narvii/util/http/ApiResponseListener;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/o0;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/account/vm/LoginViewModel$sendPublicKey$1;->invoke(Lkotlinx/coroutines/o0;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/o0;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lkotlinx/coroutines/o0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/o0;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/narvii/account/vm/LoginViewModel$sendPublicKey$1;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/vm/LoginViewModel$sendPublicKey$1;

    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {p1, p2}, Lcom/narvii/account/vm/LoginViewModel$sendPublicKey$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 4
    .line 5
    iget v0, p0, Lcom/narvii/account/vm/LoginViewModel$sendPublicKey$1;->label:I

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/account/vm/LoginViewModel$sendPublicKey$1;->this$0:Lcom/narvii/account/vm/LoginViewModel;

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lcom/narvii/account/vm/LoginViewModel;->access$getKeyStoreService$p(Lcom/narvii/account/vm/LoginViewModel;)Lcom/narvii/security/KeyStoreService;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/account/vm/LoginViewModel$sendPublicKey$1;->$listener:Lcom/narvii/util/http/ApiResponseListener;

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 24
    return-object p1

    .line 25
    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 29
    .line 30
    .line 31
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    throw p1
.end method
