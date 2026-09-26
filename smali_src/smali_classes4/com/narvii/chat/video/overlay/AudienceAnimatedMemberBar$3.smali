.class Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->onMembersCountChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$3;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    check-cast p1, Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 10
    move-result p1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$3;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    .line 13
    .line 14
    .line 15
    invoke-static {v0, p1}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->m(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;I)V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$3;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->onMemberCountChangedListener:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$OnMemberCountChangedListener;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, p1}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$OnMemberCountChangedListener;->onMemberCountChanged(I)V

    .line 25
    :cond_0
    return-void
.end method
