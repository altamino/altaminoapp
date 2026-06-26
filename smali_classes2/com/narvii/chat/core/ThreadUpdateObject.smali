.class public Lcom/narvii/chat/core/ThreadUpdateObject;
.super Lcom/narvii/model/NVObject;
.source "ThreadUpdateObject.java"


# static fields
.field public static final ACTION_DRAFT_CHANGED:I = 0x2

.field public static final ACTION_MARK_AS_READ:I = 0x0

.field public static final ACTION_MARK_AS_UNREAD:I = 0x1


# instance fields
.field public action:I

.field public chatThread:Lcom/narvii/model/ChatThread;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    return-void
.end method


# virtual methods
.method public id()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/narvii/chat/core/ThreadUpdateObject;->chatThread:Lcom/narvii/model/ChatThread;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object v0

    :goto_0
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
