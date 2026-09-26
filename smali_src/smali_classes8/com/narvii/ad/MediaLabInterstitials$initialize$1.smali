.class public final Lcom/narvii/ad/MediaLabInterstitials$initialize$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lai/medialab/medialabads2/interstitials/MediaLabInterstitial$InterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/ad/MediaLabInterstitials;->initialize(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public onAdDisplayFailed(I)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "onAdDisplayFailed << "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    const-string v0, "MediaLabInterstitials"

    .line 20
    .line 21
    .line 22
    invoke-static {v0, p1}, Lcom/narvii/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public onInterstitialClicked()V
    .locals 2

    .line 1
    .line 2
    const-string v0, "MediaLabInterstitials"

    .line 3
    .line 4
    const-string v1, "onInterstitialClicked"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method public onInterstitialDismissed()V
    .locals 2

    .line 1
    .line 2
    const-string v0, "MediaLabInterstitials"

    .line 3
    .line 4
    const-string v1, "onInterstitialDismissed"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/narvii/ad/MediaLabInterstitials;->access$getOnInterstitialDismiss$p()Le8/a;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Le8/a;->invoke()Ljava/lang/Object;

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lcom/narvii/ad/MediaLabInterstitials;->access$setOnInterstitialDismiss$p(Le8/a;)V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lcom/narvii/ad/MediaLabInterstitials;->access$getMediaLabInterstitial$p()Lai/medialab/medialabads2/interstitials/MediaLabInterstitial;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    const-string v1, "mediaLabInterstitial"

    .line 29
    .line 30
    .line 31
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move-object v0, v1

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-virtual {v0}, Lai/medialab/medialabads2/interstitials/MediaLabInterstitial;->loadAd()V

    .line 37
    return-void
.end method

.method public onInterstitialDisplayed()V
    .locals 2

    .line 1
    .line 2
    const-string v0, "MediaLabInterstitials"

    .line 3
    .line 4
    const-string v1, "onInterstitialDisplayed"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method public onLoadFailed(I)V
    .locals 1

    .line 1
    .line 2
    const-string p1, "MediaLabInterstitials"

    .line 3
    .line 4
    const-string v0, "onLoadFailed"

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/narvii/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method public onLoadSucceeded()V
    .locals 2

    .line 1
    .line 2
    const-string v0, "MediaLabInterstitials"

    .line 3
    .line 4
    const-string v1, "onLoadSucceeded"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    return-void
.end method
