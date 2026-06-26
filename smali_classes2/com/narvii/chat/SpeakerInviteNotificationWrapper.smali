.class public final Lcom/narvii/chat/SpeakerInviteNotificationWrapper;
.super Lcom/narvii/model/NVObject;
.source "SpeakerInviteNotificationWrapper.kt"


# instance fields
.field private isInvited:Z

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/narvii/chat/SpeakerInviteNotificationWrapper;->userId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getUserId()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/narvii/chat/SpeakerInviteNotificationWrapper;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/narvii/chat/SpeakerInviteNotificationWrapper;->userId:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public final isInvited()Z
    .locals 1

    .line 8
    iget-boolean v0, p0, Lcom/narvii/chat/SpeakerInviteNotificationWrapper;->isInvited:Z

    return v0
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

.method public final setInvited(Z)V
    .locals 0

    .line 8
    iput-boolean p1, p0, Lcom/narvii/chat/SpeakerInviteNotificationWrapper;->isInvited:Z

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/narvii/chat/SpeakerInviteNotificationWrapper;->userId:Ljava/lang/String;

    return-void
.end method

.method public status()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/narvii/chat/SpeakerInviteNotificationWrapper;->userId:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method
