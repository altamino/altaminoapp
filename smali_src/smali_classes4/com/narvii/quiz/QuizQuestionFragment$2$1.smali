.class Lcom/narvii/quiz/QuizQuestionFragment$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/quiz/QuizQuestionFragment$2;->onImageChanged(Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/quiz/QuizQuestionFragment$2;


# direct methods
.method constructor <init>(Lcom/narvii/quiz/QuizQuestionFragment$2;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$2$1;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$2;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$2$1;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$2;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/quiz/QuizQuestionFragment$2;->val$mediaView:Lcom/narvii/widget/NVImageView;

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$2$1;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$2;

    .line 11
    .line 12
    iget-object v0, p1, Lcom/narvii/quiz/QuizQuestionFragment$2;->val$mediaView:Lcom/narvii/widget/NVImageView;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/narvii/quiz/QuizQuestionFragment$2;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/narvii/quiz/QuizQuestionFragment;->firstMedia:Lcom/narvii/model/Media;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 20
    .line 21
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$2$1;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$2;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/narvii/quiz/QuizQuestionFragment$2;->val$mediaLoadingView:Lcom/narvii/widget/SpinningView;

    .line 24
    const/4 v0, 0x0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$2$1;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$2;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/narvii/quiz/QuizQuestionFragment$2;->val$mediaErrorView:Landroid/view/View;

    .line 32
    .line 33
    const/16 v0, 0x8

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 37
    return-void
.end method
