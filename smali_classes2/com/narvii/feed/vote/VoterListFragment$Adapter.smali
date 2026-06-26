.class Lcom/narvii/feed/vote/VoterListFragment$Adapter;
.super Lcom/narvii/user/list/UserListExAdapter;
.source "VoterListFragment.java"


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

    .line 110
    iput-object p1, p0, Lcom/narvii/feed/vote/VoterListFragment$Adapter;->this$0:Lcom/narvii/feed/vote/VoterListFragment;

    .line 111
    invoke-direct {p0, p1}, Lcom/narvii/user/list/UserListExAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 108
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/narvii/feed/vote/VoterListFragment$Adapter;->map:Ljava/util/HashMap;

    const-string p1, "All Likes"

    .line 112
    iput-object p1, p0, Lcom/narvii/user/list/UserListAdapter;->source:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 1

    .line 157
    iget-object p1, p0, Lcom/narvii/feed/vote/VoterListFragment$Adapter;->this$0:Lcom/narvii/feed/vote/VoterListFragment;

    iget-object p1, p1, Lcom/narvii/feed/vote/VoterListFragment;->nvObject:Lcom/narvii/model/NVObject;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/narvii/story/detail/VoteHelper;->getVotePath(Lcom/narvii/model/NVObject;Z)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 161
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 162
    iget-object v0, p0, Lcom/narvii/feed/vote/VoterListFragment$Adapter;->this$0:Lcom/narvii/feed/vote/VoterListFragment;

    iget-object v0, v0, Lcom/narvii/feed/vote/VoterListFragment;->community:Lcom/narvii/model/Community;

    if-eqz v0, :cond_1

    .line 163
    iget v0, v0, Lcom/narvii/model/Community;->id:I

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 165
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected followingEnabled()Z
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/narvii/feed/vote/VoterListFragment$Adapter;->this$0:Lcom/narvii/feed/vote/VoterListFragment;

    const-string v1, "followingEnabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 136
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/user/list/UserListExAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f090562

    .line 138
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/VoteIcon;

    .line 140
    instance-of v0, p1, Lcom/narvii/model/User;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/narvii/feed/vote/VoterListFragment$Adapter;->map:Ljava/util/HashMap;

    check-cast p1, Lcom/narvii/model/User;

    iget-object p1, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 143
    :goto_1
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p1, :cond_2

    .line 145
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/narvii/widget/VoteIcon;->setVotedValue(I)V

    :cond_2
    return-object p2
.end method

.method public isEmpty()Z
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/narvii/feed/vote/VoterListFragment$Adapter;->this$0:Lcom/narvii/feed/vote/VoterListFragment;

    iget-object v0, v0, Lcom/narvii/feed/vote/VoterListFragment;->nvObject:Lcom/narvii/model/NVObject;

    instance-of v1, v0, Lcom/narvii/model/Feed;

    if-eqz v1, :cond_1

    .line 171
    check-cast v0, Lcom/narvii/model/Feed;

    invoke-virtual {v0}, Lcom/narvii/model/Feed;->getTotalVotesCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 173
    :cond_1
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method protected layoutId()I
    .locals 1

    const v0, 0x7f0b06bf

    return v0
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 107
    check-cast p2, Lcom/narvii/model/api/UserListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/feed/vote/VoterListFragment$Adapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserListResponse;I)V

    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserListResponse;I)V
    .locals 0

    .line 122
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    .line 123
    check-cast p2, Lcom/narvii/feed/vote/VoterListResponse;

    .line 124
    iget-object p1, p2, Lcom/narvii/feed/vote/VoterListResponse;->votedValueMap:Ljava/util/HashMap;

    if-eqz p1, :cond_0

    .line 125
    iget-object p2, p0, Lcom/narvii/feed/vote/VoterListFragment$Adapter;->map:Ljava/util/HashMap;

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

    .line 117
    const-class v0, Lcom/narvii/feed/vote/VoterListResponse;

    return-object v0
.end method
