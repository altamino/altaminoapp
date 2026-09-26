.class Lcom/narvii/quiz/QuizReviewListFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/quiz/QuizReviewListFragment$2;->this$0:Lcom/narvii/quiz/QuizReviewListFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/quiz/QuizReviewListFragment$2;->val$vHolder:Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onImageChanged(Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V
    .locals 1

    .line 1
    const/4 p1, 0x4

    .line 2
    const/4 p3, 0x0

    .line 3
    .line 4
    const/16 v0, 0x8

    .line 5
    .line 6
    if-ne p2, p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/quiz/QuizReviewListFragment$2;->val$vHolder:Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;

    .line 9
    .line 10
    iget-object p1, p1, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;->mediaLoadingView:Lcom/narvii/widget/SpinningView;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    iget-object p1, p0, Lcom/narvii/quiz/QuizReviewListFragment$2;->val$vHolder:Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;

    .line 16
    .line 17
    iget-object p1, p1, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;->mediaView:Lcom/narvii/widget/NVImageView;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x2

    .line 23
    .line 24
    if-ne p2, p1, :cond_1

    .line 25
    .line 26
    iget-object p1, p0, Lcom/narvii/quiz/QuizReviewListFragment$2;->val$vHolder:Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;

    .line 27
    .line 28
    iget-object p1, p1, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;->mediaLoadingView:Lcom/narvii/widget/SpinningView;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    iget-object p1, p0, Lcom/narvii/quiz/QuizReviewListFragment$2;->val$vHolder:Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;

    .line 34
    .line 35
    iget-object p1, p1, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;->mediaErrorView:Landroid/view/View;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/quiz/QuizReviewListFragment$2;->val$vHolder:Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;

    .line 41
    .line 42
    iget-object p1, p1, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;->mediaLoadingView:Lcom/narvii/widget/SpinningView;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 46
    return-void
.end method
