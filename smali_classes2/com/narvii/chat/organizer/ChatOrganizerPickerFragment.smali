.class public Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;
.super Lcom/narvii/chat/ChatMemberPickerFragment;
.source "ChatOrganizerPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$OrganizerPickerAdapter;
    }
.end annotation


# instance fields
.field private isVvchatHintShown:Z

.field private rtcService:Lcom/narvii/chat/rtc/RtcService;

.field private vvChatUsers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/narvii/chat/ChatMemberPickerFragment;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;->isVvchatHintShown:Z

    .line 47
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;->vvChatUsers:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;)Lcom/narvii/model/ChatThread;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/narvii/chat/ChatMemberPickerFragment;->thread:Lcom/narvii/model/ChatThread;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;)Lcom/narvii/search/InstantSearchListener;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/narvii/chat/ChatMemberPickerFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;)Lcom/narvii/search/InstantSearchListener;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/narvii/chat/ChatMemberPickerFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;)Ljava/util/Set;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;->vvChatUsers:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;)Lcom/narvii/chat/rtc/RtcService;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    return-object p0
.end method

.method static synthetic access$500(Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;->isVvchatHintShown:Z

    return p0
.end method

.method static synthetic access$502(Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;->isVvchatHintShown:Z

    return p1
.end method

.method static synthetic access$600(Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;)Z
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;->isThreadInVvchat()Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;Lcom/narvii/model/User;)Z
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;->checkAuth(Lcom/narvii/model/User;)Z

    move-result p0

    return p0
.end method

.method private checkAuth(Lcom/narvii/model/User;)Z
    .locals 8

    .line 212
    new-instance v0, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-direct {v0, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 213
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isPostEnabled()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isPublicChatEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 215
    :goto_0
    new-instance v1, Lcom/narvii/modulization/entry/EntryManager;

    invoke-direct {v1, p0}, Lcom/narvii/modulization/entry/EntryManager;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/String;

    const-string v6, "post"

    aput-object v6, v5, v3

    const-string v6, "postType"

    aput-object v6, v5, v2

    const/4 v6, 0x2

    const-string v7, "publicChatRooms"

    aput-object v7, v5, v6

    .line 216
    invoke-virtual {v1, v5}, Lcom/narvii/modulization/entry/EntryManager;->getEntrySetting([Ljava/lang/String;)Lcom/narvii/modulization/entry/EntrySetting;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 219
    iget-object v5, v1, Lcom/narvii/modulization/entry/EntrySetting;->privilege:Lcom/narvii/modulization/entry/Privilege;

    if-eqz v5, :cond_2

    .line 220
    iget v7, v5, Lcom/narvii/modulization/entry/Privilege;->type:I

    if-ne v7, v6, :cond_1

    iget v6, p1, Lcom/narvii/model/User;->level:I

    iget v5, v5, Lcom/narvii/modulization/entry/Privilege;->minLevel:I

    if-ge v6, v5, :cond_1

    invoke-virtual {p1}, Lcom/narvii/model/User;->isCurator()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    .line 224
    :goto_1
    iget-object v1, v1, Lcom/narvii/modulization/entry/EntrySetting;->privilege:Lcom/narvii/modulization/entry/Privilege;

    iget v1, v1, Lcom/narvii/modulization/entry/Privilege;->type:I

    if-ne v1, v4, :cond_3

    invoke-virtual {p1}, Lcom/narvii/model/User;->isCurator()Z

    move-result p1

    if-nez p1, :cond_3

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    const/4 v5, 0x1

    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    return v2
.end method

.method private isThreadInVvchat()Z
    .locals 3

    .line 232
    iget-object v0, p0, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelChatThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, v0, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    iget-object v2, p0, Lcom/narvii/chat/ChatMemberPickerFragment;->thread:Lcom/narvii/model/ChatThread;

    iget-object v2, v2, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected createMainAdapter()Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;
    .locals 1

    .line 73
    new-instance v0, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$OrganizerPickerAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$OrganizerPickerAdapter;-><init>(Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;)V

    return-object v0
.end method

.method protected onConfirmPick(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 85
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 89
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/chat/thread/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/chat/ChatMemberPickerFragment;->thread:Lcom/narvii/model/ChatThread;

    iget-object v2, v2, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/transfer-organizer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 91
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 93
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v1

    .line 94
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/User;

    .line 95
    iget-object v2, v2, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    goto :goto_0

    :cond_1
    const-string/jumbo p1, "uidList"

    .line 97
    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 100
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 101
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    const-string v1, "api"

    .line 102
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 103
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    new-instance v2, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$1;

    const-class v3, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {v2, p0, v3, p1}, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$1;-><init>(Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 51
    invoke-super {p0, p1}, Lcom/narvii/chat/ChatMemberPickerFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0f0f73

    .line 52
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    const-string p1, "rtc"

    .line 53
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/rtc/RtcService;

    iput-object p1, p0, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 55
    iget-object p1, p0, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelChannelUserList()Ljava/util/Collection;

    move-result-object p1

    .line 56
    iget-object v0, p0, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;->vvChatUsers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 57
    invoke-direct {p0}, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;->isThreadInVvchat()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 58
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/signalling/ChannelUser;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 60
    iget-object v2, v0, Lcom/narvii/chat/signalling/ChannelUser;->userProfile:Lcom/narvii/model/User;

    if-eqz v2, :cond_1

    iget v0, v0, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 61
    iget-object v1, v2, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 63
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;->vvChatUsers:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected showSearchBar()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
