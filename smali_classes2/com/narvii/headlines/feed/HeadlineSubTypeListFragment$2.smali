.class Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$2;
.super Ljava/lang/Object;
.source "HeadlineSubTypeListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$2;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 320
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$2;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    invoke-virtual {v0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->getSuitablePosition()I

    move-result v0

    .line 321
    iget-object v1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$2;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    invoke-static {v1, v0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->access$700(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;I)Lcom/narvii/model/Feed;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 322
    iget-object v2, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$2;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    invoke-static {v2}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->access$800(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;

    move-result-object v2

    iget-object v2, v2, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->fixedFeatureMode:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$2;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    invoke-virtual {v1}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 323
    iget-object v1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$2;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    invoke-virtual {v1}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f090433

    .line 325
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    :cond_0
    return-void
.end method
