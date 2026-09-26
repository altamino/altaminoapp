.class public final Lcom/narvii/ad/MediaLabInterstitials$initialize$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lai/medialab/medialabads2/SdkInitListener;


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
.method public onDestroyed()V
    .locals 2

    .line 1
    .line 2
    const-string v0, "MediaLabInterstitials"

    .line 3
    .line 4
    const-string v1, "onDestroyed"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method public onInitFailed(ILjava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string p1, "MediaLabInterstitials"

    .line 3
    .line 4
    const-string p2, "onInitFailed"

    .line 5
    .line 6
    .line 7
    invoke-static {p1, p2}, Lcom/narvii/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method public onInitSucceeded()V
    .locals 2

    .line 1
    .line 2
    const-string v0, "MediaLabInterstitials"

    .line 3
    .line 4
    const-string v1, "onInitSucceeded"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/narvii/ad/MediaLabInterstitials;->access$getMediaLabInterstitial$p()Lai/medialab/medialabads2/interstitials/MediaLabInterstitial;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const-string v0, "mediaLabInterstitial"

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 19
    const/4 v0, 0x0

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {v0}, Lai/medialab/medialabads2/interstitials/MediaLabInterstitial;->loadAd()V

    .line 23
    return-void
.end method
