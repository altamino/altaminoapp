.class Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$2;
.super Ljava/lang/Object;
.source "QuizzesResultRankingListFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;
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

    .line 336
    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$2;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    .line 343
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 346
    :cond_0
    iget-object p3, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$2;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    invoke-static {p3}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->access$100(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Landroid/widget/ListView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result p3

    .line 348
    iget-object p4, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$2;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    invoke-static {p4}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->access$200(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)I

    move-result p4

    const/4 v0, 0x1

    sub-int/2addr p4, v0

    const/4 v1, 0x0

    if-le p3, p4, :cond_1

    .line 349
    iget-object p3, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$2;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    invoke-static {p3}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->access$300(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Z

    move-result p3

    xor-int/2addr p3, v0

    .line 352
    iget-object p4, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$2;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    invoke-static {p4, v0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->access$302(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;Z)Z

    goto :goto_0

    .line 354
    :cond_1
    iget-object p3, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$2;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    invoke-static {p3}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->access$300(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Z

    move-result p3

    .line 357
    iget-object p4, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$2;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    invoke-static {p4, v1}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->access$302(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;Z)Z

    :goto_0
    if-eqz p3, :cond_2

    .line 360
    iget-object p3, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$2;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    invoke-virtual {p3}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    .line 362
    :cond_2
    iget-object p3, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$2;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    invoke-static {p3}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->access$400(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Lcom/narvii/model/CurrentQuizzesResult;

    move-result-object p3

    if-eqz p3, :cond_8

    .line 363
    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    .line 364
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    .line 366
    :goto_1
    iget-object p3, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$2;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    invoke-static {p3}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->access$500(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)I

    move-result p3

    if-ne p2, p3, :cond_5

    .line 367
    iget-object p3, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$2;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    invoke-static {p3}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->access$600(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)I

    move-result p3

    const/16 p4, 0x32

    if-le p1, p3, :cond_4

    .line 368
    iget-object p3, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$2;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    invoke-static {p3}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->access$600(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)I

    move-result p3

    sub-int p3, p1, p3

    if-le p3, p4, :cond_7

    .line 369
    iget-object p3, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$2;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    invoke-static {p3, p2, p1}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->access$700(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;II)V

    goto :goto_2

    .line 371
    :cond_4
    iget-object p3, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$2;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    invoke-static {p3}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->access$600(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)I

    move-result p3

    if-ge p1, p3, :cond_7

    .line 372
    iget-object p3, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$2;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    invoke-static {p3}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->access$600(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)I

    move-result p3

    sub-int/2addr p3, p1

    if-le p3, p4, :cond_7

    .line 373
    iget-object p3, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$2;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    invoke-static {p3, p2, p1}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->access$800(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;II)V

    goto :goto_2

    .line 377
    :cond_5
    iget-object p3, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$2;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    invoke-static {p3}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->access$500(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)I

    move-result p3

    if-ge p2, p3, :cond_6

    .line 378
    iget-object p3, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$2;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    invoke-static {p3, p2, p1}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->access$700(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;II)V

    goto :goto_2

    .line 380
    :cond_6
    iget-object p3, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$2;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    invoke-static {p3, p2, p1}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->access$800(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;II)V

    .line 383
    :cond_7
    :goto_2
    iget-object p3, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$2;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    invoke-static {p3, p1}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->access$602(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;I)I

    .line 384
    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$2;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    invoke-static {p1, p2}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->access$502(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;I)I

    .line 387
    :cond_8
    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$2;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    invoke-static {p1}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->access$400(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Lcom/narvii/model/CurrentQuizzesResult;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$2;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    iget-object p3, p1, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->resultAdapter:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;

    if-eqz p3, :cond_9

    if-ne p2, v0, :cond_9

    .line 389
    invoke-static {p1}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->access$100(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 390
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p3

    add-int/2addr p2, p3

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p3

    int-to-float p3, p3

    const/high16 p4, 0x3f800000    # 1.0f

    mul-float p3, p3, p4

    div-float/2addr p2, p3

    .line 391
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :cond_9
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
