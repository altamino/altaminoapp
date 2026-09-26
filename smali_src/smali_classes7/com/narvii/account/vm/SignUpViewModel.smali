.class public final Lcom/narvii/account/vm/SignUpViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"


# instance fields
.field private final _uiState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/narvii/account/vm/SignupUiState;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final remoteConfig:Lcom/google/firebase/remoteconfig/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final removePhoneAndEmailSignUpUseCase:Lcom/narvii/account/usecase/RemovePhoneAndEmailSignUpUseCase;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final repository:Lcom/narvii/account/FirebaseRemoteConfigRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final uiState:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lcom/narvii/account/vm/SignupUiState;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/google/firebase/remoteconfig/a;->k()Lcom/google/firebase/remoteconfig/a;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    const-string v1, "getInstance(...)"

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/account/vm/SignUpViewModel;->remoteConfig:Lcom/google/firebase/remoteconfig/a;

    .line 15
    .line 16
    new-instance v1, Lcom/narvii/account/FirebaseRemoteConfigRepository;

    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x1

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, v2, v0, v3, v2}, Lcom/narvii/account/FirebaseRemoteConfigRepository;-><init>(Lkotlinx/coroutines/k0;Lcom/google/firebase/remoteconfig/a;ILkotlin/jvm/internal/k;)V

    .line 22
    .line 23
    iput-object v1, p0, Lcom/narvii/account/vm/SignUpViewModel;->repository:Lcom/narvii/account/FirebaseRemoteConfigRepository;

    .line 24
    .line 25
    new-instance v0, Lcom/narvii/account/usecase/RemovePhoneAndEmailSignUpUseCase;

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1}, Lcom/narvii/account/usecase/RemovePhoneAndEmailSignUpUseCase;-><init>(Lcom/narvii/account/FirebaseRemoteConfigRepository;)V

    .line 29
    .line 30
    iput-object v0, p0, Lcom/narvii/account/vm/SignUpViewModel;->removePhoneAndEmailSignUpUseCase:Lcom/narvii/account/usecase/RemovePhoneAndEmailSignUpUseCase;

    .line 31
    .line 32
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 33
    .line 34
    .line 35
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 36
    .line 37
    iput-object v0, p0, Lcom/narvii/account/vm/SignUpViewModel;->_uiState:Landroidx/lifecycle/MutableLiveData;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/narvii/account/vm/SignUpViewModel;->uiState:Landroidx/lifecycle/LiveData;

    .line 40
    return-void
.end method

.method public static final synthetic access$getRemovePhoneAndEmailSignUpUseCase$p(Lcom/narvii/account/vm/SignUpViewModel;)Lcom/narvii/account/usecase/RemovePhoneAndEmailSignUpUseCase;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/account/vm/SignUpViewModel;->removePhoneAndEmailSignUpUseCase:Lcom/narvii/account/usecase/RemovePhoneAndEmailSignUpUseCase;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$get_uiState$p(Lcom/narvii/account/vm/SignUpViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/account/vm/SignUpViewModel;->_uiState:Landroidx/lifecycle/MutableLiveData;

    .line 3
    return-object p0
.end method


# virtual methods
.method public final getUiState()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/narvii/account/vm/SignupUiState;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/account/vm/SignUpViewModel;->uiState:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final loadPhoneAndEmailSignUp()V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/o0;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    .line 8
    new-instance v3, Lcom/narvii/account/vm/SignUpViewModel$loadPhoneAndEmailSignUp$1;

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    .line 12
    invoke-direct {v3, p0, v4}, Lcom/narvii/account/vm/SignUpViewModel$loadPhoneAndEmailSignUp$1;-><init>(Lcom/narvii/account/vm/SignUpViewModel;Lkotlin/coroutines/d;)V

    .line 13
    const/4 v4, 0x3

    .line 14
    const/4 v5, 0x0

    .line 15
    .line 16
    .line 17
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;Lkotlinx/coroutines/q0;Le8/p;ILjava/lang/Object;)Lkotlinx/coroutines/b2;

    .line 18
    return-void
.end method
