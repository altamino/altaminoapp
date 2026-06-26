.class Lcom/narvii/livelayer/LiveLayerOnlineBar$7$2;
.super Ljava/lang/Object;
.source "LiveLayerOnlineBar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;


# direct methods
.method constructor <init>(Lcom/narvii/livelayer/LiveLayerOnlineBar$7;)V
    .locals 0

    .line 1372
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$2;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .line 1380
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$2;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    iget-object v0, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iget-object v0, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->animEndRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

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
