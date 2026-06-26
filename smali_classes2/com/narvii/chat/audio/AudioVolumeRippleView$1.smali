.class Lcom/narvii/chat/audio/AudioVolumeRippleView$1;
.super Ljava/lang/Object;
.source "AudioVolumeRippleView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/audio/AudioVolumeRippleView;->prepareAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/audio/AudioVolumeRippleView;

.field final synthetic val$level:I


# direct methods
.method constructor <init>(Lcom/narvii/chat/audio/AudioVolumeRippleView;I)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/narvii/chat/audio/AudioVolumeRippleView$1;->this$0:Lcom/narvii/chat/audio/AudioVolumeRippleView;

    iput p2, p0, Lcom/narvii/chat/audio/AudioVolumeRippleView$1;->val$level:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 81
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioVolumeRippleView$1;->this$0:Lcom/narvii/chat/audio/AudioVolumeRippleView;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/narvii/chat/audio/AudioVolumeRippleView;->animating:Z

    .line 82
    iget-boolean v0, p1, Lcom/narvii/chat/audio/AudioVolumeRippleView;->canceled:Z

    if-eqz v0, :cond_0

    .line 83
    invoke-static {p1}, Lcom/narvii/chat/audio/AudioVolumeRippleView;->access$000(Lcom/narvii/chat/audio/AudioVolumeRippleView;)V

    return-void

    .line 86
    :cond_0
    iget v0, p0, Lcom/narvii/chat/audio/AudioVolumeRippleView$1;->val$level:I

    iput v0, p1, Lcom/narvii/chat/audio/AudioVolumeRippleView;->currentLevel:I

    .line 87
    invoke-static {p1}, Lcom/narvii/chat/audio/AudioVolumeRippleView;->access$100(Lcom/narvii/chat/audio/AudioVolumeRippleView;)V

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
