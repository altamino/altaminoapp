.class Lcom/narvii/blog/post/QuizPostActivity$2;
.super Ljava/lang/Object;
.source "QuizPostActivity.java"

# interfaces
.implements Landroid/animation/LayoutTransition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/blog/post/QuizPostActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/blog/post/QuizPostActivity;


# direct methods
.method constructor <init>(Lcom/narvii/blog/post/QuizPostActivity;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/narvii/blog/post/QuizPostActivity$2;->this$0:Lcom/narvii/blog/post/QuizPostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public endTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0

    const/4 p1, 0x3

    if-ne p4, p1, :cond_1

    .line 79
    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result p1

    const p2, 0x7f0908b7

    if-ne p1, p2, :cond_1

    .line 80
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/QuizQuestion;

    if-eqz p1, :cond_0

    .line 82
    iget-object p2, p0, Lcom/narvii/blog/post/QuizPostActivity$2;->this$0:Lcom/narvii/blog/post/QuizPostActivity;

    invoke-static {p2}, Lcom/narvii/blog/post/QuizPostActivity;->access$000(Lcom/narvii/blog/post/QuizPostActivity;)Lcom/narvii/post/PostObject;

    move-result-object p2

    check-cast p2, Lcom/narvii/blog/post/BlogPost;

    iget-object p2, p2, Lcom/narvii/blog/post/BlogPost;->quizQuestionList:Ljava/util/List;

    if-eqz p2, :cond_0

    .line 83
    iget-object p2, p0, Lcom/narvii/blog/post/QuizPostActivity$2;->this$0:Lcom/narvii/blog/post/QuizPostActivity;

    invoke-static {p2}, Lcom/narvii/blog/post/QuizPostActivity;->access$100(Lcom/narvii/blog/post/QuizPostActivity;)Lcom/narvii/post/PostObject;

    move-result-object p2

    check-cast p2, Lcom/narvii/blog/post/BlogPost;

    iget-object p2, p2, Lcom/narvii/blog/post/BlogPost;->quizQuestionList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 86
    :cond_0
    iget-object p1, p0, Lcom/narvii/blog/post/QuizPostActivity$2;->this$0:Lcom/narvii/blog/post/QuizPostActivity;

    invoke-static {p1}, Lcom/narvii/blog/post/QuizPostActivity;->access$200(Lcom/narvii/blog/post/QuizPostActivity;)Lcom/narvii/post/PostObject;

    move-result-object p2

    check-cast p2, Lcom/narvii/blog/post/BlogPost;

    iget-object p2, p2, Lcom/narvii/blog/post/BlogPost;->quizQuestionList:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/narvii/blog/post/QuizPostActivity;->updateQuiz(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public startTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0

    return-void
.end method
