.class public Lcom/narvii/optionmenu/OptionMenuFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"


# static fields
.field private static final OPTION_MENU_TYPE_CHAT_MESSAGE:I = 0x3

.field private static final OPTION_MENU_TYPE_COMMENT:I = 0x4

.field private static final OPTION_MENU_TYPE_FEED:I = 0x1

.field private static final OPTION_MENU_TYPE_OTHER:I = 0x0

.field private static final OPTION_MENU_TYPE_SHARE_FILE:I = 0x2

.field private static final OPTION_MENU_TYPE_USER:I = 0x5


# instance fields
.field private accountService:Lcom/narvii/account/AccountService;

.field private chatService:Lcom/narvii/chat/core/ChatService;

.field private communityService:Lcom/narvii/community/CommunityService;

.field private config:Lcom/narvii/config/ConfigService;

.field private fontAwesomeView:Lcom/narvii/widget/FontAwesomeView;

.field private isAnnouncement:Z

.field private media:Lcom/narvii/model/Media;

.field private parent:Lcom/narvii/model/NVObject;

.field private type:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    return-void
.end method

.method private checkCommunityAvailability()Z
    .locals 4

    .line 1
    .line 2
    const-string v0, "config"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->config:Lcom/narvii/config/ConfigService;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 14
    move-result v0

    .line 15
    .line 16
    new-instance v1, Lcom/narvii/chat/global/GlobalChatHelper;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getParentContext()Lcom/narvii/app/NVContext;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, v2}, Lcom/narvii/chat/global/GlobalChatHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 24
    .line 25
    new-instance v2, Lcom/narvii/optionmenu/OptionMenuFragment$6;

    .line 26
    .line 27
    .line 28
    invoke-direct {v2, p0}, Lcom/narvii/optionmenu/OptionMenuFragment$6;-><init>(Lcom/narvii/optionmenu/OptionMenuFragment;)V

    .line 29
    const/4 v3, 0x0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v0, v3, v2}, Lcom/narvii/chat/global/GlobalChatHelper;->tryJoinCommunity(IZLcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;)Z

    .line 33
    move-result v0

    .line 34
    .line 35
    xor-int/lit8 v0, v0, 0x1

    .line 36
    return v0
.end method

.method private checkType()I
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    const-string v1, "parentClass"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Ljava/lang/Class;

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    .line 22
    :goto_0
    const-string v1, "parent"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    move-result v2

    .line 31
    const/4 v3, 0x0

    .line 32
    .line 33
    if-nez v2, :cond_7

    .line 34
    .line 35
    :try_start_0
    const-class v2, Lcom/narvii/model/Feed;

    .line 36
    const/4 v4, 0x1

    .line 37
    .line 38
    if-ne v0, v2, :cond_1

    .line 39
    .line 40
    new-instance v0, Lcom/narvii/model/Feed$FeedDeserializer;

    .line 41
    .line 42
    .line 43
    invoke-direct {v0}, Lcom/narvii/model/Feed$FeedDeserializer;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-static {v1, v0}, Lcom/narvii/util/JacksonUtils;->readUsing(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Ljava/lang/Object;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    check-cast v0, Lcom/narvii/model/NVObject;

    .line 50
    .line 51
    iput-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->parent:Lcom/narvii/model/NVObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    return v4

    .line 53
    :catch_0
    move-exception v0

    .line 54
    goto :goto_1

    .line 55
    .line 56
    :cond_1
    const-class v2, Lcom/narvii/model/ChatMessage;

    .line 57
    .line 58
    if-ne v0, v2, :cond_2

    .line 59
    .line 60
    .line 61
    :try_start_1
    invoke-static {v1, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    check-cast v0, Lcom/narvii/model/NVObject;

    .line 65
    .line 66
    iput-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->parent:Lcom/narvii/model/NVObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 67
    const/4 v0, 0x3

    .line 68
    return v0

    .line 69
    .line 70
    :cond_2
    const-class v2, Lcom/narvii/model/SharedFile;

    .line 71
    .line 72
    if-ne v0, v2, :cond_3

    .line 73
    .line 74
    .line 75
    :try_start_2
    invoke-static {v1, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    check-cast v0, Lcom/narvii/model/NVObject;

    .line 79
    .line 80
    iput-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->parent:Lcom/narvii/model/NVObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 81
    const/4 v0, 0x2

    .line 82
    return v0

    .line 83
    .line 84
    :cond_3
    const-class v2, Lcom/narvii/model/Comment;

    .line 85
    .line 86
    if-ne v0, v2, :cond_4

    .line 87
    .line 88
    .line 89
    :try_start_3
    invoke-static {v1, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 90
    move-result-object v0

    .line 91
    .line 92
    check-cast v0, Lcom/narvii/model/NVObject;

    .line 93
    .line 94
    iput-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->parent:Lcom/narvii/model/NVObject;

    .line 95
    const/4 v0, 0x4

    .line 96
    return v0

    .line 97
    .line 98
    :cond_4
    const-class v2, Lcom/narvii/model/Item;

    .line 99
    .line 100
    if-ne v0, v2, :cond_5

    .line 101
    .line 102
    new-instance v0, Lcom/narvii/model/Feed$FeedDeserializer;

    .line 103
    .line 104
    .line 105
    invoke-direct {v0}, Lcom/narvii/model/Feed$FeedDeserializer;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-static {v1, v0}, Lcom/narvii/util/JacksonUtils;->readUsing(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Ljava/lang/Object;

    .line 109
    move-result-object v0

    .line 110
    .line 111
    check-cast v0, Lcom/narvii/model/NVObject;

    .line 112
    .line 113
    iput-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->parent:Lcom/narvii/model/NVObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 114
    return v4

    .line 115
    .line 116
    :cond_5
    const-class v2, Lcom/narvii/model/User;

    .line 117
    .line 118
    if-ne v0, v2, :cond_6

    .line 119
    .line 120
    .line 121
    :try_start_4
    invoke-static {v1, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 122
    move-result-object v0

    .line 123
    .line 124
    check-cast v0, Lcom/narvii/model/NVObject;

    .line 125
    .line 126
    iput-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->parent:Lcom/narvii/model/NVObject;

    .line 127
    const/4 v0, 0x5

    .line 128
    return v0

    .line 129
    .line 130
    :cond_6
    iget-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->config:Lcom/narvii/config/ConfigService;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 134
    move-result v0

    .line 135
    .line 136
    iget-object v1, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->communityService:Lcom/narvii/community/CommunityService;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, v0}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 140
    move-result-object v0

    .line 141
    .line 142
    iput-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->parent:Lcom/narvii/model/NVObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 143
    return v3

    .line 144
    .line 145
    .line 146
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 147
    move-result-object v0

    .line 148
    .line 149
    .line 150
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 151
    :cond_7
    return v3
.end method

.method private delete(Lcom/narvii/model/ChatMessage;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/model/ChatMessage;->messageId:Ljava/lang/String;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->getClientRefIdTmp()I

    .line 10
    move-result p1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/narvii/chat/core/ChatService;->recallMessage(I)Z

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    new-instance v1, Lcom/narvii/optionmenu/OptionMenuFragment$3;

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, p0, p1}, Lcom/narvii/optionmenu/OptionMenuFragment$3;-><init>(Lcom/narvii/optionmenu/OptionMenuFragment;Lcom/narvii/model/ChatMessage;)V

    .line 29
    .line 30
    iput-object v1, v0, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    const-string v3, "/chat/thread/"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    iget-object v3, p1, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v3, "/message/"

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    iget-object p1, p1, Lcom/narvii/model/ChatMessage;->messageId:Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object p1

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    const-string v1, "api"

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 88
    move-result-object v1

    .line 89
    .line 90
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 91
    .line 92
    iget-object v0, v0, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, p1, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 96
    :goto_0
    return-void
.end method

.method private flag()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/optionmenu/OptionMenuFragment;->checkCommunityAvailability()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    new-instance v0, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getParentContext()Lcom/narvii/app/NVContext;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->parent:Lcom/narvii/model/NVObject;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    iget-object v1, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->url:Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->refMediaUrl(Ljava/lang/String;)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    iget-object v1, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->parent:Lcom/narvii/model/NVObject;

    .line 31
    .line 32
    instance-of v1, v1, Lcom/narvii/model/ChatMessage;

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    instance-of v1, v1, Lcom/narvii/video/NVFullScreenVideoActivity;

    .line 41
    .line 42
    if-eqz v1, :cond_1

    .line 43
    const/4 v1, 0x1

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->screenShotFlag(Z)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->build()Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->show()V

    .line 54
    return-void
.end method

.method private isMine(Lcom/narvii/model/NVObject;)Z
    .locals 1

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->uid()Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    :goto_0
    iget-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method static bridge synthetic n(Lcom/narvii/optionmenu/OptionMenuFragment;)Lcom/narvii/model/Media;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->media:Lcom/narvii/model/Media;

    return-object p0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;)Lcom/narvii/optionmenu/OptionMenuFragment;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/io/Serializable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0}, Lcom/narvii/optionmenu/OptionMenuFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;Z)Lcom/narvii/optionmenu/OptionMenuFragment;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;Z)Lcom/narvii/optionmenu/OptionMenuFragment;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/io/Serializable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    new-instance v0, Lcom/narvii/optionmenu/OptionMenuFragment;

    invoke-direct {v0}, Lcom/narvii/optionmenu/OptionMenuFragment;-><init>()V

    .line 3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "media"

    .line 4
    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "parent"

    .line 5
    invoke-virtual {v1, p0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "parentClass"

    .line 6
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p0, "isAnnouncement"

    .line 7
    invoke-virtual {v1, p0, p3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method static bridge synthetic o(Lcom/narvii/optionmenu/OptionMenuFragment;)Lcom/narvii/model/NVObject;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->parent:Lcom/narvii/model/NVObject;

    return-object p0
.end method

.method static bridge synthetic p(Lcom/narvii/optionmenu/OptionMenuFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->url:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic q(Lcom/narvii/optionmenu/OptionMenuFragment;Lcom/narvii/model/ChatMessage;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/optionmenu/OptionMenuFragment;->delete(Lcom/narvii/model/ChatMessage;)V

    return-void
.end method

.method static bridge synthetic r(Lcom/narvii/optionmenu/OptionMenuFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/optionmenu/OptionMenuFragment;->flag()V

    return-void
.end method

.method static bridge synthetic s(Lcom/narvii/optionmenu/OptionMenuFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/optionmenu/OptionMenuFragment;->saveImage()V

    return-void
.end method

.method private saveImage()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/permisson/NVPermission;->builder(Landroidx/fragment/app/Fragment;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/narvii/permisson/NVPermission$Builder;->permission(Ljava/lang/String;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    const/16 v1, 0x6c

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/narvii/permisson/NVPermission$Builder;->requestCode(I)Lcom/narvii/permisson/NVPermission$Builder;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p0}, Lcom/narvii/permisson/NVPermission$Builder;->permissionListener(Lcom/narvii/permisson/PermissionListener;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/narvii/permisson/NVPermission$Builder;->request()V

    .line 24
    return-void
.end method

.method private setPopupMenu()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroid/widget/PopupMenu;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    iget-object v2, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->fontAwesomeView:Lcom/narvii/widget/FontAwesomeView;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v0}, Lcom/narvii/optionmenu/OptionMenuFragment;->setupMenus(Landroid/widget/PopupMenu;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 18
    .line 19
    new-instance v1, Lcom/narvii/optionmenu/OptionMenuFragment$2;

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, p0}, Lcom/narvii/optionmenu/OptionMenuFragment$2;-><init>(Lcom/narvii/optionmenu/OptionMenuFragment;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 29
    return-void
.end method

.method private setupMenus(Landroid/widget/PopupMenu;)V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->url:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/util/YoutubeUtils;->getYoutubeVideoIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    const v2, 0x7f120e26

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v1, v2, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 20
    .line 21
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->isAnnouncement:Z

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    const v0, 0x7f12103c

    .line 31
    .line 32
    .line 33
    invoke-interface {p1, v1, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 34
    return-void

    .line 35
    .line 36
    :cond_1
    iget v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->type:I

    .line 37
    .line 38
    .line 39
    const v2, 0x7f120781

    .line 40
    .line 41
    .line 42
    const v3, 0x7f1210ad

    .line 43
    .line 44
    if-eqz v0, :cond_f

    .line 45
    const/4 v4, 0x1

    .line 46
    .line 47
    if-eq v0, v4, :cond_c

    .line 48
    const/4 v5, 0x3

    .line 49
    .line 50
    .line 51
    const v6, 0x7f1210e8

    .line 52
    .line 53
    if-eq v0, v5, :cond_7

    .line 54
    const/4 v4, 0x4

    .line 55
    .line 56
    if-eq v0, v4, :cond_4

    .line 57
    const/4 v3, 0x5

    .line 58
    .line 59
    if-eq v0, v3, :cond_2

    .line 60
    .line 61
    goto/16 :goto_4

    .line 62
    .line 63
    :cond_2
    iget-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->parent:Lcom/narvii/model/NVObject;

    .line 64
    .line 65
    .line 66
    invoke-direct {p0, v0}, Lcom/narvii/optionmenu/OptionMenuFragment;->userIsMe(Lcom/narvii/model/NVObject;)Z

    .line 67
    move-result v0

    .line 68
    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    iget-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->media:Lcom/narvii/model/Media;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/narvii/model/Media;->isVideo()Z

    .line 75
    move-result v0

    .line 76
    .line 77
    if-eqz v0, :cond_10

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getParentContext()Lcom/narvii/app/NVContext;

    .line 81
    move-result-object v0

    .line 82
    .line 83
    iget-object v2, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->parent:Lcom/narvii/model/NVObject;

    .line 84
    .line 85
    .line 86
    invoke-static {v0, v2}, Lcom/narvii/share/ShareDialog;->showUploadAlbumOption(Lcom/narvii/app/NVContext;Lcom/narvii/model/NVObject;)Z

    .line 87
    move-result v0

    .line 88
    .line 89
    if-eqz v0, :cond_10

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 93
    move-result-object p1

    .line 94
    .line 95
    .line 96
    invoke-interface {p1, v1, v6, v1, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 97
    .line 98
    goto/16 :goto_4

    .line 99
    .line 100
    .line 101
    :cond_3
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 102
    move-result-object p1

    .line 103
    .line 104
    .line 105
    invoke-interface {p1, v1, v2, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 106
    .line 107
    goto/16 :goto_4

    .line 108
    .line 109
    :cond_4
    iget-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->parent:Lcom/narvii/model/NVObject;

    .line 110
    .line 111
    .line 112
    invoke-direct {p0, v0}, Lcom/narvii/optionmenu/OptionMenuFragment;->isMine(Lcom/narvii/model/NVObject;)Z

    .line 113
    move-result v0

    .line 114
    .line 115
    if-eqz v0, :cond_5

    .line 116
    .line 117
    iget-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->media:Lcom/narvii/model/Media;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Lcom/narvii/model/Media;->isVideo()Z

    .line 121
    move-result v0

    .line 122
    .line 123
    if-eqz v0, :cond_6

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 127
    move-result-object v0

    .line 128
    .line 129
    .line 130
    invoke-interface {v0, v1, v3, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 131
    goto :goto_0

    .line 132
    .line 133
    .line 134
    :cond_5
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 135
    move-result-object v0

    .line 136
    .line 137
    .line 138
    invoke-interface {v0, v1, v2, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 139
    .line 140
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->media:Lcom/narvii/model/Media;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0}, Lcom/narvii/model/Media;->isImage()Z

    .line 144
    move-result v0

    .line 145
    .line 146
    if-eqz v0, :cond_10

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 150
    move-result-object p1

    .line 151
    .line 152
    .line 153
    invoke-interface {p1, v1, v3, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 154
    .line 155
    goto/16 :goto_4

    .line 156
    .line 157
    :cond_7
    iget-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->parent:Lcom/narvii/model/NVObject;

    .line 158
    .line 159
    .line 160
    invoke-direct {p0, v0}, Lcom/narvii/optionmenu/OptionMenuFragment;->isMine(Lcom/narvii/model/NVObject;)Z

    .line 161
    move-result v0

    .line 162
    .line 163
    if-eqz v0, :cond_9

    .line 164
    .line 165
    iget-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->media:Lcom/narvii/model/Media;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0}, Lcom/narvii/model/Media;->isVideo()Z

    .line 169
    move-result v0

    .line 170
    .line 171
    if-eqz v0, :cond_8

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getParentContext()Lcom/narvii/app/NVContext;

    .line 175
    move-result-object v0

    .line 176
    .line 177
    iget-object v2, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->parent:Lcom/narvii/model/NVObject;

    .line 178
    .line 179
    .line 180
    invoke-static {v0, v2}, Lcom/narvii/share/ShareDialog;->showUploadAlbumOption(Lcom/narvii/app/NVContext;Lcom/narvii/model/NVObject;)Z

    .line 181
    move-result v0

    .line 182
    .line 183
    if-eqz v0, :cond_8

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 187
    move-result-object v0

    .line 188
    .line 189
    .line 190
    invoke-interface {v0, v1, v6, v1, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 191
    .line 192
    .line 193
    :cond_8
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 194
    move-result-object v0

    .line 195
    .line 196
    .line 197
    const v2, 0x7f1203a0

    .line 198
    .line 199
    .line 200
    invoke-interface {v0, v1, v2, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 201
    goto :goto_1

    .line 202
    .line 203
    .line 204
    :cond_9
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 205
    move-result-object v0

    .line 206
    .line 207
    .line 208
    invoke-interface {v0, v1, v2, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 209
    .line 210
    :goto_1
    iget-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 214
    move-result-object v0

    .line 215
    .line 216
    if-eqz v0, :cond_a

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0}, Lcom/narvii/model/User;->isCurator()Z

    .line 220
    move-result v0

    .line 221
    .line 222
    if-eqz v0, :cond_a

    .line 223
    goto :goto_2

    .line 224
    :cond_a
    move v4, v1

    .line 225
    .line 226
    :goto_2
    iget-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->parent:Lcom/narvii/model/NVObject;

    .line 227
    .line 228
    instance-of v0, v0, Lcom/narvii/model/ChatMessage;

    .line 229
    .line 230
    if-eqz v0, :cond_b

    .line 231
    .line 232
    if-eqz v4, :cond_b

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 236
    move-result-object v0

    .line 237
    .line 238
    .line 239
    const v2, 0x7f12009d

    .line 240
    .line 241
    .line 242
    invoke-interface {v0, v1, v2, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 243
    .line 244
    :cond_b
    iget-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->media:Lcom/narvii/model/Media;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0}, Lcom/narvii/model/Media;->isImage()Z

    .line 248
    move-result v0

    .line 249
    .line 250
    if-eqz v0, :cond_10

    .line 251
    .line 252
    .line 253
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 254
    move-result-object p1

    .line 255
    .line 256
    .line 257
    invoke-interface {p1, v1, v3, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 258
    goto :goto_4

    .line 259
    .line 260
    :cond_c
    iget-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->parent:Lcom/narvii/model/NVObject;

    .line 261
    .line 262
    .line 263
    invoke-direct {p0, v0}, Lcom/narvii/optionmenu/OptionMenuFragment;->isMine(Lcom/narvii/model/NVObject;)Z

    .line 264
    move-result v0

    .line 265
    .line 266
    if-eqz v0, :cond_d

    .line 267
    .line 268
    iget-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->media:Lcom/narvii/model/Media;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v0}, Lcom/narvii/model/Media;->isVideo()Z

    .line 272
    move-result v0

    .line 273
    .line 274
    if-eqz v0, :cond_e

    .line 275
    .line 276
    .line 277
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 278
    move-result-object v0

    .line 279
    .line 280
    .line 281
    invoke-interface {v0, v1, v3, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 282
    goto :goto_3

    .line 283
    .line 284
    .line 285
    :cond_d
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 286
    move-result-object v0

    .line 287
    .line 288
    .line 289
    invoke-interface {v0, v1, v2, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 290
    .line 291
    :cond_e
    :goto_3
    iget-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->media:Lcom/narvii/model/Media;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v0}, Lcom/narvii/model/Media;->isImage()Z

    .line 295
    move-result v0

    .line 296
    .line 297
    if-eqz v0, :cond_10

    .line 298
    .line 299
    .line 300
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 301
    move-result-object p1

    .line 302
    .line 303
    .line 304
    invoke-interface {p1, v1, v3, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 305
    goto :goto_4

    .line 306
    .line 307
    .line 308
    :cond_f
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 309
    move-result-object v0

    .line 310
    .line 311
    .line 312
    invoke-interface {v0, v1, v2, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 313
    .line 314
    iget-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->media:Lcom/narvii/model/Media;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v0}, Lcom/narvii/model/Media;->isImage()Z

    .line 318
    move-result v0

    .line 319
    .line 320
    if-eqz v0, :cond_10

    .line 321
    .line 322
    .line 323
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 324
    move-result-object p1

    .line 325
    .line 326
    .line 327
    invoke-interface {p1, v1, v3, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 328
    :cond_10
    :goto_4
    return-void
.end method

.method private share()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->media:Lcom/narvii/model/Media;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/model/Media;->isVideo()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->parent:Lcom/narvii/model/NVObject;

    .line 11
    .line 12
    instance-of v0, v0, Lcom/narvii/model/Feed;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lcom/narvii/optionmenu/OptionMenuFragment;->sharePost()V

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-direct {p0}, Lcom/narvii/optionmenu/OptionMenuFragment;->shareVideo()V

    .line 22
    goto :goto_0

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-direct {p0}, Lcom/narvii/optionmenu/OptionMenuFragment;->shareImage()V

    .line 26
    :goto_0
    return-void
.end method

.method private shareImage()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->parent:Lcom/narvii/model/NVObject;

    .line 3
    .line 4
    instance-of v0, v0, Lcom/narvii/model/Community;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Lcom/narvii/share/SharePayload;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Lcom/narvii/share/SharePayload;-><init>()V

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->media:Lcom/narvii/model/Media;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 16
    .line 17
    iput-object v1, v0, Lcom/narvii/share/SharePayload;->mediaUrl:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "community"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    check-cast v1, Lcom/narvii/community/CommunityService;

    .line 26
    .line 27
    const-string v2, "config"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    check-cast v2, Lcom/narvii/config/ConfigService;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 37
    move-result v2

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    iput-object v1, v0, Lcom/narvii/share/SharePayload;->object:Lcom/narvii/model/NVObject;

    .line 44
    .line 45
    new-instance v1, Lcom/narvii/share/ShareDialog;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getParentContext()Lcom/narvii/app/NVContext;

    .line 49
    move-result-object v2

    .line 50
    .line 51
    .line 52
    invoke-direct {v1, v2, v0}, Lcom/narvii/share/ShareDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/share/SharePayload;)V

    .line 53
    .line 54
    new-instance v0, Lcom/narvii/share/ShareButtonSaveImage;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getParentContext()Lcom/narvii/app/NVContext;

    .line 58
    move-result-object v2

    .line 59
    .line 60
    .line 61
    invoke-direct {v0, v2}, Lcom/narvii/share/ShareButtonSaveImage;-><init>(Lcom/narvii/app/NVContext;)V

    .line 62
    const/4 v2, 0x0

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v2, v0}, Lcom/narvii/share/ShareDialog;->setCustomButton(ILcom/narvii/share/ShareButtonCustomInfo;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/narvii/share/ShareDialog;->show()V

    .line 69
    return-void

    .line 70
    .line 71
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 72
    .line 73
    .line 74
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .line 76
    iget-object v1, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->media:Lcom/narvii/model/Media;

    .line 77
    .line 78
    .line 79
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    iget-object v1, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->parent:Lcom/narvii/model/NVObject;

    .line 82
    .line 83
    .line 84
    invoke-direct {p0, v1}, Lcom/narvii/optionmenu/OptionMenuFragment;->isMine(Lcom/narvii/model/NVObject;)Z

    .line 85
    move-result v1

    .line 86
    const/4 v2, 0x0

    .line 87
    .line 88
    if-nez v1, :cond_3

    .line 89
    .line 90
    iget-object v1, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->parent:Lcom/narvii/model/NVObject;

    .line 91
    .line 92
    instance-of v3, v1, Lcom/narvii/model/ChatMessage;

    .line 93
    .line 94
    if-nez v3, :cond_3

    .line 95
    .line 96
    instance-of v3, v1, Lcom/narvii/model/Comment;

    .line 97
    .line 98
    if-eqz v3, :cond_1

    .line 99
    goto :goto_0

    .line 100
    .line 101
    :cond_1
    instance-of v1, v1, Lcom/narvii/model/Feed;

    .line 102
    .line 103
    if-eqz v1, :cond_2

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getParentContext()Lcom/narvii/app/NVContext;

    .line 107
    move-result-object v1

    .line 108
    .line 109
    iget-object v2, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->media:Lcom/narvii/model/Media;

    .line 110
    .line 111
    iget-object v3, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->parent:Lcom/narvii/model/NVObject;

    .line 112
    .line 113
    new-instance v4, Lcom/narvii/optionmenu/OptionMenuFragment$5;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getParentContext()Lcom/narvii/app/NVContext;

    .line 117
    move-result-object v5

    .line 118
    .line 119
    .line 120
    invoke-direct {v4, p0, v5}, Lcom/narvii/optionmenu/OptionMenuFragment$5;-><init>(Lcom/narvii/optionmenu/OptionMenuFragment;Lcom/narvii/app/NVContext;)V

    .line 121
    .line 122
    .line 123
    invoke-static {v1, v2, v3, v0, v4}, Lcom/narvii/share/ShareDialog;->getShareDialogFromMedia(Lcom/narvii/app/NVContext;Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;Ljava/util/List;Lcom/narvii/share/BaseShareButtonRepost;)Lcom/narvii/share/ShareDialog;

    .line 124
    move-result-object v0

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0}, Lcom/narvii/share/ShareDialog;->show()V

    .line 128
    goto :goto_1

    .line 129
    .line 130
    .line 131
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getParentContext()Lcom/narvii/app/NVContext;

    .line 132
    move-result-object v1

    .line 133
    .line 134
    iget-object v3, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->media:Lcom/narvii/model/Media;

    .line 135
    .line 136
    iget-object v4, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->parent:Lcom/narvii/model/NVObject;

    .line 137
    .line 138
    .line 139
    invoke-static {v1, v3, v4, v0, v2}, Lcom/narvii/share/ShareDialog;->getShareDialogFromMedia(Lcom/narvii/app/NVContext;Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;Ljava/util/List;Lcom/narvii/share/BaseShareButtonRepost;)Lcom/narvii/share/ShareDialog;

    .line 140
    move-result-object v0

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0}, Lcom/narvii/share/ShareDialog;->show()V

    .line 144
    goto :goto_1

    .line 145
    .line 146
    .line 147
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getParentContext()Lcom/narvii/app/NVContext;

    .line 148
    move-result-object v1

    .line 149
    .line 150
    iget-object v3, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->media:Lcom/narvii/model/Media;

    .line 151
    .line 152
    iget-object v4, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->parent:Lcom/narvii/model/NVObject;

    .line 153
    .line 154
    .line 155
    invoke-static {v1, v3, v4, v0, v2}, Lcom/narvii/share/ShareDialog;->getShareDialogFromMedia(Lcom/narvii/app/NVContext;Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;Ljava/util/List;Lcom/narvii/share/BaseShareButtonRepost;)Lcom/narvii/share/ShareDialog;

    .line 156
    move-result-object v0

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0}, Lcom/narvii/share/ShareDialog;->show()V

    .line 160
    :goto_1
    return-void
.end method

.method private sharePost()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getParentContext()Lcom/narvii/app/NVContext;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->parent:Lcom/narvii/model/NVObject;

    .line 7
    .line 8
    check-cast v1, Lcom/narvii/model/Feed;

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1, v2, v3}, Lcom/narvii/share/ShareDialog;->getShareDialogFromFeed(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;ZLcom/narvii/share/BaseShareButtonRepost;)Lcom/narvii/share/ShareDialog;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/share/ShareDialog;->show()V

    .line 18
    return-void
.end method

.method private shareVideo()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->parent:Lcom/narvii/model/NVObject;

    .line 3
    .line 4
    instance-of v0, v0, Lcom/narvii/model/Comment;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getParentContext()Lcom/narvii/app/NVContext;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->parent:Lcom/narvii/model/NVObject;

    .line 13
    .line 14
    check-cast v1, Lcom/narvii/model/Comment;

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/narvii/share/ShareDialog;->getShareDialogFromComment(Lcom/narvii/app/NVContext;Lcom/narvii/model/Comment;)Lcom/narvii/share/ShareDialog;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/share/ShareDialog;->show()V

    .line 22
    :cond_0
    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/optionmenu/OptionMenuFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/optionmenu/OptionMenuFragment;->setPopupMenu()V

    return-void
.end method

.method static bridge synthetic u(Lcom/narvii/optionmenu/OptionMenuFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/optionmenu/OptionMenuFragment;->share()V

    return-void
.end method

.method private uploadToShareFolder(Lcom/narvii/model/Media;)V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    new-instance v1, Lcom/narvii/util/CheckEligibleHelper;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getParentContext()Lcom/narvii/app/NVContext;

    .line 14
    move-result-object v2

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v2}, Lcom/narvii/util/CheckEligibleHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 18
    .line 19
    new-instance v2, Lcom/narvii/optionmenu/OptionMenuFragment$4;

    .line 20
    .line 21
    .line 22
    invoke-direct {v2, p0, v0, p1}, Lcom/narvii/optionmenu/OptionMenuFragment$4;-><init>(Lcom/narvii/optionmenu/OptionMenuFragment;Ljava/util/ArrayList;Lcom/narvii/model/Media;)V

    .line 23
    .line 24
    const-string p1, "shared-folder"

    .line 25
    .line 26
    const-string v0, "image-upload"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p1, v0, v2}, Lcom/narvii/util/CheckEligibleHelper;->checkEligible(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/Callback;)V

    .line 30
    return-void
.end method

.method private userIsMe(Lcom/narvii/model/NVObject;)Z
    .locals 1

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->uid()Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    :goto_0
    iget-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method static bridge synthetic v(Lcom/narvii/optionmenu/OptionMenuFragment;Lcom/narvii/model/Media;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/optionmenu/OptionMenuFragment;->uploadToShareFolder(Lcom/narvii/model/Media;)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string p3, "account"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p3

    .line 7
    .line 8
    check-cast p3, Lcom/narvii/account/AccountService;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 11
    .line 12
    const-string p3, "community"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    move-result-object p3

    .line 17
    .line 18
    check-cast p3, Lcom/narvii/community/CommunityService;

    .line 19
    .line 20
    iput-object p3, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->communityService:Lcom/narvii/community/CommunityService;

    .line 21
    .line 22
    const-string p3, "config"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    move-result-object p3

    .line 27
    .line 28
    check-cast p3, Lcom/narvii/config/ConfigService;

    .line 29
    .line 30
    iput-object p3, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->config:Lcom/narvii/config/ConfigService;

    .line 31
    .line 32
    const-string p3, "chat"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    move-result-object p3

    .line 37
    .line 38
    check-cast p3, Lcom/narvii/chat/core/ChatService;

    .line 39
    .line 40
    iput-object p3, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 41
    .line 42
    .line 43
    invoke-direct {p0}, Lcom/narvii/optionmenu/OptionMenuFragment;->checkType()I

    .line 44
    move-result p3

    .line 45
    .line 46
    iput p3, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->type:I

    .line 47
    .line 48
    const-string p3, "media"

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object p3

    .line 53
    .line 54
    const-class v0, Lcom/narvii/model/Media;

    .line 55
    .line 56
    .line 57
    invoke-static {p3, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 58
    move-result-object p3

    .line 59
    .line 60
    check-cast p3, Lcom/narvii/model/Media;

    .line 61
    .line 62
    iput-object p3, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->media:Lcom/narvii/model/Media;

    .line 63
    .line 64
    iget-object p3, p3, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 65
    .line 66
    iput-object p3, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->url:Ljava/lang/String;

    .line 67
    .line 68
    const-string p3, "isAnnouncement"

    .line 69
    const/4 v0, 0x0

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, p3, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    .line 73
    move-result p3

    .line 74
    .line 75
    iput-boolean p3, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->isAnnouncement:Z

    .line 76
    .line 77
    .line 78
    const p3, 0x7f0d02fa

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 82
    move-result-object p1

    .line 83
    return-object p1
.end method

.method public onPermissionGranted(I)V
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0x6c

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    new-instance p1, Lcom/narvii/media/SaveImageHelper;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getParentContext()Lcom/narvii/app/NVContext;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-direct {p1, v0}, Lcom/narvii/media/SaveImageHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->media:Lcom/narvii/model/Media;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/narvii/media/SaveImageHelper;->save(Lcom/narvii/model/Media;)V

    .line 19
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f0a007f

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    check-cast p1, Lcom/narvii/widget/FontAwesomeView;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->fontAwesomeView:Lcom/narvii/widget/FontAwesomeView;

    .line 15
    .line 16
    new-instance p2, Lcom/narvii/optionmenu/OptionMenuFragment$1;

    .line 17
    .line 18
    .line 19
    invoke-direct {p2, p0}, Lcom/narvii/optionmenu/OptionMenuFragment$1;-><init>(Lcom/narvii/optionmenu/OptionMenuFragment;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    return-void
.end method

.method public setMedia(Lcom/narvii/model/Media;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->media:Lcom/narvii/model/Media;

    return-void
.end method
