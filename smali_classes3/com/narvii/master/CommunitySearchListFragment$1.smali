.class Lcom/narvii/master/CommunitySearchListFragment$1;
.super Lcom/narvii/master/search/AminoIdMatchedAdapter;
.source "CommunitySearchListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/CommunitySearchListFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/CommunitySearchListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/CommunitySearchListFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$1;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    invoke-direct {p0, p2}, Lcom/narvii/master/search/AminoIdMatchedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$1;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    invoke-static {v0}, Lcom/narvii/master/CommunitySearchListFragment;->access$200(Lcom/narvii/master/CommunitySearchListFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/narvii/list/NVArrayAdapter;->getCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 186
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 187
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$1;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    iget-object v0, v0, Lcom/narvii/master/CommunitySearchListFragment;->searchResultCommunityAdapter:Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v0}, Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
