.class public Lcom/narvii/chat/global/GlobalChatThread;
.super Lcom/narvii/model/NVObject;
.source "GlobalChatThread.java"


# instance fields
.field public avatarList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public chatThread:Lcom/narvii/model/ChatThread;

.field public chatThreadId:Ljava/lang/String;

.field public communityId:I

.field public icon:Ljava/lang/String;

.field public isFansOnly:Z

.field public status:I

.field public targetUser:Lcom/narvii/model/User;

.field public title:Ljava/lang/String;

.field public uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;I)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatThread;->chatThreadId:Ljava/lang/String;

    .line 55
    iput p4, p0, Lcom/narvii/chat/global/GlobalChatThread;->communityId:I

    .line 56
    invoke-virtual {p2}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatThread;->icon:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/narvii/chat/global/GlobalChatThread;->title:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/narvii/chat/global/GlobalChatThread;->targetUser:Lcom/narvii/model/User;

    return-void
.end method

.method public static newGlobalChatThread(Lcom/narvii/model/ChatThread;ILandroid/content/Context;)Lcom/narvii/chat/global/GlobalChatThread;
    .locals 1

    .line 35
    new-instance v0, Lcom/narvii/chat/util/ChatHelper;

    invoke-direct {v0, p2}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance p2, Lcom/narvii/chat/global/GlobalChatThread;

    invoke-direct {p2}, Lcom/narvii/chat/global/GlobalChatThread;-><init>()V

    .line 37
    iput p1, p2, Lcom/narvii/chat/global/GlobalChatThread;->communityId:I

    .line 38
    invoke-virtual {p0}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/narvii/chat/global/GlobalChatThread;->chatThreadId:Ljava/lang/String;

    .line 39
    invoke-virtual {v0, p0}, Lcom/narvii/chat/util/ChatHelper;->getThreadTitle(Lcom/narvii/model/ChatThread;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/narvii/chat/global/GlobalChatThread;->title:Ljava/lang/String;

    .line 40
    iget-object p1, p0, Lcom/narvii/model/ChatThread;->icon:Ljava/lang/String;

    iput-object p1, p2, Lcom/narvii/chat/global/GlobalChatThread;->icon:Ljava/lang/String;

    .line 41
    invoke-virtual {v0, p0}, Lcom/narvii/chat/util/ChatHelper;->getPrivateChatTargetUer(Lcom/narvii/model/ChatThread;)Lcom/narvii/model/User;

    move-result-object p1

    iput-object p1, p2, Lcom/narvii/chat/global/GlobalChatThread;->targetUser:Lcom/narvii/model/User;

    .line 42
    invoke-virtual {v0, p0}, Lcom/narvii/chat/util/ChatHelper;->getAvatarList(Lcom/narvii/model/ChatThread;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p2, Lcom/narvii/chat/global/GlobalChatThread;->avatarList:Ljava/util/List;

    .line 43
    invoke-virtual {p0}, Lcom/narvii/model/ChatThread;->isFansOnly()Z

    move-result p1

    iput-boolean p1, p2, Lcom/narvii/chat/global/GlobalChatThread;->isFansOnly:Z

    .line 44
    invoke-virtual {p0}, Lcom/narvii/model/ChatThread;->uid()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/narvii/chat/global/GlobalChatThread;->uid:Ljava/lang/String;

    .line 45
    invoke-virtual {p0}, Lcom/narvii/model/ChatThread;->status()I

    move-result p0

    iput p0, p2, Lcom/narvii/chat/global/GlobalChatThread;->status:I

    return-object p2
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/narvii/chat/global/GlobalChatThread;->chatThreadId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/narvii/chat/global/GlobalChatThread;->communityId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .line 79
    invoke-virtual {p0}, Lcom/narvii/chat/global/GlobalChatThread;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public objectType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public parentId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public status()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/narvii/chat/global/GlobalChatThread;->status:I

    return v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatThread;->uid:Ljava/lang/String;

    return-object v0
.end method
