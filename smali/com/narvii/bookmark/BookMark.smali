.class public Lcom/narvii/bookmark/BookMark;
.super Ljava/lang/Object;
.source "BookMark.java"


# static fields
.field public static final STATUS_REMOVED:I = 0x130


# instance fields
.field public bookmarkedTime:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/util/JacksonUtils$DateDeserializer;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/narvii/util/JacksonUtils$DateSerializer;
    .end annotation
.end field

.field public refObject:Lcom/narvii/model/Feed;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/model/Feed$FeedDeserializer;
    .end annotation
.end field

.field public refObjectId:Ljava/lang/String;

.field public refObjectType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
