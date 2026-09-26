.class public final Lcom/narvii/app/theme/NVThemeActivity$loaderListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lai/medialab/medialabads2/banners/BannerLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/app/theme/NVThemeActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/app/theme/NVThemeActivity;


# direct methods
.method constructor <init>(Lcom/narvii/app/theme/NVThemeActivity;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/app/theme/NVThemeActivity$loaderListener$1;->this$0:Lcom/narvii/app/theme/NVThemeActivity;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onLoadFinished(ZI)V
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
    const-string v1, "onLoadFinished - "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v1, ", code: "

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object p2

    .line 26
    .line 27
    const-string v0, "MediaLab"

    .line 28
    .line 29
    .line 30
    invoke-static {v0, p2}, Lcom/narvii/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    iget-object p1, p0, Lcom/narvii/app/theme/NVThemeActivity$loaderListener$1;->this$0:Lcom/narvii/app/theme/NVThemeActivity;

    .line 35
    .line 36
    .line 37
    invoke-static {p1}, Lcom/narvii/app/theme/NVThemeActivity;->access$getMedialabAdView(Lcom/narvii/app/theme/NVThemeActivity;)Lai/medialab/medialabads2/banners/MediaLabSingletonBanner;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    if-nez p1, :cond_0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 p2, 0x0

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 46
    :goto_0
    const/4 p1, 0x1

    .line 47
    .line 48
    .line 49
    invoke-static {p1}, Lcom/narvii/app/theme/NVThemeActivity;->access$setWasAddLoaded$cp(Z)V

    .line 50
    :cond_1
    return-void
.end method
