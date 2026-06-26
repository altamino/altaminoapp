.class public Lcom/narvii/chat/util/ThreadNotification;
.super Lcom/narvii/model/NVObject;
.source "ThreadNotification.java"


# static fields
.field public static final ACTION_ADD_MEMBER:I = 0x2

.field public static final ACTION_REMOVE_MEMBER:I = 0x1


# instance fields
.field public action:I

.field public targetObj:Ljava/lang/Object;

.field public threadId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    return-void
.end method


# virtual methods
.method public id()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/narvii/chat/util/ThreadNotification;->threadId:Ljava/lang/String;

    return-object v0
.end method

.method public objectType()I
    .locals 1

    const/16 v0, 0xc

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
