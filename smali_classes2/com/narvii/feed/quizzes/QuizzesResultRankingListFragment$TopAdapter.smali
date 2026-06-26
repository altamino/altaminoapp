.class Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$TopAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "QuizzesResultRankingListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TopAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)V
    .locals 0

    .line 436
    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$TopAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 437
    invoke-direct {p0, p1}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const p1, 0x7f0b05d8

    .line 442
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 443
    iget-object p2, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$TopAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    invoke-virtual {p2}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    move-result p2

    .line 444
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 445
    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 446
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p1
.end method
