.class public Lcom/narvii/model/CommunityMemRequest;
.super Lcom/narvii/model/NVObject;
.source "CommunityMemRequest.java"


# instance fields
.field public applicant:Lcom/narvii/model/User;

.field public createdTime:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public modifiedTime:Ljava/lang/String;

.field public ndcId:I

.field public requestId:Ljava/lang/String;

.field public status:I

.field public uid:Ljava/lang/String;


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

    .line 19
    iget-object v0, p0, Lcom/narvii/model/CommunityMemRequest;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public objectType()I
    .locals 1

    const/16 v0, 0x13

    return v0
.end method

.method public parentId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public status()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/narvii/model/CommunityMemRequest;->status:I

    return v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/narvii/model/CommunityMemRequest;->uid:Ljava/lang/String;

    return-object v0
.end method
