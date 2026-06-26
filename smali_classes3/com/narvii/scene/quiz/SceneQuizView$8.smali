.class Lcom/narvii/scene/quiz/SceneQuizView$8;
.super Ljava/lang/Object;
.source "SceneQuizView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/quiz/SceneQuizView;->playQuizQuestion(Ljava/lang/String;Lcom/narvii/model/QuizQuestion;Lcom/narvii/scene/ScenePlayRecord;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/quiz/SceneQuizView;


# direct methods
.method constructor <init>(Lcom/narvii/scene/quiz/SceneQuizView;)V
    .locals 0

    .line 354
    iput-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizView$8;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 357
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView$8;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    iget v1, v0, Lcom/narvii/scene/quiz/SceneQuizView;->remainingSeconds:I

    const/4 v2, 0x1

    if-lez v1, :cond_0

    .line 358
    iget-object v1, v0, Lcom/narvii/scene/quiz/SceneQuizView;->skipText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/narvii/mediaeditor/R$string;->skip_n_second:I

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/narvii/scene/quiz/SceneQuizView$8;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    iget v6, v6, Lcom/narvii/scene/quiz/SceneQuizView;->remainingSeconds:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView$8;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    iget v1, v0, Lcom/narvii/scene/quiz/SceneQuizView;->remainingSeconds:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/narvii/scene/quiz/SceneQuizView;->remainingSeconds:I

    .line 361
    iget v1, v0, Lcom/narvii/scene/quiz/SceneQuizView;->remainingSeconds:I

    if-ltz v1, :cond_1

    const-wide/16 v0, 0x3e8

    .line 362
    invoke-static {p0, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 364
    :cond_1
    iget-object v0, v0, Lcom/narvii/scene/quiz/SceneQuizView;->skipText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->performClick()Z

    :goto_0
    return-void
.end method
