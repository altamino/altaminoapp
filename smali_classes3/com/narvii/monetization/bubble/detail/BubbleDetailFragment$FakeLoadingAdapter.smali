.class Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment$FakeLoadingAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "BubbleDetailFragment.java"


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

    .line 341
    iput-object p1, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment$FakeLoadingAdapter;->this$0:Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;

    .line 342
    invoke-direct {p0, p1}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment$FakeLoadingAdapter;->this$0:Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;

    iget-object v0, v0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->recommendBubblesAdapter:Lcom/narvii/monetization/store/StoreRecommendAdapter;

    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->isListShown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment$FakeLoadingAdapter;->this$0:Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;

    iget-object v0, v0, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;->recommendBubblesAdapter:Lcom/narvii/monetization/store/StoreRecommendAdapter;

    .line 355
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->errorMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const p1, 0x7f0b03be

    .line 347
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
