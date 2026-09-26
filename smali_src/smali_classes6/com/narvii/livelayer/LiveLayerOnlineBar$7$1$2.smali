.class Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1$2;->this$2:Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1$2;->this$2:Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 7
    .line 8
    iget-object v0, p1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->userJoinedView:Landroid/view/View;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 12
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
