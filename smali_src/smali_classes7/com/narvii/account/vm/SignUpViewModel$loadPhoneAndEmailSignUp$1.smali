.class final Lcom/narvii/account/vm/SignUpViewModel$loadPhoneAndEmailSignUp$1;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/vm/SignUpViewModel;->loadPhoneAndEmailSignUp()V
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
    c = "com.narvii.account.vm.SignUpViewModel$loadPhoneAndEmailSignUp$1"
    f = "SignUpViewModel.kt"
    l = {
        0x23
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/narvii/account/vm/SignUpViewModel;


# direct methods
.method constructor <init>(Lcom/narvii/account/vm/SignUpViewModel;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/account/vm/SignUpViewModel;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/narvii/account/vm/SignUpViewModel$loadPhoneAndEmailSignUp$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/narvii/account/vm/SignUpViewModel$loadPhoneAndEmailSignUp$1;->this$0:Lcom/narvii/account/vm/SignUpViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 1
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

    new-instance p1, Lcom/narvii/account/vm/SignUpViewModel$loadPhoneAndEmailSignUp$1;

    iget-object v0, p0, Lcom/narvii/account/vm/SignUpViewModel$loadPhoneAndEmailSignUp$1;->this$0:Lcom/narvii/account/vm/SignUpViewModel;

    invoke-direct {p1, v0, p2}, Lcom/narvii/account/vm/SignUpViewModel$loadPhoneAndEmailSignUp$1;-><init>(Lcom/narvii/account/vm/SignUpViewModel;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/o0;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/account/vm/SignUpViewModel$loadPhoneAndEmailSignUp$1;->invoke(Lkotlinx/coroutines/o0;Lkotlin/coroutines/d;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/narvii/account/vm/SignUpViewModel$loadPhoneAndEmailSignUp$1;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/vm/SignUpViewModel$loadPhoneAndEmailSignUp$1;

    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {p1, p2}, Lcom/narvii/account/vm/SignUpViewModel$loadPhoneAndEmailSignUp$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
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
    move-result-object v0

    .line 5
    .line 6
    iget v1, p0, Lcom/narvii/account/vm/SignUpViewModel$loadPhoneAndEmailSignUp$1;->label:I

    .line 7
    const/4 v2, 0x1

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    throw p1

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 27
    .line 28
    iget-object p1, p0, Lcom/narvii/account/vm/SignUpViewModel$loadPhoneAndEmailSignUp$1;->this$0:Lcom/narvii/account/vm/SignUpViewModel;

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Lcom/narvii/account/vm/SignUpViewModel;->access$getRemovePhoneAndEmailSignUpUseCase$p(Lcom/narvii/account/vm/SignUpViewModel;)Lcom/narvii/account/usecase/RemovePhoneAndEmailSignUpUseCase;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    iput v2, p0, Lcom/narvii/account/vm/SignUpViewModel$loadPhoneAndEmailSignUp$1;->label:I

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p0}, Lcom/narvii/account/usecase/RemovePhoneAndEmailSignUpUseCase;->invoke(Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    if-ne p1, v0, :cond_2

    .line 41
    return-object v0

    .line 42
    .line 43
    :cond_2
    :goto_0
    check-cast p1, Lcom/narvii/account/usecase/SignUpRemoteConfig;

    .line 44
    .line 45
    iget-object v0, p0, Lcom/narvii/account/vm/SignUpViewModel$loadPhoneAndEmailSignUp$1;->this$0:Lcom/narvii/account/vm/SignUpViewModel;

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Lcom/narvii/account/vm/SignUpViewModel;->access$get_uiState$p(Lcom/narvii/account/vm/SignUpViewModel;)Landroidx/lifecycle/MutableLiveData;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    new-instance v1, Lcom/narvii/account/vm/SignupUiState;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/narvii/account/usecase/SignUpRemoteConfig;->isEmailSignupAvailable()Z

    .line 55
    move-result v2

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/narvii/account/usecase/SignUpRemoteConfig;->isPhoneSignupAvailable()Z

    .line 59
    move-result p1

    .line 60
    .line 61
    .line 62
    invoke-direct {v1, v2, p1}, Lcom/narvii/account/vm/SignupUiState;-><init>(ZZ)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->p(Ljava/lang/Object;)V

    .line 66
    .line 67
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 68
    return-object p1
.end method
