.class Lcom/narvii/scene/quiz/SceneQuizView$8;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizView$8;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView$8;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    .line 3
    .line 4
    iget v1, v0, Lcom/narvii/scene/quiz/SceneQuizView;->remainingSeconds:I

    .line 5
    const/4 v2, 0x1

    .line 6
    .line 7
    if-lez v1, :cond_0

    .line 8
    .line 9
    iget-object v1, v0, Lcom/narvii/scene/quiz/SceneQuizView;->skipText:Landroid/widget/TextView;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    sget v3, Lcom/narvii/mediaeditor/R$string;->skip_n_second:I

    .line 16
    .line 17
    new-array v4, v2, [Ljava/lang/Object;

    .line 18
    .line 19
    iget-object v5, p0, Lcom/narvii/scene/quiz/SceneQuizView$8;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    .line 20
    .line 21
    iget v5, v5, Lcom/narvii/scene/quiz/SceneQuizView;->remainingSeconds:I

    .line 22
    .line 23
    .line 24
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    move-result-object v5

    .line 26
    const/4 v6, 0x0

    .line 27
    .line 28
    aput-object v5, v4, v6

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView$8;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    .line 38
    .line 39
    iget v1, v0, Lcom/narvii/scene/quiz/SceneQuizView;->remainingSeconds:I

    .line 40
    sub-int/2addr v1, v2

    .line 41
    .line 42
    iput v1, v0, Lcom/narvii/scene/quiz/SceneQuizView;->remainingSeconds:I

    .line 43
    .line 44
    if-ltz v1, :cond_1

    .line 45
    .line 46
    const-wide/16 v0, 0x3e8

    .line 47
    .line 48
    .line 49
    invoke-static {p0, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :cond_1
    iget-object v0, v0, Lcom/narvii/scene/quiz/SceneQuizView;->skipText:Landroid/widget/TextView;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 56
    :goto_0
    return-void
.end method
