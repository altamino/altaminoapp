.class final Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder$decode$logEvent$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->decode(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Ljava/lang/String;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder$decode$logEvent$1;->$context:Landroid/content/Context;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder$decode$logEvent$1;->invoke(Ljava/lang/String;)V

    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lai/medialab/medialabanalytics/MediaLabAnalytics;->Companion:Lai/medialab/medialabanalytics/MediaLabAnalytics$Companion;

    invoke-virtual {v0}, Lai/medialab/medialabanalytics/MediaLabAnalytics$Companion;->getInstance()Lai/medialab/medialabanalytics/MediaLabAnalytics;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder$decode$logEvent$1;->$context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lai/medialab/medialabanalytics/MediaLabAnalytics;->initialize(Landroid/content/Context;)V

    .line 3
    invoke-virtual {v0}, Lai/medialab/medialabanalytics/MediaLabAnalytics$Companion;->getInstance()Lai/medialab/medialabanalytics/MediaLabAnalytics;

    move-result-object v0

    const-string v1, "extra"

    .line 4
    invoke-static {v1, p1}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lkotlin/collections/p0;->f(Lw7/u;)Ljava/util/Map;

    move-result-object p1

    const-string v1, "video_decode"

    .line 6
    invoke-virtual {v0, v1, p1}, Lai/medialab/medialabanalytics/MediaLabAnalytics;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
