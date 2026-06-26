.class Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;
.super Ljava/lang/Object;
.source "AudienceAnimatedMemberBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;)V
    .locals 0

    .line 690
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    move-object/from16 v0, p0

    .line 694
    iget-object v1, v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    iget-object v1, v1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    iget-object v1, v1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userJoinedView:Landroid/view/View;

    const v2, 0x7f090c11

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 696
    iget-object v4, v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    iget-object v4, v4, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f01002a

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, v4, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->fadeoutAnim:Landroid/view/animation/Animation;

    .line 697
    iget-object v4, v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    iget-object v4, v4, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    iget-object v4, v4, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->fadeoutAnim:Landroid/view/animation/Animation;

    invoke-virtual {v4, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 698
    iget-object v4, v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    iget-object v4, v4, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    iget-object v4, v4, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->fadeoutAnim:Landroid/view/animation/Animation;

    const-wide/16 v5, 0x96

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 699
    iget-object v4, v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    iget-object v4, v4, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    iget-object v4, v4, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->fadeoutAnim:Landroid/view/animation/Animation;

    invoke-static {v1, v4, v2}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->startAnimation(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V

    .line 702
    :cond_0
    iget-object v1, v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    iget-object v1, v1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    const v4, 0x7f090688

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    .line 704
    iget-object v6, v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    iget-object v6, v6, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->val$user:Lcom/narvii/model/User;

    invoke-virtual {v6}, Lcom/narvii/model/User;->isSubscribeMemberShip()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    iget-object v6, v6, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->val$communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {v6}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    const v6, 0x7f0805b5

    goto :goto_0

    :cond_1
    const v6, 0x7f0805b4

    :goto_0
    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 705
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 706
    new-instance v7, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1$1;

    invoke-direct {v7, v0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1$1;-><init>(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;)V

    invoke-virtual {v6, v7}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v7, 0x7d0

    .line 718
    invoke-virtual {v6, v7, v8}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 719
    new-instance v15, Landroid/view/animation/ScaleAnimation;

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f9eb852    # 1.24f

    const/high16 v12, 0x3f800000    # 1.0f

    const v13, 0x3f9eb852    # 1.24f

    const/4 v14, 0x1

    const/high16 v16, 0x3f000000    # 0.5f

    const/16 v17, 0x1

    const/high16 v18, 0x3f000000    # 0.5f

    move-object v9, v15

    move-object v4, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    invoke-direct/range {v9 .. v17}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 720
    new-instance v9, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1$2;

    invoke-direct {v9, v0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1$2;-><init>(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;)V

    invoke-virtual {v4, v9}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 732
    invoke-virtual {v4, v7, v8}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 733
    new-instance v7, Landroid/view/animation/AnimationSet;

    invoke-direct {v7, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 734
    invoke-virtual {v7, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 735
    invoke-virtual {v7, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 736
    iget-object v4, v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    iget-object v4, v4, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    iput-object v7, v4, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->holoAnimation:Landroid/view/animation/Animation;

    .line 737
    invoke-static {v1, v7, v2}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->startAnimation(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V

    .line 740
    :cond_2
    iget-object v1, v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    iget-object v1, v1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    iget-object v1, v1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userJoinedView:Landroid/view/View;

    const v4, 0x7f090c10

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 741
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3f99999a    # 1.2f

    const/high16 v9, 0x3f800000    # 1.0f

    const v10, 0x3f99999a    # 1.2f

    const/4 v11, 0x1

    const/high16 v12, 0x3f000000    # 0.5f

    const/4 v13, 0x1

    const/high16 v14, 0x3f000000    # 0.5f

    move-object v6, v4

    invoke-direct/range {v6 .. v14}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 742
    new-instance v6, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1$3;

    invoke-direct {v6, v0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1$3;-><init>(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;)V

    invoke-virtual {v4, v6}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v6, 0x190

    .line 754
    invoke-virtual {v4, v6, v7}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 755
    iget-object v6, v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    iget-object v6, v6, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    iput-object v4, v6, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->holoAnimation2:Landroid/view/animation/Animation;

    .line 756
    new-instance v6, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1$4;

    invoke-direct {v6, v0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1$4;-><init>(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;)V

    invoke-static {v1, v4, v6}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->startAnimation(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V

    .line 774
    iget-object v1, v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    iget-object v1, v1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    iget v4, v1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarCount:I

    iget v1, v1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->maxAvatarCount:I

    if-lt v4, v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    .line 778
    :goto_1
    iget-object v4, v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    iget-object v4, v4, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    invoke-static {v4}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->access$308(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;)I

    .line 780
    iget-object v4, v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    iget-object v4, v4, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    invoke-static {v4}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->access$300(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;)I

    move-result v6

    sub-int/2addr v6, v3

    invoke-static {v4, v6}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->access$400(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;I)V

    .line 782
    iget-object v4, v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    iget-object v6, v4, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    iget-object v4, v4, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->val$user:Lcom/narvii/model/User;

    invoke-static {v6, v4}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->access$500(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;Lcom/narvii/model/User;)Landroid/view/View;

    move-result-object v4

    .line 783
    iget-object v6, v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    iget-object v6, v6, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    iget-object v7, v6, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    iget v6, v6, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarCount:I

    add-int/2addr v6, v3

    invoke-virtual {v7, v4, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 784
    iget-object v4, v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    iget-object v6, v4, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    iget-object v7, v6, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->recentAvatar:Lcom/narvii/widget/UserAvatarLayout;

    iget-object v4, v4, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->val$user:Lcom/narvii/model/User;

    invoke-static {v6, v7, v4}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->access$600(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;Lcom/narvii/widget/UserAvatarLayout;Lcom/narvii/model/User;)V

    .line 786
    iget-object v4, v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    iget-object v4, v4, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    iget v6, v4, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarCount:I

    add-int/2addr v6, v3

    iput v6, v4, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarCount:I

    .line 788
    iget v6, v4, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarSize:I

    int-to-float v6, v6

    iget v7, v4, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->overlapRatio:F

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v7, v8, v7

    mul-float v6, v6, v7

    float-to-int v6, v6

    .line 790
    invoke-static {v4}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->access$700(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;)Landroid/animation/ValueAnimator;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    iget-object v4, v4, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    invoke-static {v4}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->access$700(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 791
    iget-object v4, v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    iget-object v4, v4, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    invoke-static {v4}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->access$700(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->end()V

    .line 794
    :cond_4
    iget-object v4, v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    iget-object v4, v4, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    const/4 v7, 0x2

    new-array v7, v7, [I

    aput v5, v7, v5

    aput v6, v7, v3

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->access$702(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 795
    iget-object v3, v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    iget-object v3, v3, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    invoke-static {v3}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->access$700(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;)Landroid/animation/ValueAnimator;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 797
    iget-object v3, v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    iget-object v3, v3, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    invoke-static {v3}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->access$700(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;)Landroid/animation/ValueAnimator;

    move-result-object v3

    new-instance v4, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1$5;

    invoke-direct {v4, v0, v1, v6}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1$5;-><init>(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;ZI)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 835
    iget-object v3, v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    iget-object v3, v3, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    invoke-static {v3}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->access$700(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;)Landroid/animation/ValueAnimator;

    move-result-object v3

    new-instance v4, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1$6;

    invoke-direct {v4, v0, v1}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1$6;-><init>(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;Z)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 861
    iget-object v1, v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    iget-object v1, v1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    invoke-static {v1}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->access$700(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 864
    sget-object v1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v3, v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    iget-object v3, v3, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    iget-object v3, v3, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->nextRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 865
    iget-object v1, v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    iget-object v1, v1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    iget-object v3, v1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->nextRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->access$1000(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;)I

    move-result v1

    int-to-long v4, v1

    invoke-static {v3, v4, v5}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 867
    iget-object v1, v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    iget-object v1, v1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    iput-object v2, v1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->animEndRunnable:Ljava/lang/Runnable;

    return-void
.end method
