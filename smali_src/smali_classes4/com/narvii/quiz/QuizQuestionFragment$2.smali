.class Lcom/narvii/quiz/QuizQuestionFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/widget/NVImageView$OnImageChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/quiz/QuizQuestionFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/quiz/QuizQuestionFragment;

.field final synthetic val$mediaErrorView:Landroid/view/View;

.field final synthetic val$mediaLoadingView:Lcom/narvii/widget/SpinningView;

.field final synthetic val$mediaView:Lcom/narvii/widget/NVImageView;


# direct methods
.method constructor <init>(Lcom/narvii/quiz/QuizQuestionFragment;Lcom/narvii/widget/SpinningView;Landroid/view/View;Lcom/narvii/widget/NVImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$2;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/quiz/QuizQuestionFragment$2;->val$mediaLoadingView:Lcom/narvii/widget/SpinningView;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/quiz/QuizQuestionFragment$2;->val$mediaErrorView:Landroid/view/View;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/quiz/QuizQuestionFragment$2;->val$mediaView:Lcom/narvii/widget/NVImageView;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public onImageChanged(Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V
    .locals 0

    .line 1
    const/4 p1, 0x4

    .line 2
    .line 3
    const/16 p3, 0x8

    .line 4
    .line 5
    if-ne p2, p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$2;->val$mediaLoadingView:Lcom/narvii/widget/SpinningView;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$2;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 13
    const/4 p2, 0x1

    .line 14
    .line 15
    .line 16
    invoke-static {p1, p2}, Lcom/narvii/quiz/QuizQuestionFragment;->I(Lcom/narvii/quiz/QuizQuestionFragment;Z)V

    .line 17
    .line 18
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$2;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lcom/narvii/quiz/QuizQuestionFragment;->x(Lcom/narvii/quiz/QuizQuestionFragment;)Z

    .line 22
    move-result p1

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$2;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Lcom/narvii/quiz/QuizQuestionFragment;->B(Lcom/narvii/quiz/QuizQuestionFragment;)Z

    .line 30
    move-result p1

    .line 31
    .line 32
    if-nez p1, :cond_1

    .line 33
    .line 34
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$2;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 35
    .line 36
    .line 37
    invoke-static {p1}, Lcom/narvii/quiz/QuizQuestionFragment;->O(Lcom/narvii/quiz/QuizQuestionFragment;)V

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 p1, 0x2

    .line 40
    .line 41
    if-ne p2, p1, :cond_1

    .line 42
    .line 43
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$2;->val$mediaLoadingView:Lcom/narvii/widget/SpinningView;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$2;->val$mediaErrorView:Landroid/view/View;

    .line 49
    const/4 p2, 0x0

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 53
    .line 54
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$2;->val$mediaErrorView:Landroid/view/View;

    .line 55
    .line 56
    .line 57
    const p2, 0x7f0a0c38

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    new-instance p2, Lcom/narvii/quiz/QuizQuestionFragment$2$1;

    .line 64
    .line 65
    .line 66
    invoke-direct {p2, p0}, Lcom/narvii/quiz/QuizQuestionFragment$2$1;-><init>(Lcom/narvii/quiz/QuizQuestionFragment$2;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    :cond_1
    :goto_0
    return-void
.end method
