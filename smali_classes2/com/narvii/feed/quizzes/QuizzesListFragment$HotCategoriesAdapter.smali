.class Lcom/narvii/feed/quizzes/QuizzesListFragment$HotCategoriesAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "QuizzesListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/feed/quizzes/QuizzesListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HotCategoriesAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/feed/quizzes/QuizzesListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/feed/quizzes/QuizzesListFragment;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesListFragment$HotCategoriesAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesListFragment;

    .line 93
    invoke-direct {p0, p1}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method

.method private goToBestQuizzes()V
    .locals 1

    .line 117
    const-class v0, Lcom/narvii/feed/quizzes/BestQuizzesListFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 118
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private goToPlayGroundQuizzes()V
    .locals 1

    .line 122
    const-class v0, Lcom/narvii/feed/quizzes/PlaygroundQuizzesListFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 123
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const p1, 0x7f0b05d1

    .line 98
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09084a

    .line 99
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09012a

    .line 100
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method protected onSubviewClick(Landroid/view/View;Z)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09012a

    if-ne v0, v1, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/narvii/feed/quizzes/QuizzesListFragment$HotCategoriesAdapter;->goToBestQuizzes()V

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09084a

    if-ne v0, v1, :cond_1

    .line 110
    invoke-direct {p0}, Lcom/narvii/feed/quizzes/QuizzesListFragment$HotCategoriesAdapter;->goToPlayGroundQuizzes()V

    .line 113
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->onSubviewClick(Landroid/view/View;Z)Z

    move-result p1

    return p1
.end method
