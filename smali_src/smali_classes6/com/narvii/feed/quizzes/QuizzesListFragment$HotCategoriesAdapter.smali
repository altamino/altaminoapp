.class Lcom/narvii/feed/quizzes/QuizzesListFragment$HotCategoriesAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesListFragment$HotCategoriesAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method

.method private goToBestQuizzes()V
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/narvii/feed/quizzes/BestQuizzesListFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v0}, Lcom/narvii/feed/quizzes/QuizzesListFragment$HotCategoriesAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 10
    return-void
.end method

.method private goToPlayGroundQuizzes()V
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/narvii/feed/quizzes/PlaygroundQuizzesListFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v0}, Lcom/narvii/feed/quizzes/QuizzesListFragment$HotCategoriesAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 10
    return-void
.end method

.method public static safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/list/NVAdapter;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1
    .line 2
    .line 3
    const p1, 0x7f0d0688

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    const p2, 0x7f0a0b00

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    .line 21
    .line 22
    const p2, 0x7f0a01c5

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    move-result-object p2

    .line 27
    .line 28
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    return-object p1
.end method

.method protected onSubviewClick(Landroid/view/View;Z)Z
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    const v1, 0x7f0a01c5

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/narvii/feed/quizzes/QuizzesListFragment$HotCategoriesAdapter;->goToBestQuizzes()V

    .line 15
    goto :goto_0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 19
    move-result v0

    .line 20
    .line 21
    .line 22
    const v1, 0x7f0a0b00

    .line 23
    .line 24
    if-ne v0, v1, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lcom/narvii/feed/quizzes/QuizzesListFragment$HotCategoriesAdapter;->goToPlayGroundQuizzes()V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->onSubviewClick(Landroid/view/View;Z)Z

    .line 31
    move-result p1

    .line 32
    return p1
.end method
