.class public final Lcom/narvii/account/usecase/RemovePhoneAndEmailSignUpUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final firebaseRemoteConfigRepository:Lcom/narvii/account/FirebaseRemoteConfigRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/account/FirebaseRemoteConfigRepository;)V
    .locals 1
    .param p1    # Lcom/narvii/account/FirebaseRemoteConfigRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "firebaseRemoteConfigRepository"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/account/usecase/RemovePhoneAndEmailSignUpUseCase;->firebaseRemoteConfigRepository:Lcom/narvii/account/FirebaseRemoteConfigRepository;

    .line 11
    return-void
.end method

.method public static final synthetic access$isEmailAndPhoneSignupAvailable(Lcom/narvii/account/usecase/RemovePhoneAndEmailSignUpUseCase;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/account/usecase/RemovePhoneAndEmailSignUpUseCase;->isEmailAndPhoneSignupAvailable(Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final isEmailAndPhoneSignupAvailable(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/usecase/RemovePhoneAndEmailSignUpUseCase;->firebaseRemoteConfigRepository:Lcom/narvii/account/FirebaseRemoteConfigRepository;

    .line 3
    .line 4
    const-string v1, "enable_email_and_phone_signup"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Lcom/narvii/account/FirebaseRemoteConfigRepository;->getRemoteConfigBoolean(Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method


# virtual methods
.method public final invoke(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 4
    .param p1    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/narvii/account/usecase/SignUpRemoteConfig;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/account/usecase/RemovePhoneAndEmailSignUpUseCase$invoke$1;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p1

    .line 6
    .line 7
    check-cast v0, Lcom/narvii/account/usecase/RemovePhoneAndEmailSignUpUseCase$invoke$1;

    .line 8
    .line 9
    iget v1, v0, Lcom/narvii/account/usecase/RemovePhoneAndEmailSignUpUseCase$invoke$1;->label:I

    .line 10
    .line 11
    const/high16 v2, -0x80000000

    .line 12
    .line 13
    and-int v3, v1, v2

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    sub-int/2addr v1, v2

    .line 17
    .line 18
    iput v1, v0, Lcom/narvii/account/usecase/RemovePhoneAndEmailSignUpUseCase$invoke$1;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lcom/narvii/account/usecase/RemovePhoneAndEmailSignUpUseCase$invoke$1;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p1}, Lcom/narvii/account/usecase/RemovePhoneAndEmailSignUpUseCase$invoke$1;-><init>(Lcom/narvii/account/usecase/RemovePhoneAndEmailSignUpUseCase;Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p1, v0, Lcom/narvii/account/usecase/RemovePhoneAndEmailSignUpUseCase$invoke$1;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Lcom/narvii/account/usecase/RemovePhoneAndEmailSignUpUseCase$invoke$1;->label:I

    .line 33
    const/4 v3, 0x1

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v3, :cond_1

    .line 38
    .line 39
    .line 40
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 41
    goto :goto_1

    .line 42
    .line 43
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 44
    .line 45
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 46
    .line 47
    .line 48
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    throw p1

    .line 50
    .line 51
    .line 52
    :cond_2
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 53
    .line 54
    iput v3, v0, Lcom/narvii/account/usecase/RemovePhoneAndEmailSignUpUseCase$invoke$1;->label:I

    .line 55
    .line 56
    .line 57
    invoke-direct {p0, v0}, Lcom/narvii/account/usecase/RemovePhoneAndEmailSignUpUseCase;->isEmailAndPhoneSignupAvailable(Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    if-ne p1, v1, :cond_3

    .line 61
    return-object v1

    .line 62
    .line 63
    :cond_3
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 67
    move-result p1

    const/4 p1, 0x1

    const/4 v1, 0x0

    .line 68
    .line 69
    new-instance v0, Lcom/narvii/account/usecase/SignUpRemoteConfig;

    .line 70
    .line 71
    .line 72
    invoke-direct {v0, p1, v1}, Lcom/narvii/account/usecase/SignUpRemoteConfig;-><init>(ZZ)V

    .line 73
    return-object v0
.end method
