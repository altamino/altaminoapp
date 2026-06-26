.class Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;
.super Lcom/narvii/list/ProxyAdapter;
.source "FrontFeedListFragment.java"

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

    .line 222
    iput-object p1, p0, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    .line 223
    invoke-direct {p0, p2}, Lcom/narvii/list/ProxyAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 215
    new-instance p1, Lcom/narvii/util/Tag;

    const-string p2, "new_members_list"

    invoke-direct {p1, p2}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;->NEW_MEMBERS:Lcom/narvii/util/Tag;

    .line 220
    new-instance p1, Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;

    const-class p2, Lcom/narvii/model/User;

    const v0, 0x7f090758

    invoke-direct {p1, p2, v0}, Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;-><init>(Ljava/lang/Class;I)V

    iput-object p1, p0, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;->ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;

    .line 224
    iput p3, p0, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;->appearPos:I

    .line 225
    iput p3, p0, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;->appearPosWithoutPin:I

    .line 226
    iput-boolean p4, p0, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;->isInsideLatest:Z

    return-void
.end method

.method private shouldShow()Z
    .locals 3

    .line 230
    iget-boolean v0, p0, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;->isInsideLatest:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    iget-object v0, v0, Lcom/narvii/feed/FrontFeedListFragment;->mFeaturedLayoutAdapter:Lcom/narvii/feed/FeatureLayoutAdapter;

    invoke-virtual {v0}, Lcom/narvii/feed/FeatureLayoutAdapter;->getCount()I

    move-result v0

    iget-object v2, p0, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    iget-object v2, v2, Lcom/narvii/feed/FrontFeedListFragment;->mFeaturedLayoutAdapter:Lcom/narvii/feed/FeatureLayoutAdapter;

    invoke-virtual {v2}, Lcom/narvii/feed/FeatureLayoutAdapter;->getPinCount()I

    move-result v2

    sub-int/2addr v0, v2

    const/4 v2, 0x3

    if-gt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 233
    :cond_1
    iget v0, p0, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;->appearPosWithoutPin:I

    iget-object v2, p0, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    iget-object v2, v2, Lcom/narvii/feed/FrontFeedListFragment;->mFeaturedLayoutAdapter:Lcom/narvii/feed/FeatureLayoutAdapter;

    invoke-virtual {v2}, Lcom/narvii/feed/FeatureLayoutAdapter;->getPinCount()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;->appearPos:I

    return v1
.end method

.method private trans(I)I
    .locals 1

    .line 328
    invoke-direct {p0}, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;->shouldShow()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 331
    :cond_0
    iget v0, p0, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;->appearPos:I

    if-ge p1, v0, :cond_1

    return p1

    :cond_1
    if-ne p1, v0, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_2
    add-int/lit8 p1, p1, -0x1

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

    .line 282
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 283
    invoke-direct {p0}, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;->shouldShow()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;->appearPos:I

    if-le v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 246
    invoke-direct {p0, p1}, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;->trans(I)I

    move-result p1

    if-gez p1, :cond_0

    .line 248
    iget-object p1, p0, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;->NEW_MEMBERS:Lcom/narvii/util/Tag;

    return-object p1

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 256
    invoke-direct {p0, p1}, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;->trans(I)I

    move-result p1

    if-gez p1, :cond_0

    .line 258
    iget-object v0, p0, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;->NEW_MEMBERS:Lcom/narvii/util/Tag;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    shl-int/lit8 v0, v0, 0x20

    or-int/2addr p1, v0

    int-to-long v0, p1

    return-wide v0

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 293
    invoke-direct {p0, p1}, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;->trans(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/16 p1, -0xa

    goto :goto_0

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result p1

    :goto_0
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 266
    invoke-direct {p0, p1}, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;->trans(I)I

    move-result p1

    if-gez p1, :cond_1

    .line 268
    iget-object p1, p0, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    iget-object p2, p1, Lcom/narvii/feed/FrontFeedListFragment;->newMemberListRow:Lcom/narvii/members/NewMemberListRow;

    if-nez p2, :cond_0

    .line 269
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b03fe

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/members/NewMemberListRow;

    iput-object p2, p1, Lcom/narvii/feed/FrontFeedListFragment;->newMemberListRow:Lcom/narvii/members/NewMemberListRow;

    .line 270
    iget-object p1, p0, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    iget-object p1, p1, Lcom/narvii/feed/FrontFeedListFragment;->newMemberListRow:Lcom/narvii/members/NewMemberListRow;

    invoke-virtual {p1, p0}, Lcom/narvii/members/NewMemberListRow;->setItemClickListener(Lcom/narvii/list/ObjectItemClickListener;)V

    .line 272
    :cond_0
    iget-object p1, p0, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    iget-object p2, p1, Lcom/narvii/feed/FrontFeedListFragment;->newMemberListRow:Lcom/narvii/members/NewMemberListRow;

    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    iget v0, p1, Lcom/narvii/feed/FrontFeedListFragment;->communityId:I

    invoke-static {p1}, Lcom/narvii/feed/FrontFeedListFragment;->access$000(Lcom/narvii/feed/FrontFeedListFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p2, p3, v0, p1}, Lcom/narvii/members/NewMemberListRow;->setupMemberList(Lcom/narvii/app/NVContext;ILjava/util/ArrayList;)V

    .line 273
    iget-object p1, p0, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    iget-object p1, p1, Lcom/narvii/feed/FrontFeedListFragment;->newMemberListRow:Lcom/narvii/members/NewMemberListRow;

    iget-object p2, p0, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;->ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;

    invoke-static {p1, p2}, Lcom/narvii/logging/LogUtils;->recyclerShownInAdapter(Landroid/view/View;Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;)V

    .line 274
    iget-object p1, p0, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    iget-object p1, p1, Lcom/narvii/feed/FrontFeedListFragment;->newMemberListRow:Lcom/narvii/members/NewMemberListRow;

    return-object p1

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .line 299
    invoke-direct {p0, p1}, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;->trans(I)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p1

    return p1
.end method

.method public onAttach()V
    .locals 1

    .line 240
    invoke-super {p0}, Lcom/narvii/list/ProxyAdapter;->onAttach()V

    .line 241
    iget-object v0, p0, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;->ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;

    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    return-void
.end method

.method public onItemClick(Lcom/narvii/model/NVObject;)V
    .locals 1

    if-nez p1, :cond_0

    .line 348
    sget-object p1, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "NewestMembersMore"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    goto :goto_0

    .line 349
    :cond_0
    instance-of v0, p1, Lcom/narvii/model/User;

    if-eqz v0, :cond_1

    .line 350
    sget-object v0, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 6

    .line 309
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

    .line 313
    invoke-super/range {v0 .. v5}, Lcom/narvii/list/ProxyAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 6

    .line 319
    invoke-direct {p0, p2}, Lcom/narvii/feed/FrontFeedListFragment$NewMembersAdapter;->trans(I)I

    move-result v2

    if-gez v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 323
    invoke-super/range {v0 .. v5}, Lcom/narvii/list/ProxyAdapter;->onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
