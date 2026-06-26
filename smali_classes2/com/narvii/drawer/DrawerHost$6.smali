.class Lcom/narvii/drawer/DrawerHost$6;
.super Ljava/lang/Object;
.source "DrawerHost.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/drawer/DrawerHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final hide:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/narvii/drawer/DrawerHost;


# direct methods
.method constructor <init>(Lcom/narvii/drawer/DrawerHost;)V
    .locals 0

    .line 659
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost$6;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 725
    new-instance p1, Lcom/narvii/drawer/DrawerHost$6$2;

    invoke-direct {p1, p0}, Lcom/narvii/drawer/DrawerHost$6$2;-><init>(Lcom/narvii/drawer/DrawerHost$6;)V

    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost$6;->hide:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    .line 662
    const v0, 0x0

    const v1, 0x7f090386

    const-wide/16 v2, 0xc8

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_6

    const/4 v6, 0x0

    if-eq v0, v5, :cond_4

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-eq v0, v8, :cond_0

    if-eq v0, v7, :cond_4

    goto/16 :goto_0

    .line 682
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    cmpg-float v0, v0, v4

    if-ltz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    neg-int v2, v2

    div-int/2addr v2, v8

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/2addr v0, v8

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    if-lez p2, :cond_7

    .line 683
    :cond_1
    iget-object p2, p0, Lcom/narvii/drawer/DrawerHost$6;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-static {p2}, Lcom/narvii/drawer/DrawerHost;->access$200(Lcom/narvii/drawer/DrawerHost;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 684
    iget-object p2, p0, Lcom/narvii/drawer/DrawerHost$6;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/checkin/CheckInCircle;

    invoke-virtual {p2}, Lcom/narvii/checkin/CheckInCircle;->unpress()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 685
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerHost$6;->shortPress()V

    .line 687
    :cond_2
    invoke-virtual {p1, v6}, Landroid/view/View;->setPressed(Z)V

    :cond_3
    return v6

    .line 694
    :cond_4
    iget-object p2, p0, Lcom/narvii/drawer/DrawerHost$6;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-static {p2}, Lcom/narvii/drawer/DrawerHost;->access$200(Lcom/narvii/drawer/DrawerHost;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 695
    iget-object p2, p0, Lcom/narvii/drawer/DrawerHost$6;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/checkin/CheckInCircle;

    invoke-virtual {p2}, Lcom/narvii/checkin/CheckInCircle;->unpress()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 696
    new-instance p2, Lcom/narvii/drawer/DrawerHost$6$1;

    invoke-direct {p2, p0}, Lcom/narvii/drawer/DrawerHost$6$1;-><init>(Lcom/narvii/drawer/DrawerHost$6;)V

    invoke-static {p2, v2, v3}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 704
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerHost$6;->shortPress()V

    .line 706
    :cond_5
    invoke-virtual {p1, v6}, Landroid/view/View;->setPressed(Z)V

    goto/16 :goto_0

    .line 664
    :cond_6
    iget-object p2, p0, Lcom/narvii/drawer/DrawerHost$6;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/checkin/CheckInCircle;

    invoke-virtual {p2}, Lcom/narvii/checkin/CheckInCircle;->press()V

    .line 668
    invoke-virtual {p1, v5}, Landroid/view/View;->setPressed(Z)V

    .line 669
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_7
    :goto_0
    return v5
.end method

.method shortPress()V
    .locals 4

    .line 714
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost$6;->hide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 715
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost$6;->hide:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 717
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$6;->this$0:Lcom/narvii/drawer/DrawerHost;

    const v1, 0x7f090384

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 718
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 719
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 720
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost$6;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f010029

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    const v1, 0x7f090385

    .line 722
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost$6;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f010050

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
