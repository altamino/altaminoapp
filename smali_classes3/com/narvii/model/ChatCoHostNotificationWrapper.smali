.class public Lcom/narvii/model/ChatCoHostNotificationWrapper;
.super Lcom/narvii/model/NVObject;
.source "ChatCoHostNotificationWrapper.java"


# static fields
.field public static final ACTION_CO_HOST_UPDATE:I


# instance fields
.field public action:I

.field public chatThread:Lcom/narvii/model/ChatThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/narvii/model/ChatCoHostNotificationWrapper;->action:I

    return-void
.end method


# virtual methods
.method public id()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

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
