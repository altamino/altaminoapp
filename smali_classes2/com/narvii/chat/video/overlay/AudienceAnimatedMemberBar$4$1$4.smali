.class Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1$4;
.super Ljava/lang/Object;
.source "AudienceAnimatedMemberBar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


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


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;)V
    .locals 0

    .line 756
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1$4;->this$2:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 764
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1$4;->this$2:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;

    iget-object p1, p1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    iget-object p1, p1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    iget-object v0, p1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userJoinedView:Landroid/view/View;

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
