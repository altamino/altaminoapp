.class Lcom/narvii/members/MemberListFragment$1;
.super Ljava/lang/Object;
.source "MemberListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/members/MemberListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/members/MemberListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/members/MemberListFragment;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/narvii/members/MemberListFragment$1;->this$0:Lcom/narvii/members/MemberListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 66
    iget-object p1, p0, Lcom/narvii/members/MemberListFragment$1;->this$0:Lcom/narvii/members/MemberListFragment;

    iget-object p1, p1, Lcom/narvii/members/MemberListFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    invoke-virtual {p1}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 67
    iget-object p1, p0, Lcom/narvii/members/MemberListFragment$1;->this$0:Lcom/narvii/members/MemberListFragment;

    invoke-virtual {p1}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/list/NVAdapter;

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eqz p1, :cond_0

    .line 68
    iget-object p1, p0, Lcom/narvii/members/MemberListFragment$1;->this$0:Lcom/narvii/members/MemberListFragment;

    invoke-virtual {p1}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Lcom/narvii/list/NVAdapter;

    invoke-virtual {p1, v1, v0}, Lcom/narvii/list/NVAdapter;->refresh(ILcom/narvii/util/Callback;)V

    goto :goto_0

    .line 70
    :cond_0
    iget-object p1, p0, Lcom/narvii/members/MemberListFragment$1;->this$0:Lcom/narvii/members/MemberListFragment;

    iget-object p1, p1, Lcom/narvii/members/MemberListFragment;->searchResultAdaper:Lcom/narvii/members/MemberListFragment$SearchResultAdapter;

    if-eqz p1, :cond_1

    .line 71
    invoke-virtual {p1, v1, v0}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    :cond_1
    :goto_0
    return-void
.end method
