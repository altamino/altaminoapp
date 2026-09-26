.class Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;->this$0:Lcom/narvii/quiz/QuizReviewListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    const p1, 0x7f0a0192

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    check-cast p1, Lcom/narvii/widget/FullscreenBackgroundView;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;->backgroundView:Lcom/narvii/widget/FullscreenBackgroundView;

    .line 17
    .line 18
    .line 19
    const p1, 0x7f0a0ba9

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    check-cast p1, Landroid/widget/TextView;

    .line 26
    .line 27
    iput-object p1, p0, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;->questionView:Landroid/widget/TextView;

    .line 28
    .line 29
    .line 30
    const p1, 0x7f0a0929

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    check-cast p1, Lcom/narvii/widget/NVImageView;

    .line 37
    .line 38
    iput-object p1, p0, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;->mediaView:Lcom/narvii/widget/NVImageView;

    .line 39
    .line 40
    .line 41
    const p1, 0x7f0a0934

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    check-cast p1, Lcom/narvii/widget/SpinningView;

    .line 48
    .line 49
    iput-object p1, p0, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;->mediaLoadingView:Lcom/narvii/widget/SpinningView;

    .line 50
    .line 51
    .line 52
    const p1, 0x7f0a092f

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    iput-object p1, p0, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;->mediaErrorView:Landroid/view/View;

    .line 59
    .line 60
    .line 61
    const p1, 0x7f0a011f

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    check-cast p1, Lcom/narvii/widget/EqualGridLayout;

    .line 68
    .line 69
    iput-object p1, p0, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;->gridLayout:Lcom/narvii/widget/EqualGridLayout;

    .line 70
    return-void
.end method
