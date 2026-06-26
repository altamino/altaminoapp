.class Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "QuizReviewListFragment.java"


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

    .line 190
    iput-object p1, p0, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionListAdapter;->this$0:Lcom/narvii/quiz/QuizReviewListFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionListAdapter;->this$0:Lcom/narvii/quiz/QuizReviewListFragment;

    invoke-static {v0}, Lcom/narvii/quiz/QuizReviewListFragment;->access$100(Lcom/narvii/quiz/QuizReviewListFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionListAdapter;->this$0:Lcom/narvii/quiz/QuizReviewListFragment;

    invoke-static {v0}, Lcom/narvii/quiz/QuizReviewListFragment;->access$100(Lcom/narvii/quiz/QuizReviewListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionListAdapter;->this$0:Lcom/narvii/quiz/QuizReviewListFragment;

    invoke-static {v0}, Lcom/narvii/quiz/QuizReviewListFragment;->access$100(Lcom/narvii/quiz/QuizReviewListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/QuizQuestion;

    if-eqz p1, :cond_0

    .line 198
    iget-object p1, p1, Lcom/narvii/model/QuizQuestion;->mediaList:Ljava/util/List;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 219
    instance-of v0, p1, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;

    if-eqz v0, :cond_0

    .line 220
    check-cast p1, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;

    .line 221
    iget-object v0, p0, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionListAdapter;->this$0:Lcom/narvii/quiz/QuizReviewListFragment;

    invoke-static {v0}, Lcom/narvii/quiz/QuizReviewListFragment;->access$100(Lcom/narvii/quiz/QuizReviewListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/QuizQuestion;

    .line 222
    iget-object v0, p0, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionListAdapter;->this$0:Lcom/narvii/quiz/QuizReviewListFragment;

    invoke-static {v0, p2, p1}, Lcom/narvii/quiz/QuizReviewListFragment;->access$200(Lcom/narvii/quiz/QuizReviewListFragment;Lcom/narvii/model/QuizQuestion;Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;)V

    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    const v0, 0x7f0b02ce

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    const v0, 0x7f0b02cc

    .line 213
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 214
    new-instance p2, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;

    iget-object v0, p0, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionListAdapter;->this$0:Lcom/narvii/quiz/QuizReviewListFragment;

    invoke-direct {p2, v0, p1}, Lcom/narvii/quiz/QuizReviewListFragment$QuizQuestionViewHolder;-><init>(Lcom/narvii/quiz/QuizReviewListFragment;Landroid/view/View;)V

    return-object p2
.end method
