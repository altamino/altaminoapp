.class public abstract Lcom/narvii/app/theme/NVThemeFragment;
.super Landroid/support/v4/app/Fragment;
.source "NVThemeFragment.kt"

# interfaces
.implements Lcom/narvii/app/theme/NVThemeOwner;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final nvTheme:Lcom/narvii/app/theme/NVTheme;

.field private nvThemeObserver:Lcom/narvii/app/theme/NVThemeObserver;

.field private waitNotifyThemeChange:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 12
    new-instance v0, Lcom/narvii/app/theme/NVTheme;

    invoke-direct {v0}, Lcom/narvii/app/theme/NVTheme;-><init>()V

    iput-object v0, p0, Lcom/narvii/app/theme/NVThemeFragment;->nvTheme:Lcom/narvii/app/theme/NVTheme;

    return-void
.end method

.method public static final synthetic access$setNVThemeDirect(Lcom/narvii/app/theme/NVThemeFragment;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/narvii/app/theme/NVThemeFragment;->setNVThemeDirect(I)V

    return-void
.end method

.method public static synthetic setDarkNVTheme$default(Lcom/narvii/app/theme/NVThemeFragment;ZZILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 76
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/theme/NVThemeFragment;->setDarkNVTheme(ZZ)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: setDarkNVTheme"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final setNVThemeDirect(I)V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/narvii/app/theme/NVThemeFragment;->nvTheme:Lcom/narvii/app/theme/NVTheme;

    invoke-virtual {v0, p1}, Lcom/narvii/app/theme/NVTheme;->setThemeValue(I)V

    .line 82
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/arch/lifecycle/Lifecycle;->getCurrentState()Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$State;->STARTED:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/Lifecycle$State;->isAtLeast(Landroid/arch/lifecycle/Lifecycle$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0, p1}, Lcom/narvii/app/theme/NVThemeFragment;->onThemeChange(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 85
    iput-boolean p1, p0, Lcom/narvii/app/theme/NVThemeFragment;->waitNotifyThemeChange:Z

    :goto_0
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/app/theme/NVThemeFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/app/theme/NVThemeFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/app/theme/NVThemeFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/app/theme/NVThemeFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/app/theme/NVThemeFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public getNVTheme()Lcom/narvii/app/theme/NVTheme;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/narvii/app/theme/NVThemeFragment;->nvTheme:Lcom/narvii/app/theme/NVTheme;

    return-object v0
.end method

.method public initNVTheme()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isDarkNVTheme()Z
    .locals 2

    .line 100
    invoke-virtual {p0}, Lcom/narvii/app/theme/NVThemeFragment;->getNVTheme()Lcom/narvii/app/theme/NVTheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/app/theme/NVTheme;->getThemeValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 17
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 18
    invoke-virtual {p0}, Lcom/narvii/app/theme/NVThemeFragment;->useParentNVTheme()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/app/theme/NVThemeOwner;

    if-eqz p1, :cond_3

    .line 19
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Lcom/narvii/app/theme/NVThemeOwner;

    .line 20
    iget-object v0, p0, Lcom/narvii/app/theme/NVThemeFragment;->nvThemeObserver:Lcom/narvii/app/theme/NVThemeObserver;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/narvii/app/theme/NVThemeFragment$onAttach$1;

    invoke-direct {v0, p0}, Lcom/narvii/app/theme/NVThemeFragment$onAttach$1;-><init>(Lcom/narvii/app/theme/NVThemeFragment;)V

    iput-object v0, p0, Lcom/narvii/app/theme/NVThemeFragment;->nvThemeObserver:Lcom/narvii/app/theme/NVThemeObserver;

    .line 27
    :cond_0
    invoke-interface {p1}, Lcom/narvii/app/theme/NVThemeOwner;->getNVTheme()Lcom/narvii/app/theme/NVTheme;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/app/theme/NVThemeFragment;->nvThemeObserver:Lcom/narvii/app/theme/NVThemeObserver;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/narvii/app/theme/NVTheme;->addObserver(Lcom/narvii/app/theme/NVThemeObserver;)V

    .line 28
    invoke-interface {p1}, Lcom/narvii/app/theme/NVThemeOwner;->getNVTheme()Lcom/narvii/app/theme/NVTheme;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/app/theme/NVTheme;->getThemeValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/narvii/app/theme/NVThemeFragment;->setNVThemeDirect(I)V

    goto :goto_1

    .line 27
    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1

    .line 19
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.narvii.app.theme.NVThemeOwner"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_3
    iget-object p1, p0, Lcom/narvii/app/theme/NVThemeFragment;->nvTheme:Lcom/narvii/app/theme/NVTheme;

    invoke-virtual {p1}, Lcom/narvii/app/theme/NVTheme;->getThemeValue()I

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/narvii/app/theme/NVThemeFragment;->initNVTheme()I

    move-result p1

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/narvii/app/theme/NVThemeFragment;->nvTheme:Lcom/narvii/app/theme/NVTheme;

    invoke-virtual {p1}, Lcom/narvii/app/theme/NVTheme;->getThemeValue()I

    move-result p1

    :goto_0
    invoke-direct {p0, p1}, Lcom/narvii/app/theme/NVThemeFragment;->setNVThemeDirect(I)V

    :goto_1
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/narvii/app/theme/NVThemeFragment;->nvTheme:Lcom/narvii/app/theme/NVTheme;

    invoke-virtual {v0}, Lcom/narvii/app/theme/NVTheme;->removeAllObserver()V

    .line 49
    iget-object v0, p0, Lcom/narvii/app/theme/NVThemeFragment;->nvTheme:Lcom/narvii/app/theme/NVTheme;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/app/theme/NVTheme;->setThemeValue(I)V

    .line 50
    invoke-virtual {p0}, Lcom/narvii/app/theme/NVThemeFragment;->useParentNVTheme()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/app/theme/NVThemeOwner;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/app/theme/NVThemeFragment;->nvThemeObserver:Lcom/narvii/app/theme/NVThemeObserver;

    if-eqz v0, :cond_2

    .line 51
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lcom/narvii/app/theme/NVThemeOwner;

    .line 52
    invoke-interface {v0}, Lcom/narvii/app/theme/NVThemeOwner;->getNVTheme()Lcom/narvii/app/theme/NVTheme;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/app/theme/NVThemeFragment;->nvThemeObserver:Lcom/narvii/app/theme/NVThemeObserver;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/narvii/app/theme/NVTheme;->removeObserver(Lcom/narvii/app/theme/NVThemeObserver;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 v0, 0x0

    throw v0

    .line 51
    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.narvii.app.theme.NVThemeOwner"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_2
    :goto_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 55
    invoke-virtual {p0}, Lcom/narvii/app/theme/NVThemeFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 40
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 41
    iget-boolean v0, p0, Lcom/narvii/app/theme/NVThemeFragment;->waitNotifyThemeChange:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/narvii/app/theme/NVThemeFragment;->waitNotifyThemeChange:Z

    .line 43
    iget-object v0, p0, Lcom/narvii/app/theme/NVThemeFragment;->nvTheme:Lcom/narvii/app/theme/NVTheme;

    invoke-virtual {v0}, Lcom/narvii/app/theme/NVTheme;->getThemeValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/narvii/app/theme/NVThemeFragment;->onThemeChange(I)V

    :cond_0
    return-void
.end method

.method public onThemeChange(I)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 36
    sget-object p2, Lcom/narvii/app/theme/NVTheme;->Companion:Lcom/narvii/app/theme/NVTheme$Companion;

    invoke-virtual {p0}, Lcom/narvii/app/theme/NVThemeFragment;->getNVTheme()Lcom/narvii/app/theme/NVTheme;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/narvii/app/theme/NVTheme$Companion;->bindNVThemeView(Lcom/narvii/app/theme/NVTheme;Landroid/view/View;)V

    return-void
.end method

.method public final setDarkNVTheme(Z)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/narvii/app/theme/NVThemeFragment;->setDarkNVTheme$default(Lcom/narvii/app/theme/NVThemeFragment;ZZILjava/lang/Object;)V

    return-void
.end method

.method public final setDarkNVTheme(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 77
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/theme/NVThemeFragment;->setNVThemeValue(IZ)V

    return-void
.end method

.method public setNVThemeValue(I)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/theme/NVThemeFragment;->setNVThemeValue(IZ)V

    return-void
.end method

.method public final setNVThemeValue(IZ)V
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/narvii/app/theme/NVThemeFragment;->useParentNVTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/app/theme/NVThemeOwner;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    .line 69
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    instance-of p2, p2, Lcom/narvii/app/theme/NVThemeOwner;

    if-eqz p2, :cond_2

    .line 70
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_1

    check-cast p2, Lcom/narvii/app/theme/NVThemeOwner;

    .line 71
    invoke-interface {p2, p1}, Lcom/narvii/app/theme/NVThemeOwner;->setNVThemeValue(I)V

    goto :goto_0

    .line 70
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.narvii.app.theme.NVThemeOwner"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/narvii/app/theme/NVThemeFragment;->setNVThemeDirect(I)V

    return-void
.end method

.method public useParentNVTheme()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
