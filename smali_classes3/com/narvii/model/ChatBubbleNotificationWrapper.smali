.class public Lcom/narvii/model/ChatBubbleNotificationWrapper;
.super Lcom/narvii/model/NVObject;
.source "ChatBubbleNotificationWrapper.java"


# static fields
.field public static final ACTION_ACTIVE:I = 0x1

.field public static final ACTION_NORMAL:I


# instance fields
.field public action:I

.field public applyForAll:Z

.field public chatBubble:Lcom/narvii/model/ChatBubble;

.field public id:Ljava/lang/String;

.field public threadId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    return-void
.end method


# virtual methods
.method public id()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/narvii/model/ChatBubbleNotificationWrapper;->id:Ljava/lang/String;

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

    const/4 v0, 0x0

    return v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
