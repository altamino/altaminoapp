.class public Lcom/narvii/item/contributor/Contributor;
.super Lcom/narvii/model/User;
.source "Contributor.java"


# static fields
.field public static final TYPE_NORMAL:I = 0x0

.field public static final TYPE_ORIGINAL_AUTHOR:I = 0x1


# instance fields
.field public contributedTime:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/util/JacksonUtils$DateDeserializer;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/narvii/util/JacksonUtils$DateSerializer;
    .end annotation
.end field

.field public contributorType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/narvii/model/User;-><init>()V

    return-void
.end method


# virtual methods
.method public isOriginalAuthor()Z
    .locals 2

    .line 23
    iget v0, p0, Lcom/narvii/item/contributor/Contributor;->contributorType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
