.class Lcom/narvii/quiz/QuizQuestionFragment$3;
.super Ljava/lang/Object;
.source "QuizQuestionFragment.java"

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

    .line 346
    iput-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$3;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    iput-object p2, p0, Lcom/narvii/quiz/QuizQuestionFragment$3;->val$mediaLoadingView:Lcom/narvii/widget/SpinningView;

    iput-object p3, p0, Lcom/narvii/quiz/QuizQuestionFragment$3;->val$mediaErrorView:Landroid/view/View;

    iput-object p4, p0, Lcom/narvii/quiz/QuizQuestionFragment$3;->val$mediaView:Lcom/narvii/widget/NVImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageChanged(Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V
    .locals 0

    const/16 p1, 0x8

    const/4 p3, 0x4

    if-ne p2, p3, :cond_0

    .line 350
    iget-object p2, p0, Lcom/narvii/quiz/QuizQuestionFragment$3;->val$mediaLoadingView:Lcom/narvii/widget/SpinningView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 351
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$3;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/narvii/quiz/QuizQuestionFragment;->access$1002(Lcom/narvii/quiz/QuizQuestionFragment;Z)Z

    .line 352
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$3;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-static {p1}, Lcom/narvii/quiz/QuizQuestionFragment;->access$1100(Lcom/narvii/quiz/QuizQuestionFragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$3;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-static {p1}, Lcom/narvii/quiz/QuizQuestionFragment;->access$1200(Lcom/narvii/quiz/QuizQuestionFragment;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 353
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$3;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-static {p1}, Lcom/narvii/quiz/QuizQuestionFragment;->access$1300(Lcom/narvii/quiz/QuizQuestionFragment;)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x2

    if-ne p2, p3, :cond_1

    .line 356
    iget-object p2, p0, Lcom/narvii/quiz/QuizQuestionFragment$3;->val$mediaLoadingView:Lcom/narvii/widget/SpinningView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 357
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$3;->val$mediaErrorView:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 358
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$3;->val$mediaErrorView:Landroid/view/View;

    const p2, 0x7f09097a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/narvii/quiz/QuizQuestionFragment$3$1;

    invoke-direct {p2, p0}, Lcom/narvii/quiz/QuizQuestionFragment$3$1;-><init>(Lcom/narvii/quiz/QuizQuestionFragment$3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method
