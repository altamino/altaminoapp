.class public abstract Lcom/narvii/app/theme/NVThemeFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/app/theme/NVThemeOwner;


# instance fields
.field private final nvTheme:Lcom/narvii/app/theme/NVTheme;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private nvThemeObserver:Lcom/narvii/app/theme/NVThemeObserver;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private waitNotifyThemeChange:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/app/theme/NVTheme;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lcom/narvii/app/theme/NVTheme;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/app/theme/NVThemeFragment;->nvTheme:Lcom/narvii/app/theme/NVTheme;

    .line 11
    return-void
.end method

.method public static final synthetic access$setNVThemeDirect(Lcom/narvii/app/theme/NVThemeFragment;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/app/theme/NVThemeFragment;->setNVThemeDirect(I)V

    .line 4
    return-void
.end method

.method public static synthetic setDarkNVTheme$default(Lcom/narvii/app/theme/NVThemeFragment;ZZILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    if-nez p4, :cond_1

    .line 3
    .line 4
    and-int/lit8 p3, p3, 0x2

    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    const/4 p2, 0x0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/theme/NVThemeFragment;->setDarkNVTheme(ZZ)V

    .line 11
    return-void

    .line 12
    .line 13
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 14
    .line 15
    const-string p1, "Super calls with default arguments not supported in this target, function: setDarkNVTheme"

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 19
    throw p0
.end method

.method private final setNVThemeDirect(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/theme/NVThemeFragment;->nvTheme:Lcom/narvii/app/theme/NVTheme;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/app/theme/NVTheme;->setThemeValue(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle$State;->b(Landroidx/lifecycle/Lifecycle$State;)Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/narvii/app/theme/NVThemeFragment;->onThemeChange(I)V

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p1, 0x1

    .line 27
    .line 28
    iput-boolean p1, p0, Lcom/narvii/app/theme/NVThemeFragment;->waitNotifyThemeChange:Z

    .line 29
    :goto_0
    return-void
.end method


# virtual methods
.method public getNVTheme()Lcom/narvii/app/theme/NVTheme;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/app/theme/NVThemeFragment;->nvTheme:Lcom/narvii/app/theme/NVTheme;

    return-object v0
.end method

.method protected hideBottomAdsView()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "null cannot be cast to non-null type com.narvii.app.theme.NVThemeActivity"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    check-cast v0, Lcom/narvii/app/theme/NVThemeActivity;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/app/theme/NVThemeActivity;->hideBottomAdsView()V

    .line 15
    return-void
.end method

.method public initNVTheme()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isDarkNVTheme()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/theme/NVThemeFragment;->getNVTheme()Lcom/narvii/app/theme/NVTheme;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/app/theme/NVTheme;->getThemeValue()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x2

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/app/theme/NVThemeFragment;->useParentNVTheme()Z

    .line 12
    move-result p1

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    instance-of p1, p1, Lcom/narvii/app/theme/NVThemeOwner;

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    const-string v0, "null cannot be cast to non-null type com.narvii.app.theme.NVThemeOwner"

    .line 29
    .line 30
    .line 31
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    check-cast p1, Lcom/narvii/app/theme/NVThemeOwner;

    .line 34
    .line 35
    iget-object v0, p0, Lcom/narvii/app/theme/NVThemeFragment;->nvThemeObserver:Lcom/narvii/app/theme/NVThemeObserver;

    .line 36
    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    new-instance v0, Lcom/narvii/app/theme/NVThemeFragment$onAttach$1;

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, p0}, Lcom/narvii/app/theme/NVThemeFragment$onAttach$1;-><init>(Lcom/narvii/app/theme/NVThemeFragment;)V

    .line 43
    .line 44
    iput-object v0, p0, Lcom/narvii/app/theme/NVThemeFragment;->nvThemeObserver:Lcom/narvii/app/theme/NVThemeObserver;

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-interface {p1}, Lcom/narvii/app/theme/NVThemeOwner;->getNVTheme()Lcom/narvii/app/theme/NVTheme;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    iget-object v1, p0, Lcom/narvii/app/theme/NVThemeFragment;->nvThemeObserver:Lcom/narvii/app/theme/NVThemeObserver;

    .line 51
    .line 52
    .line 53
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lcom/narvii/app/theme/NVTheme;->addObserver(Lcom/narvii/app/theme/NVThemeObserver;)V

    .line 57
    .line 58
    .line 59
    invoke-interface {p1}, Lcom/narvii/app/theme/NVThemeOwner;->getNVTheme()Lcom/narvii/app/theme/NVTheme;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/narvii/app/theme/NVTheme;->getThemeValue()I

    .line 64
    move-result p1

    .line 65
    .line 66
    .line 67
    invoke-direct {p0, p1}, Lcom/narvii/app/theme/NVThemeFragment;->setNVThemeDirect(I)V

    .line 68
    goto :goto_1

    .line 69
    .line 70
    :cond_1
    iget-object p1, p0, Lcom/narvii/app/theme/NVThemeFragment;->nvTheme:Lcom/narvii/app/theme/NVTheme;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/narvii/app/theme/NVTheme;->getThemeValue()I

    .line 74
    move-result p1

    .line 75
    .line 76
    if-nez p1, :cond_2

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/narvii/app/theme/NVThemeFragment;->initNVTheme()I

    .line 80
    move-result p1

    .line 81
    goto :goto_0

    .line 82
    .line 83
    :cond_2
    iget-object p1, p0, Lcom/narvii/app/theme/NVThemeFragment;->nvTheme:Lcom/narvii/app/theme/NVTheme;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/narvii/app/theme/NVTheme;->getThemeValue()I

    .line 87
    move-result p1

    .line 88
    .line 89
    .line 90
    :goto_0
    invoke-direct {p0, p1}, Lcom/narvii/app/theme/NVThemeFragment;->setNVThemeDirect(I)V

    .line 91
    :goto_1
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/theme/NVThemeFragment;->nvTheme:Lcom/narvii/app/theme/NVTheme;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/app/theme/NVTheme;->removeAllObserver()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/app/theme/NVThemeFragment;->nvTheme:Lcom/narvii/app/theme/NVTheme;

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/narvii/app/theme/NVTheme;->setThemeValue(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/app/theme/NVThemeFragment;->useParentNVTheme()Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    instance-of v0, v0, Lcom/narvii/app/theme/NVThemeOwner;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/app/theme/NVThemeFragment;->nvThemeObserver:Lcom/narvii/app/theme/NVThemeObserver;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    const-string v1, "null cannot be cast to non-null type com.narvii.app.theme.NVThemeOwner"

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    check-cast v0, Lcom/narvii/app/theme/NVThemeOwner;

    .line 41
    .line 42
    .line 43
    invoke-interface {v0}, Lcom/narvii/app/theme/NVThemeOwner;->getNVTheme()Lcom/narvii/app/theme/NVTheme;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    iget-object v1, p0, Lcom/narvii/app/theme/NVThemeFragment;->nvThemeObserver:Lcom/narvii/app/theme/NVThemeObserver;

    .line 47
    .line 48
    .line 49
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/narvii/app/theme/NVTheme;->removeObserver(Lcom/narvii/app/theme/NVThemeObserver;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 56
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/narvii/app/theme/NVThemeFragment;->waitNotifyThemeChange:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/narvii/app/theme/NVThemeFragment;->waitNotifyThemeChange:Z

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/app/theme/NVThemeFragment;->nvTheme:Lcom/narvii/app/theme/NVTheme;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/app/theme/NVTheme;->getThemeValue()I

    .line 16
    move-result v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/narvii/app/theme/NVThemeFragment;->onThemeChange(I)V

    .line 20
    :cond_0
    return-void
.end method

.method public onThemeChange(I)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "view"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 9
    .line 10
    sget-object p2, Lcom/narvii/app/theme/NVTheme;->Companion:Lcom/narvii/app/theme/NVTheme$Companion;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/app/theme/NVThemeFragment;->getNVTheme()Lcom/narvii/app/theme/NVTheme;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, v0, p1}, Lcom/narvii/app/theme/NVTheme$Companion;->bindNVThemeView(Lcom/narvii/app/theme/NVTheme;Landroid/view/View;)V

    .line 18
    return-void
.end method

.method public final setDarkNVTheme(Z)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/narvii/app/theme/NVThemeFragment;->setDarkNVTheme$default(Lcom/narvii/app/theme/NVThemeFragment;ZZILjava/lang/Object;)V

    return-void
.end method

.method public final setDarkNVTheme(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 2
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/theme/NVThemeFragment;->setNVThemeValue(IZ)V

    return-void
.end method

.method public setNVThemeValue(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/theme/NVThemeFragment;->setNVThemeValue(IZ)V

    return-void
.end method

.method public final setNVThemeValue(IZ)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/narvii/app/theme/NVThemeFragment;->useParentNVTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/app/theme/NVThemeOwner;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    instance-of p2, p2, Lcom/narvii/app/theme/NVThemeOwner;

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type com.narvii.app.theme.NVThemeOwner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/narvii/app/theme/NVThemeOwner;

    .line 5
    invoke-interface {p2, p1}, Lcom/narvii/app/theme/NVThemeOwner;->setNVThemeValue(I)V

    .line 6
    :cond_1
    invoke-direct {p0, p1}, Lcom/narvii/app/theme/NVThemeFragment;->setNVThemeDirect(I)V

    return-void
.end method

.method protected showBottomAdsViewIfOptinAds()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "null cannot be cast to non-null type com.narvii.app.theme.NVThemeActivity"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    check-cast v0, Lcom/narvii/app/theme/NVThemeActivity;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/app/theme/NVThemeActivity;->showBottomAdsViewIfOptinAds()V

    .line 15
    return-void
.end method

.method public useParentNVTheme()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
