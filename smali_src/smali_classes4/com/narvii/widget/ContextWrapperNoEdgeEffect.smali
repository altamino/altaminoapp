.class Lcom/narvii/widget/ContextWrapperNoEdgeEffect;
.super Landroid/content/ContextWrapper;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    new-instance v0, Lcom/narvii/widget/ContextWrapperNoEdgeEffect$ResourcesNoEdgeEffect;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, v1, v2, p1}, Lcom/narvii/widget/ContextWrapperNoEdgeEffect$ResourcesNoEdgeEffect;-><init>(Lcom/narvii/widget/ContextWrapperNoEdgeEffect;Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 25
    .line 26
    iput-object v0, p0, Lcom/narvii/widget/ContextWrapperNoEdgeEffect;->mResourcesEdgeEffect:Lcom/narvii/widget/ContextWrapperNoEdgeEffect$ResourcesNoEdgeEffect;

    .line 27
    return-void
.end method


# virtual methods
.method public getResources()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/narvii/widget/ContextWrapperNoEdgeEffect;->mResourcesEdgeEffect:Lcom/narvii/widget/ContextWrapperNoEdgeEffect$ResourcesNoEdgeEffect;

    return-object v0
.end method
