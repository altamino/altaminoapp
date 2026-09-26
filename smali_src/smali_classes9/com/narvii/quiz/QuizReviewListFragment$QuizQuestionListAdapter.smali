.class Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/quiz/QuizReviewListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QuizQuestionListAdapter"
.end annotation


# static fields
.field private static final TYPE_MEDIA_LIST:I = 0x0

.field private static final TYPE_TEXT_LIST:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/narvii/quiz/QuizReviewListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/quiz/QuizReviewListFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionListAdapter;->this$0:Lcom/narvii/quiz/QuizReviewListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionListAdapter;->this$0:Lcom/narvii/quiz/QuizReviewListFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/quiz/QuizReviewListFragment;->n(Lcom/narvii/quiz/QuizReviewListFragment;)Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionListAdapter;->this$0:Lcom/narvii/quiz/QuizReviewListFragment;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/quiz/QuizReviewListFragment;->n(Lcom/narvii/quiz/QuizReviewListFragment;)Ljava/util/List;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    move-result v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionListAdapter;->this$0:Lcom/narvii/quiz/QuizReviewListFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/quiz/QuizReviewListFragment;->n(Lcom/narvii/quiz/QuizReviewListFragment;)Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    check-cast p1, Lcom/narvii/model/QuizQuestion;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p1, Lcom/narvii/model/QuizQuestion;->mediaList:Ljava/util/List;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    const/4 v0, 0x0

    .line 20
    .line 21
    .line 22
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    return v0

    .line 27
    :cond_0
    const/4 p1, 0x1

    .line 28
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionListAdapter;->this$0:Lcom/narvii/quiz/QuizReviewListFragment;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/narvii/quiz/QuizReviewListFragment;->n(Lcom/narvii/quiz/QuizReviewListFragment;)Ljava/util/List;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    check-cast p2, Lcom/narvii/model/QuizQuestion;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionListAdapter;->this$0:Lcom/narvii/quiz/QuizReviewListFragment;

    .line 21
    .line 22
    .line 23
    invoke-static {v0, p2, p1}, Lcom/narvii/quiz/QuizReviewListFragment;->o(Lcom/narvii/quiz/QuizReviewListFragment;Lcom/narvii/model/QuizQuestion;Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;)V

    .line 24
    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0d0301

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x1

    .line 8
    .line 9
    if-ne p2, v1, :cond_1

    .line 10
    .line 11
    .line 12
    const v0, 0x7f0d02ff

    .line 13
    .line 14
    .line 15
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    .line 19
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 20
    move-result-object p2

    .line 21
    const/4 v1, 0x0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    new-instance p2, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionListAdapter;->this$0:Lcom/narvii/quiz/QuizReviewListFragment;

    .line 30
    .line 31
    .line 32
    invoke-direct {p2, v0, p1}, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;-><init>(Lcom/narvii/quiz/QuizReviewListFragment;Landroid/view/View;)V

    .line 33
    return-object p2
.end method
