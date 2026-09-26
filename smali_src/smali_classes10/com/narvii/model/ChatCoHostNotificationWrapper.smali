.class public Lcom/narvii/model/ChatCoHostNotificationWrapper;
.super Lcom/narvii/model/NVObject;
.source "SourceFile"


# static fields
.field public static final ACTION_CO_HOST_UPDATE:I


# instance fields
.field public action:I

.field public chatThread:Lcom/narvii/model/ChatThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/model/ChatCoHostNotificationWrapper;->action:I

    .line 7
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
