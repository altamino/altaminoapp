.class Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;
.super Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;
.source "ParticipantsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/video/overlay/ParticipantsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ParticipantsAdapter"
.end annotation


# instance fields
.field private error:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)V
    .locals 1

    .line 346
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    .line 347
    const-class v0, Lcom/narvii/model/User;

    invoke-direct {p0, p1, p1, v0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;-><init>(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;Lcom/narvii/app/NVContext;Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$502(Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 343
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;->error:Ljava/lang/String;

    return-object p1
.end method

.method private sendRequest()V
    .locals 5

    .line 387
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    iget-object v0, v0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->userWrapperList:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, ""

    move-object v2, v1

    .line 390
    :goto_0
    iget-object v3, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    iget-object v3, v3, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->userWrapperList:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 391
    iget-object v3, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    iget-object v3, v3, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->userWrapperList:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    iget-object v3, v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-nez v3, :cond_1

    goto :goto_2

    .line 394
    :cond_1
    iget-object v3, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    iget-object v3, v3, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->userWrapperList:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    iget-object v3, v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    invoke-virtual {v3}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    move-result-object v3

    .line 395
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 396
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v1

    goto :goto_1

    :cond_2
    const-string v2, ","

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 399
    :cond_4
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/user-profile"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "q"

    .line 400
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string/jumbo v1, "type"

    const-string/jumbo v2, "uid"

    .line 401
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v1, "api"

    .line 402
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 403
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    new-instance v2, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter$1;

    const-class v3, Lcom/narvii/model/api/UserListResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter$1;-><init>(Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;Ljava/lang/Class;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method


# virtual methods
.method public errorMessage()Ljava/lang/String;
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "Speaker"

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    invoke-static {v0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->access$200(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    invoke-static {v0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->access$200(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItem(I)Lcom/narvii/model/User;
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    invoke-static {v0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->access$200(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/User;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 343
    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;->getItem(I)Lcom/narvii/model/User;

    move-result-object p1

    return-object p1
.end method

.method public isListShown()Z
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    invoke-static {v0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->access$200(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;->error:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onAttach()V
    .locals 0

    .line 352
    invoke-super {p0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->onAttach()V

    .line 353
    invoke-direct {p0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;->sendRequest()V

    return-void
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 p1, 0x0

    .line 363
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;->error:Ljava/lang/String;

    .line 364
    iget-object p2, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    invoke-static {p2, p1}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->access$202(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;Ljava/util/List;)Ljava/util/List;

    .line 365
    iget-object p2, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    invoke-static {p2, p1}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->access$302(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;Ljava/util/List;)Ljava/util/List;

    .line 366
    invoke-direct {p0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ParticipantsAdapter;->sendRequest()V

    .line 367
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected showIndicator()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
