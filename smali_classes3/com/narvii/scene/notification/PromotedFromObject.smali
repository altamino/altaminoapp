.class public Lcom/narvii/scene/notification/PromotedFromObject;
.super Lcom/narvii/model/NVObject;
.source "PromotedFromObject.java"


# instance fields
.field public promotedFrom:Ljava/lang/String;

.field public story:Lcom/narvii/model/Blog;


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

    .line 13
    iget-object v0, p0, Lcom/narvii/scene/notification/PromotedFromObject;->promotedFrom:Ljava/lang/String;

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

    .line 28
    iget-object v0, p0, Lcom/narvii/scene/notification/PromotedFromObject;->promotedFrom:Ljava/lang/String;

    return-object v0
.end method
