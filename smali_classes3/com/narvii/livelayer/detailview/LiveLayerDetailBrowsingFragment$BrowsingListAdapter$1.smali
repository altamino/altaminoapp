.class Lcom/narvii/livelayer/detailview/LiveLayerDetailBrowsingFragment$BrowsingListAdapter$1;
.super Ljava/lang/Object;
.source "LiveLayerDetailBrowsingFragment.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/livelayer/detailview/LiveLayerDetailBrowsingFragment$BrowsingListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/livelayer/detailview/LiveLayerDetailBrowsingFragment$BrowsingListAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailBrowsingFragment$BrowsingListAdapter;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBrowsingFragment$BrowsingListAdapter$1;->this$1:Lcom/narvii/livelayer/detailview/LiveLayerDetailBrowsingFragment$BrowsingListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public makeView()Landroid/view/View;
    .locals 4

    .line 93
    iget-object v0, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBrowsingFragment$BrowsingListAdapter$1;->this$1:Lcom/narvii/livelayer/detailview/LiveLayerDetailBrowsingFragment$BrowsingListAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b04c6

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 94
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f090571

    .line 96
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/NVImageView;

    .line 97
    iget-object v2, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBrowsingFragment$BrowsingListAdapter$1;->this$1:Lcom/narvii/livelayer/detailview/LiveLayerDetailBrowsingFragment$BrowsingListAdapter;

    invoke-virtual {v2}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060122

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/widget/NVImageView;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    iget-object v2, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBrowsingFragment$BrowsingListAdapter$1;->this$1:Lcom/narvii/livelayer/detailview/LiveLayerDetailBrowsingFragment$BrowsingListAdapter;

    invoke-virtual {v2}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060121

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/widget/NVImageView;->setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    iget-object v2, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBrowsingFragment$BrowsingListAdapter$1;->this$1:Lcom/narvii/livelayer/detailview/LiveLayerDetailBrowsingFragment$BrowsingListAdapter;

    invoke-virtual {v2}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/widget/NVImageView;->setErrorDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method
