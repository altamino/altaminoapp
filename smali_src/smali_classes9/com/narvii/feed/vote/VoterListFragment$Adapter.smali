.class Lcom/narvii/feed/vote/VoterListFragment$Adapter;
.super Lcom/narvii/user/list/UserListExAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/feed/vote/VoterListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field final map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/feed/vote/VoterListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/feed/vote/VoterListFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/feed/vote/VoterListFragment$Adapter;->this$0:Lcom/narvii/feed/vote/VoterListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/user/list/UserListExAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance p1, Ljava/util/HashMap;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/feed/vote/VoterListFragment$Adapter;->map:Ljava/util/HashMap;

    .line 13
    .line 14
    const-string p1, "All Likes"

    .line 15
    .line 16
    iput-object p1, p0, Lcom/narvii/user/list/UserListAdapter;->source:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/feed/vote/VoterListFragment$Adapter;->this$0:Lcom/narvii/feed/vote/VoterListFragment;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/feed/vote/VoterListFragment;->nvObject:Lcom/narvii/model/NVObject;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/narvii/story/detail/VoteHelper;->getVotePath(Lcom/narvii/model/NVObject;Z)Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    const/4 p1, 0x0

    .line 16
    return-object p1

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/feed/vote/VoterListFragment$Adapter;->this$0:Lcom/narvii/feed/vote/VoterListFragment;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/narvii/feed/vote/VoterListFragment;->community:Lcom/narvii/model/Community;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget v0, v0, Lcom/narvii/model/Community;->id:I

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 39
    move-result-object p1

    .line 40
    return-object p1
.end method

.method protected followingEnabled()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/vote/VoterListFragment$Adapter;->this$0:Lcom/narvii/feed/vote/VoterListFragment;

    .line 3
    .line 4
    const-string v1, "followingEnabled"

    .line 5
    const/4 v2, 0x1

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/user/list/UserListExAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    .line 7
    const p3, 0x7f0a06d5

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    move-result-object p3

    .line 12
    .line 13
    check-cast p3, Lcom/narvii/widget/VoteIcon;

    .line 14
    .line 15
    instance-of v0, p1, Lcom/narvii/model/User;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/feed/vote/VoterListFragment$Adapter;->map:Ljava/util/HashMap;

    .line 20
    .line 21
    check-cast p1, Lcom/narvii/model/User;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    check-cast p1, Ljava/lang/Integer;

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p1, 0x0

    .line 32
    .line 33
    :goto_0
    if-nez p1, :cond_1

    .line 34
    const/4 v0, 0x4

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/4 v0, 0x0

    .line 37
    .line 38
    .line 39
    :goto_1
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 45
    move-result p1

    .line 46
    .line 47
    .line 48
    invoke-virtual {p3, p1}, Lcom/narvii/widget/VoteIcon;->setVotedValue(I)V

    .line 49
    :cond_2
    return-object p2
.end method

.method public isEmpty()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/vote/VoterListFragment$Adapter;->this$0:Lcom/narvii/feed/vote/VoterListFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/feed/vote/VoterListFragment;->nvObject:Lcom/narvii/model/NVObject;

    .line 5
    .line 6
    instance-of v1, v0, Lcom/narvii/model/Feed;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/model/Feed;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/model/Feed;->getTotalVotesCount()I

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->isEmpty()Z

    .line 24
    move-result v0

    .line 25
    return v0
.end method

.method protected layoutId()I
    .locals 1

    const v0, 0x7f0d0774

    return v0
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/model/api/UserListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/feed/vote/VoterListFragment$Adapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserListResponse;I)V

    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserListResponse;I)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    .line 3
    check-cast p2, Lcom/narvii/feed/vote/VoterListResponse;

    .line 4
    iget-object p1, p2, Lcom/narvii/feed/vote/VoterListResponse;->votedValueMap:Ljava/util/HashMap;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/narvii/feed/vote/VoterListFragment$Adapter;->map:Ljava/util/HashMap;

    .line 5
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/model/api/UserListResponse;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/feed/vote/VoterListResponse;

    return-object v0
.end method
