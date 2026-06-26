.class public Lcom/narvii/feed/vote/VoterListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "VoterListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/feed/vote/VoterListFragment$Adapter;
    }
.end annotation


# instance fields
.field adapter:Lcom/narvii/feed/vote/VoterListFragment$Adapter;

.field community:Lcom/narvii/model/Community;

.field nvObject:Lcom/narvii/model/NVObject;

.field objectType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 4

    .line 96
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 97
    new-instance v0, Lcom/narvii/feed/vote/VoterListFragment$Adapter;

    invoke-direct {v0, p0}, Lcom/narvii/feed/vote/VoterListFragment$Adapter;-><init>(Lcom/narvii/feed/vote/VoterListFragment;)V

    iput-object v0, p0, Lcom/narvii/feed/vote/VoterListFragment;->adapter:Lcom/narvii/feed/vote/VoterListFragment$Adapter;

    .line 98
    new-instance v0, Lcom/narvii/list/DividerAdapter;

    iget-object v1, p0, Lcom/narvii/feed/vote/VoterListFragment;->adapter:Lcom/narvii/feed/vote/VoterListFragment$Adapter;

    invoke-direct {v0, v1}, Lcom/narvii/list/DividerAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 99
    iget-object v1, p0, Lcom/narvii/feed/vote/VoterListFragment;->adapter:Lcom/narvii/feed/vote/VoterListFragment$Adapter;

    invoke-virtual {v0, v1}, Lcom/narvii/list/DividerAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v1, 0x1

    .line 100
    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 101
    iget-object v0, p0, Lcom/narvii/feed/vote/VoterListFragment;->nvObject:Lcom/narvii/model/NVObject;

    instance-of v2, v0, Lcom/narvii/model/Feed;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/narvii/model/Feed;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    move-result v2

    xor-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/narvii/model/Feed;->getVoteCount(Z)I

    move-result v0

    if-lez v0, :cond_0

    .line 102
    new-instance v0, Lcom/narvii/feed/vote/VoterListFooterAdapter;

    iget-object v2, p0, Lcom/narvii/feed/vote/VoterListFragment;->nvObject:Lcom/narvii/model/NVObject;

    check-cast v2, Lcom/narvii/model/Feed;

    iget-object v3, p0, Lcom/narvii/feed/vote/VoterListFragment;->community:Lcom/narvii/model/Community;

    invoke-direct {v0, p0, v2, v1, v3}, Lcom/narvii/feed/vote/VoterListFooterAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;ZLcom/narvii/model/Community;)V

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    return-object p1
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "AllLikes"

    return-object v0
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 48
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, -0x1

    const-string v0, "objectType"

    .line 49
    invoke-virtual {p0, v0, p1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/narvii/feed/vote/VoterListFragment;->objectType:I

    .line 51
    iget v0, p0, Lcom/narvii/feed/vote/VoterListFragment;->objectType:I

    const-string v1, "nvObject"

    if-eq v0, p1, :cond_1

    const/4 p1, 0x1

    if-eq v0, p1, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1

    const/16 p1, 0x83

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x6d

    if-ne v0, p1, :cond_2

    .line 55
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/model/SharedFile;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/NVObject;

    iput-object p1, p0, Lcom/narvii/feed/vote/VoterListFragment;->nvObject:Lcom/narvii/model/NVObject;

    goto :goto_1

    .line 53
    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/narvii/model/Feed$FeedDeserializer;

    invoke-direct {v0}, Lcom/narvii/model/Feed$FeedDeserializer;-><init>()V

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readUsing(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/NVObject;

    iput-object p1, p0, Lcom/narvii/feed/vote/VoterListFragment;->nvObject:Lcom/narvii/model/NVObject;

    :cond_2
    :goto_1
    const-string p1, "community"

    .line 57
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/model/Community;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Community;

    iput-object p1, p0, Lcom/narvii/feed/vote/VoterListFragment;->community:Lcom/narvii/model/Community;

    .line 58
    iget-object p1, p0, Lcom/narvii/feed/vote/VoterListFragment;->nvObject:Lcom/narvii/model/NVObject;

    if-nez p1, :cond_3

    .line 59
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    :cond_3
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 90
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 91
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 71
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 73
    iget-object p1, p0, Lcom/narvii/feed/vote/VoterListFragment;->nvObject:Lcom/narvii/model/NVObject;

    if-eqz p1, :cond_0

    instance-of p2, p1, Lcom/narvii/model/Blog;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/narvii/model/Blog;

    iget p1, p1, Lcom/narvii/model/Blog;->type:I

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    const p1, 0x7f0f1177

    .line 74
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    goto :goto_0

    :cond_0
    const p1, 0x7f0f029c

    .line 76
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 77
    iget-object p1, p0, Lcom/narvii/feed/vote/VoterListFragment;->nvObject:Lcom/narvii/model/NVObject;

    instance-of p2, p1, Lcom/narvii/model/Blog;

    if-eqz p2, :cond_1

    const p2, 0x7f0f1046    # 1.901641E38f

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 78
    check-cast p1, Lcom/narvii/model/Blog;

    invoke-virtual {p1}, Lcom/narvii/model/Blog;->getTotalVotesCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p0, p2, v0}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method
