.class Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1$1$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1$1;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1$1;


# direct methods
.method constructor <init>(Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1$1;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1$1$1;->this$3:Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1$1$1;->this$3:Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1$1;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1$1;->this$2:Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;->a(Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;)V

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1$1$1;->this$3:Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1$1;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1$1;->this$2:Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;->this$1:Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;

    .line 16
    .line 17
    iget-object p1, p1, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Lcom/narvii/quiz/QuizMileStoneFragment;->B(Lcom/narvii/quiz/QuizMileStoneFragment;)Lcom/narvii/widget/HorizontalRecyclerView;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 25
    :cond_0
    return-void
.end method
