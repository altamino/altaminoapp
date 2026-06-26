.class public Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;
.super Ljava/lang/Object;
.source "ScreenRoomHelper.java"


# static fields
.field public static final ROOM_ROLE_HOST:I = 0x1

.field public static final ROOM_ROLE_VIEWER:I = 0x0

.field public static final TAG_SR_ACTION:Ljava/lang/String; = "SR_ACTION"


# instance fields
.field private context:Lcom/narvii/app/NVContext;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;->context:Lcom/narvii/app/NVContext;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;->context:Lcom/narvii/app/NVContext;

    return-object p0
.end method


# virtual methods
.method public getDefaultScreenRoomPermission()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public requestToJoinChatThread(Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/model/ChatThread;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 46
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 50
    :cond_1
    iget v0, p1, Lcom/narvii/model/ChatThread;->membershipStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 51
    iget-object v0, p1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 52
    iget-object v1, p0, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;->context:Lcom/narvii/app/NVContext;

    const-string v2, "account"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/AccountService;

    .line 53
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/chat/thread/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/member/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-virtual {v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;->context:Lcom/narvii/app/NVContext;

    const-string v2, "api"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 57
    new-instance v2, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper$1;

    const-class v3, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {v2, p0, v3, p1, p2}, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper$1;-><init>(Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;Ljava/lang/Class;Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 85
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public showPromoteToPresenterDialog(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;Lcom/narvii/util/Callback;)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    if-eqz p4, :cond_0

    .line 97
    invoke-interface {p4, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    if-eqz p2, :cond_3

    .line 102
    iget p2, p2, Lcom/narvii/model/ChatThread;->type:I

    const/4 p4, 0x2

    if-eq p2, p4, :cond_3

    if-eqz p3, :cond_2

    .line 104
    invoke-interface {p3, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_2
    return-void

    .line 108
    :cond_3
    new-instance p2, Lcom/narvii/util/dialog/AlertDialog;

    iget-object p4, p0, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p4}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p2, p4}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    const p4, 0x7f0b01bb

    .line 109
    invoke-virtual {p2, p4}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    .line 111
    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    const p4, 0x7f0f105b

    .line 113
    iget-object v0, p0, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    const v0, 0x7f090af4

    .line 115
    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p4, 0x7f090775

    .line 116
    invoke-virtual {p2, p4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const p1, 0x7f0f116a

    goto :goto_0

    :cond_4
    const p1, 0x7f0f0aee

    .line 117
    :goto_0
    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setText(I)V

    .line 118
    new-instance p1, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper$2;

    invoke-direct {p1, p0, p2}, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper$2;-><init>(Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;Lcom/narvii/util/dialog/AlertDialog;)V

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09060a

    .line 124
    invoke-virtual {p2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p4, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper$3;

    invoke-direct {p4, p0, p2, p3}, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper$3;-><init>(Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;Lcom/narvii/util/dialog/AlertDialog;Lcom/narvii/util/Callback;)V

    invoke-virtual {p1, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    invoke-virtual {p2}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method
