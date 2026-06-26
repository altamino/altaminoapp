.class Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$2;
.super Ljava/lang/Object;
.source "LiveLayerOnlineCategoryAdapter.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$2;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public makeView()Landroid/view/View;
    .locals 4

    .line 133
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$2;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b04dc

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 134
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f090571

    .line 136
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/NVImageView;

    .line 137
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x9

    goto :goto_0

    :cond_0
    const/4 v2, 0x6

    :goto_0
    iput v2, v1, Lcom/narvii/widget/NVImageView;->cornerMask:I

    return-object v0
.end method
