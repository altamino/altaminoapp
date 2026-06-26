.class Lcom/narvii/quiz/QuizReviewListFragment$2;
.super Ljava/lang/Object;
.source "QuizReviewListFragment.java"

# interfaces
.implements Lcom/narvii/widget/NVImageView$OnImageChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/quiz/QuizReviewListFragment;->configQuizQuestionView(Lcom/narvii/model/QuizQuestion;Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/quiz/QuizReviewListFragment;

.field final synthetic val$vHolder:Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;


# direct methods
.method constructor <init>(Lcom/narvii/quiz/QuizReviewListFragment;Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/narvii/quiz/QuizReviewListFragment$2;->this$0:Lcom/narvii/quiz/QuizReviewListFragment;

    iput-object p2, p0, Lcom/narvii/quiz/QuizReviewListFragment$2;->val$vHolder:Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageChanged(Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V
    .locals 1

    const/4 p1, 0x0

    const/16 p3, 0x8

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 286
    iget-object p2, p0, Lcom/narvii/quiz/QuizReviewListFragment$2;->val$vHolder:Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;

    iget-object p2, p2, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;->mediaLoadingView:Lcom/narvii/widget/SpinningView;

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 287
    iget-object p2, p0, Lcom/narvii/quiz/QuizReviewListFragment$2;->val$vHolder:Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;

    iget-object p2, p2, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;->mediaView:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 289
    iget-object p2, p0, Lcom/narvii/quiz/QuizReviewListFragment$2;->val$vHolder:Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;

    iget-object p2, p2, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;->mediaLoadingView:Lcom/narvii/widget/SpinningView;

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 290
    iget-object p2, p0, Lcom/narvii/quiz/QuizReviewListFragment$2;->val$vHolder:Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;

    iget-object p2, p2, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;->mediaErrorView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 292
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/quiz/QuizReviewListFragment$2;->val$vHolder:Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;

    iget-object p1, p1, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;->mediaLoadingView:Lcom/narvii/widget/SpinningView;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
