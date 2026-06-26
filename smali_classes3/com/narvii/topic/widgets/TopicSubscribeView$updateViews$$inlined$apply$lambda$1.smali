.class final Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "TopicSubscribeView.kt"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/topic/widgets/TopicSubscribeView;->updateViews(Lcom/narvii/model/story/StoryTopic;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $lp:Landroid/view/ViewGroup$LayoutParams;

.field final synthetic $topic$inlined:Lcom/narvii/model/story/StoryTopic;

.field final synthetic this$0:Lcom/narvii/topic/widgets/TopicSubscribeView;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup$LayoutParams;Lcom/narvii/topic/widgets/TopicSubscribeView;Lcom/narvii/model/story/StoryTopic;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$$inlined$apply$lambda$1;->$lp:Landroid/view/ViewGroup$LayoutParams;

    iput-object p2, p0, Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$$inlined$apply$lambda$1;->this$0:Lcom/narvii/topic/widgets/TopicSubscribeView;

    iput-object p3, p0, Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$$inlined$apply$lambda$1;->$topic$inlined:Lcom/narvii/model/story/StoryTopic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$$inlined$apply$lambda$1;->$lp:Landroid/view/ViewGroup$LayoutParams;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 153
    iget-object p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$$inlined$apply$lambda$1;->this$0:Lcom/narvii/topic/widgets/TopicSubscribeView;

    invoke-virtual {p1}, Lcom/narvii/topic/widgets/TopicSubscribeView;->getNotificationLayout()Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$$inlined$apply$lambda$1;->$lp:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 152
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
