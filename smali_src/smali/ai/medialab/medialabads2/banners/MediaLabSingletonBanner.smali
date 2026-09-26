.class public Lai/medialab/medialabads2/banners/MediaLabSingletonBanner;
.super Lai/medialab/medialabads2/banners/MediaLabSharedBanner;
.source "MediaLabSingletonBanner.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lai/medialab/medialabads2/banners/MediaLabSharedBanner;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lai/medialab/medialabads2/banners/MediaLabSharedBanner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method
