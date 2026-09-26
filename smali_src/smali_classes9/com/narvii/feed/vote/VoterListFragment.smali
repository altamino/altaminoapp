.class public Lcom/narvii/feed/vote/VoterListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 4

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance v0, Lcom/narvii/feed/vote/VoterListFragment$Adapter;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/narvii/feed/vote/VoterListFragment$Adapter;-><init>(Lcom/narvii/feed/vote/VoterListFragment;)V

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/feed/vote/VoterListFragment;->adapter:Lcom/narvii/feed/vote/VoterListFragment$Adapter;

    .line 13
    .line 14
    new-instance v0, Lcom/narvii/list/DividerAdapter;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/feed/vote/VoterListFragment;->adapter:Lcom/narvii/feed/vote/VoterListFragment$Adapter;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1}, Lcom/narvii/list/DividerAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/feed/vote/VoterListFragment;->adapter:Lcom/narvii/feed/vote/VoterListFragment$Adapter;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/narvii/list/DividerAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 25
    const/4 v1, 0x1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/feed/vote/VoterListFragment;->nvObject:Lcom/narvii/model/NVObject;

    .line 31
    .line 32
    instance-of v2, v0, Lcom/narvii/model/Feed;

    .line 33
    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    check-cast v0, Lcom/narvii/model/Feed;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    .line 40
    move-result v2

    .line 41
    xor-int/2addr v2, v1

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v2}, Lcom/narvii/model/Feed;->getVoteCount(Z)I

    .line 45
    move-result v0

    .line 46
    .line 47
    if-lez v0, :cond_0

    .line 48
    .line 49
    new-instance v0, Lcom/narvii/feed/vote/VoterListFooterAdapter;

    .line 50
    .line 51
    iget-object v2, p0, Lcom/narvii/feed/vote/VoterListFragment;->nvObject:Lcom/narvii/model/NVObject;

    .line 52
    .line 53
    check-cast v2, Lcom/narvii/model/Feed;

    .line 54
    .line 55
    iget-object v3, p0, Lcom/narvii/feed/vote/VoterListFragment;->community:Lcom/narvii/model/Community;

    .line 56
    .line 57
    .line 58
    invoke-direct {v0, p0, v2, v1, v3}, Lcom/narvii/feed/vote/VoterListFooterAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;ZLcom/narvii/model/Community;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 62
    :cond_0
    return-object p1
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "all_likes"

    return-object v0
.end method

.method public getPostEntryLift()I
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Lcom/narvii/wallet/optinads/OptinAdsUtil;->getBannerLift(Lcom/narvii/app/NVContext;I)I

    .line 5
    move-result v0

    .line 6
    return v0
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string p1, "objectType"

    .line 6
    const/4 v0, -0x1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;I)I

    .line 10
    move-result p1

    .line 11
    .line 12
    iput p1, p0, Lcom/narvii/feed/vote/VoterListFragment;->objectType:I

    .line 13
    .line 14
    const-string v1, "nvObject"

    .line 15
    .line 16
    if-eq p1, v0, :cond_1

    .line 17
    const/4 v0, 0x1

    .line 18
    .line 19
    if-eq p1, v0, :cond_1

    .line 20
    const/4 v0, 0x2

    .line 21
    .line 22
    if-eq p1, v0, :cond_1

    .line 23
    .line 24
    const/16 v0, 0x83

    .line 25
    .line 26
    if-ne p1, v0, :cond_0

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_0
    const/16 v0, 0x6d

    .line 30
    .line 31
    if-ne p1, v0, :cond_2

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    const-class v0, Lcom/narvii/model/SharedFile;

    .line 38
    .line 39
    .line 40
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    check-cast p1, Lcom/narvii/model/NVObject;

    .line 44
    .line 45
    iput-object p1, p0, Lcom/narvii/feed/vote/VoterListFragment;->nvObject:Lcom/narvii/model/NVObject;

    .line 46
    goto :goto_1

    .line 47
    .line 48
    .line 49
    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    new-instance v0, Lcom/narvii/model/Feed$FeedDeserializer;

    .line 53
    .line 54
    .line 55
    invoke-direct {v0}, Lcom/narvii/model/Feed$FeedDeserializer;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readUsing(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Ljava/lang/Object;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    check-cast p1, Lcom/narvii/model/NVObject;

    .line 62
    .line 63
    iput-object p1, p0, Lcom/narvii/feed/vote/VoterListFragment;->nvObject:Lcom/narvii/model/NVObject;

    .line 64
    .line 65
    :cond_2
    :goto_1
    const-string p1, "community"

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    const-class v0, Lcom/narvii/model/Community;

    .line 72
    .line 73
    .line 74
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    check-cast p1, Lcom/narvii/model/Community;

    .line 78
    .line 79
    iput-object p1, p0, Lcom/narvii/feed/vote/VoterListFragment;->community:Lcom/narvii/model/Community;

    .line 80
    .line 81
    iget-object p1, p0, Lcom/narvii/feed/vote/VoterListFragment;->nvObject:Lcom/narvii/model/NVObject;

    .line 82
    .line 83
    if-nez p1, :cond_3

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 87
    :cond_3
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

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
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/feed/vote/VoterListFragment;->nvObject:Lcom/narvii/model/NVObject;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    instance-of p2, p1, Lcom/narvii/model/Blog;

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    check-cast p1, Lcom/narvii/model/Blog;

    .line 14
    .line 15
    iget p1, p1, Lcom/narvii/model/Blog;->type:I

    .line 16
    const/4 p2, 0x4

    .line 17
    .line 18
    if-ne p1, p2, :cond_0

    .line 19
    .line 20
    .line 21
    const p1, 0x7f12127e

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 25
    goto :goto_0

    .line 26
    .line 27
    .line 28
    :cond_0
    const p1, 0x7f1202e7

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 32
    .line 33
    iget-object p1, p0, Lcom/narvii/feed/vote/VoterListFragment;->nvObject:Lcom/narvii/model/NVObject;

    .line 34
    .line 35
    instance-of p2, p1, Lcom/narvii/model/Blog;

    .line 36
    .line 37
    if-eqz p2, :cond_1

    .line 38
    const/4 p2, 0x1

    .line 39
    .line 40
    new-array p2, p2, [Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p1, Lcom/narvii/model/Blog;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/narvii/model/Blog;->getTotalVotesCount()I

    .line 46
    move-result p1

    .line 47
    .line 48
    .line 49
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    move-result-object p1

    .line 51
    const/4 v0, 0x0

    .line 52
    .line 53
    aput-object p1, p2, v0

    .line 54
    .line 55
    .line 56
    const p1, 0x7f121154

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 64
    :cond_1
    :goto_0
    return-void
.end method
