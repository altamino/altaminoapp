.class public Lcom/narvii/feed/quizzes/TrendingQuizListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "TrendingQuizListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/feed/quizzes/TrendingQuizListFragment$TrendingQuizzesListAdapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0

    .line 28
    new-instance p1, Lcom/narvii/feed/quizzes/TrendingQuizListFragment$TrendingQuizzesListAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/feed/quizzes/TrendingQuizListFragment$TrendingQuizzesListAdapter;-><init>(Lcom/narvii/feed/quizzes/TrendingQuizListFragment;)V

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 22
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0f10ef

    .line 23
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    return-void
.end method
