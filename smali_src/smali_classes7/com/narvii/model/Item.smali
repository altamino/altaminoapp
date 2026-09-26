.class public Lcom/narvii/model/Item;
.super Lcom/narvii/model/Feed;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/FeedBriefContent;


# instance fields
.field public itemId:Ljava/lang/String;

.field public label:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/model/Feed;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public content()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/model/Feed;->content:Ljava/lang/String;

    return-object v0
.end method

.method public firstKeyword()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/Feed;->keywords:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    return-object v1

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/Feed;->keywords:Ljava/lang/String;

    .line 13
    .line 14
    const-string v2, ","

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v2}, Lcom/narvii/util/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 22
    move-result v2

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    return-object v1

    .line 26
    :cond_1
    const/4 v1, 0x0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    check-cast v0, Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    return-object v0
.end method

.method public getBriefContent()Lcom/narvii/model/Feed;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/model/Item;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/model/Item;-><init>()V

    .line 6
    .line 7
    iget v1, p0, Lcom/narvii/model/Feed;->ndcId:I

    .line 8
    .line 9
    iput v1, v0, Lcom/narvii/model/Feed;->ndcId:I

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    const/4 v1, 0x0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    check-cast v1, Lcom/narvii/model/User;

    .line 22
    .line 23
    :goto_0
    iput-object v1, v0, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/narvii/model/Item;->itemId:Ljava/lang/String;

    .line 26
    .line 27
    iput-object v1, v0, Lcom/narvii/model/Item;->itemId:Ljava/lang/String;

    .line 28
    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

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

    iget v0, p0, Lcom/narvii/model/Feed;->status:I

    return v0
.end method

.method public title()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/model/Item;->label:Ljava/lang/String;

    return-object v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    :cond_0
    iget-object v0, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 9
    :goto_0
    return-object v0
.end method
