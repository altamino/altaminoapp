.class public Lcom/narvii/chat/video/KickUserHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field chatThread:Lcom/narvii/model/ChatThread;

.field context:Lcom/narvii/app/NVContext;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/ChatThread;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/chat/video/KickUserHelper;->context:Lcom/narvii/app/NVContext;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/chat/video/KickUserHelper;->chatThread:Lcom/narvii/model/ChatThread;

    .line 8
    return-void
.end method


# virtual methods
.method public deleteMember(Lcom/narvii/model/User;)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/KickUserHelper;->chatThread:Lcom/narvii/model/ChatThread;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/chat/video/KickUserHelper;->context:Lcom/narvii/app/NVContext;

    .line 10
    .line 11
    .line 12
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 20
    .line 21
    new-instance v1, Lcom/narvii/chat/util/ChatRequestHelper;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/narvii/chat/video/KickUserHelper;->context:Lcom/narvii/app/NVContext;

    .line 24
    .line 25
    .line 26
    invoke-direct {v1, v2}, Lcom/narvii/chat/util/ChatRequestHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    iget-object v2, p0, Lcom/narvii/chat/video/KickUserHelper;->chatThread:Lcom/narvii/model/ChatThread;

    .line 33
    .line 34
    iget-object v3, v2, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 35
    .line 36
    new-instance v4, Lcom/narvii/chat/video/KickUserHelper$3;

    .line 37
    .line 38
    .line 39
    invoke-direct {v4, p0, v0}, Lcom/narvii/chat/video/KickUserHelper$3;-><init>(Lcom/narvii/chat/video/KickUserHelper;Lcom/narvii/util/dialog/ProgressDialog;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, p1, v3, v2, v4}, Lcom/narvii/chat/util/ChatRequestHelper;->sendDeleteThreadRequest(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V

    .line 43
    return-void
.end method

.method public showKickDialog(Lcom/narvii/model/User;)V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/chat/video/KickUserHelper;->context:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    const v1, 0x7f0d01b9

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    .line 18
    .line 19
    .line 20
    const v1, 0x7f0a1043

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    new-instance v2, Lcom/narvii/chat/video/KickUserHelper$1;

    .line 27
    .line 28
    .line 29
    invoke-direct {v2, p0, p1, v0}, Lcom/narvii/chat/video/KickUserHelper$1;-><init>(Lcom/narvii/chat/video/KickUserHelper;Lcom/narvii/model/User;Lcom/narvii/util/dialog/AlertDialog;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    .line 34
    .line 35
    const p1, 0x7f0a0a0c

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    new-instance v1, Lcom/narvii/chat/video/KickUserHelper$2;

    .line 42
    .line 43
    .line 44
    invoke-direct {v1, p0, v0}, Lcom/narvii/chat/video/KickUserHelper$2;-><init>(Lcom/narvii/chat/video/KickUserHelper;Lcom/narvii/util/dialog/AlertDialog;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 51
    return-void
.end method
