.class Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1$5;
.super Ljava/lang/Object;
.source "AudienceAnimatedMemberBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

.field final synthetic val$avatarSpace:I

.field final synthetic val$finalLessThanMaxCount:Z


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;ZI)V
    .locals 0

    .line 797
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1$5;->this$2:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;

    iput-boolean p2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1$5;->val$finalLessThanMaxCount:Z

    iput p3, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1$5;->val$avatarSpace:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8

    .line 800
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 802
    :goto_0
    iget-object v2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1$5;->this$2:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;

    iget-object v2, v2, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    iget-object v2, v2, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    iget v3, v2, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarCount:I

    add-int/lit8 v4, v3, -0x1

    if-ge v0, v4, :cond_2

    .line 803
    iget-object v2, v2, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 804
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    int-to-float v4, p1

    .line 805
    iget-object v5, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1$5;->this$2:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;

    iget-object v5, v5, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    iget-object v5, v5, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    iget v6, v5, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarSize:I

    int-to-float v6, v6

    iget v5, v5, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->overlapRatio:F

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v5, v7, v5

    mul-float v6, v6, v5

    int-to-float v5, v1

    mul-float v6, v6, v5

    add-float/2addr v6, v4

    float-to-int v5, v6

    .line 806
    invoke-static {v3, v5}, Lcom/narvii/util/ViewUtils;->setMarginStart(Landroid/view/ViewGroup$LayoutParams;I)V

    .line 807
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    .line 809
    iget-boolean v3, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1$5;->val$finalLessThanMaxCount:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1$5;->this$2:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;

    iget-object v3, v3, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    iget-object v3, v3, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    iget v3, v3, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarCount:I

    add-int/lit8 v3, v3, -0x2

    if-ne v0, v3, :cond_1

    .line 810
    iget v3, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1$5;->val$avatarSpace:I

    int-to-float v5, v3

    const v6, 0x3e99999a    # 0.3f

    mul-float v5, v5, v6

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    goto :goto_1

    :cond_0
    sub-int v4, v3, p1

    int-to-float v4, v4

    int-to-float v3, v3

    const v5, 0x3f333333    # 0.7f

    mul-float v3, v3, v5

    div-float v7, v4, v3

    :goto_1
    invoke-virtual {v2, v7}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-lez v3, :cond_3

    .line 817
    :try_start_0
    iget-object v0, v2, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090c10

    .line 818
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    if-eqz v0, :cond_3

    .line 820
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1$5;->this$2:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;

    iget-object v1, v1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    iget-object v1, v1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    invoke-static {v1}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->access$800(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;)I

    move-result v1

    sget v2, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->shadowColor:I

    invoke-virtual {v0, v1, v2}, Lcom/narvii/widget/UserAvatarLayout;->setAvatarShadow(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    .line 828
    :cond_3
    :goto_2
    iget-boolean v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1$5;->val$finalLessThanMaxCount:Z

    if-eqz v0, :cond_4

    .line 829
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1$5;->this$2:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;

    iget-object v0, v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    iget-object v0, v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    iget-object v0, v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->onlineTextLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 830
    iget v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1$5;->val$avatarSpace:I

    iget-object v2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1$5;->this$2:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;

    iget-object v2, v2, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    iget-object v2, v2, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    iget v3, v2, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarCount:I

    add-int/lit8 v3, v3, -0x2

    mul-int v1, v1, v3

    add-int/2addr p1, v1

    iget v1, v2, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarSize:I

    add-int/2addr p1, v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    invoke-static {v0, p1}, Lcom/narvii/util/ViewUtils;->setMarginStart(Landroid/view/ViewGroup$LayoutParams;I)V

    .line 831
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1$5;->this$2:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;

    iget-object p1, p1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    iget-object p1, p1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    iget-object p1, p1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->onlineTextLayout:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    return-void
.end method
