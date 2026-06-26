.class Lcom/narvii/livelayer/LiveLayerOnlineBar$6;
.super Ljava/lang/Object;
.source "LiveLayerOnlineBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/livelayer/LiveLayerOnlineBar;->onMembersCountChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;


# direct methods
.method constructor <init>(Lcom/narvii/livelayer/LiveLayerOnlineBar;)V
    .locals 0

    .line 976
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$6;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 979
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 980
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$6;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    invoke-static {v0, p1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->access$400(Lcom/narvii/livelayer/LiveLayerOnlineBar;I)V

    .line 982
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$6;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iget-object v0, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onMemberCountChangedListener:Lcom/narvii/livelayer/LiveLayerOnlineBar$OnMemberCountChangedListener;

    if-eqz v0, :cond_0

    .line 983
    invoke-interface {v0, p1}, Lcom/narvii/livelayer/LiveLayerOnlineBar$OnMemberCountChangedListener;->onMemberCountChanged(I)V

    :cond_0
    return-void
.end method
