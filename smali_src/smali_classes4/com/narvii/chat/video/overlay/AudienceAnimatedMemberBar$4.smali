.class Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->val$user:Lcom/narvii/model/User;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->val$communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userQueue:Ljava/util/LinkedList;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->val$user:Lcom/narvii/model/User;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->val$user:Lcom/narvii/model/User;

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->f(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;Lcom/narvii/model/User;)V

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    .line 19
    .line 20
    new-instance v1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, p0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;-><init>(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;)V

    .line 24
    .line 25
    iput-object v1, v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->animEndRunnable:Ljava/lang/Runnable;

    .line 26
    .line 27
    new-instance v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$2;

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, p0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$2;-><init>(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;)V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 34
    move-result v1

    .line 35
    const/4 v2, 0x0

    .line 36
    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    .line 40
    .line 41
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    .line 42
    .line 43
    iget-object v4, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 47
    move-result-object v4

    .line 48
    .line 49
    .line 50
    invoke-static {v4}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    .line 51
    move-result v4

    .line 52
    neg-int v4, v4

    .line 53
    int-to-float v4, v4

    .line 54
    .line 55
    .line 56
    invoke-direct {v3, v4, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 57
    .line 58
    iput-object v3, v1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userJoinedAnim:Landroid/view/animation/Animation;

    .line 59
    goto :goto_0

    .line 60
    .line 61
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    .line 62
    .line 63
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    .line 64
    .line 65
    iget-object v4, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 69
    move-result-object v4

    .line 70
    .line 71
    .line 72
    invoke-static {v4}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    .line 73
    move-result v4

    .line 74
    int-to-float v4, v4

    .line 75
    .line 76
    .line 77
    invoke-direct {v3, v4, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 78
    .line 79
    iput-object v3, v1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userJoinedAnim:Landroid/view/animation/Animation;

    .line 80
    .line 81
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    .line 82
    .line 83
    iget-object v1, v1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userJoinedAnim:Landroid/view/animation/Animation;

    .line 84
    .line 85
    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    .line 86
    .line 87
    .line 88
    const v3, 0x3f333333    # 0.7f

    .line 89
    .line 90
    .line 91
    invoke-direct {v2, v3}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 95
    .line 96
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    .line 97
    .line 98
    iget-object v1, v1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userJoinedAnim:Landroid/view/animation/Animation;

    .line 99
    .line 100
    const-wide/16 v2, 0x12c

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 104
    .line 105
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    .line 106
    .line 107
    iget-object v1, v1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userJoinedView:Landroid/view/View;

    .line 108
    const/4 v2, 0x0

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 112
    .line 113
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    .line 114
    .line 115
    iget-object v2, v1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userJoinedView:Landroid/view/View;

    .line 116
    .line 117
    iget-object v1, v1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userJoinedAnim:Landroid/view/animation/Animation;

    .line 118
    .line 119
    .line 120
    invoke-static {v2, v1, v0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->startAnimation(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V

    .line 121
    return-void
.end method
