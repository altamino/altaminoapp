.class public Lcom/narvii/wallet/optinads/OptinAdsManageFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"


# instance fields
.field checkUpdating:Z

.field dfmt:Ljava/text/DecimalFormat;

.field optinAdsResponse:Lcom/narvii/wallet/optinads/OptinAdsResponse;

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/text/DecimalFormat;

    .line 6
    .line 7
    const-string v1, "0.00"

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/wallet/optinads/OptinAdsManageFragment;->dfmt:Ljava/text/DecimalFormat;

    .line 13
    return-void
.end method

.method private synthetic lambda$onViewCreated$0(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/wallet/optinads/OptinAdsManageFragment;->update()V

    .line 4
    return-void
.end method

.method private synthetic lambda$onViewCreated$1(Landroid/view/View;)V
    .locals 1

    .line 1
    const/4 p1, 0x0

    .line 2
    .line 3
    const-string v0, "EarnFreeCoinsToggle"

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, v0}, Lcom/narvii/wallet/optinads/OptinAdsManageFragment;->optinAds(ILjava/lang/String;)V

    .line 7
    return-void
.end method

.method private synthetic lambda$onViewCreated$2(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 1
    .line 2
    iget-boolean p1, p0, Lcom/narvii/wallet/optinads/OptinAdsManageFragment;->checkUpdating:Z

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    const-string p1, "EarnFreeCoinsToggle"

    .line 8
    .line 9
    if-eqz p2, :cond_1

    .line 10
    .line 11
    sget-object p2, Lcom/narvii/logging/ActSemantic;->turnOn:Lcom/narvii/logging/ActSemantic;

    .line 12
    .line 13
    .line 14
    invoke-static {p0, p2}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, p1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 23
    const/4 p1, 0x2

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p1}, Lcom/narvii/wallet/optinads/OptinAdsManageFragment;->optinAds(I)V

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_1
    sget-object p2, Lcom/narvii/logging/ActSemantic;->tryTurnOff:Lcom/narvii/logging/ActSemantic;

    .line 30
    .line 31
    .line 32
    invoke-static {p0, p2}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 33
    move-result-object p2

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, p1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 41
    .line 42
    new-instance p1, Lcom/narvii/util/dialog/AlertDialog;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 46
    move-result-object p2

    .line 47
    .line 48
    .line 49
    invoke-direct {p1, p2}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 50
    .line 51
    .line 52
    const p2, 0x7f121141

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p2}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(I)V

    .line 56
    .line 57
    new-instance p2, Lcom/narvii/wallet/optinads/f;

    .line 58
    .line 59
    .line 60
    invoke-direct {p2, p0}, Lcom/narvii/wallet/optinads/f;-><init>(Lcom/narvii/wallet/optinads/OptinAdsManageFragment;)V

    .line 61
    .line 62
    .line 63
    const v0, 0x7f120d42

    .line 64
    const/4 v1, 0x0

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0, v1, p2}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 68
    .line 69
    new-instance p2, Lcom/narvii/wallet/optinads/g;

    .line 70
    .line 71
    .line 72
    invoke-direct {p2, p0}, Lcom/narvii/wallet/optinads/g;-><init>(Lcom/narvii/wallet/optinads/OptinAdsManageFragment;)V

    .line 73
    .line 74
    .line 75
    const v0, 0x7f1212a7

    .line 76
    .line 77
    const/16 v1, 0x8

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v0, v1, p2}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 84
    :goto_0
    return-void
.end method

.method private synthetic lambda$onViewCreated$3(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/wallet/optinads/OptinAdsManageFragment;->update()V

    .line 4
    return-void
.end method

.method private synthetic lambda$onViewCreated$4(Landroid/view/View;)V
    .locals 1

    .line 1
    const/4 p1, 0x1

    .line 2
    .line 3
    const-string v0, "Earn2XCoinsToggle"

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, v0}, Lcom/narvii/wallet/optinads/OptinAdsManageFragment;->optinAds(ILjava/lang/String;)V

    .line 7
    return-void
.end method

.method private synthetic lambda$onViewCreated$5(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 1
    .line 2
    iget-boolean p1, p0, Lcom/narvii/wallet/optinads/OptinAdsManageFragment;->checkUpdating:Z

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    const-string p1, "Earn2XCoinsToggle"

    .line 8
    .line 9
    if-eqz p2, :cond_1

    .line 10
    .line 11
    sget-object p2, Lcom/narvii/logging/ActSemantic;->turnOn:Lcom/narvii/logging/ActSemantic;

    .line 12
    .line 13
    .line 14
    invoke-static {p0, p2}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, p1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 23
    const/4 p1, 0x2

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p1}, Lcom/narvii/wallet/optinads/OptinAdsManageFragment;->optinAds(I)V

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_1
    sget-object p2, Lcom/narvii/logging/ActSemantic;->tryTurnOff:Lcom/narvii/logging/ActSemantic;

    .line 30
    .line 31
    .line 32
    invoke-static {p0, p2}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 33
    move-result-object p2

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, p1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 41
    .line 42
    new-instance p1, Lcom/narvii/util/dialog/AlertDialog;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 46
    move-result-object p2

    .line 47
    .line 48
    .line 49
    invoke-direct {p1, p2}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 50
    .line 51
    .line 52
    const p2, 0x7f121142

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p2}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(I)V

    .line 56
    .line 57
    new-instance p2, Lcom/narvii/wallet/optinads/d;

    .line 58
    .line 59
    .line 60
    invoke-direct {p2, p0}, Lcom/narvii/wallet/optinads/d;-><init>(Lcom/narvii/wallet/optinads/OptinAdsManageFragment;)V

    .line 61
    .line 62
    .line 63
    const v0, 0x7f120d42

    .line 64
    const/4 v1, 0x0

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0, v1, p2}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 68
    .line 69
    new-instance p2, Lcom/narvii/wallet/optinads/e;

    .line 70
    .line 71
    .line 72
    invoke-direct {p2, p0}, Lcom/narvii/wallet/optinads/e;-><init>(Lcom/narvii/wallet/optinads/OptinAdsManageFragment;)V

    .line 73
    .line 74
    .line 75
    const v0, 0x7f1212a7

    .line 76
    .line 77
    const/16 v1, 0x8

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v0, v1, p2}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 84
    :goto_0
    return-void
.end method

.method private synthetic lambda$optinAds$6(Ljava/lang/String;Lcom/narvii/model/api/AccountResponse;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "value"

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lcom/narvii/wallet/optinads/OptinAds;->getAdLevel(Lcom/narvii/app/NVContext;)Ljava/lang/String;

    .line 7
    move-result-object v1

    .line 8
    .line 9
    .line 10
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/narvii/util/statistics/FirebaseLogManager;->createParams([Ljava/lang/String;)[Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    const-string v1, "ad toggle"

    .line 18
    .line 19
    .line 20
    invoke-static {p0, v1, v0}, Lcom/narvii/util/statistics/FirebaseLogManager;->logEvent(Lcom/narvii/app/NVContext;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    sget-object p2, Lcom/narvii/logging/ActSemantic;->turnOff:Lcom/narvii/logging/ActSemantic;

    .line 27
    .line 28
    .line 29
    invoke-static {p0, p2}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 30
    move-result-object p2

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, p1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/wallet/optinads/OptinAdsManageFragment;->update()V

    .line 41
    return-void
.end method

.method public static synthetic n(Lcom/narvii/wallet/optinads/OptinAdsManageFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/wallet/optinads/OptinAdsManageFragment;->lambda$onViewCreated$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o(Lcom/narvii/wallet/optinads/OptinAdsManageFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/wallet/optinads/OptinAdsManageFragment;->lambda$onViewCreated$0(Landroid/view/View;)V

    return-void
.end method

.method private optinAds(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/wallet/optinads/OptinAdsManageFragment;->optinAds(ILjava/lang/String;)V

    return-void
.end method

.method private optinAds(ILjava/lang/String;)V
    .locals 2

    .line 2
    new-instance v0, Lcom/narvii/wallet/optinads/c;

    invoke-direct {v0, p0, p2}, Lcom/narvii/wallet/optinads/c;-><init>(Lcom/narvii/wallet/optinads/OptinAdsManageFragment;Ljava/lang/String;)V

    const-string v1, "Wallet"

    invoke-static {p0, p1, v1, v0, p2}, Lcom/narvii/wallet/optinads/OptinAdsUtil;->optinAdsLevel(Lcom/narvii/app/NVContext;ILjava/lang/String;Lcom/narvii/util/Callback;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic p(Lcom/narvii/wallet/optinads/OptinAdsManageFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/wallet/optinads/OptinAdsManageFragment;->lambda$onViewCreated$2(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic q(Lcom/narvii/wallet/optinads/OptinAdsManageFragment;Ljava/lang/String;Lcom/narvii/model/api/AccountResponse;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/wallet/optinads/OptinAdsManageFragment;->lambda$optinAds$6(Ljava/lang/String;Lcom/narvii/model/api/AccountResponse;)V

    return-void
.end method

.method public static synthetic r(Lcom/narvii/wallet/optinads/OptinAdsManageFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/wallet/optinads/OptinAdsManageFragment;->lambda$onViewCreated$5(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic s(Lcom/narvii/wallet/optinads/OptinAdsManageFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/wallet/optinads/OptinAdsManageFragment;->lambda$onViewCreated$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic t(Lcom/narvii/wallet/optinads/OptinAdsManageFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/wallet/optinads/OptinAdsManageFragment;->lambda$onViewCreated$3(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "manage_ads"

    return-object v0
.end method

.method public initNVTheme()I
    .locals 1

    .line 1
    .line 2
    const-string v0, "darkTheme"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    const/4 v0, 0x2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x1

    .line 12
    :goto_0
    return v0
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/wallet/optinads/OptinAdsManageFragment;->sendOptinAdsRequest()V

    .line 7
    .line 8
    .line 9
    const p1, 0x7f12009b

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 13
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d07a9

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/wallet/optinads/OptinAdsManageFragment;->view:Landroid/view/View;

    .line 6
    .line 7
    .line 8
    const p2, 0x7f0a0a7d

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    check-cast p2, Landroid/widget/CheckBox;

    .line 15
    .line 16
    new-instance v0, Lcom/narvii/wallet/optinads/a;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/narvii/wallet/optinads/a;-><init>(Lcom/narvii/wallet/optinads/OptinAdsManageFragment;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 23
    .line 24
    .line 25
    const p2, 0x7f0a04ad

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    check-cast p1, Landroid/widget/CheckBox;

    .line 32
    .line 33
    new-instance p2, Lcom/narvii/wallet/optinads/b;

    .line 34
    .line 35
    .line 36
    invoke-direct {p2, p0}, Lcom/narvii/wallet/optinads/b;-><init>(Lcom/narvii/wallet/optinads/OptinAdsManageFragment;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/narvii/wallet/optinads/OptinAdsManageFragment;->update()V

    .line 43
    return-void
.end method

.method sendOptinAdsRequest()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-string v1, "/wallet/setting/ads"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/narvii/util/Utils;->getTimeZoneInMin()I

    .line 18
    move-result v1

    .line 19
    .line 20
    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    const-string/jumbo v2, "timezone"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    const-string v1, "api"

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 42
    .line 43
    new-instance v2, Lcom/narvii/wallet/optinads/OptinAdsManageFragment$1;

    .line 44
    .line 45
    const-class v3, Lcom/narvii/wallet/optinads/OptinAdsResponse;

    .line 46
    .line 47
    .line 48
    invoke-direct {v2, p0, v3}, Lcom/narvii/wallet/optinads/OptinAdsManageFragment$1;-><init>(Lcom/narvii/wallet/optinads/OptinAdsManageFragment;Ljava/lang/Class;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 52
    return-void
.end method

.method update()V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/optinads/OptinAdsManageFragment;->view:Landroid/view/View;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/narvii/wallet/optinads/OptinAdsManageFragment;->checkUpdating:Z

    .line 9
    .line 10
    const-string v1, "account"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    check-cast v1, Lcom/narvii/account/AccountService;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->optinAdsLevel()I

    .line 20
    move-result v1

    .line 21
    .line 22
    iget-object v2, p0, Lcom/narvii/wallet/optinads/OptinAdsManageFragment;->view:Landroid/view/View;

    .line 23
    .line 24
    .line 25
    const v3, 0x7f0a0a7d

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    check-cast v2, Landroid/widget/CheckBox;

    .line 32
    const/4 v3, 0x0

    .line 33
    .line 34
    if-lez v1, :cond_1

    .line 35
    move v4, v0

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move v4, v3

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-virtual {v2, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 41
    .line 42
    iget-object v2, p0, Lcom/narvii/wallet/optinads/OptinAdsManageFragment;->view:Landroid/view/View;

    .line 43
    .line 44
    .line 45
    const v4, 0x7f0a04ab

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    move-result-object v2

    .line 50
    .line 51
    if-nez v1, :cond_2

    .line 52
    .line 53
    const/16 v4, 0x8

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    move v4, v3

    .line 56
    .line 57
    .line 58
    :goto_1
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .line 60
    iget-object v2, p0, Lcom/narvii/wallet/optinads/OptinAdsManageFragment;->view:Landroid/view/View;

    .line 61
    .line 62
    .line 63
    const v4, 0x7f0a04ad

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    move-result-object v2

    .line 68
    .line 69
    check-cast v2, Landroid/widget/CheckBox;

    .line 70
    const/4 v4, 0x2

    .line 71
    .line 72
    if-ne v1, v4, :cond_3

    .line 73
    goto :goto_2

    .line 74
    :cond_3
    move v0, v3

    .line 75
    .line 76
    .line 77
    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 78
    .line 79
    iput-boolean v3, p0, Lcom/narvii/wallet/optinads/OptinAdsManageFragment;->checkUpdating:Z

    .line 80
    .line 81
    iget-object v0, p0, Lcom/narvii/wallet/optinads/OptinAdsManageFragment;->optinAdsResponse:Lcom/narvii/wallet/optinads/OptinAdsResponse;

    .line 82
    .line 83
    .line 84
    const v1, 0x7f0a0a7b

    .line 85
    .line 86
    .line 87
    const v2, 0x7f0a0a7c

    .line 88
    .line 89
    if-nez v0, :cond_4

    .line 90
    .line 91
    iget-object v0, p0, Lcom/narvii/wallet/optinads/OptinAdsManageFragment;->view:Landroid/view/View;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 95
    move-result-object v0

    .line 96
    .line 97
    check-cast v0, Landroid/widget/TextView;

    .line 98
    .line 99
    const-string v2, ""

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    .line 104
    iget-object v0, p0, Lcom/narvii/wallet/optinads/OptinAdsManageFragment;->view:Landroid/view/View;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 108
    move-result-object v0

    .line 109
    .line 110
    check-cast v0, Landroid/widget/TextView;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    goto :goto_5

    .line 115
    .line 116
    :cond_4
    iget-object v0, v0, Lcom/narvii/wallet/optinads/OptinAdsResponse;->coinsEarnedByAds:Lcom/narvii/wallet/optinads/OptinAdsHistory;

    .line 117
    .line 118
    iget-object v3, p0, Lcom/narvii/wallet/optinads/OptinAdsManageFragment;->view:Landroid/view/View;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 122
    move-result-object v2

    .line 123
    .line 124
    check-cast v2, Landroid/widget/TextView;

    .line 125
    const/4 v3, 0x0

    .line 126
    .line 127
    if-nez v0, :cond_5

    .line 128
    move-object v4, v3

    .line 129
    goto :goto_3

    .line 130
    .line 131
    :cond_5
    iget-object v4, p0, Lcom/narvii/wallet/optinads/OptinAdsManageFragment;->dfmt:Ljava/text/DecimalFormat;

    .line 132
    .line 133
    iget-wide v5, v0, Lcom/narvii/wallet/optinads/OptinAdsHistory;->weekly:D

    .line 134
    .line 135
    .line 136
    invoke-virtual {v4, v5, v6}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 137
    move-result-object v4

    .line 138
    .line 139
    .line 140
    :goto_3
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    .line 142
    iget-object v2, p0, Lcom/narvii/wallet/optinads/OptinAdsManageFragment;->view:Landroid/view/View;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 146
    move-result-object v1

    .line 147
    .line 148
    check-cast v1, Landroid/widget/TextView;

    .line 149
    .line 150
    if-nez v0, :cond_6

    .line 151
    goto :goto_4

    .line 152
    .line 153
    :cond_6
    iget-object v2, p0, Lcom/narvii/wallet/optinads/OptinAdsManageFragment;->dfmt:Ljava/text/DecimalFormat;

    .line 154
    .line 155
    iget-wide v3, v0, Lcom/narvii/wallet/optinads/OptinAdsHistory;->total:D

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 159
    move-result-object v3

    .line 160
    .line 161
    .line 162
    :goto_4
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    .line 164
    .line 165
    :goto_5
    invoke-static {p0}, Lcom/narvii/wallet/optinads/OptinAds;->sendAdLevelUserProperty(Lcom/narvii/app/NVContext;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0}, Lcom/narvii/app/theme/NVThemeFragment;->showBottomAdsViewIfOptinAds()V

    .line 169
    return-void
.end method
