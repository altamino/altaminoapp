.class public Lcom/narvii/chat/video/KickUserHelper;
.super Ljava/lang/Object;
.source "KickUserHelper.java"


# instance fields
.field chatThread:Lcom/narvii/model/ChatThread;

.field context:Lcom/narvii/app/NVContext;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/ChatThread;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/narvii/chat/video/KickUserHelper;->context:Lcom/narvii/app/NVContext;

    .line 33
    iput-object p2, p0, Lcom/narvii/chat/video/KickUserHelper;->chatThread:Lcom/narvii/model/ChatThread;

    return-void
.end method


# virtual methods
.method public deleteMember(Lcom/narvii/model/User;)V
    .locals 5

    .line 56
    iget-object v0, p0, Lcom/narvii/chat/video/KickUserHelper;->chatThread:Lcom/narvii/model/ChatThread;

    if-nez v0, :cond_0

    return-void

    .line 59
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v1, p0, Lcom/narvii/chat/video/KickUserHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 60
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 61
    new-instance v1, Lcom/narvii/chat/util/ChatRequestHelper;

    iget-object v2, p0, Lcom/narvii/chat/video/KickUserHelper;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v1, v2}, Lcom/narvii/chat/util/ChatRequestHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 62
    invoke-virtual {p1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/narvii/chat/video/KickUserHelper;->chatThread:Lcom/narvii/model/ChatThread;

    iget-object v3, v2, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    new-instance v4, Lcom/narvii/chat/video/KickUserHelper$3;

    invoke-direct {v4, p0, v0}, Lcom/narvii/chat/video/KickUserHelper$3;-><init>(Lcom/narvii/chat/video/KickUserHelper;Lcom/narvii/util/dialog/ProgressDialog;)V

    invoke-virtual {v1, p1, v3, v2, v4}, Lcom/narvii/chat/util/ChatRequestHelper;->sendDeleteThreadRequest(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public showKickDialog(Lcom/narvii/model/User;)V
    .locals 3

    .line 37
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    iget-object v1, p0, Lcom/narvii/chat/video/KickUserHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0199

    .line 38
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    const v1, 0x7f090d15

    .line 39
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/narvii/chat/video/KickUserHelper$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/narvii/chat/video/KickUserHelper$1;-><init>(Lcom/narvii/chat/video/KickUserHelper;Lcom/narvii/model/User;Lcom/narvii/util/dialog/AlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090770

    .line 46
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/narvii/chat/video/KickUserHelper$2;

    invoke-direct {v1, p0, v0}, Lcom/narvii/chat/video/KickUserHelper$2;-><init>(Lcom/narvii/chat/video/KickUserHelper;Lcom/narvii/util/dialog/AlertDialog;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method
