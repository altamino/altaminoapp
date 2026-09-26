.class public final Lcom/narvii/account/FirebaseRemoteConfigRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final ioDispatcher:Lkotlinx/coroutines/k0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final remoteConfig:Lcom/google/firebase/remoteconfig/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/k0;Lcom/google/firebase/remoteconfig/a;)V
    .locals 1
    .param p1    # Lkotlinx/coroutines/k0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/remoteconfig/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "ioDispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/account/FirebaseRemoteConfigRepository;->ioDispatcher:Lkotlinx/coroutines/k0;

    iput-object p2, p0, Lcom/narvii/account/FirebaseRemoteConfigRepository;->remoteConfig:Lcom/google/firebase/remoteconfig/a;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/coroutines/k0;Lcom/google/firebase/remoteconfig/a;ILkotlin/jvm/internal/k;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 2
    invoke-static {}, Lkotlinx/coroutines/e1;->b()Lkotlinx/coroutines/k0;

    move-result-object p1

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/narvii/account/FirebaseRemoteConfigRepository;-><init>(Lkotlinx/coroutines/k0;Lcom/google/firebase/remoteconfig/a;)V

    return-void
.end method

.method public static final synthetic access$getRemoteConfig$p(Lcom/narvii/account/FirebaseRemoteConfigRepository;)Lcom/google/firebase/remoteconfig/a;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/account/FirebaseRemoteConfigRepository;->remoteConfig:Lcom/google/firebase/remoteconfig/a;

    .line 3
    return-object p0
.end method


# virtual methods
.method public final getRemoteConfigBoolean(Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/FirebaseRemoteConfigRepository;->ioDispatcher:Lkotlinx/coroutines/k0;

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/account/FirebaseRemoteConfigRepository$getRemoteConfigBoolean$2;

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, p0, p1, v2}, Lcom/narvii/account/FirebaseRemoteConfigRepository$getRemoteConfigBoolean$2;-><init>(Lcom/narvii/account/FirebaseRemoteConfigRepository;Ljava/lang/String;Lkotlin/coroutines/d;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/g;Le8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
