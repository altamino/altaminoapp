.class Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1$6;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1$6;->this$2:Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;

    .line 3
    .line 4
    iput-boolean p2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1$6;->val$finalLessThanMaxCount:Z

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1$6;->this$2:Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->d(Lcom/narvii/livelayer/LiveLayerOnlineBar;Landroid/animation/ValueAnimator;)V

    .line 11
    .line 12
    iget-boolean p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1$6;->val$finalLessThanMaxCount:Z

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1$6;->this$2:Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    .line 23
    const/4 v0, 0x1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 27
    .line 28
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1$6;->this$2:Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;

    .line 29
    .line 30
    iget-object p1, p1, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    .line 31
    .line 32
    iget-object p1, p1, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 33
    .line 34
    iget v1, p1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarCount:I

    .line 35
    sub-int/2addr v1, v0

    .line 36
    .line 37
    iput v1, p1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarCount:I

    .line 38
    .line 39
    :cond_0
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1$6;->this$2:Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;

    .line 40
    .line 41
    iget-object p1, p1, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    .line 42
    .line 43
    iget-object p1, p1, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->h(Lcom/narvii/livelayer/LiveLayerOnlineBar;)V

    .line 47
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1$6;->this$2:Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lcom/narvii/livelayer/ws/ClipLayout;->setShouldClip(Z)V

    .line 13
    return-void
.end method
