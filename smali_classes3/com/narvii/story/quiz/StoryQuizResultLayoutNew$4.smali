.class Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$4;
.super Ljava/lang/Object;
.source "StoryQuizResultLayoutNew.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->onListViewCreated(Landroid/widget/ListView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;

.field final synthetic val$list:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;Landroid/widget/ListView;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$4;->this$0:Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;

    iput-object p2, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$4;->val$list:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    const/4 p2, 0x0

    .line 182
    invoke-virtual {p1, p2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 183
    iget-object p3, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$4;->val$list:Landroid/widget/ListView;

    invoke-virtual {p3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result p3

    if-gtz p3, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    add-int/2addr p3, p1

    iget-object p1, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$4;->this$0:Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;

    invoke-static {p1}, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->access$700(Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;)I

    move-result p1

    if-ge p3, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 185
    :goto_1
    iget-object p3, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$4;->this$0:Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;

    invoke-static {p3}, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->access$800(Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;)Landroid/view/View;

    move-result-object p3

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 p2, 0x4

    :goto_2
    invoke-virtual {p3, p2}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_3

    .line 187
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 188
    iget-object p2, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$4;->this$0:Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;

    invoke-static {p2}, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->access$800(Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 189
    iget-object p2, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$4;->this$0:Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;

    invoke-virtual {p2}, Lcom/narvii/list/NVListViewWrapper;->getListView()Landroid/widget/ListView;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/NVListView;

    invoke-virtual {p2, p1}, Lcom/narvii/widget/NVListView;->setClipOffsetRect(Landroid/graphics/Rect;)V

    goto :goto_3

    .line 191
    :cond_3
    iget-object p1, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$4;->this$0:Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;

    invoke-virtual {p1}, Lcom/narvii/list/NVListViewWrapper;->getListView()Landroid/widget/ListView;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVListView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVListView;->setClipOffsetRect(Landroid/graphics/Rect;)V

    :goto_3
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
