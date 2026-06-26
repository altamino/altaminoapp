.class Lcom/narvii/widget/ContextWrapperNoEdgeEffect;
.super Landroid/content/ContextWrapper;
.source "ContextWrapperNoEdgeEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/ContextWrapperNoEdgeEffect$ResourcesNoEdgeEffect;
    }
.end annotation


# instance fields
.field private mResourcesEdgeEffect:Lcom/narvii/widget/ContextWrapperNoEdgeEffect$ResourcesNoEdgeEffect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 16
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 18
    new-instance v0, Lcom/narvii/widget/ContextWrapperNoEdgeEffect$ResourcesNoEdgeEffect;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 19
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/narvii/widget/ContextWrapperNoEdgeEffect$ResourcesNoEdgeEffect;-><init>(Lcom/narvii/widget/ContextWrapperNoEdgeEffect;Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/narvii/widget/ContextWrapperNoEdgeEffect;->mResourcesEdgeEffect:Lcom/narvii/widget/ContextWrapperNoEdgeEffect$ResourcesNoEdgeEffect;

    return-void
.end method


# virtual methods
.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/narvii/widget/ContextWrapperNoEdgeEffect;->mResourcesEdgeEffect:Lcom/narvii/widget/ContextWrapperNoEdgeEffect$ResourcesNoEdgeEffect;

    return-object v0
.end method
