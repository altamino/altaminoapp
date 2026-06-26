.class Lcom/narvii/story/quiz/StoryQuizResultAdapter$BottomStatisticsAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "StoryQuizResultAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/story/quiz/StoryQuizResultAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BottomStatisticsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/quiz/StoryQuizResultAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/story/quiz/StoryQuizResultAdapter;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/narvii/story/quiz/StoryQuizResultAdapter$BottomStatisticsAdapter;->this$0:Lcom/narvii/story/quiz/StoryQuizResultAdapter;

    .line 261
    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

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
    .locals 4

    const p1, 0x7f0b05c9

    .line 281
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090bd6

    .line 282
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_1

    .line 284
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object v0, p0, Lcom/narvii/story/quiz/StoryQuizResultAdapter$BottomStatisticsAdapter;->this$0:Lcom/narvii/story/quiz/StoryQuizResultAdapter;

    invoke-static {v0}, Lcom/narvii/story/quiz/StoryQuizResultAdapter;->access$200(Lcom/narvii/story/quiz/StoryQuizResultAdapter;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7f0f0e74

    goto :goto_0

    :cond_0
    const v0, 0x7f0f0e76

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/narvii/story/quiz/StoryQuizResultAdapter$BottomStatisticsAdapter;->this$0:Lcom/narvii/story/quiz/StoryQuizResultAdapter;

    invoke-static {v3}, Lcom/narvii/story/quiz/StoryQuizResultAdapter;->access$200(Lcom/narvii/story/quiz/StoryQuizResultAdapter;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p3, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-object p1
.end method
