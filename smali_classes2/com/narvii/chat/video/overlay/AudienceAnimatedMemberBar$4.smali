.class Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;
.super Ljava/lang/Object;
.source "AudienceAnimatedMemberBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->onUserJoined(Lcom/narvii/model/User;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

.field final synthetic val$communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

.field final synthetic val$user:Lcom/narvii/model/User;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;Lcom/narvii/model/User;Lcom/narvii/modulization/CommunityConfigHelper;)V
    .locals 0

    .line 684
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    iput-object p2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->val$user:Lcom/narvii/model/User;

    iput-object p3, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->val$communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 687
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    iget-object v0, v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userQueue:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->val$user:Lcom/narvii/model/User;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 688
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    iget-object v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->val$user:Lcom/narvii/model/User;

    invoke-static {v0, v1}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->access$200(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;Lcom/narvii/model/User;)V

    .line 690
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    new-instance v1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;

    invoke-direct {v1, p0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;-><init>(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;)V

    iput-object v1, v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->animEndRunnable:Ljava/lang/Runnable;

    .line 871
    new-instance v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$2;

    invoke-direct {v0, p0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$2;-><init>(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;)V

    .line 888
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 889
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    new-instance v3, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-direct {v3, v4, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v3, v1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userJoinedAnim:Landroid/view/animation/Animation;

    goto :goto_0

    .line 891
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    new-instance v3, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v3, v4, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v3, v1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userJoinedAnim:Landroid/view/animation/Animation;

    .line 893
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    iget-object v1, v1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userJoinedAnim:Landroid/view/animation/Animation;

    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    const v3, 0x3f333333    # 0.7f

    invoke-direct {v2, v3}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 894
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    iget-object v1, v1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userJoinedAnim:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 896
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    iget-object v1, v1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userJoinedView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 897
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    iget-object v2, v1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userJoinedView:Landroid/view/View;

    iget-object v1, v1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userJoinedAnim:Landroid/view/animation/Animation;

    invoke-static {v2, v1, v0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->startAnimation(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method
