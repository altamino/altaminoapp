.class public Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;
.super Lcom/narvii/chat/ChatMemberPickerFragment;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/ChatMemberPickerFragment;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;->isVvchatHintShown:Z

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashSet;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;->vvChatUsers:Ljava/util/Set;

    .line 14
    return-void
.end method

.method static synthetic access$000(Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;)Lcom/narvii/model/ChatThread;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/chat/ChatMemberPickerFragment;->thread:Lcom/narvii/model/ChatThread;

    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;)Lcom/narvii/search/InstantSearchListener;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/chat/ChatMemberPickerFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;)Lcom/narvii/search/InstantSearchListener;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/chat/ChatMemberPickerFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 3
    return-object p0
.end method

.method private checkAuth(Lcom/narvii/model/User;)Z
    .locals 7

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isPostEnabled()Z

    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isPublicChatEnabled()Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    move v0, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v0, v3

    .line 23
    .line 24
    :goto_0
    new-instance v1, Lcom/narvii/modulization/entry/EntryManager;

    .line 25
    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/narvii/modulization/entry/EntryManager;-><init>(Lcom/narvii/app/NVContext;)V

    .line 28
    .line 29
    const-string v4, "postType"

    .line 30
    .line 31
    const-string v5, "publicChatRooms"

    .line 32
    .line 33
    const-string v6, "post"

    .line 34
    .line 35
    .line 36
    filled-new-array {v6, v4, v5}, [Ljava/lang/String;

    .line 37
    move-result-object v4

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v4}, Lcom/narvii/modulization/entry/EntryManager;->getEntrySetting([Ljava/lang/String;)Lcom/narvii/modulization/entry/EntrySetting;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    iget-object v4, v1, Lcom/narvii/modulization/entry/EntrySetting;->privilege:Lcom/narvii/modulization/entry/Privilege;

    .line 46
    .line 47
    if-eqz v4, :cond_2

    .line 48
    .line 49
    iget v5, v4, Lcom/narvii/modulization/entry/Privilege;->type:I

    .line 50
    const/4 v6, 0x2

    .line 51
    .line 52
    if-ne v5, v6, :cond_1

    .line 53
    .line 54
    iget v5, p1, Lcom/narvii/model/User;->level:I

    .line 55
    .line 56
    iget v4, v4, Lcom/narvii/modulization/entry/Privilege;->minLevel:I

    .line 57
    .line 58
    if-ge v5, v4, :cond_1

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/narvii/model/User;->isCurator()Z

    .line 62
    move-result v4

    .line 63
    .line 64
    if-nez v4, :cond_1

    .line 65
    move v4, v3

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    move v4, v2

    .line 68
    .line 69
    :goto_1
    iget-object v1, v1, Lcom/narvii/modulization/entry/EntrySetting;->privilege:Lcom/narvii/modulization/entry/Privilege;

    .line 70
    .line 71
    iget v1, v1, Lcom/narvii/modulization/entry/Privilege;->type:I

    .line 72
    const/4 v5, 0x3

    .line 73
    .line 74
    if-ne v1, v5, :cond_3

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/narvii/model/User;->isCurator()Z

    .line 78
    move-result p1

    .line 79
    .line 80
    if-nez p1, :cond_3

    .line 81
    move v4, v3

    .line 82
    goto :goto_2

    .line 83
    :cond_2
    move v4, v2

    .line 84
    .line 85
    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    .line 86
    .line 87
    if-eqz v4, :cond_4

    .line 88
    goto :goto_3

    .line 89
    :cond_4
    move v2, v3

    .line 90
    :goto_3
    return v2
.end method

.method private isThreadInVvchat()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelType()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    const/4 v2, 0x4

    .line 11
    .line 12
    if-eq v0, v2, :cond_0

    .line 13
    const/4 v2, 0x3

    .line 14
    .line 15
    if-ne v0, v2, :cond_1

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelChatThread()Lcom/narvii/model/ChatThread;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, v0, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/narvii/chat/ChatMemberPickerFragment;->thread:Lcom/narvii/model/ChatThread;

    .line 28
    .line 29
    iget-object v2, v2, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 33
    move-result v0

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    return v1

    .line 37
    :cond_1
    const/4 v0, 0x0

    .line 38
    return v0
.end method

.method static bridge synthetic u(Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;->isVvchatHintShown:Z

    return p0
.end method

.method static bridge synthetic v(Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;)Lcom/narvii/chat/rtc/RtcService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    return-object p0
.end method

.method static bridge synthetic w(Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;->vvChatUsers:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic x(Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;->isVvchatHintShown:Z

    return-void
.end method

.method static bridge synthetic y(Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;Lcom/narvii/model/User;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;->checkAuth(Lcom/narvii/model/User;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic z(Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;->isThreadInVvchat()Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected createMainAdapter()Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$OrganizerPickerAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$OrganizerPickerAdapter;-><init>(Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;)V

    .line 6
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

    .line 1
    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    goto :goto_1

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    const-string v2, "/chat/thread/"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/narvii/chat/ChatMemberPickerFragment;->thread:Lcom/narvii/model/ChatThread;

    .line 26
    .line 27
    iget-object v2, v2, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v2, "/transfer-organizer"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 46
    .line 47
    .line 48
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    .line 52
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    .line 56
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    move-result v2

    .line 58
    .line 59
    if-eqz v2, :cond_1

    .line 60
    .line 61
    .line 62
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    move-result-object v2

    .line 64
    .line 65
    check-cast v2, Lcom/narvii/model/User;

    .line 66
    .line 67
    iget-object v2, v2, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 71
    goto :goto_0

    .line 72
    .line 73
    :cond_1
    const-string p1, "uidList"

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 77
    .line 78
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 82
    move-result-object v1

    .line 83
    .line 84
    .line 85
    invoke-direct {p1, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 89
    .line 90
    const-string v1, "api"

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 94
    move-result-object v1

    .line 95
    .line 96
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 100
    move-result-object v0

    .line 101
    .line 102
    new-instance v2, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$1;

    .line 103
    .line 104
    const-class v3, Lcom/narvii/model/api/ApiResponse;

    .line 105
    .line 106
    .line 107
    invoke-direct {v2, p0, v3, p1}, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$1;-><init>(Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 111
    :cond_2
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/chat/ChatMemberPickerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f12107f    # 1.9415294E38f

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 10
    .line 11
    const-string p1, "rtc"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    check-cast p1, Lcom/narvii/chat/rtc/RtcService;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelChannelUserList()Ljava/util/Collection;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;->vvChatUsers:Ljava/util/Set;

    .line 26
    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;->isThreadInVvchat()Z

    .line 32
    move-result v0

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    .line 39
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    .line 43
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    move-result v0

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    .line 49
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    check-cast v0, Lcom/narvii/chat/signalling/ChannelUser;

    .line 53
    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    iget-object v1, v0, Lcom/narvii/chat/signalling/ChannelUser;->userProfile:Lcom/narvii/model/User;

    .line 57
    .line 58
    if-eqz v1, :cond_1

    .line 59
    .line 60
    iget v0, v0, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    .line 61
    const/4 v2, 0x1

    .line 62
    .line 63
    if-ne v0, v2, :cond_1

    .line 64
    .line 65
    iget-object v0, v1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    const/4 v0, 0x0

    .line 68
    .line 69
    .line 70
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 71
    move-result v1

    .line 72
    .line 73
    if-nez v1, :cond_0

    .line 74
    .line 75
    iget-object v1, p0, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;->vvChatUsers:Ljava/util/Set;

    .line 76
    .line 77
    .line 78
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    goto :goto_0

    .line 80
    :cond_2
    return-void
.end method

.method protected showSearchBar()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
