.class public final Lcom/narvii/ad/MediaLabInterstitials;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/narvii/ad/MediaLabInterstitials;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "MediaLabInterstitials"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static initialized:Z

.field private static mediaLabInterstitial:Lai/medialab/medialabads2/interstitials/MediaLabInterstitial;

.field private static onInterstitialDismiss:Le8/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/a<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/narvii/ad/MediaLabInterstitials;

    invoke-direct {v0}, Lcom/narvii/ad/MediaLabInterstitials;-><init>()V

    sput-object v0, Lcom/narvii/ad/MediaLabInterstitials;->INSTANCE:Lcom/narvii/ad/MediaLabInterstitials;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static final synthetic access$getMediaLabInterstitial$p()Lai/medialab/medialabads2/interstitials/MediaLabInterstitial;
    .locals 1

    sget-object v0, Lcom/narvii/ad/MediaLabInterstitials;->mediaLabInterstitial:Lai/medialab/medialabads2/interstitials/MediaLabInterstitial;

    return-object v0
.end method

.method public static final synthetic access$getOnInterstitialDismiss$p()Le8/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/narvii/ad/MediaLabInterstitials;->onInterstitialDismiss:Le8/a;

    return-object v0
.end method

.method public static final synthetic access$setOnInterstitialDismiss$p(Le8/a;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/narvii/ad/MediaLabInterstitials;->onInterstitialDismiss:Le8/a;

    return-void
.end method


# virtual methods
.method public final initialize(Landroid/app/Activity;)V
    .locals 7
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "activity"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "MediaLabInterstitials"

    .line 8
    .line 9
    const-string v1, "initialize"

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    const/4 v0, 0x1

    .line 14
    .line 15
    sput-boolean v0, Lcom/narvii/ad/MediaLabInterstitials;->initialized:Z

    .line 16
    .line 17
    new-instance v1, Lai/medialab/medialabads2/interstitials/MediaLabInterstitial;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1}, Lai/medialab/medialabads2/interstitials/MediaLabInterstitial;-><init>()V

    .line 21
    .line 22
    sput-object v1, Lcom/narvii/ad/MediaLabInterstitials;->mediaLabInterstitial:Lai/medialab/medialabads2/interstitials/MediaLabInterstitial;

    .line 23
    .line 24
    new-instance v3, Lcom/narvii/ad/MediaLabInterstitials$initialize$1;

    .line 25
    .line 26
    .line 27
    invoke-direct {v3}, Lcom/narvii/ad/MediaLabInterstitials$initialize$1;-><init>()V

    .line 28
    const/4 v4, 0x0

    .line 29
    const/4 v5, 0x4

    .line 30
    const/4 v6, 0x0

    .line 31
    move-object v2, p1

    .line 32
    .line 33
    .line 34
    invoke-static/range {v1 .. v6}, Lai/medialab/medialabads2/interstitials/MediaLabInterstitial;->initialize$default(Lai/medialab/medialabads2/interstitials/MediaLabInterstitial;Landroid/app/Activity;Lai/medialab/medialabads2/interstitials/MediaLabInterstitial$InterstitialListener;Ljava/lang/String;ILjava/lang/Object;)V

    .line 35
    .line 36
    sget-object p1, Lai/medialab/medialabads2/MediaLabAds;->Companion:Lai/medialab/medialabads2/MediaLabAds$Companion;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lai/medialab/medialabads2/MediaLabAds$Companion;->getInstance()Lai/medialab/medialabads2/MediaLabAds;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    new-instance v0, Lcom/narvii/ad/MediaLabInterstitials$initialize$2;

    .line 43
    .line 44
    .line 45
    invoke-direct {v0}, Lcom/narvii/ad/MediaLabInterstitials$initialize$2;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0}, Lai/medialab/medialabads2/MediaLabAds;->addSdkInitListener(Lai/medialab/medialabads2/SdkInitListener;)V

    .line 49
    return-void
.end method

.method public final showAdWithDelayedAction(Ljava/lang/String;Le8/a;)Z
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Le8/a<",
            "Lw7/l0;",
            ">;)Z"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "trigger"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-boolean v0, Lcom/narvii/ad/MediaLabInterstitials;->initialized:Z

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-string p1, "MediaLabInterstitials"

    .line 13
    .line 14
    const-string p2, "Not initialized"

    .line 15
    .line 16
    .line 17
    invoke-static {p1, p2}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    goto :goto_1

    .line 19
    .line 20
    :cond_0
    sget-object v0, Lcom/narvii/ad/MediaLabInterstitials;->mediaLabInterstitial:Lai/medialab/medialabads2/interstitials/MediaLabInterstitial;

    .line 21
    const/4 v2, 0x0

    .line 22
    .line 23
    const-string v3, "mediaLabInterstitial"

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 29
    move-object v0, v2

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-virtual {v0, p1}, Lai/medialab/medialabads2/interstitials/MediaLabInterstitial;->showAd(Ljava/lang/String;)Z

    .line 33
    move-result p1

    .line 34
    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    sput-object p2, Lcom/narvii/ad/MediaLabInterstitials;->onInterstitialDismiss:Le8/a;

    .line 38
    const/4 v1, 0x1

    .line 39
    goto :goto_1

    .line 40
    .line 41
    :cond_2
    sget-object p1, Lcom/narvii/ad/MediaLabInterstitials;->mediaLabInterstitial:Lai/medialab/medialabads2/interstitials/MediaLabInterstitial;

    .line 42
    .line 43
    if-nez p1, :cond_3

    .line 44
    .line 45
    .line 46
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 47
    goto :goto_0

    .line 48
    :cond_3
    move-object v2, p1

    .line 49
    .line 50
    .line 51
    :goto_0
    invoke-virtual {v2}, Lai/medialab/medialabads2/interstitials/MediaLabInterstitial;->loadAd()V

    .line 52
    :goto_1
    return v1
.end method
