.class public Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter$RankingListTitleAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "QuizzesRankingListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RankingListTitleAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter$RankingListTitleAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter;

    .line 252
    invoke-direct {p0, p2}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const p1, 0x7f0b05d6

    .line 262
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 263
    iget-object p2, p0, Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter$RankingListTitleAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter;->getBackgroundColor(Z)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 264
    instance-of p2, p1, Lcom/narvii/widget/RadiusLayout;

    if-eqz p2, :cond_0

    .line 265
    move-object p2, p1

    check-cast p2, Lcom/narvii/widget/RadiusLayout;

    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter$RankingListTitleAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter;

    invoke-virtual {v0}, Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter;->getRadius()I

    move-result v0

    iget-object v1, p0, Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter$RankingListTitleAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter;

    invoke-virtual {v1}, Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter;->getRadius()I

    move-result v1

    invoke-virtual {p2, v0, v1, p3, p3}, Lcom/narvii/widget/RadiusLayout;->setRadius(IIII)V

    :cond_0
    return-object p1
.end method

.method protected isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
