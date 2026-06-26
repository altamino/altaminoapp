.class Lcom/narvii/chat/audio/AudioRecordLayout$2;
.super Ljava/lang/Object;
.source "AudioRecordLayout.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/audio/AudioRecordLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/audio/AudioRecordLayout;

.field final synthetic val$transY:I


# direct methods
.method constructor <init>(Lcom/narvii/chat/audio/AudioRecordLayout;I)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout$2;->this$0:Lcom/narvii/chat/audio/AudioRecordLayout;

    iput p2, p0, Lcom/narvii/chat/audio/AudioRecordLayout$2;->val$transY:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 8

    .line 282
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 284
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout$2;->this$0:Lcom/narvii/chat/audio/AudioRecordLayout;

    iget-object v1, v0, Lcom/narvii/chat/audio/AudioRecordLayout;->recordIcon:Landroid/widget/ImageView;

    const/4 v2, 0x2

    new-array v3, v2, [F

    iget v4, p0, Lcom/narvii/chat/audio/AudioRecordLayout$2;->val$transY:I

    int-to-float v5, v4

    const/4 v6, 0x0

    aput v5, v3, v6

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v5, 0x43020000    # 130.0f

    invoke-static {v0, v5}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    add-float/2addr v4, v0

    const/4 v0, 0x1

    aput v4, v3, v0

    const-string v4, "TranslationY"

    invoke-static {v1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 285
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    iget-object v1, p0, Lcom/narvii/chat/audio/AudioRecordLayout$2;->this$0:Lcom/narvii/chat/audio/AudioRecordLayout;

    iget-object v3, v1, Lcom/narvii/chat/audio/AudioRecordLayout;->removeBin:Landroid/view/View;

    new-array v2, v2, [F

    const/4 v7, 0x0

    aput v7, v2, v6

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    aput v1, v2, v0

    invoke-static {v3, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 288
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/animation/ObjectAnimator;

    .line 291
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 292
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v1, 0x64

    .line 293
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 294
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 296
    new-instance p1, Lcom/narvii/chat/audio/AudioRecordLayout$2$1;

    invoke-direct {p1, p0}, Lcom/narvii/chat/audio/AudioRecordLayout$2$1;-><init>(Lcom/narvii/chat/audio/AudioRecordLayout$2;)V

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
