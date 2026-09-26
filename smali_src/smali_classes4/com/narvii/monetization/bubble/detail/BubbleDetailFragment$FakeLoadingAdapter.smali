.class Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment$FakeLoadingAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FakeLoadingAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment$FakeLoadingAdapter;->this$0:Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment$FakeLoadingAdapter;->this$0:Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->recommendBubblesAdapter:Lcom/narvii/monetization/store/StoreRecommendAdapter;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->isListShown()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment$FakeLoadingAdapter;->this$0:Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->recommendBubblesAdapter:Lcom/narvii/monetization/store/StoreRecommendAdapter;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->errorMessage()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1
    .line 2
    .line 3
    const p1, 0x7f0d03f4

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method
