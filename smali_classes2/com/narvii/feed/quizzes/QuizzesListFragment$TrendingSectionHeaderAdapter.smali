.class Lcom/narvii/feed/quizzes/QuizzesListFragment$TrendingSectionHeaderAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "QuizzesListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/feed/quizzes/QuizzesListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrendingSectionHeaderAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/feed/quizzes/QuizzesListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/feed/quizzes/QuizzesListFragment;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesListFragment$TrendingSectionHeaderAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesListFragment;

    .line 131
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const p1, 0x7f0b021e

    .line 151
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090369

    .line 152
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 153
    iget-object p3, p0, Lcom/narvii/feed/quizzes/QuizzesListFragment$TrendingSectionHeaderAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesListFragment;

    const v0, 0x7f0f10ef

    invoke-virtual {p3, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1
.end method
