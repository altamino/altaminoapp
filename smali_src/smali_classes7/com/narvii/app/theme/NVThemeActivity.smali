.class public abstract Lcom/narvii/app/theme/NVThemeActivity;
.super Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/app/theme/NVThemeOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/app/theme/NVThemeActivity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/app/theme/NVThemeActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static wasAddLoaded:Z


# instance fields
.field private conversationScreen:Z

.field private final loaderListener:Lai/medialab/medialabads2/banners/BannerLoadListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final nvTheme:Lcom/narvii/app/theme/NVTheme;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private shouldInflateAd:Z

.field private waitNotifyThemeChange:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/app/theme/NVThemeActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/app/theme/NVThemeActivity$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/app/theme/NVThemeActivity;->Companion:Lcom/narvii/app/theme/NVThemeActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/app/theme/NVThemeActivity$loaderListener$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/app/theme/NVThemeActivity$loaderListener$1;-><init>(Lcom/narvii/app/theme/NVThemeActivity;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/app/theme/NVThemeActivity;->loaderListener:Lai/medialab/medialabads2/banners/BannerLoadListener;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/app/theme/NVTheme;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Lcom/narvii/app/theme/NVTheme;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/app/theme/NVThemeActivity;->nvTheme:Lcom/narvii/app/theme/NVTheme;

    .line 18
    return-void
.end method

.method public static final synthetic access$getMedialabAdView(Lcom/narvii/app/theme/NVThemeActivity;)Lai/medialab/medialabads2/banners/MediaLabSingletonBanner;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/theme/NVThemeActivity;->getMedialabAdView()Lai/medialab/medialabads2/banners/MediaLabSingletonBanner;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$setWasAddLoaded$cp(Z)V
    .locals 0

    sput-boolean p0, Lcom/narvii/app/theme/NVThemeActivity;->wasAddLoaded:Z

    return-void
.end method

.method private final getMedialabAdView()Lai/medialab/medialabads2/banners/MediaLabSingletonBanner;
    .locals 1

    .line 1
    .line 2
    sget v0, Lcom/narvii/lib/R$id;->media_lab_ad_view:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lai/medialab/medialabads2/banners/MediaLabSingletonBanner;

    .line 9
    return-object v0
.end method

.method private final setAdContentView(I)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/theme/NVThemeActivity;->provideAdsResourceId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-super {p0, v0}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    .line 8
    .line 9
    sget v0, Lcom/narvii/lib/R$id;->activity_content:I

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    check-cast v0, Landroid/widget/FrameLayout;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/narvii/app/theme/NVThemeActivity;->getMedialabAdView()Lai/medialab/medialabads2/banners/MediaLabSingletonBanner;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    if-nez p1, :cond_0

    .line 34
    return-void

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual {p1}, Lai/medialab/medialabads2/banners/MediaLabSharedBanner;->getAdaptiveHeightDp()F

    .line 38
    move-result v0

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 46
    move-result-object v1

    .line 47
    const/4 v2, 0x1

    .line 48
    .line 49
    .line 50
    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 51
    move-result v0

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 55
    move-result-object v1

    .line 56
    float-to-int v0, v0

    .line 57
    .line 58
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 59
    .line 60
    iget-object v0, p0, Lcom/narvii/app/theme/NVThemeActivity;->loaderListener:Lai/medialab/medialabads2/banners/BannerLoadListener;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v0}, Lai/medialab/medialabads2/banners/MediaLabSharedBanner;->setBannerLoadListener(Lai/medialab/medialabads2/banners/BannerLoadListener;)V

    .line 64
    const/4 v0, 0x0

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 68
    .line 69
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 70
    .line 71
    new-instance v1, Lcom/narvii/app/theme/NVThemeActivity$setAdContentView$1;

    .line 72
    .line 73
    .line 74
    invoke-direct {v1}, Lcom/narvii/app/theme/NVThemeActivity$setAdContentView$1;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v0}, Lai/medialab/medialabads2/banners/MediaLabSharedBanner;->setDeveloperInfoListener(Ljava/lang/ref/WeakReference;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/narvii/app/theme/NVThemeActivity;->showBottomAdsViewIfOptinAds()V

    .line 84
    return-void
.end method


# virtual methods
.method public final getConversationScreen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/app/theme/NVThemeActivity;->conversationScreen:Z

    return v0
.end method

.method public getNVTheme()Lcom/narvii/app/theme/NVTheme;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/app/theme/NVThemeActivity;->nvTheme:Lcom/narvii/app/theme/NVTheme;

    return-object v0
.end method

.method public final getShouldInflateAd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/app/theme/NVThemeActivity;->shouldInflateAd:Z

    return v0
.end method

.method public final hideBottomAdsView()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/theme/NVThemeActivity;->getMedialabAdView()Lai/medialab/medialabads2/banners/MediaLabSingletonBanner;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lai/medialab/medialabads2/banners/MediaLabSharedBanner;->pause()V

    .line 15
    :cond_0
    return-void
.end method

.method public initNVTheme()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final isBottomAdsViewVisible()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/theme/NVThemeActivity;->getMedialabAdView()Lai/medialab/medialabads2/banners/MediaLabSingletonBanner;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 11
    move-result v0

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    const/4 v1, 0x1

    .line 15
    :cond_0
    return v1
.end method

.method public isDarkNVTheme()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/theme/NVThemeActivity;->nvTheme:Lcom/narvii/app/theme/NVTheme;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/app/theme/NVTheme;->getThemeValue()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/app/theme/NVThemeActivity;->nvTheme:Lcom/narvii/app/theme/NVTheme;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/app/theme/NVTheme;->getThemeValue()I

    .line 9
    move-result p1

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/app/theme/NVThemeActivity;->initNVTheme()I

    .line 15
    move-result p1

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    iget-object p1, p0, Lcom/narvii/app/theme/NVThemeActivity;->nvTheme:Lcom/narvii/app/theme/NVTheme;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/narvii/app/theme/NVTheme;->getThemeValue()I

    .line 22
    move-result p1

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-virtual {p0, p1}, Lcom/narvii/app/theme/NVThemeActivity;->setNVThemeValue(I)V

    .line 26
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/theme/NVThemeActivity;->nvTheme:Lcom/narvii/app/theme/NVTheme;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/app/theme/NVTheme;->removeAllObserver()V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 9
    return-void
.end method

.method protected onResume()V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/app/theme/NVThemeActivity;->showBottomAdsViewIfOptinAds()V

    .line 7
    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/narvii/app/theme/NVThemeActivity;->waitNotifyThemeChange:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/narvii/app/theme/NVThemeActivity;->waitNotifyThemeChange:Z

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/app/theme/NVThemeActivity;->nvTheme:Lcom/narvii/app/theme/NVTheme;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/app/theme/NVTheme;->getThemeValue()I

    .line 16
    move-result v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/narvii/app/theme/NVThemeActivity;->onThemeChange(I)V

    .line 20
    :cond_0
    return-void
.end method

.method public onThemeChange(I)V
    .locals 0

    return-void
.end method

.method public provideAdsResourceId()I
    .locals 1
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation

    sget v0, Lcom/narvii/lib/R$layout;->activity_base_medialab_banner:I

    return v0
.end method

.method public setContentView(I)V
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/app/theme/NVThemeActivity;->shouldInflateAd:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/narvii/app/theme/NVThemeActivity;->setAdContentView(I)V

    .line 8
    goto :goto_0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    .line 12
    .line 13
    :goto_0
    sget-object p1, Lcom/narvii/app/theme/NVTheme;->Companion:Lcom/narvii/app/theme/NVTheme$Companion;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/app/theme/NVThemeActivity;->getNVTheme()Lcom/narvii/app/theme/NVTheme;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    iget-boolean v2, p0, Lcom/narvii/app/theme/NVThemeActivity;->shouldInflateAd:Z

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    sget v2, Lcom/narvii/lib/R$id;->activity_content:I

    .line 32
    goto :goto_1

    .line 33
    .line 34
    .line 35
    :cond_1
    const v2, 0x1020002

    .line 36
    .line 37
    .line 38
    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    const-string v2, "findViewById(...)"

    .line 42
    .line 43
    .line 44
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0, v1}, Lcom/narvii/app/theme/NVTheme$Companion;->bindNVThemeView(Lcom/narvii/app/theme/NVTheme;Landroid/view/View;)V

    .line 48
    return-void
.end method

.method public final setConversationScreen(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/app/theme/NVThemeActivity;->conversationScreen:Z

    return-void
.end method

.method public final setDarkNVTheme(Z)V
    .locals 0

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    const/4 p1, 0x2

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p1, 0x1

    .line 6
    .line 7
    .line 8
    :goto_0
    invoke-virtual {p0, p1}, Lcom/narvii/app/theme/NVThemeActivity;->setNVThemeValue(I)V

    .line 9
    return-void
.end method

.method public setNVThemeValue(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/theme/NVThemeActivity;->nvTheme:Lcom/narvii/app/theme/NVTheme;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/app/theme/NVTheme;->setThemeValue(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

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
    invoke-virtual {p0, p1}, Lcom/narvii/app/theme/NVThemeActivity;->onThemeChange(I)V

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p1, 0x1

    .line 27
    .line 28
    iput-boolean p1, p0, Lcom/narvii/app/theme/NVThemeActivity;->waitNotifyThemeChange:Z

    .line 29
    :goto_0
    return-void
.end method

.method public final setScreenName(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p0, p1, p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setCurrentScreen(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    const-string v0, "null cannot be cast to non-null type com.narvii.app.NVContext"

    .line 10
    .line 11
    .line 12
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    move-object v0, p0

    .line 14
    .line 15
    check-cast v0, Lcom/narvii/app/NVContext;

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lcom/narvii/wallet/optinads/OptinAds;->adsInitAllowed(Lcom/narvii/app/NVContext;)Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    .line 24
    :try_start_0
    invoke-direct {p0}, Lcom/narvii/app/theme/NVThemeActivity;->getMedialabAdView()Lai/medialab/medialabads2/banners/MediaLabSingletonBanner;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    const-string v1, "screen"

    .line 30
    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    .line 34
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 35
    move-result v2

    .line 36
    .line 37
    if-nez v2, :cond_1

    .line 38
    .line 39
    :cond_0
    const-string p1, "other"

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-virtual {v0, v1, p1}, Lai/medialab/medialabads2/banners/MediaLabSharedBanner;->addCustomTargetingValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :catch_0
    :cond_2
    return-void
.end method

.method public final setShouldInflateAd(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/app/theme/NVThemeActivity;->shouldInflateAd:Z

    return-void
.end method

.method public final showBottomAdsViewIfOptinAds()V
    .locals 3

    .line 1
    .line 2
    sget-boolean v0, Lcom/narvii/app/theme/NVThemeActivity;->wasAddLoaded:Z

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/narvii/app/theme/NVThemeActivity;->getMedialabAdView()Lai/medialab/medialabads2/banners/MediaLabSingletonBanner;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    :cond_1
    :goto_0
    const-string v0, "null cannot be cast to non-null type com.narvii.app.NVContext"

    .line 18
    .line 19
    .line 20
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    move-object v0, p0

    .line 22
    .line 23
    check-cast v0, Lcom/narvii/app/NVContext;

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lcom/narvii/wallet/optinads/OptinAds;->adsInitAllowed(Lcom/narvii/app/NVContext;)Z

    .line 27
    move-result v0

    .line 28
    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Lcom/narvii/app/theme/NVThemeActivity;->getMedialabAdView()Lai/medialab/medialabads2/banners/MediaLabSingletonBanner;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    if-eqz v0, :cond_4

    .line 36
    .line 37
    iget-boolean v1, p0, Lcom/narvii/app/theme/NVThemeActivity;->conversationScreen:Z

    .line 38
    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    const-string v1, "conversation"

    .line 42
    goto :goto_1

    .line 43
    .line 44
    :cond_2
    const-string v1, "other"

    .line 45
    .line 46
    :goto_1
    const-string v2, "screen"

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v2, v1}, Lai/medialab/medialabads2/banners/MediaLabSharedBanner;->addCustomTargetingValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    goto :goto_2

    .line 51
    .line 52
    .line 53
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/app/theme/NVThemeActivity;->hideBottomAdsView()V

    .line 54
    :cond_4
    :goto_2
    return-void
.end method
