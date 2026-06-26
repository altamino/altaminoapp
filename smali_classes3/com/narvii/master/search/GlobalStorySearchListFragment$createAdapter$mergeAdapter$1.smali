.class public final Lcom/narvii/master/search/GlobalStorySearchListFragment$createAdapter$mergeAdapter$1;
.super Lcom/narvii/list/MergeAdapter;
.source "GlobalStorySearchListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/search/GlobalStorySearchListFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/search/GlobalStorySearchListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/search/GlobalStorySearchListFragment;Lcom/narvii/app/NVContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment$createAdapter$mergeAdapter$1;->this$0:Lcom/narvii/master/search/GlobalStorySearchListFragment;

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

    .line 77
    iget-object v0, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment$createAdapter$mergeAdapter$1;->this$0:Lcom/narvii/master/search/GlobalStorySearchListFragment;

    invoke-static {v0}, Lcom/narvii/master/search/GlobalStorySearchListFragment;->access$getFeedAdapter$p(Lcom/narvii/master/search/GlobalStorySearchListFragment;)Lcom/narvii/master/search/GlobalStorySearchListFragment$FeedStoryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/master/search/GlobalStorySearchListFragment$FeedStoryAdapter;->getKeyword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment$createAdapter$mergeAdapter$1;->this$0:Lcom/narvii/master/search/GlobalStorySearchListFragment;

    invoke-static {v0}, Lcom/narvii/master/search/GlobalStorySearchListFragment;->access$getFeedAdapter$p(Lcom/narvii/master/search/GlobalStorySearchListFragment;)Lcom/narvii/master/search/GlobalStorySearchListFragment$FeedStoryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->errorMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 79
    :cond_1
    invoke-super {p0}, Lcom/narvii/list/MergeAdapter;->isListShown()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment$createAdapter$mergeAdapter$1;->this$0:Lcom/narvii/master/search/GlobalStorySearchListFragment;

    invoke-static {v0}, Lcom/narvii/master/search/GlobalStorySearchListFragment;->access$getAminoIdMatchedAdapter$p(Lcom/narvii/master/search/GlobalStorySearchListFragment;)Lcom/narvii/master/search/AminoIdMatchedAdapter;

    move-result-object v0

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
