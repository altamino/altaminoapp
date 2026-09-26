.class Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$2;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$2;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->getSuitablePosition()I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$2;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->K(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;I)Lcom/narvii/model/Feed;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object v2, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$2;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    .line 17
    .line 18
    .line 19
    invoke-static {v2}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->t(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    iget-object v2, v2, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->fixedFeatureMode:Ljava/util/HashMap;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 30
    move-result v1

    .line 31
    .line 32
    if-nez v1, :cond_0

    .line 33
    .line 34
    iget-object v1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$2;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 42
    move-result v1

    .line 43
    .line 44
    if-le v1, v0, :cond_0

    .line 45
    .line 46
    iget-object v1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$2;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    if-eqz v0, :cond_0

    .line 57
    .line 58
    .line 59
    const v1, 0x7f0a056a

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    if-eqz v0, :cond_0

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 69
    :cond_0
    return-void
.end method
