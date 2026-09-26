.class public final Lcom/narvii/account/vm/LoginViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/account/vm/LoginViewModel$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/account/vm/LoginViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "LoginViewModel"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final keyStoreService:Lcom/narvii/security/KeyStoreService;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/account/vm/LoginViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/account/vm/LoginViewModel$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/account/vm/LoginViewModel;->Companion:Lcom/narvii/account/vm/LoginViewModel$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/security/KeyStoreService;)V
    .locals 1
    .param p1    # Lcom/narvii/security/KeyStoreService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "keyStoreService"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/account/vm/LoginViewModel;->keyStoreService:Lcom/narvii/security/KeyStoreService;

    .line 11
    return-void
.end method

.method public static final synthetic access$getKeyStoreService$p(Lcom/narvii/account/vm/LoginViewModel;)Lcom/narvii/security/KeyStoreService;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/account/vm/LoginViewModel;->keyStoreService:Lcom/narvii/security/KeyStoreService;

    .line 3
    return-object p0
.end method

.method public static final factory(Lcom/narvii/security/KeyStoreService;)Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 1
    .param p0    # Lcom/narvii/security/KeyStoreService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/narvii/account/vm/LoginViewModel;->Companion:Lcom/narvii/account/vm/LoginViewModel$Companion;

    invoke-virtual {v0, p0}, Lcom/narvii/account/vm/LoginViewModel$Companion;->factory(Lcom/narvii/security/KeyStoreService;)Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final sendPublicKey(Lcom/narvii/util/http/ApiResponseListener;)V
    .locals 7
    .param p1    # Lcom/narvii/util/http/ApiResponseListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "listener"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/o0;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    .line 13
    new-instance v4, Lcom/narvii/account/vm/LoginViewModel$sendPublicKey$1;

    .line 14
    const/4 v0, 0x0

    .line 15
    .line 16
    .line 17
    invoke-direct {v4, p0, p1, v0}, Lcom/narvii/account/vm/LoginViewModel$sendPublicKey$1;-><init>(Lcom/narvii/account/vm/LoginViewModel;Lcom/narvii/util/http/ApiResponseListener;Lkotlin/coroutines/d;)V

    .line 18
    const/4 v5, 0x3

    .line 19
    const/4 v6, 0x0

    .line 20
    .line 21
    .line 22
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;Lkotlinx/coroutines/q0;Le8/p;ILjava/lang/Object;)Lkotlinx/coroutines/b2;

    .line 23
    return-void
.end method
