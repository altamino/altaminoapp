.class public Lcom/narvii/chat/profile/ChatUserInfoEntryHelper;
.super Ljava/lang/Object;
.source "ChatUserInfoEntryHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ChatUserInfoEntryHelper"


# instance fields
.field context:Lcom/narvii/app/NVContext;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/narvii/chat/profile/ChatUserInfoEntryHelper;->context:Lcom/narvii/app/NVContext;

    return-void
.end method


# virtual methods
.method public showUserInfoInChatThread(Lcom/narvii/model/ChatThread;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;)V
    .locals 2

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    iget-object p3, p0, Lcom/narvii/chat/profile/ChatUserInfoEntryHelper;->context:Lcom/narvii/app/NVContext;

    const-string v0, "account"

    invoke-interface {p3, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/account/AccountService;

    .line 32
    invoke-virtual {p2}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    invoke-virtual {p3}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/model/User;->isCurator()Z

    move-result v0

    .line 34
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->uid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    iget p3, p1, Lcom/narvii/model/ChatThread;->type:I

    const/4 v0, 0x1

    if-eq p3, v0, :cond_2

    const/4 v0, 0x2

    .line 39
    :cond_2
    new-instance p3, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;

    iget-object v0, p0, Lcom/narvii/chat/profile/ChatUserInfoEntryHelper;->context:Lcom/narvii/app/NVContext;

    invoke-direct {p3, v0, p2}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)V

    .line 40
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object p2

    iget v0, p1, Lcom/narvii/model/ChatThread;->type:I

    invoke-virtual {p3, p2, v0, p1}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->configUserDialog(Ljava/lang/String;ILcom/narvii/model/ChatThread;)Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;

    move-result-object p1

    .line 41
    invoke-virtual {p1}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->build()Lcom/narvii/chat/dialog/VVChatUserDialog;

    move-result-object p1

    .line 42
    invoke-virtual {p1, p4}, Lcom/narvii/onlinestatus/UserDialog;->setOnClickListener(Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;)V

    .line 43
    invoke-virtual {p1}, Lcom/narvii/chat/dialog/VVChatUserDialog;->show()V

    return-void

    .line 28
    :cond_3
    :goto_0
    sget-object p3, Lcom/narvii/chat/profile/ChatUserInfoEntryHelper;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ChatThread is null "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " targetUser "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
