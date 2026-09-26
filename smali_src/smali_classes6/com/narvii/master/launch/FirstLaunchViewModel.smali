.class public final Lcom/narvii/master/launch/FirstLaunchViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/launch/FirstLaunchViewModel$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/master/launch/FirstLaunchViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final _installState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/narvii/master/launch/InstallType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final installState:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lcom/narvii/master/launch/InstallType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final launchRepository:Lcom/narvii/master/launch/FirstLaunchRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/master/launch/FirstLaunchViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/master/launch/FirstLaunchViewModel$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/master/launch/FirstLaunchViewModel;->Companion:Lcom/narvii/master/launch/FirstLaunchViewModel$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/master/launch/FirstLaunchRepository;)V
    .locals 1
    .param p1    # Lcom/narvii/master/launch/FirstLaunchRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "launchRepository"

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
    iput-object p1, p0, Lcom/narvii/master/launch/FirstLaunchViewModel;->launchRepository:Lcom/narvii/master/launch/FirstLaunchRepository;

    .line 11
    .line 12
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 16
    .line 17
    iput-object p1, p0, Lcom/narvii/master/launch/FirstLaunchViewModel;->_installState:Landroidx/lifecycle/MutableLiveData;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/narvii/master/launch/FirstLaunchViewModel;->installState:Landroidx/lifecycle/LiveData;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/narvii/master/launch/FirstLaunchViewModel;->checkInstallType()V

    .line 23
    return-void
.end method

.method public static final getFactory(Landroid/content/Context;)Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/narvii/master/launch/FirstLaunchViewModel;->Companion:Lcom/narvii/master/launch/FirstLaunchViewModel$Companion;

    invoke-virtual {v0, p0}, Lcom/narvii/master/launch/FirstLaunchViewModel$Companion;->getFactory(Landroid/content/Context;)Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final checkInstallType()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/launch/FirstLaunchViewModel;->launchRepository:Lcom/narvii/master/launch/FirstLaunchRepository;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/master/launch/FirstLaunchRepository;->getVersionCode()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    .line 9
    const-string v2, "FirstLaunchViewModel"

    .line 10
    .line 11
    .line 12
    const v3, 0x9a91

    .line 13
    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/master/launch/FirstLaunchViewModel;->launchRepository:Lcom/narvii/master/launch/FirstLaunchRepository;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v3}, Lcom/narvii/master/launch/FirstLaunchRepository;->saveVersionCode(I)V

    .line 20
    .line 21
    const-string v0, "First launch"

    .line 22
    .line 23
    .line 24
    invoke-static {v2, v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/master/launch/FirstLaunchViewModel;->_installState:Landroidx/lifecycle/MutableLiveData;

    .line 27
    .line 28
    sget-object v1, Lcom/narvii/master/launch/InstallType$FreshInstall;->INSTANCE:Lcom/narvii/master/launch/InstallType$FreshInstall;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->p(Ljava/lang/Object;)V

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_0
    if-ge v0, v3, :cond_1

    .line 35
    .line 36
    iget-object v1, p0, Lcom/narvii/master/launch/FirstLaunchViewModel;->launchRepository:Lcom/narvii/master/launch/FirstLaunchRepository;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v3}, Lcom/narvii/master/launch/FirstLaunchRepository;->saveVersionCode(I)V

    .line 40
    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    const-string v4, "Upgrade from "

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v4, " to "

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object v1

    .line 65
    .line 66
    .line 67
    invoke-static {v2, v1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    iget-object v1, p0, Lcom/narvii/master/launch/FirstLaunchViewModel;->_installState:Landroidx/lifecycle/MutableLiveData;

    .line 70
    .line 71
    new-instance v2, Lcom/narvii/master/launch/InstallType$Upgrade;

    .line 72
    .line 73
    .line 74
    invoke-direct {v2, v0, v3}, Lcom/narvii/master/launch/InstallType$Upgrade;-><init>(II)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->p(Ljava/lang/Object;)V

    .line 78
    goto :goto_0

    .line 79
    .line 80
    :cond_1
    const-string v0, "Normal launch"

    .line 81
    .line 82
    .line 83
    invoke-static {v2, v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    iget-object v0, p0, Lcom/narvii/master/launch/FirstLaunchViewModel;->_installState:Landroidx/lifecycle/MutableLiveData;

    .line 86
    .line 87
    sget-object v1, Lcom/narvii/master/launch/InstallType$NormalLaunch;->INSTANCE:Lcom/narvii/master/launch/InstallType$NormalLaunch;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->p(Ljava/lang/Object;)V

    .line 91
    :goto_0
    return-void
.end method

.method public final getInstallState()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/narvii/master/launch/InstallType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/launch/FirstLaunchViewModel;->installState:Landroidx/lifecycle/LiveData;

    return-object v0
.end method
