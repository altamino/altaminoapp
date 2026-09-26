.class Lcom/narvii/feed/quizzes/QuizzesListFragment$TrendingSectionHeaderAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesListFragment$TrendingSectionHeaderAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
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

    .line 1
    .line 2
    .line 3
    const p1, 0x7f0d024c

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    const p2, 0x7f0a0452

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    check-cast p2, Landroid/widget/TextView;

    .line 17
    .line 18
    iget-object p3, p0, Lcom/narvii/feed/quizzes/QuizzesListFragment$TrendingSectionHeaderAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesListFragment;

    .line 19
    .line 20
    .line 21
    const v0, 0x7f1211f9

    .line 22
    .line 23
    .line 24
    invoke-virtual {p3, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 25
    move-result-object p3

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    return-object p1
.end method
