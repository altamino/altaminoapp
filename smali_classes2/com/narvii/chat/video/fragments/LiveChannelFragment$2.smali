.class Lcom/narvii/chat/video/fragments/LiveChannelFragment$2;
.super Ljava/lang/Object;
.source "LiveChannelFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/video/fragments/LiveChannelFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/fragments/LiveChannelFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/fragments/LiveChannelFragment;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment$2;->this$0:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 202
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment$2;->this$0:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    invoke-static {p1}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->access$100(Lcom/narvii/chat/video/fragments/LiveChannelFragment;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 203
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment$2;->this$0:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    iget-object v1, v1, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->liveNormalContent:Lcom/narvii/chat/video/layout/VVContentLayout;

    new-array v2, v0, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    mul-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    const/4 v5, 0x1

    aput v4, v2, v5

    const-string/jumbo v4, "translationY"

    invoke-static {v1, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 204
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 205
    new-instance v4, Lcom/narvii/chat/video/fragments/LiveChannelFragment$2$1;

    invoke-direct {v4, p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment$2$1;-><init>(Lcom/narvii/chat/video/fragments/LiveChannelFragment$2;)V

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v1, v0, v3

    aput-object p1, v0, v5

    .line 214
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v0, 0xc8

    .line 215
    invoke-virtual {v2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 216
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
