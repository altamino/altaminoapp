.class final Lcom/narvii/topic/widgets/TopicBookmarkView$endSending$1;
.super Ljava/lang/Object;
.source "TopicBookmarkView.kt"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/topic/widgets/TopicBookmarkView;->endSending()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/topic/widgets/TopicBookmarkView;


# direct methods
.method constructor <init>(Lcom/narvii/topic/widgets/TopicBookmarkView;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/topic/widgets/TopicBookmarkView$endSending$1;->this$0:Lcom/narvii/topic/widgets/TopicBookmarkView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 134
    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicBookmarkView$endSending$1;->this$0:Lcom/narvii/topic/widgets/TopicBookmarkView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "animation"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.Int"

    if-eqz v1, :cond_2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 135
    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicBookmarkView$endSending$1;->this$0:Lcom/narvii/topic/widgets/TopicBookmarkView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicBookmarkView$endSending$1;->this$0:Lcom/narvii/topic/widgets/TopicBookmarkView;

    invoke-virtual {v0}, Lcom/narvii/topic/widgets/TopicBookmarkView;->getTopic()Lcom/narvii/model/story/StoryTopic;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/narvii/model/story/StoryTopic;->isBookmarked:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 137
    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicBookmarkView$endSending$1;->this$0:Lcom/narvii/topic/widgets/TopicBookmarkView;

    invoke-virtual {v0}, Lcom/narvii/topic/widgets/TopicBookmarkView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 138
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 139
    iget-object p1, p0, Lcom/narvii/topic/widgets/TopicBookmarkView$endSending$1;->this$0:Lcom/narvii/topic/widgets/TopicBookmarkView;

    invoke-virtual {p1}, Lcom/narvii/topic/widgets/TopicBookmarkView;->getSelectedView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 138
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 141
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/topic/widgets/TopicBookmarkView$endSending$1;->this$0:Lcom/narvii/topic/widgets/TopicBookmarkView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void

    .line 134
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
