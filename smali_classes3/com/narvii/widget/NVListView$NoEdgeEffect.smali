.class Lcom/narvii/widget/NVListView$NoEdgeEffect;
.super Landroid/widget/EdgeEffect;
.source "NVListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/NVListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NoEdgeEffect"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 566
    invoke-direct {p0, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->finish()V

    const/4 p1, 0x0

    return p1
.end method

.method public onAbsorb(I)V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->finish()V

    return-void
.end method

.method public onPull(F)V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->finish()V

    return-void
.end method

.method public onPull(FF)V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->finish()V

    return-void
.end method

.method public onPullDistance(FF)F
    .locals 1

    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->finish()V

    const/4 v0, 0x0

    return v0
.end method

.method public onRelease()V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->finish()V

    return-void
.end method
