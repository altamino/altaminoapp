.class public Lcom/narvii/chat/invite/ChatInviteFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"


# instance fields
.field private configService:Lcom/narvii/config/ConfigService;

.field private globalChatService:Lcom/narvii/chat/util/GlobalChatService;

.field private ndcSubmitToken:Ljava/lang/String;

.field public onStartListener:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/model/ChatThread;",
            ">;"
        }
    .end annotation
.end field

.field public source:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-object v0, p0, Lcom/narvii/chat/invite/ChatInviteFragment;->ndcSubmitToken:Ljava/lang/String;

    .line 7
    return-void
.end method

.method static bridge synthetic n(Lcom/narvii/chat/invite/ChatInviteFragment;)Lcom/narvii/config/ConfigService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/invite/ChatInviteFragment;->configService:Lcom/narvii/config/ConfigService;

    return-object p0
.end method

.method static bridge synthetic o(Lcom/narvii/chat/invite/ChatInviteFragment;)Lcom/narvii/chat/util/GlobalChatService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/invite/ChatInviteFragment;->globalChatService:Lcom/narvii/chat/util/GlobalChatService;

    return-object p0
.end method

.method static bridge synthetic p(Lcom/narvii/chat/invite/ChatInviteFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/chat/invite/ChatInviteFragment;->ndcSubmitToken:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic q(Lcom/narvii/chat/invite/ChatInviteFragment;[Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/chat/invite/ChatInviteFragment;->sendInvite([Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private sendInvite([Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    const-class v2, Lcom/narvii/chat/ThreadResponse;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 12
    .line 13
    new-instance v1, Lcom/narvii/chat/invite/ChatInviteFragment$4;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, p0, p3, p1}, Lcom/narvii/chat/invite/ChatInviteFragment$4;-><init>(Lcom/narvii/chat/invite/ChatInviteFragment;Z[Ljava/lang/String;)V

    .line 17
    .line 18
    iput-object v1, v0, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 22
    .line 23
    iget-object p3, p0, Lcom/narvii/chat/invite/ChatInviteFragment;->ndcSubmitToken:Ljava/lang/String;

    .line 24
    .line 25
    if-nez p3, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 29
    move-result-object p3

    .line 30
    .line 31
    .line 32
    invoke-virtual {p3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 33
    move-result-object p3

    .line 34
    .line 35
    iput-object p3, p0, Lcom/narvii/chat/invite/ChatInviteFragment;->ndcSubmitToken:Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 39
    move-result-object p3

    .line 40
    .line 41
    .line 42
    invoke-virtual {p3}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 47
    .line 48
    const-string v1, "ndc-submit-token"

    .line 49
    .line 50
    iget-object v2, p0, Lcom/narvii/chat/invite/ChatInviteFragment;->ndcSubmitToken:Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p3, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->addHeaderField(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 54
    .line 55
    const-string v1, "/chat/thread"

    .line 56
    .line 57
    .line 58
    invoke-virtual {p3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 59
    array-length v1, p1

    .line 60
    const/4 v2, 0x0

    .line 61
    const/4 v3, 0x1

    .line 62
    .line 63
    if-le v1, v3, :cond_1

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    move v3, v2

    .line 66
    .line 67
    .line 68
    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    move-result-object v1

    .line 70
    .line 71
    const-string v3, "type"

    .line 72
    .line 73
    .line 74
    invoke-virtual {p3, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 75
    .line 76
    .line 77
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 78
    move-result-object v1

    .line 79
    array-length v3, p1

    .line 80
    .line 81
    :goto_1
    if-ge v2, v3, :cond_2

    .line 82
    .line 83
    aget-object v4, p1, v2

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v4}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 87
    .line 88
    add-int/lit8 v2, v2, 0x1

    .line 89
    goto :goto_1

    .line 90
    .line 91
    :cond_2
    const-string p1, "inviteeUids"

    .line 92
    .line 93
    .line 94
    invoke-virtual {p3, p1, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 95
    .line 96
    .line 97
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 98
    move-result p1

    .line 99
    .line 100
    if-nez p1, :cond_3

    .line 101
    .line 102
    const-string p1, "initialMessageContent"

    .line 103
    .line 104
    .line 105
    invoke-virtual {p3, p1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 106
    .line 107
    .line 108
    :cond_3
    invoke-virtual {p3}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 109
    move-result-object p1

    .line 110
    .line 111
    const-string p2, "api"

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 115
    move-result-object p2

    .line 116
    .line 117
    check-cast p2, Lcom/narvii/util/http/ApiService;

    .line 118
    .line 119
    iget-object p3, v0, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p2, p1, p3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 123
    return-void
.end method


# virtual methods
.method public askInvite([Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/narvii/chat/invite/ChatInviteFragment;->askInvite([Ljava/lang/String;Z)V

    return-void
.end method

.method public askInvite([Ljava/lang/String;Z)V
    .locals 4

    .line 2
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    const-string v1, "SendChatInvite"

    invoke-direct {v0, p0, v1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    const v1, 0x7f12025d

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 4
    invoke-virtual {v0}, Lcom/narvii/util/dialog/AlertDialog;->setEditText()Landroid/widget/EditText;

    move-result-object v1

    const v2, 0x7f12025c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x1040000

    .line 5
    invoke-virtual {v0, v3, v1, v2}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 6
    new-instance v1, Lcom/narvii/chat/invite/ChatInviteFragment$3;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/narvii/chat/invite/ChatInviteFragment$3;-><init>(Lcom/narvii/chat/invite/ChatInviteFragment;Lcom/narvii/util/dialog/AlertDialog;[Ljava/lang/String;Z)V

    const p1, 0x7f120281

    const/4 p2, 0x4

    invoke-virtual {v0, p1, p2, v1}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 7
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method

.method public isValidPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "config"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/chat/invite/ChatInviteFragment;->configService:Lcom/narvii/config/ConfigService;

    .line 14
    .line 15
    const-string v0, "globalChat"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    check-cast v0, Lcom/narvii/chat/util/GlobalChatService;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/chat/invite/ChatInviteFragment;->globalChatService:Lcom/narvii/chat/util/GlobalChatService;

    .line 24
    .line 25
    if-nez p1, :cond_0

    .line 26
    const/4 p1, 0x0

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_0
    const-string v0, "ndcSubmitToken"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    :goto_0
    iput-object p1, p0, Lcom/narvii/chat/invite/ChatInviteFragment;->ndcSubmitToken:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public startChat(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/narvii/chat/invite/ChatInviteFragment;->startChat(Ljava/lang/String;Z)V

    return-void
.end method

.method public startChat(Ljava/lang/String;Z)V
    .locals 10

    .line 2
    new-instance v6, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {v6}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 4
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/chat/thread?type=exist-single&cv=1.2&q="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->userInteraction()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v7

    const-string v0, "api"

    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/narvii/util/http/ApiService;

    .line 9
    new-instance v9, Lcom/narvii/chat/invite/ChatInviteFragment$1;

    const-class v2, Lcom/narvii/chat/thread/ThreadListResponse;

    move-object v0, v9

    move-object v1, p0

    move-object v3, v6

    move v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/narvii/chat/invite/ChatInviteFragment$1;-><init>(Lcom/narvii/chat/invite/ChatInviteFragment;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;ZLjava/lang/String;)V

    invoke-virtual {v8, v7, v9}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 10
    new-instance p1, Lcom/narvii/chat/invite/ChatInviteFragment$2;

    invoke-direct {p1, p0, v7}, Lcom/narvii/chat/invite/ChatInviteFragment$2;-><init>(Lcom/narvii/chat/invite/ChatInviteFragment;Lcom/narvii/util/http/ApiRequest;)V

    invoke-virtual {v6, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method
