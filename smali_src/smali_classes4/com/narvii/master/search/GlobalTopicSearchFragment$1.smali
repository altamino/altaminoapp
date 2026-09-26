.class Lcom/narvii/master/search/GlobalTopicSearchFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment$1;->this$0:Lcom/narvii/master/search/GlobalTopicSearchFragment;

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
    iget-object v0, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment$1;->this$0:Lcom/narvii/master/search/GlobalTopicSearchFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/master/search/GlobalTopicSearchFragment;->w(Lcom/narvii/master/search/GlobalTopicSearchFragment;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_4

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment$1;->this$0:Lcom/narvii/master/search/GlobalTopicSearchFragment;

    .line 11
    .line 12
    iget-object v1, v0, Lcom/narvii/master/search/GlobalTopicSearchFragment;->adapter:Lcom/narvii/master/search/GlobalTopicSearchFragment$Adapter;

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    const/4 v1, 0x0

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    iget-object v1, v1, Lcom/narvii/master/search/GlobalTopicSearchFragment$Adapter;->keyword:Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-static {v0}, Lcom/narvii/master/search/GlobalTopicSearchFragment;->v(Lcom/narvii/master/search/GlobalTopicSearchFragment;)Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-static {v1, v0}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    goto :goto_1

    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment$1;->this$0:Lcom/narvii/master/search/GlobalTopicSearchFragment;

    .line 32
    .line 33
    iget-object v1, v0, Lcom/narvii/master/search/GlobalTopicSearchFragment;->adapter:Lcom/narvii/master/search/GlobalTopicSearchFragment$Adapter;

    .line 34
    .line 35
    if-eqz v1, :cond_3

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    instance-of v0, v0, Lcom/narvii/search/ISearchBarHost;

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    iget-object v0, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment$1;->this$0:Lcom/narvii/master/search/GlobalTopicSearchFragment;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    check-cast v0, Lcom/narvii/search/ISearchBarHost;

    .line 52
    .line 53
    iget-object v1, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment$1;->this$0:Lcom/narvii/master/search/GlobalTopicSearchFragment;

    .line 54
    .line 55
    .line 56
    invoke-static {v1}, Lcom/narvii/master/search/GlobalTopicSearchFragment;->v(Lcom/narvii/master/search/GlobalTopicSearchFragment;)Ljava/lang/String;

    .line 57
    move-result-object v2

    .line 58
    .line 59
    .line 60
    invoke-interface {v0, v1, v2}, Lcom/narvii/search/ISearchBarHost;->onChildFragmentRealtimeSearch(Lcom/narvii/app/NVFragment;Ljava/lang/String;)V

    .line 61
    .line 62
    :cond_2
    iget-object v0, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment$1;->this$0:Lcom/narvii/master/search/GlobalTopicSearchFragment;

    .line 63
    .line 64
    iget-object v1, v0, Lcom/narvii/master/search/GlobalTopicSearchFragment;->adapter:Lcom/narvii/master/search/GlobalTopicSearchFragment$Adapter;

    .line 65
    .line 66
    .line 67
    invoke-static {v0}, Lcom/narvii/master/search/GlobalTopicSearchFragment;->v(Lcom/narvii/master/search/GlobalTopicSearchFragment;)Ljava/lang/String;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    iput-object v0, v1, Lcom/narvii/master/search/GlobalTopicSearchFragment$Adapter;->keyword:Ljava/lang/String;

    .line 71
    .line 72
    iget-object v0, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment$1;->this$0:Lcom/narvii/master/search/GlobalTopicSearchFragment;

    .line 73
    .line 74
    iget-object v0, v0, Lcom/narvii/master/search/GlobalTopicSearchFragment;->adapter:Lcom/narvii/master/search/GlobalTopicSearchFragment$Adapter;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    .line 78
    .line 79
    :cond_3
    iget-object v0, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment$1;->this$0:Lcom/narvii/master/search/GlobalTopicSearchFragment;

    .line 80
    .line 81
    iget-object v1, v0, Lcom/narvii/master/search/GlobalTopicSearchFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    .line 82
    .line 83
    if-eqz v1, :cond_4

    .line 84
    .line 85
    .line 86
    invoke-static {v0}, Lcom/narvii/master/search/GlobalTopicSearchFragment;->v(Lcom/narvii/master/search/GlobalTopicSearchFragment;)Ljava/lang/String;

    .line 87
    move-result-object v0

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v0}, Lcom/narvii/master/search/AminoIdMatchedAdapter;->notifyKeyChange(Ljava/lang/String;)V

    .line 91
    :cond_4
    :goto_1
    return-void
.end method
