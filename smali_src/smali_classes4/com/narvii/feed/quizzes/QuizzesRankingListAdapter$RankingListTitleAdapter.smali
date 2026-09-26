.class public Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter$RankingListTitleAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter$RankingListTitleAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
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

    .line 1
    .line 2
    .line 3
    const p1, 0x7f0d068d

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    iget-object p2, p0, Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter$RankingListTitleAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter;

    .line 10
    const/4 p3, 0x0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, p3}, Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter;->getBackgroundColor(Z)I

    .line 14
    move-result p2

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 18
    .line 19
    instance-of p2, p1, Lcom/narvii/widget/RadiusLayout;

    .line 20
    .line 21
    if-eqz p2, :cond_0

    .line 22
    move-object p2, p1

    .line 23
    .line 24
    check-cast p2, Lcom/narvii/widget/RadiusLayout;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter$RankingListTitleAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter;->getRadius()I

    .line 30
    move-result v0

    .line 31
    .line 32
    iget-object v1, p0, Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter$RankingListTitleAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/narvii/feed/quizzes/QuizzesRankingListAdapter;->getRadius()I

    .line 36
    move-result v1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, v0, v1, p3, p3}, Lcom/narvii/widget/RadiusLayout;->setRadius(IIII)V

    .line 40
    :cond_0
    return-object p1
.end method

.method protected isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
