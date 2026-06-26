.class Lcom/narvii/master/search/GlobalPostSearchListFragment$1;
.super Lcom/narvii/list/MergeAdapter;
.source "GlobalPostSearchListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/search/GlobalPostSearchListFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/search/GlobalPostSearchListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/search/GlobalPostSearchListFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/narvii/master/search/GlobalPostSearchListFragment$1;->this$0:Lcom/narvii/master/search/GlobalPostSearchListFragment;

    invoke-direct {p0, p2}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public errorMessage()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isListShown()Z
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/narvii/master/search/GlobalPostSearchListFragment$1;->this$0:Lcom/narvii/master/search/GlobalPostSearchListFragment;

    iget-object v0, v0, Lcom/narvii/master/search/GlobalPostSearchListFragment;->feedAdapter:Lcom/narvii/master/search/GlobalPostSearchListFragment$FeedAdapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/narvii/master/search/GlobalPostSearchAdapter;->keyword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/search/GlobalPostSearchListFragment$1;->this$0:Lcom/narvii/master/search/GlobalPostSearchListFragment;

    iget-object v0, v0, Lcom/narvii/master/search/GlobalPostSearchListFragment;->feedAdapter:Lcom/narvii/master/search/GlobalPostSearchListFragment$FeedAdapter;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/narvii/master/search/GlobalPostSearchAdapter;->keyword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/narvii/master/search/GlobalPostSearchListFragment$1;->this$0:Lcom/narvii/master/search/GlobalPostSearchListFragment;

    iget-object v0, v0, Lcom/narvii/master/search/GlobalPostSearchListFragment;->feedAdapter:Lcom/narvii/master/search/GlobalPostSearchListFragment$FeedAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->errorMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    return v1

    .line 88
    :cond_1
    invoke-super {p0}, Lcom/narvii/list/MergeAdapter;->isListShown()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/narvii/master/search/GlobalPostSearchListFragment$1;->this$0:Lcom/narvii/master/search/GlobalPostSearchListFragment;

    iget-object v0, v0, Lcom/narvii/master/search/GlobalPostSearchListFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    invoke-virtual {v0}, Lcom/narvii/master/search/AminoIdMatchedAdapter;->isListShown()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1
.end method
