.class Lcom/narvii/master/search/GlobalTopicSearchFragment$1;
.super Ljava/lang/Object;
.source "GlobalTopicSearchFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/search/GlobalTopicSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/search/GlobalTopicSearchFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/search/GlobalTopicSearchFragment;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment$1;->this$0:Lcom/narvii/master/search/GlobalTopicSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment$1;->this$0:Lcom/narvii/master/search/GlobalTopicSearchFragment;

    invoke-static {v0}, Lcom/narvii/master/search/GlobalTopicSearchFragment;->access$000(Lcom/narvii/master/search/GlobalTopicSearchFragment;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment$1;->this$0:Lcom/narvii/master/search/GlobalTopicSearchFragment;

    iget-object v0, v0, Lcom/narvii/master/search/GlobalTopicSearchFragment;->adapter:Lcom/narvii/master/search/GlobalTopicSearchFragment$Adapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/narvii/master/search/GlobalTopicSearchFragment$Adapter;->keyword:Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment$1;->this$0:Lcom/narvii/master/search/GlobalTopicSearchFragment;

    invoke-static {v1}, Lcom/narvii/master/search/GlobalTopicSearchFragment;->access$100(Lcom/narvii/master/search/GlobalTopicSearchFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment$1;->this$0:Lcom/narvii/master/search/GlobalTopicSearchFragment;

    iget-object v1, v0, Lcom/narvii/master/search/GlobalTopicSearchFragment;->adapter:Lcom/narvii/master/search/GlobalTopicSearchFragment$Adapter;

    if-eqz v1, :cond_3

    .line 46
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/search/ISearchBarHost;

    if-eqz v0, :cond_2

    .line 47
    iget-object v0, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment$1;->this$0:Lcom/narvii/master/search/GlobalTopicSearchFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/search/ISearchBarHost;

    iget-object v1, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment$1;->this$0:Lcom/narvii/master/search/GlobalTopicSearchFragment;

    invoke-static {v1}, Lcom/narvii/master/search/GlobalTopicSearchFragment;->access$100(Lcom/narvii/master/search/GlobalTopicSearchFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/narvii/search/ISearchBarHost;->onChildFragmentRealtimeSearch(Lcom/narvii/app/NVFragment;Ljava/lang/String;)V

    .line 49
    :cond_2
    iget-object v0, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment$1;->this$0:Lcom/narvii/master/search/GlobalTopicSearchFragment;

    iget-object v1, v0, Lcom/narvii/master/search/GlobalTopicSearchFragment;->adapter:Lcom/narvii/master/search/GlobalTopicSearchFragment$Adapter;

    invoke-static {v0}, Lcom/narvii/master/search/GlobalTopicSearchFragment;->access$100(Lcom/narvii/master/search/GlobalTopicSearchFragment;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/narvii/master/search/GlobalTopicSearchFragment$Adapter;->keyword:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment$1;->this$0:Lcom/narvii/master/search/GlobalTopicSearchFragment;

    iget-object v0, v0, Lcom/narvii/master/search/GlobalTopicSearchFragment;->adapter:Lcom/narvii/master/search/GlobalTopicSearchFragment$Adapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    .line 52
    :cond_3
    iget-object v0, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment$1;->this$0:Lcom/narvii/master/search/GlobalTopicSearchFragment;

    iget-object v1, v0, Lcom/narvii/master/search/GlobalTopicSearchFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    if-eqz v1, :cond_4

    .line 53
    invoke-static {v0}, Lcom/narvii/master/search/GlobalTopicSearchFragment;->access$100(Lcom/narvii/master/search/GlobalTopicSearchFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/narvii/master/search/AminoIdMatchedAdapter;->notifyKeyChange(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method
