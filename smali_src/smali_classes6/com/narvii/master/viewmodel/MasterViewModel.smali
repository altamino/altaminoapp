.class public final Lcom/narvii/master/viewmodel/MasterViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/viewmodel/MasterViewModel$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/master/viewmodel/MasterViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final _reLoginEvent:La;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La<",
            "Lcom/narvii/master/viewmodel/MasterUiState;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final accountRepository:Lcom/narvii/master/viewmodel/repository/AccountRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final reLoginEvent:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lcom/narvii/master/viewmodel/MasterUiState;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sharedPreferences:Landroid/content/SharedPreferences;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/master/viewmodel/MasterViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/master/viewmodel/MasterViewModel$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/master/viewmodel/MasterViewModel;->Companion:Lcom/narvii/master/viewmodel/MasterViewModel$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/master/viewmodel/repository/AccountRepository;Landroid/content/SharedPreferences;)V
    .locals 1
    .param p1    # Lcom/narvii/master/viewmodel/repository/AccountRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/SharedPreferences;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "accountRepository"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "sharedPreferences"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 14
    .line 15
    iput-object p1, p0, Lcom/narvii/master/viewmodel/MasterViewModel;->accountRepository:Lcom/narvii/master/viewmodel/repository/AccountRepository;

    .line 16
    .line 17
    iput-object p2, p0, Lcom/narvii/master/viewmodel/MasterViewModel;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 18
    .line 19
    new-instance p1, La;

    .line 20
    .line 21
    .line 22
    invoke-direct {p1}, La;-><init>()V

    .line 23
    .line 24
    iput-object p1, p0, Lcom/narvii/master/viewmodel/MasterViewModel;->_reLoginEvent:La;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/narvii/master/viewmodel/MasterViewModel;->reLoginEvent:Landroidx/lifecycle/LiveData;

    .line 27
    return-void
.end method

.method private final disallowOnBoarding(Landroid/content/Intent;)Z
    .locals 2

    .line 1
    .line 2
    const-string v0, "disallowOnBoarding"

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 7
    move-result p1

    .line 8
    return p1
.end method

.method public static final factory(Lcom/narvii/master/viewmodel/repository/AccountRepository;Landroid/content/SharedPreferences;)Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 1
    .param p0    # Lcom/narvii/master/viewmodel/repository/AccountRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/SharedPreferences;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/narvii/master/viewmodel/MasterViewModel;->Companion:Lcom/narvii/master/viewmodel/MasterViewModel$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/narvii/master/viewmodel/MasterViewModel$Companion;->factory(Lcom/narvii/master/viewmodel/repository/AccountRepository;Landroid/content/SharedPreferences;)Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object p0

    return-object p0
.end method

.method private final isMaster()Z
    .locals 2

    .line 1
    .line 2
    sget v0, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    .line 3
    .line 4
    const/16 v1, 0x64

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method private final isNotExploreTab(Ljava/lang/String;)Z
    .locals 1

    .line 1
    .line 2
    const-string v0, "explore"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    .line 8
    xor-int/lit8 p1, p1, 0x1

    .line 9
    return p1
.end method

.method private final isReloginIntent(Landroid/content/Intent;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    .line 14
    :goto_0
    const-string v0, "relogin"

    .line 15
    .line 16
    .line 17
    invoke-static {v0, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method private final notShowLoginWhenOpenMaster(Landroid/content/Intent;)Z
    .locals 2

    .line 1
    .line 2
    const-string v0, "not_show_login_when_open_master"

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 7
    move-result p1

    .line 8
    return p1
.end method

.method private final signUpIsNotEnabled()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/viewmodel/MasterViewModel;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    const-string v1, "signUpStrategy"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    xor-int/lit8 v0, v0, 0x1

    .line 11
    return v0
.end method


# virtual methods
.method public final getReLoginEvent()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/narvii/master/viewmodel/MasterUiState;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/viewmodel/MasterViewModel;->reLoginEvent:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final launchReLogin(Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcom/narvii/master/viewmodel/MasterViewModel;->isReloginIntent(Landroid/content/Intent;)Z

    .line 8
    move-result p1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/master/viewmodel/MasterViewModel;->_reLoginEvent:La;

    .line 13
    .line 14
    new-instance p2, Lcom/narvii/master/viewmodel/MasterUiState;

    .line 15
    const/4 v0, 0x1

    .line 16
    .line 17
    .line 18
    invoke-direct {p2, v0}, Lcom/narvii/master/viewmodel/MasterUiState;-><init>(Z)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2}, La;->m(Ljava/lang/Object;)V

    .line 22
    :cond_0
    return-void
.end method

.method public final shouldLaunchLoginIfExploreRequested(Landroid/content/Intent;)Z
    .locals 2
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "intent"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "tab"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    return v1

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-direct {p0, v0}, Lcom/narvii/master/viewmodel/MasterViewModel;->isNotExploreTab(Ljava/lang/String;)Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    return v1

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-direct {p0}, Lcom/narvii/master/viewmodel/MasterViewModel;->isMaster()Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-nez v0, :cond_2

    .line 29
    return v1

    .line 30
    .line 31
    :cond_2
    iget-object v0, p0, Lcom/narvii/master/viewmodel/MasterViewModel;->accountRepository:Lcom/narvii/master/viewmodel/repository/AccountRepository;

    .line 32
    .line 33
    .line 34
    invoke-interface {v0}, Lcom/narvii/master/viewmodel/repository/AccountRepository;->hasAccount()Z

    .line 35
    move-result v0

    .line 36
    .line 37
    if-eqz v0, :cond_3

    .line 38
    return v1

    .line 39
    .line 40
    .line 41
    :cond_3
    invoke-direct {p0, p1}, Lcom/narvii/master/viewmodel/MasterViewModel;->notShowLoginWhenOpenMaster(Landroid/content/Intent;)Z

    .line 42
    move-result v0

    .line 43
    .line 44
    if-nez v0, :cond_5

    .line 45
    .line 46
    .line 47
    invoke-direct {p0}, Lcom/narvii/master/viewmodel/MasterViewModel;->signUpIsNotEnabled()Z

    .line 48
    move-result v0

    .line 49
    .line 50
    if-nez v0, :cond_4

    .line 51
    .line 52
    .line 53
    invoke-direct {p0, p1}, Lcom/narvii/master/viewmodel/MasterViewModel;->disallowOnBoarding(Landroid/content/Intent;)Z

    .line 54
    move-result p1

    .line 55
    .line 56
    if-eqz p1, :cond_5

    .line 57
    :cond_4
    const/4 v1, 0x1

    .line 58
    :cond_5
    return v1
.end method
