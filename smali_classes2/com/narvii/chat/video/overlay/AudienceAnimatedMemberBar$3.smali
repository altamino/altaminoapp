.class Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$3;
.super Ljava/lang/Object;
.source "AudienceAnimatedMemberBar.java"

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

    .line 577
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$3;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 580
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 581
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$3;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    invoke-static {v0, p1}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->access$100(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;I)V

    .line 583
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$3;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    iget-object v0, v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->onMemberCountChangedListener:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$OnMemberCountChangedListener;

    if-eqz v0, :cond_0

    .line 584
    invoke-interface {v0, p1}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$OnMemberCountChangedListener;->onMemberCountChanged(I)V

    :cond_0
    return-void
.end method
