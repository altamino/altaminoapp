.class Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;
.super Lcom/narvii/list/ProxyAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/list/ObjectItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/feed/FrontFeedListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NewMembersAdapter"
.end annotation


# static fields
.field public static final ITEM_VIEW_TYPE_NEW_MEMBER_LIST:I = -0xa


# instance fields
.field public final NEW_MEMBERS:Lcom/narvii/util/Tag;

.field private appearPos:I

.field private appearPosWithoutPin:I

.field ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;

.field private isInsideLatest:Z

.field final synthetic this$0:Lcom/narvii/feed/FrontFeedListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/feed/FrontFeedListFragment;Lcom/narvii/app/NVContext;IZ)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/list/ProxyAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance p1, Lcom/narvii/util/Tag;

    .line 8
    .line 9
    const-string p2, "new_members_list"

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, p2}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;->NEW_MEMBERS:Lcom/narvii/util/Tag;

    .line 15
    .line 16
    new-instance p1, Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;

    .line 17
    .line 18
    const-class p2, Lcom/narvii/model/User;

    .line 19
    .line 20
    .line 21
    const v0, 0x7f0a09ee

    .line 22
    .line 23
    .line 24
    invoke-direct {p1, p2, v0}, Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;-><init>(Ljava/lang/Class;I)V

    .line 25
    .line 26
    iput-object p1, p0, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;->ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;

    .line 27
    .line 28
    iput p3, p0, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;->appearPos:I

    .line 29
    .line 30
    iput p3, p0, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;->appearPosWithoutPin:I

    .line 31
    .line 32
    iput-boolean p4, p0, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;->isInsideLatest:Z

    .line 33
    return-void
.end method

.method private shouldShow()Z
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;->isInsideLatest:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/narvii/feed/FrontFeedListFragment;->mFeaturedLayoutAdapter:Lcom/narvii/feed/FeatureLayoutAdapter;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/narvii/feed/FeatureLayoutAdapter;->getCount()I

    .line 13
    move-result v0

    .line 14
    .line 15
    iget-object v2, p0, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    .line 16
    .line 17
    iget-object v2, v2, Lcom/narvii/feed/FrontFeedListFragment;->mFeaturedLayoutAdapter:Lcom/narvii/feed/FeatureLayoutAdapter;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/narvii/feed/FeatureLayoutAdapter;->getPinCount()I

    .line 21
    move-result v2

    .line 22
    sub-int/2addr v0, v2

    .line 23
    const/4 v2, 0x3

    .line 24
    .line 25
    if-gt v0, v2, :cond_0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v1, 0x0

    .line 28
    :goto_0
    return v1

    .line 29
    .line 30
    :cond_1
    iget v0, p0, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;->appearPosWithoutPin:I

    .line 31
    .line 32
    iget-object v2, p0, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    .line 33
    .line 34
    iget-object v2, v2, Lcom/narvii/feed/FrontFeedListFragment;->mFeaturedLayoutAdapter:Lcom/narvii/feed/FeatureLayoutAdapter;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/narvii/feed/FeatureLayoutAdapter;->getPinCount()I

    .line 38
    move-result v2

    .line 39
    add-int/2addr v0, v2

    .line 40
    .line 41
    iput v0, p0, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;->appearPos:I

    .line 42
    return v1
.end method

.method private trans(I)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;->shouldShow()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return p1

    .line 8
    .line 9
    :cond_0
    iget v0, p0, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;->appearPos:I

    .line 10
    .line 11
    if-ge p1, v0, :cond_1

    .line 12
    return p1

    .line 13
    .line 14
    :cond_1
    if-ne p1, v0, :cond_2

    .line 15
    const/4 p1, -0x1

    .line 16
    return p1

    .line 17
    .line 18
    :cond_2
    add-int/lit8 p1, p1, -0x1

    .line 19
    return p1
.end method


# virtual methods
.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "NewestMembers"

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;->shouldShow()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget v1, p0, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;->appearPos:I

    .line 15
    .line 16
    if-le v0, v1, :cond_0

    .line 17
    .line 18
    add-int/lit8 v0, v0, 0x1

    .line 19
    :cond_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;->trans(I)I

    .line 4
    move-result p1

    .line 5
    .line 6
    if-gez p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;->NEW_MEMBERS:Lcom/narvii/util/Tag;

    .line 9
    return-object p1

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;->trans(I)I

    .line 4
    move-result p1

    .line 5
    .line 6
    if-gez p1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;->NEW_MEMBERS:Lcom/narvii/util/Tag;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 12
    move-result v0

    .line 13
    .line 14
    shl-int/lit8 v0, v0, 0x20

    .line 15
    or-int/2addr p1, v0

    .line 16
    int-to-long v0, p1

    .line 17
    return-wide v0

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    .line 23
    move-result-wide v0

    .line 24
    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;->trans(I)I

    .line 4
    move-result p1

    .line 5
    const/4 v0, -0x1

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    const/16 p1, -0xa

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemViewType(I)I

    .line 16
    move-result p1

    .line 17
    :goto_0
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;->trans(I)I

    .line 4
    move-result p1

    .line 5
    .line 6
    if-gez p1, :cond_1

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    .line 9
    .line 10
    iget-object p2, p1, Lcom/narvii/feed/FrontFeedListFragment;->newMemberListRow:Lcom/narvii/members/NewMemberListRow;

    .line 11
    .line 12
    if-nez p2, :cond_0

    .line 13
    .line 14
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 15
    .line 16
    .line 17
    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 18
    move-result-object p2

    .line 19
    .line 20
    .line 21
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 22
    move-result-object p2

    .line 23
    .line 24
    .line 25
    const v0, 0x7f0d0434

    .line 26
    const/4 v1, 0x0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 30
    move-result-object p2

    .line 31
    .line 32
    check-cast p2, Lcom/narvii/members/NewMemberListRow;

    .line 33
    .line 34
    iput-object p2, p1, Lcom/narvii/feed/FrontFeedListFragment;->newMemberListRow:Lcom/narvii/members/NewMemberListRow;

    .line 35
    .line 36
    iget-object p1, p0, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    .line 37
    .line 38
    iget-object p1, p1, Lcom/narvii/feed/FrontFeedListFragment;->newMemberListRow:Lcom/narvii/members/NewMemberListRow;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p0}, Lcom/narvii/members/NewMemberListRow;->setItemClickListener(Lcom/narvii/list/ObjectItemClickListener;)V

    .line 42
    .line 43
    :cond_0
    iget-object p1, p0, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    .line 44
    .line 45
    iget-object p2, p1, Lcom/narvii/feed/FrontFeedListFragment;->newMemberListRow:Lcom/narvii/members/NewMemberListRow;

    .line 46
    .line 47
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 48
    .line 49
    iget v0, p1, Lcom/narvii/feed/FrontFeedListFragment;->communityId:I

    .line 50
    .line 51
    .line 52
    invoke-static {p1}, Lcom/narvii/feed/FrontFeedListFragment;->t(Lcom/narvii/feed/FrontFeedListFragment;)Ljava/util/ArrayList;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, p3, v0, p1}, Lcom/narvii/members/NewMemberListRow;->setupMemberList(Lcom/narvii/app/NVContext;ILjava/util/ArrayList;)V

    .line 57
    .line 58
    iget-object p1, p0, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    .line 59
    .line 60
    iget-object p1, p1, Lcom/narvii/feed/FrontFeedListFragment;->newMemberListRow:Lcom/narvii/members/NewMemberListRow;

    .line 61
    .line 62
    iget-object p2, p0, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;->ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;

    .line 63
    .line 64
    .line 65
    invoke-static {p1, p2}, Lcom/narvii/logging/LogUtils;->recyclerShownInAdapter(Landroid/view/View;Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;)V

    .line 66
    .line 67
    iget-object p1, p0, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    .line 68
    .line 69
    iget-object p1, p1, Lcom/narvii/feed/FrontFeedListFragment;->newMemberListRow:Lcom/narvii/members/NewMemberListRow;

    .line 70
    return-object p1

    .line 71
    .line 72
    :cond_1
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    .line 73
    .line 74
    .line 75
    invoke-interface {v0, p1, p2, p3}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 76
    move-result-object p1

    .line 77
    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroid/widget/Adapter;->getViewTypeCount()I

    .line 6
    move-result v0

    .line 7
    .line 8
    add-int/lit8 v0, v0, 0x1

    .line 9
    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;->trans(I)I

    .line 4
    move-result p1

    .line 5
    .line 6
    if-gez p1, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public onAttach()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/ProxyAdapter;->onAttach()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;->ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    .line 9
    return-void
.end method

.method public onItemClick(Lcom/narvii/model/NVObject;)V
    .locals 1

    if-nez p1, :cond_0

    .line 3
    sget-object p1, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "NewestMembersMore"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Lcom/narvii/model/User;

    if-eqz v0, :cond_1

    .line 5
    sget-object v0, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 6

    .line 1
    invoke-direct {p0, p2}, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;->trans(I)I

    move-result v2

    if-gez v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 2
    invoke-super/range {v0 .. v5}, Lcom/narvii/list/ProxyAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;->trans(I)I

    .line 4
    move-result v2

    .line 5
    .line 6
    if-gez v2, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    move-object v0, p0

    .line 10
    move-object v1, p1

    .line 11
    move-object v3, p3

    .line 12
    move-object v4, p4

    .line 13
    move-object v5, p5

    .line 14
    .line 15
    .line 16
    invoke-super/range {v0 .. v5}, Lcom/narvii/list/ProxyAdapter;->onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 17
    move-result p1

    .line 18
    return p1
.end method
