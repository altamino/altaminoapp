.class public Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ROOM_ROLE_HOST:I = 0x1

.field public static final ROOM_ROLE_VIEWER:I = 0x0

.field public static final TAG_SR_ACTION:Ljava/lang/String; = "SR_ACTION"


# instance fields
.field private context:Lcom/narvii/app/NVContext;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;->context:Lcom/narvii/app/NVContext;

    .line 6
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 1
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

    .line 1
    .line 2
    if-nez p1, :cond_1

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 7
    .line 8
    .line 9
    invoke-interface {p2, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 10
    :cond_0
    return-void

    .line 11
    .line 12
    :cond_1
    iget v0, p1, Lcom/narvii/model/ChatThread;->membershipStatus:I

    .line 13
    const/4 v1, 0x1

    .line 14
    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    iget-object v0, p1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;->context:Lcom/narvii/app/NVContext;

    .line 20
    .line 21
    const-string v2, "account"

    .line 22
    .line 23
    .line 24
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    check-cast v1, Lcom/narvii/account/AccountService;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 39
    move-result-object v2

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    const-string v4, "/chat/thread/"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v0, "/member/"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    iget-object v1, p0, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;->context:Lcom/narvii/app/NVContext;

    .line 79
    .line 80
    const-string v2, "api"

    .line 81
    .line 82
    .line 83
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 84
    move-result-object v1

    .line 85
    .line 86
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 87
    .line 88
    new-instance v2, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper$1;

    .line 89
    .line 90
    const-class v3, Lcom/narvii/model/api/ApiResponse;

    .line 91
    .line 92
    .line 93
    invoke-direct {v2, p0, v3, p1, p2}, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper$1;-><init>(Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;Ljava/lang/Class;Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 97
    goto :goto_0

    .line 98
    .line 99
    :cond_2
    if-eqz p2, :cond_3

    .line 100
    .line 101
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 102
    .line 103
    .line 104
    invoke-interface {p2, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 105
    :cond_3
    :goto_0
    return-void
.end method

.method public showPromoteToPresenterDialog(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;Lcom/narvii/util/Callback;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_1

    .line 4
    .line 5
    if-eqz p4, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-interface {p4, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 9
    :cond_0
    return-void

    .line 10
    .line 11
    :cond_1
    if-eqz p2, :cond_3

    .line 12
    .line 13
    iget p2, p2, Lcom/narvii/model/ChatThread;->type:I

    .line 14
    const/4 p4, 0x2

    .line 15
    .line 16
    if-eq p2, p4, :cond_3

    .line 17
    .line 18
    if-eqz p3, :cond_2

    .line 19
    .line 20
    .line 21
    invoke-interface {p3, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 22
    :cond_2
    return-void

    .line 23
    .line 24
    :cond_3
    new-instance p2, Lcom/narvii/util/dialog/AlertDialog;

    .line 25
    .line 26
    iget-object p4, p0, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;->context:Lcom/narvii/app/NVContext;

    .line 27
    .line 28
    .line 29
    invoke-interface {p4}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 30
    move-result-object p4

    .line 31
    .line 32
    .line 33
    invoke-direct {p2, p4}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 34
    .line 35
    .line 36
    const p4, 0x7f0d01db

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, p4}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    .line 40
    .line 41
    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 42
    .line 43
    iget-object p4, p0, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;->context:Lcom/narvii/app/NVContext;

    .line 44
    .line 45
    .line 46
    invoke-interface {p4}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 47
    move-result-object p4

    .line 48
    .line 49
    .line 50
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 51
    move-result-object p4

    .line 52
    .line 53
    .line 54
    const v0, 0x7f12115b

    .line 55
    .line 56
    .line 57
    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 58
    move-result-object p4

    .line 59
    .line 60
    .line 61
    const v0, 0x7f0a0dd5

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    check-cast v0, Landroid/widget/TextView;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    .line 72
    .line 73
    const p4, 0x7f0a0a11

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, p4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 77
    move-result-object p4

    .line 78
    .line 79
    check-cast p4, Landroid/widget/TextView;

    .line 80
    const/4 v0, 0x1

    .line 81
    .line 82
    if-eq p1, v0, :cond_4

    .line 83
    .line 84
    .line 85
    const p1, 0x7f121273

    .line 86
    goto :goto_0

    .line 87
    .line 88
    .line 89
    :cond_4
    const p1, 0x7f120b99

    .line 90
    .line 91
    .line 92
    :goto_0
    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setText(I)V

    .line 93
    .line 94
    new-instance p1, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper$2;

    .line 95
    .line 96
    .line 97
    invoke-direct {p1, p0, p2}, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper$2;-><init>(Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;Lcom/narvii/util/dialog/AlertDialog;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p4, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    .line 102
    .line 103
    const p1, 0x7f0a0788

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 107
    move-result-object p1

    .line 108
    .line 109
    new-instance p4, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper$3;

    .line 110
    .line 111
    .line 112
    invoke-direct {p4, p0, p2, p3}, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper$3;-><init>(Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;Lcom/narvii/util/dialog/AlertDialog;Lcom/narvii/util/Callback;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2}, Lcom/narvii/app/NVDialog;->show()V

    .line 119
    return-void
.end method
