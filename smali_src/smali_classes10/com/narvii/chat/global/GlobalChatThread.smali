.class public Lcom/narvii/chat/global/GlobalChatThread;
.super Lcom/narvii/model/NVObject;
.source "SourceFile"


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
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public chatThreadId:Ljava/lang/String;

.field public communityId:I

.field public icon:Ljava/lang/String;

.field public isFansOnly:Z

.field public status:I

.field public targetUser:Lcom/narvii/model/User;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public title:Ljava/lang/String;

.field public uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;I)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/model/User;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatThread;->chatThreadId:Ljava/lang/String;

    iput p4, p0, Lcom/narvii/chat/global/GlobalChatThread;->communityId:I

    .line 3
    invoke-virtual {p2}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatThread;->icon:Ljava/lang/String;

    iput-object p3, p0, Lcom/narvii/chat/global/GlobalChatThread;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/narvii/chat/global/GlobalChatThread;->targetUser:Lcom/narvii/model/User;

    return-void
.end method

.method public static newGlobalChatThread(Lcom/narvii/model/ChatThread;ILandroid/content/Context;)Lcom/narvii/chat/global/GlobalChatThread;
    .locals 1
    .param p0    # Lcom/narvii/model/ChatThread;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/chat/util/ChatHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p2}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    new-instance p2, Lcom/narvii/chat/global/GlobalChatThread;

    .line 8
    .line 9
    .line 10
    invoke-direct {p2}, Lcom/narvii/chat/global/GlobalChatThread;-><init>()V

    .line 11
    .line 12
    iput p1, p2, Lcom/narvii/chat/global/GlobalChatThread;->communityId:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    iput-object p1, p2, Lcom/narvii/chat/global/GlobalChatThread;->chatThreadId:Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p0}, Lcom/narvii/chat/util/ChatHelper;->getThreadTitle(Lcom/narvii/model/ChatThread;)Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    iput-object p1, p2, Lcom/narvii/chat/global/GlobalChatThread;->title:Ljava/lang/String;

    .line 25
    .line 26
    iget-object p1, p0, Lcom/narvii/model/ChatThread;->icon:Ljava/lang/String;

    .line 27
    .line 28
    iput-object p1, p2, Lcom/narvii/chat/global/GlobalChatThread;->icon:Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p0}, Lcom/narvii/chat/util/ChatHelper;->getPrivateChatTargetUer(Lcom/narvii/model/ChatThread;)Lcom/narvii/model/User;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    iput-object p1, p2, Lcom/narvii/chat/global/GlobalChatThread;->targetUser:Lcom/narvii/model/User;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p0}, Lcom/narvii/chat/util/ChatHelper;->getAvatarList(Lcom/narvii/model/ChatThread;)Ljava/util/List;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    iput-object p1, p2, Lcom/narvii/chat/global/GlobalChatThread;->avatarList:Ljava/util/List;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/narvii/model/ChatThread;->isFansOnly()Z

    .line 44
    move-result p1

    .line 45
    .line 46
    iput-boolean p1, p2, Lcom/narvii/chat/global/GlobalChatThread;->isFansOnly:Z

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/narvii/model/ChatThread;->uid()Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    iput-object p1, p2, Lcom/narvii/chat/global/GlobalChatThread;->uid:Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/narvii/model/ChatThread;->status()I

    .line 56
    move-result p0

    .line 57
    .line 58
    iput p0, p2, Lcom/narvii/chat/global/GlobalChatThread;->status:I

    .line 59
    return-object p2
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/chat/global/GlobalChatThread;->chatThreadId:Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v1, "_"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    iget v1, p0, Lcom/narvii/chat/global/GlobalChatThread;->communityId:I

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/global/GlobalChatThread;->getKey()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
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

    iget v0, p0, Lcom/narvii/chat/global/GlobalChatThread;->status:I

    return v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatThread;->uid:Ljava/lang/String;

    return-object v0
.end method
