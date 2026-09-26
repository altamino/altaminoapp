.class public final Lcom/narvii/prefs/MoreSettingFragment$Adapter$sendCommunityJoinedRequest$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/prefs/MoreSettingFragment$Adapter;->sendCommunityJoinedRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/community/MyCommunityListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/prefs/MoreSettingFragment$Adapter;


# direct methods
.method constructor <init>(Lcom/narvii/prefs/MoreSettingFragment$Adapter;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/prefs/MoreSettingFragment$Adapter;",
            "Ljava/lang/Class<",
            "Lcom/narvii/community/MyCommunityListResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter$sendCommunityJoinedRequest$1;->this$0:Lcom/narvii/prefs/MoreSettingFragment$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 6
    return-void
.end method


# virtual methods
.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/MyCommunityListResponse;)V
    .locals 4
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/community/MyCommunityListResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "req"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resp"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    iget-object p1, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter$sendCommunityJoinedRequest$1;->this$0:Lcom/narvii/prefs/MoreSettingFragment$Adapter;

    .line 3
    invoke-static {p1}, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->access$getUsers$p(Lcom/narvii/prefs/MoreSettingFragment$Adapter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 4
    invoke-virtual {p2}, Lcom/narvii/master/CommunityListResponse;->list()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    .line 5
    iget-object v1, p2, Lcom/narvii/community/MyCommunityListResponse;->userInfoInCommunities:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter$sendCommunityJoinedRequest$1;->this$0:Lcom/narvii/prefs/MoreSettingFragment$Adapter;

    .line 6
    invoke-virtual {p2}, Lcom/narvii/master/CommunityListResponse;->list()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/Community;

    iget v3, v3, Lcom/narvii/model/Community;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/community/CommunityUserInfo;

    if-eqz v1, :cond_0

    .line 7
    invoke-static {v2}, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->access$getUsers$p(Lcom/narvii/prefs/MoreSettingFragment$Adapter;)Ljava/util/List;

    move-result-object v2

    iget-object v1, v1, Lcom/narvii/community/CommunityUserInfo;->userProfile:Lcom/narvii/model/User;

    const-string v3, "userProfile"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter$sendCommunityJoinedRequest$1;->this$0:Lcom/narvii/prefs/MoreSettingFragment$Adapter;

    .line 8
    invoke-static {v1}, Lcom/narvii/prefs/MoreSettingFragment$Adapter;->access$getUsers$p(Lcom/narvii/prefs/MoreSettingFragment$Adapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/narvii/prefs/MoreSettingFragment$Adapter$sendCommunityJoinedRequest$1;->this$0:Lcom/narvii/prefs/MoreSettingFragment$Adapter;

    .line 9
    invoke-virtual {p1}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/community/MyCommunityListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/prefs/MoreSettingFragment$Adapter$sendCommunityJoinedRequest$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/MyCommunityListResponse;)V

    return-void
.end method
