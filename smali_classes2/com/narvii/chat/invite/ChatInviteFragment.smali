.class public Lcom/narvii/chat/invite/ChatInviteFragment;
.super Lcom/narvii/app/NVFragment;
.source "ChatInviteFragment.java"


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

    .line 38
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/narvii/chat/invite/ChatInviteFragment;->ndcSubmitToken:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/chat/invite/ChatInviteFragment;)Lcom/narvii/config/ConfigService;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/narvii/chat/invite/ChatInviteFragment;->configService:Lcom/narvii/config/ConfigService;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/chat/invite/ChatInviteFragment;)Lcom/narvii/chat/util/GlobalChatService;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/narvii/chat/invite/ChatInviteFragment;->globalChatService:Lcom/narvii/chat/util/GlobalChatService;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/chat/invite/ChatInviteFragment;[Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/chat/invite/ChatInviteFragment;->sendInvite([Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$302(Lcom/narvii/chat/invite/ChatInviteFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/narvii/chat/invite/ChatInviteFragment;->ndcSubmitToken:Ljava/lang/String;

    return-object p1
.end method

.method private sendInvite([Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    .line 150
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/narvii/chat/ThreadResponse;

    invoke-direct {v0, v1, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 152
    new-instance v1, Lcom/narvii/chat/invite/ChatInviteFragment$4;

    invoke-direct {v1, p0, p3, p1}, Lcom/narvii/chat/invite/ChatInviteFragment$4;-><init>(Lcom/narvii/chat/invite/ChatInviteFragment;Z[Ljava/lang/String;)V

    iput-object v1, v0, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 194
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 196
    iget-object p3, p0, Lcom/narvii/chat/invite/ChatInviteFragment;->ndcSubmitToken:Ljava/lang/String;

    if-nez p3, :cond_0

    .line 197
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/narvii/chat/invite/ChatInviteFragment;->ndcSubmitToken:Ljava/lang/String;

    .line 199
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p3

    .line 200
    invoke-virtual {p3}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 201
    iget-object v1, p0, Lcom/narvii/chat/invite/ChatInviteFragment;->ndcSubmitToken:Ljava/lang/String;

    const-string v2, "ndc-submit-token"

    invoke-virtual {p3, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->addHeaderField(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v1, "/chat/thread"

    .line 202
    invoke-virtual {p3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 203
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v3, "type"

    invoke-virtual {p3, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 204
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v1

    .line 205
    array-length v3, p1

    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v4, p1, v2

    .line 206
    invoke-virtual {v1, v4}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const-string p1, "inviteeUids"

    .line 208
    invoke-virtual {p3, p1, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 209
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "initialMessageContent"

    .line 210
    invoke-virtual {p3, p1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 212
    :cond_3
    invoke-virtual {p3}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    const-string p2, "api"

    .line 214
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/util/http/ApiService;

    .line 215
    iget-object p3, v0, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {p2, p1, p3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method


# virtual methods
.method public askInvite([Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 130
    invoke-virtual {p0, p1, v0}, Lcom/narvii/chat/invite/ChatInviteFragment;->askInvite([Ljava/lang/String;Z)V

    return-void
.end method

.method public askInvite([Ljava/lang/String;Z)V
    .locals 4

    .line 134
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    const-string v1, "SendChatInvite"

    invoke-direct {v0, p0, v1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    const v1, 0x7f0f021a

    .line 135
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 136
    invoke-virtual {v0}, Lcom/narvii/util/dialog/AlertDialog;->setEditText()Landroid/widget/EditText;

    move-result-object v1

    const v2, 0x7f0f0219

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 137
    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 138
    new-instance v1, Lcom/narvii/chat/invite/ChatInviteFragment$3;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/narvii/chat/invite/ChatInviteFragment$3;-><init>(Lcom/narvii/chat/invite/ChatInviteFragment;Lcom/narvii/util/dialog/AlertDialog;[Ljava/lang/String;Z)V

    const p1, 0x7f0f023e

    const/4 p2, 0x4

    invoke-virtual {v0, p1, p2, v1}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 146
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

    .line 48
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "config"

    .line 49
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    iput-object v0, p0, Lcom/narvii/chat/invite/ChatInviteFragment;->configService:Lcom/narvii/config/ConfigService;

    const-string v0, "globalChat"

    .line 50
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/util/GlobalChatService;

    iput-object v0, p0, Lcom/narvii/chat/invite/ChatInviteFragment;->globalChatService:Lcom/narvii/chat/util/GlobalChatService;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "ndcSubmitToken"

    .line 51
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/narvii/chat/invite/ChatInviteFragment;->ndcSubmitToken:Ljava/lang/String;

    return-void
.end method

.method public startChat(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p0, p1, v0}, Lcom/narvii/chat/invite/ChatInviteFragment;->startChat(Ljava/lang/String;Z)V

    return-void
.end method

.method public startChat(Ljava/lang/String;Z)V
    .locals 10

    .line 64
    new-instance v6, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 65
    invoke-virtual {v6}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 68
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

    .line 69
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->userInteraction()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v7

    const-string v0, "api"

    .line 72
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/narvii/util/http/ApiService;

    .line 73
    new-instance v9, Lcom/narvii/chat/invite/ChatInviteFragment$1;

    const-class v2, Lcom/narvii/chat/thread/ThreadListResponse;

    move-object v0, v9

    move-object v1, p0

    move-object v3, v6

    move v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/narvii/chat/invite/ChatInviteFragment$1;-><init>(Lcom/narvii/chat/invite/ChatInviteFragment;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;ZLjava/lang/String;)V

    invoke-virtual {v8, v7, v9}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 120
    new-instance p1, Lcom/narvii/chat/invite/ChatInviteFragment$2;

    invoke-direct {p1, p0, v7}, Lcom/narvii/chat/invite/ChatInviteFragment$2;-><init>(Lcom/narvii/chat/invite/ChatInviteFragment;Lcom/narvii/util/http/ApiRequest;)V

    invoke-virtual {v6, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method
