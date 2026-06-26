.class Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$7;
.super Ljava/lang/Object;
.source "QuizzesResultRankingListFragment.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->updateNextQuiz()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)V
    .locals 0

    .line 940
    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$7;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 943
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$7;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    invoke-static {v0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->access$1400(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 948
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    return-void
.end method
