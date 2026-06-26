.class public Lcom/narvii/members/MemberListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "MemberListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/members/MemberListFragment$SearchResultAdapter;,
        Lcom/narvii/members/MemberListFragment$MemberAdapter;,
        Lcom/narvii/members/MemberListFragment$SearchAdapter;
    }
.end annotation


# static fields
.field public static final KEY_TYPE:Ljava/lang/String; = "key_type"

.field public static final KEY_TYPE_RECENT:Ljava/lang/String; = "recent"


# instance fields
.field instantSearchListener:Lcom/narvii/search/InstantSearchListener;

.field memberAdapter:Lcom/narvii/members/MemberListFragment$MemberAdapter;

.field mergeAdapter:Lcom/narvii/list/MergeAdapter;

.field searchAdapter:Lcom/narvii/members/MemberListFragment$SearchAdapter;

.field searchResultAdaper:Lcom/narvii/members/MemberListFragment$SearchResultAdapter;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 34
    new-instance v0, Lcom/narvii/search/InstantSearchListener;

    invoke-direct {v0}, Lcom/narvii/search/InstantSearchListener;-><init>()V

    iput-object v0, p0, Lcom/narvii/members/MemberListFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 2

    .line 95
    new-instance p1, Lcom/narvii/members/MemberListFragment$2;

    invoke-direct {p1, p0, p0}, Lcom/narvii/members/MemberListFragment$2;-><init>(Lcom/narvii/members/MemberListFragment;Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/members/MemberListFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 110
    new-instance p1, Lcom/narvii/members/MemberListFragment$MemberAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/members/MemberListFragment$MemberAdapter;-><init>(Lcom/narvii/members/MemberListFragment;)V

    iput-object p1, p0, Lcom/narvii/members/MemberListFragment;->memberAdapter:Lcom/narvii/members/MemberListFragment$MemberAdapter;

    .line 111
    new-instance p1, Lcom/narvii/members/MemberListFragment$SearchAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/members/MemberListFragment$SearchAdapter;-><init>(Lcom/narvii/members/MemberListFragment;)V

    iput-object p1, p0, Lcom/narvii/members/MemberListFragment;->searchAdapter:Lcom/narvii/members/MemberListFragment$SearchAdapter;

    .line 112
    new-instance p1, Lcom/narvii/members/MemberListFragment$SearchResultAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/members/MemberListFragment$SearchResultAdapter;-><init>(Lcom/narvii/members/MemberListFragment;)V

    iput-object p1, p0, Lcom/narvii/members/MemberListFragment;->searchResultAdaper:Lcom/narvii/members/MemberListFragment$SearchResultAdapter;

    .line 113
    iget-object p1, p0, Lcom/narvii/members/MemberListFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    iget-object v0, p0, Lcom/narvii/members/MemberListFragment;->searchAdapter:Lcom/narvii/members/MemberListFragment$SearchAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 114
    iget-object p1, p0, Lcom/narvii/members/MemberListFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    iget-object v0, p0, Lcom/narvii/members/MemberListFragment;->memberAdapter:Lcom/narvii/members/MemberListFragment$MemberAdapter;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 115
    iget-object p1, p0, Lcom/narvii/members/MemberListFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    iget-object v0, p0, Lcom/narvii/members/MemberListFragment;->searchResultAdaper:Lcom/narvii/members/MemberListFragment$SearchResultAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 116
    iget-object p1, p0, Lcom/narvii/members/MemberListFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    iget-object v0, p0, Lcom/narvii/members/MemberListFragment;->searchResultAdaper:Lcom/narvii/members/MemberListFragment$SearchResultAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/search/InstantSearchListener;->attachAdapter(Lcom/narvii/list/NVPagedAdapter;)V

    .line 118
    iget-object p1, p0, Lcom/narvii/members/MemberListFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 42
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "key_type"

    .line 44
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/members/MemberListFragment;->type:Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/narvii/members/MemberListFragment;->type:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "all"

    .line 46
    iput-object v0, p0, Lcom/narvii/members/MemberListFragment;->type:Ljava/lang/String;

    :cond_0
    const v0, 0x7f0f02c3

    .line 49
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 50
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVListFragment;->setScrollToHideKeyboard(Z)V

    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 89
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const p1, 0x7f0b01f4

    .line 90
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setEmptyView(I)Landroid/view/View;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 60
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0903ea

    .line 61
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 63
    new-instance v0, Lcom/narvii/members/MemberListFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/members/MemberListFragment$1;-><init>(Lcom/narvii/members/MemberListFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
