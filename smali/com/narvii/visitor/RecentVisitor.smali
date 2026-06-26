.class public Lcom/narvii/visitor/RecentVisitor;
.super Lcom/narvii/model/NVObject;
.source "RecentVisitor.java"

# interfaces
.implements Lcom/narvii/model/AuthorGetter;


# instance fields
.field public ownerPrivacyMode:I

.field public profile:Lcom/narvii/model/User;

.field public visitTime:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/util/JacksonUtils$DateDeserializer;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/narvii/util/JacksonUtils$DateSerializer;
    .end annotation
.end field

.field public visitorPrivacyMode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthor()Lcom/narvii/model/User;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/narvii/visitor/RecentVisitor;->profile:Lcom/narvii/model/User;

    return-object v0
.end method

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
