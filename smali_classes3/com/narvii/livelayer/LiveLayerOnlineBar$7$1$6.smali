.class Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1$6;
.super Ljava/lang/Object;
.source "LiveLayerOnlineBar.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;

.field final synthetic val$finalLessThanMaxCount:Z


# direct methods
.method constructor <init>(Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;Z)V
    .locals 0

    .line 1328
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1$6;->this$2:Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;

    iput-boolean p2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1$6;->val$finalLessThanMaxCount:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1336
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1$6;->this$2:Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;

    iget-object p1, p1, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    iget-object p1, p1, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->access$802(Lcom/narvii/livelayer/LiveLayerOnlineBar;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 1337
    iget-boolean p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1$6;->val$finalLessThanMaxCount:Z

    if-nez p1, :cond_0

    .line 1338
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1$6;->this$2:Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;

    iget-object p1, p1, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    iget-object p1, p1, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iget-object p1, p1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    .line 1339
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1$6;->this$2:Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;

    iget-object p1, p1, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    iget-object p1, p1, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iget v1, p1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarCount:I

    sub-int/2addr v1, v0

    iput v1, p1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarCount:I

    .line 1341
    :cond_0
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1$6;->this$2:Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;

    iget-object p1, p1, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    iget-object p1, p1, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    invoke-static {p1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->access$900(Lcom/narvii/livelayer/LiveLayerOnlineBar;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1331
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1$6;->this$2:Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;

    iget-object p1, p1, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    iget-object p1, p1, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iget-object p1, p1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/livelayer/ws/ClipLayout;->setShouldClip(Z)V

    return-void
.end method
