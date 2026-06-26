.class Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "QuizReviewListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/quiz/QuizReviewListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QuizQuestionViewHolder"
.end annotation


# instance fields
.field backgroundView:Lcom/narvii/widget/FullscreenBackgroundView;

.field gridLayout:Lcom/narvii/widget/EqualGridLayout;

.field mediaErrorView:Landroid/view/View;

.field mediaLoadingView:Lcom/narvii/widget/SpinningView;

.field mediaView:Lcom/narvii/widget/NVImageView;

.field questionView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/narvii/quiz/QuizReviewListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/quiz/QuizReviewListFragment;Landroid/view/View;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;->this$0:Lcom/narvii/quiz/QuizReviewListFragment;

    .line 242
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090103

    .line 243
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/FullscreenBackgroundView;

    iput-object p1, p0, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;->backgroundView:Lcom/narvii/widget/FullscreenBackgroundView;

    const p1, 0x7f0908ea

    .line 244
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;->questionView:Landroid/widget/TextView;

    const p1, 0x7f0906cc

    .line 245
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVImageView;

    iput-object p1, p0, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;->mediaView:Lcom/narvii/widget/NVImageView;

    const p1, 0x7f0906d5

    .line 246
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/SpinningView;

    iput-object p1, p0, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;->mediaLoadingView:Lcom/narvii/widget/SpinningView;

    const p1, 0x7f0906d1

    .line 247
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;->mediaErrorView:Landroid/view/View;

    const p1, 0x7f0900b4

    .line 248
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/EqualGridLayout;

    iput-object p1, p0, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;->gridLayout:Lcom/narvii/widget/EqualGridLayout;

    return-void
.end method
