.class Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1$4;
.super Ljava/lang/Object;
.source "LiveLayerOnlineBar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


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


# direct methods
.method constructor <init>(Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;)V
    .locals 0

    .line 1232
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1$4;->this$2:Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1240
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1$4;->this$2:Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;

    iget-object p1, p1, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    iget-object p1, p1, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iget-object v0, p1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->userJoinedView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
