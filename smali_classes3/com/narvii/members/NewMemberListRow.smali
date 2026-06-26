.class public final Lcom/narvii/members/NewMemberListRow;
.super Landroid/widget/LinearLayout;
.source "NewMemberListRow.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/members/NewMemberListRow$NewMemberListAdapter;
    }
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private adapter:Lcom/narvii/members/NewMemberListRow$NewMemberListAdapter;

.field private itemClickListener:Lcom/narvii/list/ObjectItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static final synthetic access$toAllNewMembersPage(Lcom/narvii/members/NewMemberListRow;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/narvii/members/NewMemberListRow;->toAllNewMembersPage()V

    return-void
.end method

.method private final toAllNewMembersPage()V
    .locals 3

    .line 57
    const-class v0, Lcom/narvii/members/MemberListFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_type"

    const-string v2, "recent"

    .line 58
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Source"

    const-string v2, "New Members"

    .line 59
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/members/NewMemberListRow;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/members/NewMemberListRow;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/members/NewMemberListRow;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/members/NewMemberListRow;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/members/NewMemberListRow;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public getItemClickListener()Lcom/narvii/list/ObjectItemClickListener;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/narvii/members/NewMemberListRow;->itemClickListener:Lcom/narvii/list/ObjectItemClickListener;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 35
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 36
    sget v0, Lcom/narvii/amino/R$id;->new_members_list:I

    invoke-virtual {p0, v0}, Lcom/narvii/members/NewMemberListRow;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;

    const-string v1, "new_members_list"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 37
    sget v0, Lcom/narvii/amino/R$id;->new_members_list:I

    invoke-virtual {p0, v0}, Lcom/narvii/members/NewMemberListRow;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;

    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setLayoutDirection(Landroid/view/View;I)V

    .line 38
    sget v0, Lcom/narvii/amino/R$id;->option_see_all:I

    invoke-virtual {p0, v0}, Lcom/narvii/members/NewMemberListRow;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/narvii/members/NewMemberListRow$onFinishInflate$1;

    invoke-direct {v1, p0}, Lcom/narvii/members/NewMemberListRow$onFinishInflate$1;-><init>(Lcom/narvii/members/NewMemberListRow;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setItemClickListener(Lcom/narvii/list/ObjectItemClickListener;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/narvii/members/NewMemberListRow;->itemClickListener:Lcom/narvii/list/ObjectItemClickListener;

    return-void
.end method

.method public final setupMemberList(Lcom/narvii/app/NVContext;ILjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/User;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cachedList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/narvii/members/NewMemberListRow;->adapter:Lcom/narvii/members/NewMemberListRow$NewMemberListAdapter;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/narvii/members/NewMemberListRow$NewMemberListAdapter;

    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/members/NewMemberListRow$NewMemberListAdapter;-><init>(Lcom/narvii/members/NewMemberListRow;Lcom/narvii/app/NVContext;I)V

    iput-object v0, p0, Lcom/narvii/members/NewMemberListRow;->adapter:Lcom/narvii/members/NewMemberListRow$NewMemberListAdapter;

    .line 47
    sget p1, Lcom/narvii/amino/R$id;->new_members_list:I

    invoke-virtual {p0, p1}, Lcom/narvii/members/NewMemberListRow;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;

    const-string p2, "new_members_list"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/narvii/members/NewMemberListRow;->adapter:Lcom/narvii/members/NewMemberListRow$NewMemberListAdapter;

    invoke-virtual {p1, p2}, Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 49
    :cond_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 50
    iget-object p1, p0, Lcom/narvii/members/NewMemberListRow;->adapter:Lcom/narvii/members/NewMemberListRow$NewMemberListAdapter;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p3}, Lcom/narvii/members/NewMemberListRow$NewMemberListAdapter;->refresh(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw p2

    .line 52
    :cond_2
    iget-object p1, p0, Lcom/narvii/members/NewMemberListRow;->adapter:Lcom/narvii/members/NewMemberListRow$NewMemberListAdapter;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p3}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->setListData(Ljava/util/List;)V

    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw p2
.end method
