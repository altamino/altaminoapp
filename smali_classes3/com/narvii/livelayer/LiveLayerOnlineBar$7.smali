.class Lcom/narvii/livelayer/LiveLayerOnlineBar$7;
.super Ljava/lang/Object;
.source "LiveLayerOnlineBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/livelayer/LiveLayerOnlineBar;->onUserJoined(Lcom/narvii/model/User;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

.field final synthetic val$user:Lcom/narvii/model/User;


# direct methods
.method constructor <init>(Lcom/narvii/livelayer/LiveLayerOnlineBar;Lcom/narvii/model/User;)V
    .locals 0

    .line 1153
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iput-object p2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->val$user:Lcom/narvii/model/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1156
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iget-object v0, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->val$user:Lcom/narvii/model/User;

    invoke-virtual {v0, v1}, Lcom/narvii/livelayer/LiveLayerDataSource;->moveFromQueueIntoList(Lcom/narvii/model/User;)V

    .line 1158
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    new-instance v1, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;

    invoke-direct {v1, p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;-><init>(Lcom/narvii/livelayer/LiveLayerOnlineBar$7;)V

    iput-object v1, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->animEndRunnable:Ljava/lang/Runnable;

    .line 1371
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iget-boolean v1, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->fromCBB:Z

    if-nez v1, :cond_4

    .line 1372
    new-instance v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$2;

    invoke-direct {v0, p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$2;-><init>(Lcom/narvii/livelayer/LiveLayerOnlineBar$7;)V

    .line 1389
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iget-boolean v2, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->fold:Z

    if-nez v2, :cond_1

    .line 1390
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1391
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    new-instance v3, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-direct {v3, v4, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v3, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->userJoinedAnim:Landroid/view/animation/Animation;

    goto :goto_0

    .line 1393
    :cond_0
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    new-instance v3, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v3, v4, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v3, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->userJoinedAnim:Landroid/view/animation/Animation;

    .line 1395
    :goto_0
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->userJoinedAnim:Landroid/view/animation/Animation;

    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    const v3, 0x3f333333    # 0.7f

    invoke-direct {v2, v3}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1396
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->userJoinedAnim:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_1

    .line 1398
    :cond_1
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f010029

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->userJoinedAnim:Landroid/view/animation/Animation;

    .line 1399
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->userJoinedAnim:Landroid/view/animation/Animation;

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1400
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->userJoinedAnim:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1402
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iget-object v4, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->foldGreenOval:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 1403
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f01002a

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dotFadeAnimation:Landroid/view/animation/Animation;

    .line 1404
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dotFadeAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1405
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dotFadeAnimation:Landroid/view/animation/Animation;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1406
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iget-object v2, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->foldGreenOval:Landroid/view/View;

    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dotFadeAnimation:Landroid/view/animation/Animation;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->startAnimation(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V

    .line 1410
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->userJoinedView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1411
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iget-boolean v2, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->fold:Z

    if-nez v2, :cond_3

    .line 1412
    iget-object v2, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->userJoinedView:Landroid/view/View;

    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->userJoinedAnim:Landroid/view/animation/Animation;

    invoke-static {v2, v1, v0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->startAnimation(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_2

    .line 1414
    :cond_3
    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->userJoinedView:Landroid/view/View;

    const v2, 0x7f090c10

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iget-object v2, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar;->userJoinedAnim:Landroid/view/animation/Animation;

    invoke-static {v1, v2, v0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->startAnimation(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_2

    .line 1417
    :cond_4
    iget-object v0, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->userJoinedView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1418
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->animEndRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2
    return-void
.end method
