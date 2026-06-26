.class Lcom/narvii/drawer/DrawerHost$ScrollToTop;
.super Ljava/lang/Object;
.source "DrawerHost.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/drawer/DrawerHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScrollToTop"
.end annotation


# instance fields
.field drawerHost:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/narvii/drawer/DrawerHost;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/narvii/drawer/DrawerHost;)V
    .locals 1

    .line 1793
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1794
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/narvii/drawer/DrawerHost$ScrollToTop;->drawerHost:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1799
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$ScrollToTop;->drawerHost:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/drawer/DrawerHost;

    if-eqz v0, :cond_3

    .line 1800
    iget-object v1, v0, Lcom/narvii/drawer/DrawerHost;->scrollToTop:Ljava/lang/Runnable;

    if-ne v1, p0, :cond_3

    const v1, 0x7f0903a2

    .line 1802
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 1804
    invoke-static {v0}, Lcom/narvii/drawer/DrawerHost;->access$1100(Lcom/narvii/drawer/DrawerHost;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1805
    iget-object v1, v0, Lcom/narvii/drawer/DrawerHost;->valueAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    .line 1806
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1808
    :cond_0
    invoke-static {v0, v2}, Lcom/narvii/drawer/DrawerHost;->access$1102(Lcom/narvii/drawer/DrawerHost;Z)Z

    .line 1809
    invoke-static {v0}, Lcom/narvii/drawer/DrawerHost;->access$1200(Lcom/narvii/drawer/DrawerHost;)Lcom/narvii/amino/page/PageSecondLevelLayout;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1810
    invoke-static {v0}, Lcom/narvii/drawer/DrawerHost;->access$1200(Lcom/narvii/drawer/DrawerHost;)Lcom/narvii/amino/page/PageSecondLevelLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1812
    :cond_1
    invoke-static {v0}, Lcom/narvii/drawer/DrawerHost;->access$1300(Lcom/narvii/drawer/DrawerHost;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f03b9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1813
    invoke-static {v0}, Lcom/narvii/drawer/DrawerHost;->access$1400(Lcom/narvii/drawer/DrawerHost;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setRotation(F)V

    :cond_2
    const/4 v1, 0x0

    .line 1815
    iput-object v1, v0, Lcom/narvii/drawer/DrawerHost;->scrollToTop:Ljava/lang/Runnable;

    :cond_3
    return-void
.end method
