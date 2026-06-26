.class public Lcom/narvii/model/Item;
.super Lcom/narvii/model/Feed;
.source "Item.java"

# interfaces
.implements Lcom/narvii/util/FeedBriefContent;


# instance fields
.field public itemId:Ljava/lang/String;

.field public label:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/narvii/model/Feed;-><init>()V

    return-void
.end method


# virtual methods
.method public content()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/narvii/model/Feed;->content:Ljava/lang/String;

    return-object v0
.end method

.method public firstKeyword()Ljava/lang/String;
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/narvii/model/Feed;->keywords:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/Feed;->keywords:Ljava/lang/String;

    const-string v2, ","

    invoke-static {v0, v2}, Lcom/narvii/util/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    const/4 v1, 0x0

    .line 57
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBriefContent()Lcom/narvii/model/Feed;
    .locals 2

    .line 62
    new-instance v0, Lcom/narvii/model/Item;

    invoke-direct {v0}, Lcom/narvii/model/Item;-><init>()V

    .line 63
    iget v1, p0, Lcom/narvii/model/Feed;->ndcId:I

    iput v1, v0, Lcom/narvii/model/Feed;->ndcId:I

    .line 64
    iget-object v1, p0, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/User;

    :goto_0
    iput-object v1, v0, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 65
    iget-object v1, p0, Lcom/narvii/model/Item;->itemId:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/model/Item;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/narvii/model/Item;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method public objectType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public parentId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public status()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/narvii/model/Feed;->status:I

    return v0
.end method

.method public title()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/narvii/model/Item;->label:Ljava/lang/String;

    return-object v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    :goto_0
    return-object v0
.end method
