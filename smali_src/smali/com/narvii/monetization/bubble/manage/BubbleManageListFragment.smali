.class public Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;
.super Lcom/narvii/monetization/MembershipBasedListFragment;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/monetization/MembershipBasedListFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$1;-><init>(Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$2;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$2;-><init>(Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;)V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;->actionBarRightListener:Landroid/view/View$OnClickListener;

    .line 18
    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;->updateActionBarRightButton()V

    return-void
.end method

.method private updateActionBarRightButton()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v0, v0, Lcom/narvii/app/NVActivity;

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->removeRightView()V

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;->bubbleListAdapter:Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$MyBubbleListAdapter;

    .line 20
    .line 21
    .line 22
    const v2, 0x7f120be0

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$MyBubbleListAdapter;->list()Ljava/util/List;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    iget-object v1, p0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;->bubbleListAdapter:Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$MyBubbleListAdapter;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$MyBubbleListAdapter;->list()Ljava/util/List;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 40
    move-result v1

    .line 41
    const/4 v3, 0x1

    .line 42
    .line 43
    if-ne v1, v3, :cond_0

    .line 44
    goto :goto_0

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    .line 51
    const v4, 0x7f060029

    .line 52
    .line 53
    .line 54
    invoke-static {v1, v4}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    iget-object v4, p0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;->actionBarRightListener:Landroid/view/View$OnClickListener;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/narvii/app/NVActivity;->setActionBarRightView(ILandroid/content/res/ColorStateList;ZLandroid/view/View$OnClickListener;)V

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 63
    const/4 v3, 0x0

    .line 64
    .line 65
    .line 66
    const v4, -0x7f000001

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v2, v4, v1, v3}, Lcom/narvii/app/NVActivity;->setActionBarRightView(IIZLandroid/view/View$OnClickListener;)V

    .line 70
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 3

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance v0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$3;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0, p0}, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$3;-><init>(Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;Lcom/narvii/app/NVContext;)V

    .line 11
    .line 12
    new-instance v1, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$MyBubbleListAdapter;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$MyBubbleListAdapter;-><init>(Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;)V

    .line 16
    .line 17
    iput-object v1, p0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;->bubbleListAdapter:Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$MyBubbleListAdapter;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/narvii/list/DividerAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 21
    const/4 v1, 0x1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 25
    .line 26
    new-instance v0, Lcom/narvii/adapter/MarginAdapter;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    const/high16 v2, 0x41200000    # 10.0f

    .line 33
    .line 34
    .line 35
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 36
    move-result v1

    .line 37
    float-to-int v1, v1

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, p0, v1}, Lcom/narvii/adapter/MarginAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 44
    .line 45
    new-instance v0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$4;

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, p0, p0}, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$4;-><init>(Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;Lcom/narvii/app/NVContext;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 52
    return-object p1
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;->updateActionBarRightButton()V

    .line 7
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0x65

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    const/4 v0, -0x1

    .line 6
    .line 7
    if-ne p2, v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;->bubbleListAdapter:Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$MyBubbleListAdapter;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 18
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/monetization/MembershipBasedListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f120d10

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 10
    .line 11
    const-string/jumbo p1, "threadId"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    iput-object p1, p0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;->threadId:Ljava/lang/String;

    .line 18
    .line 19
    new-instance p1, Lcom/narvii/monetization/bubble/BubbleHelper;

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, p0}, Lcom/narvii/monetization/bubble/BubbleHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 23
    .line 24
    iput-object p1, p0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;->bubbleHelper:Lcom/narvii/monetization/bubble/BubbleHelper;

    .line 25
    .line 26
    iget-object p1, p0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 27
    .line 28
    new-instance v0, Landroid/content/IntentFilter;

    .line 29
    .line 30
    const-string v1, "com.narvii.action.MEMBERSHIP_CHANGED"

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 37
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d02b1

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    .line 9
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 8
    const/4 p2, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    .line 18
    const v0, 0x7f0603f8

    .line 19
    .line 20
    .line 21
    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 22
    move-result p2

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 26
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    return-void
.end method
