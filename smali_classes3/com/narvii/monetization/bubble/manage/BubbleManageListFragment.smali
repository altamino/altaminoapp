.class public Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;
.super Lcom/narvii/monetization/MembershipBasedListFragment;
.source "BubbleManageListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$MyBubbleListAdapter;
    }
.end annotation


# static fields
.field private static final REQ_CODE:I = 0x65


# instance fields
.field actionBarRightListener:Landroid/view/View$OnClickListener;

.field bubbleHelper:Lcom/narvii/monetization/bubble/BubbleHelper;

.field bubbleListAdapter:Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$MyBubbleListAdapter;

.field curSelectedBubbleId:Ljava/lang/String;

.field receiver:Landroid/content/BroadcastReceiver;

.field threadId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/narvii/monetization/MembershipBasedListFragment;-><init>()V

    .line 52
    new-instance v0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$1;-><init>(Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;)V

    iput-object v0, p0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 106
    new-instance v0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$2;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$2;-><init>(Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;)V

    iput-object v0, p0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;->actionBarRightListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;->updateActionBarRightButton()V

    return-void
.end method

.method private updateActionBarRightButton()V
    .locals 5

    .line 92
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/app/NVActivity;

    if-eqz v0, :cond_3

    .line 93
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 94
    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->removeRightView()V

    .line 96
    iget-object v1, p0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;->bubbleListAdapter:Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$MyBubbleListAdapter;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$MyBubbleListAdapter;->list()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;->bubbleListAdapter:Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$MyBubbleListAdapter;

    invoke-virtual {v1}, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$MyBubbleListAdapter;->list()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const v4, 0x7f0f0b1c

    if-eqz v1, :cond_2

    const v1, -0x7f000001

    const/4 v3, 0x0

    .line 98
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/narvii/app/NVActivity;->setActionBarRightView(IIZLandroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 101
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060028

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;->actionBarRightListener:Landroid/view/View$OnClickListener;

    .line 100
    invoke-virtual {v0, v4, v1, v3, v2}, Lcom/narvii/app/NVActivity;->setActionBarRightView(ILandroid/content/res/ColorStateList;ZLandroid/view/View$OnClickListener;)V

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 3

    .line 146
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 148
    new-instance v0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$3;

    invoke-direct {v0, p0, p0}, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$3;-><init>(Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;Lcom/narvii/app/NVContext;)V

    .line 154
    new-instance v1, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$MyBubbleListAdapter;

    invoke-direct {v1, p0}, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$MyBubbleListAdapter;-><init>(Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;)V

    iput-object v1, p0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;->bubbleListAdapter:Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$MyBubbleListAdapter;

    .line 156
    iget-object v1, p0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;->bubbleListAdapter:Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$MyBubbleListAdapter;

    invoke-virtual {v0, v1}, Lcom/narvii/list/DividerAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v1, 0x1

    .line 158
    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 160
    new-instance v0, Lcom/narvii/adapter/MarginAdapter;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {v0, p0, v1}, Lcom/narvii/adapter/MarginAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 161
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 163
    new-instance v0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$4;

    invoke-direct {v0, p0, p0}, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$4;-><init>(Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;Lcom/narvii/app/NVContext;)V

    .line 178
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    return-object p1
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 86
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 87
    invoke-direct {p0}, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;->updateActionBarRightButton()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;->bubbleListAdapter:Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$MyBubbleListAdapter;

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    .line 123
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 65
    invoke-super {p0, p1}, Lcom/narvii/monetization/MembershipBasedListFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0f0be5

    .line 66
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    const-string p1, "threadId"

    .line 67
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;->threadId:Ljava/lang/String;

    .line 68
    new-instance p1, Lcom/narvii/monetization/bubble/BubbleHelper;

    invoke-direct {p1, p0}, Lcom/narvii/monetization/bubble/BubbleHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;->bubbleHelper:Lcom/narvii/monetization/bubble/BubbleHelper;

    .line 69
    iget-object p1, p0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.narvii.action.MEMBERSHIP_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0286

    const/4 v0, 0x0

    .line 128
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 76
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 1

    .line 138
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 139
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    .line 140
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 141
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f06018e

    invoke-static {p2, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setBackgroundColor(I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 133
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method
