.class Lcom/narvii/members/MemberListFragment$2;
.super Lcom/narvii/list/MergeAdapter;
.source "MemberListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/members/MemberListFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/members/MemberListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/members/MemberListFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/narvii/members/MemberListFragment$2;->this$0:Lcom/narvii/members/MemberListFragment;

    invoke-direct {p0, p2}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/narvii/members/MemberListFragment$2;->this$0:Lcom/narvii/members/MemberListFragment;

    iget-object v0, v0, Lcom/narvii/members/MemberListFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    invoke-virtual {v0}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/narvii/members/MemberListFragment$2;->this$0:Lcom/narvii/members/MemberListFragment;

    iget-object v0, v0, Lcom/narvii/members/MemberListFragment;->searchResultAdaper:Lcom/narvii/members/MemberListFragment$SearchResultAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/members/MemberListFragment$SearchResultAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 101
    :cond_1
    invoke-super {p0}, Lcom/narvii/list/MergeAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method
