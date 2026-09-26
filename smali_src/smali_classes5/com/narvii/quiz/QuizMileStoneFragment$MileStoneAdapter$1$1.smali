.class Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;


# direct methods
.method constructor <init>(Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1$1;->this$2:Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1$1;->this$2:Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;->this$1:Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Lcom/narvii/quiz/QuizMileStoneFragment;->B(Lcom/narvii/quiz/QuizMileStoneFragment;)Lcom/narvii/widget/HorizontalRecyclerView;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1$1$1;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1$1$1;-><init>(Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1$1;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 19
    .line 20
    iget-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1$1;->this$2:Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;->this$1:Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lcom/narvii/quiz/QuizMileStoneFragment;->B(Lcom/narvii/quiz/QuizMileStoneFragment;)Lcom/narvii/widget/HorizontalRecyclerView;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1$1;->this$2:Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;->this$1:Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Lcom/narvii/quiz/QuizMileStoneFragment;->q(Lcom/narvii/quiz/QuizMileStoneFragment;)I

    .line 38
    move-result v0

    .line 39
    .line 40
    add-int/lit8 v0, v0, 0x1

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 44
    .line 45
    iget-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1$1;->this$2:Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;

    .line 46
    .line 47
    iget-object p1, p1, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;->this$1:Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;

    .line 48
    .line 49
    iget-object p1, p1, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    .line 50
    .line 51
    const-string v0, "currentQuestion"

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 55
    move-result p1

    .line 56
    .line 57
    iget-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1$1;->this$2:Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;

    .line 58
    .line 59
    iget-object v0, v0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;->this$1:Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;

    .line 60
    .line 61
    iget-object v0, v0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    .line 62
    .line 63
    .line 64
    invoke-static {v0}, Lcom/narvii/quiz/QuizMileStoneFragment;->q(Lcom/narvii/quiz/QuizMileStoneFragment;)I

    .line 65
    move-result v0

    .line 66
    .line 67
    if-ne p1, v0, :cond_0

    .line 68
    .line 69
    iget-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1$1;->this$2:Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;

    .line 70
    .line 71
    .line 72
    invoke-static {p1}, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;->a(Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;)V

    .line 73
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
