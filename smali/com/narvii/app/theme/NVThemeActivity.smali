.class public abstract Lcom/narvii/app/theme/NVThemeActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "NVThemeActivity.kt"

# interfaces
.implements Lcom/narvii/app/theme/NVThemeOwner;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final nvTheme:Lcom/narvii/app/theme/NVTheme;

.field private waitNotifyThemeChange:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 10
    new-instance v0, Lcom/narvii/app/theme/NVTheme;

    invoke-direct {v0}, Lcom/narvii/app/theme/NVTheme;-><init>()V

    iput-object v0, p0, Lcom/narvii/app/theme/NVThemeActivity;->nvTheme:Lcom/narvii/app/theme/NVTheme;

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/app/theme/NVThemeActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/app/theme/NVThemeActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/app/theme/NVThemeActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/app/theme/NVThemeActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/app/theme/NVThemeActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public getNVTheme()Lcom/narvii/app/theme/NVTheme;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/narvii/app/theme/NVThemeActivity;->nvTheme:Lcom/narvii/app/theme/NVTheme;

    return-object v0
.end method

.method public initNVTheme()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isDarkNVTheme()Z
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/narvii/app/theme/NVThemeActivity;->nvTheme:Lcom/narvii/app/theme/NVTheme;

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

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 14
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    iget-object p1, p0, Lcom/narvii/app/theme/NVThemeActivity;->nvTheme:Lcom/narvii/app/theme/NVTheme;

    invoke-virtual {p1}, Lcom/narvii/app/theme/NVTheme;->getThemeValue()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/narvii/app/theme/NVThemeActivity;->initNVTheme()I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/narvii/app/theme/NVThemeActivity;->nvTheme:Lcom/narvii/app/theme/NVTheme;

    invoke-virtual {p1}, Lcom/narvii/app/theme/NVTheme;->getThemeValue()I

    move-result p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/narvii/app/theme/NVThemeActivity;->setNVThemeValue(I)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/narvii/app/theme/NVThemeActivity;->nvTheme:Lcom/narvii/app/theme/NVTheme;

    invoke-virtual {v0}, Lcom/narvii/app/theme/NVTheme;->removeAllObserver()V

    .line 28
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 19
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 20
    iget-boolean v0, p0, Lcom/narvii/app/theme/NVThemeActivity;->waitNotifyThemeChange:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/narvii/app/theme/NVThemeActivity;->waitNotifyThemeChange:Z

    .line 22
    iget-object v0, p0, Lcom/narvii/app/theme/NVThemeActivity;->nvTheme:Lcom/narvii/app/theme/NVTheme;

    invoke-virtual {v0}, Lcom/narvii/app/theme/NVTheme;->getThemeValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/narvii/app/theme/NVThemeActivity;->onThemeChange(I)V

    :cond_0
    return-void
.end method

.method public onThemeChange(I)V
    .locals 0

    return-void
.end method

.method public setContentView(I)V
    .locals 3

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 33
    sget-object p1, Lcom/narvii/app/theme/NVTheme;->Companion:Lcom/narvii/app/theme/NVTheme$Companion;

    invoke-virtual {p0}, Lcom/narvii/app/theme/NVThemeActivity;->getNVTheme()Lcom/narvii/app/theme/NVTheme;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string/jumbo v2, "window.decorView.findVie\u2026ew>(android.R.id.content)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcom/narvii/app/theme/NVTheme$Companion;->bindNVThemeView(Lcom/narvii/app/theme/NVTheme;Landroid/view/View;)V

    return-void
.end method

.method public final setDarkNVTheme(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 50
    :goto_0
    invoke-virtual {p0, p1}, Lcom/narvii/app/theme/NVThemeActivity;->setNVThemeValue(I)V

    return-void
.end method

.method public setNVThemeValue(I)V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/narvii/app/theme/NVThemeActivity;->nvTheme:Lcom/narvii/app/theme/NVTheme;

    invoke-virtual {v0, p1}, Lcom/narvii/app/theme/NVTheme;->setThemeValue(I)V

    .line 42
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/arch/lifecycle/Lifecycle;->getCurrentState()Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$State;->STARTED:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/Lifecycle$State;->isAtLeast(Landroid/arch/lifecycle/Lifecycle$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0, p1}, Lcom/narvii/app/theme/NVThemeActivity;->onThemeChange(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 45
    iput-boolean p1, p0, Lcom/narvii/app/theme/NVThemeActivity;->waitNotifyThemeChange:Z

    :goto_0
    return-void
.end method
