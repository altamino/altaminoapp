.class Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1$6;
.super Ljava/lang/Object;
.source "AudienceAnimatedMemberBar.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;

.field final synthetic val$finalLessThanMaxCount:Z


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;Z)V
    .locals 0

    .line 835
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1$6;->this$2:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;

    iput-boolean p2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1$6;->val$finalLessThanMaxCount:Z

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

    .line 843
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1$6;->this$2:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;

    iget-object p1, p1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    iget-object p1, p1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->access$702(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 844
    iget-boolean p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1$6;->val$finalLessThanMaxCount:Z

    if-nez p1, :cond_0

    .line 845
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1$6;->this$2:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;

    iget-object p1, p1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    iget-object p1, p1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    iget-object p1, p1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    .line 846
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1$6;->this$2:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;

    iget-object p1, p1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    iget-object p1, p1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    iget v1, p1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarCount:I

    sub-int/2addr v1, v0

    iput v1, p1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarCount:I

    .line 848
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1$6;->this$2:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;

    iget-object p1, p1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    iget-object p1, p1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    invoke-static {p1}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->access$900(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 838
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1$6;->this$2:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;

    iget-object p1, p1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    iget-object p1, p1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    iget-object p1, p1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/livelayer/ws/ClipLayout;->setShouldClip(Z)V

    return-void
.end method
