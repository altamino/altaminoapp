.class public Lcom/narvii/model/ExternalSource;
.super Lcom/narvii/model/NVObject;
.source "ExternalSource.java"


# static fields
.field public static final EXTERNAL_SOURCE_ALL_ID:Ljava/lang/String; = "all"


# instance fields
.field public createdTime:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/util/JacksonUtils$DateDeserializer;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/narvii/util/JacksonUtils$DateSerializer;
    .end annotation
.end field

.field public extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

.field public icon:Ljava/lang/String;

.field public innerRefCount:Ljava/lang/String;

.field public lastUpdatedTIme:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/util/JacksonUtils$DateDeserializer;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/narvii/util/JacksonUtils$DateSerializer;
    .end annotation
.end field

.field public outerRefCount:Ljava/lang/String;

.field public postsCount:I

.field public primaryLanguage:Ljava/lang/String;

.field public sourceId:Ljava/lang/String;

.field public status:I

.field public tagList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public title:Ljava/lang/String;

.field public type:I

.field public url:Ljava/lang/String;

.field public urlAlias:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    return-void
.end method


# virtual methods
.method public getFeedShowTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 113
    iget p1, p0, Lcom/narvii/model/ExternalSource;->type:I

    const/4 v0, 0x1

    const-string v1, ""

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Reddit - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 115
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Youtube - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 121
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/narvii/model/ExternalSource;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getOriginDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 94
    iget v0, p0, Lcom/narvii/model/ExternalSource;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 102
    :cond_0
    sget v0, Lcom/narvii/lib/R$drawable;->ic_feed_external_post_rss:I

    goto :goto_0

    .line 99
    :cond_1
    sget v0, Lcom/narvii/lib/R$drawable;->ic_feed_external_post_reddit:I

    goto :goto_0

    .line 96
    :cond_2
    sget v0, Lcom/narvii/lib/R$drawable;->ic_feed_external_post_youtube:I

    :goto_0
    if-eqz v0, :cond_3

    .line 106
    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public getUrlAlias()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/narvii/model/ExternalSource;->urlAlias:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/narvii/model/ExternalSource;->url:Ljava/lang/String;

    return-object v0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/ExternalSource;->urlAlias:Ljava/lang/String;

    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/narvii/model/ExternalSource;->sourceId:Ljava/lang/String;

    return-object v0
.end method

.method public isAccessibleByUser(Lcom/narvii/model/User;)Z
    .locals 0

    const/4 p1, 0x0

    .line 89
    invoke-super {p0, p1}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    move-result p1

    return p1
.end method

.method public isNotAvaileable()Z
    .locals 2

    .line 126
    iget v0, p0, Lcom/narvii/model/ExternalSource;->status:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public objectType()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public parentId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public status()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/narvii/model/ExternalSource;->status:I

    return v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
