.class Lcom/narvii/quiz/QuizQuestionFragment$3$1;
.super Ljava/lang/Object;
.source "QuizQuestionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/quiz/QuizQuestionFragment$3;->onImageChanged(Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/quiz/QuizQuestionFragment$3;


# direct methods
.method constructor <init>(Lcom/narvii/quiz/QuizQuestionFragment$3;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$3$1;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 361
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$3$1;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$3;

    iget-object p1, p1, Lcom/narvii/quiz/QuizQuestionFragment$3;->val$mediaView:Lcom/narvii/widget/NVImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 362
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$3$1;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$3;

    iget-object v0, p1, Lcom/narvii/quiz/QuizQuestionFragment$3;->val$mediaView:Lcom/narvii/widget/NVImageView;

    iget-object p1, p1, Lcom/narvii/quiz/QuizQuestionFragment$3;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    iget-object p1, p1, Lcom/narvii/quiz/QuizQuestionFragment;->firstMedia:Lcom/narvii/model/Media;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 363
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$3$1;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$3;

    iget-object p1, p1, Lcom/narvii/quiz/QuizQuestionFragment$3;->val$mediaLoadingView:Lcom/narvii/widget/SpinningView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 364
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$3$1;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$3;

    iget-object p1, p1, Lcom/narvii/quiz/QuizQuestionFragment$3;->val$mediaErrorView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
