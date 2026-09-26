.class Lcom/narvii/chat/audio/AudioVolumeRippleView$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/audio/AudioVolumeRippleView$1;->this$0:Lcom/narvii/chat/audio/AudioVolumeRippleView;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/chat/audio/AudioVolumeRippleView$1;->val$level:I

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioVolumeRippleView$1;->this$0:Lcom/narvii/chat/audio/AudioVolumeRippleView;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    iput-boolean v0, p1, Lcom/narvii/chat/audio/AudioVolumeRippleView;->animating:Z

    .line 6
    .line 7
    iget-boolean v0, p1, Lcom/narvii/chat/audio/AudioVolumeRippleView;->canceled:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lcom/narvii/chat/audio/AudioVolumeRippleView;->b(Lcom/narvii/chat/audio/AudioVolumeRippleView;)V

    .line 13
    return-void

    .line 14
    .line 15
    :cond_0
    iget v0, p0, Lcom/narvii/chat/audio/AudioVolumeRippleView$1;->val$level:I

    .line 16
    .line 17
    iput v0, p1, Lcom/narvii/chat/audio/AudioVolumeRippleView;->currentLevel:I

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Lcom/narvii/chat/audio/AudioVolumeRippleView;->a(Lcom/narvii/chat/audio/AudioVolumeRippleView;)V

    .line 21
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
