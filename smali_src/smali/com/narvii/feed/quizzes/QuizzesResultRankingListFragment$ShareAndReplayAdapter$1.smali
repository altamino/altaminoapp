.class Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$ShareAndReplayAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$ShareAndReplayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$ShareAndReplayAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$ShareAndReplayAdapter;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$ShareAndReplayAdapter$1;->this$1:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$ShareAndReplayAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$ShareAndReplayAdapter$1;->this$1:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$ShareAndReplayAdapter;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$ShareAndReplayAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->O(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Landroid/view/animation/Animation;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 12
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 4
    return-void
.end method
