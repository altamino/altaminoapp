.class Lcom/narvii/drawer/DrawerHost$7;
.super Ljava/lang/Object;
.source "DrawerHost.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/drawer/DrawerHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field animator:Landroid/animation/ValueAnimator;

.field final synthetic this$0:Lcom/narvii/drawer/DrawerHost;


# direct methods
.method constructor <init>(Lcom/narvii/drawer/DrawerHost;)V
    .locals 0

    .line 736
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost$7;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 4

    .line 741
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p1, 0x3f19999a    # 0.6f

    .line 742
    :goto_0
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$7;->this$0:Lcom/narvii/drawer/DrawerHost;

    const v1, 0x7f0900e4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 743
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_2

    .line 744
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost$7;->animator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    .line 745
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    .line 747
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost$7;->animator:Landroid/animation/ValueAnimator;

    .line 748
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$7;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/narvii/drawer/DrawerHost$7$1;

    invoke-direct {v1, p0, v0}, Lcom/narvii/drawer/DrawerHost$7$1;-><init>(Lcom/narvii/drawer/DrawerHost$7;Landroid/view/View;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 754
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$7;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 755
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$7;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 736
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerHost$7;->call(Ljava/lang/Boolean;)V

    return-void
.end method
