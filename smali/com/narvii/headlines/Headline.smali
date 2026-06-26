.class public Lcom/narvii/headlines/Headline;
.super Ljava/lang/Object;
.source "Headline.java"


# instance fields
.field public author:Lcom/narvii/model/User;

.field public commentsCount:I

.field public content:Ljava/lang/String;

.field public createdTime:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/util/JacksonUtils$DateDeserializer;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/narvii/util/JacksonUtils$DateSerializer;
    .end annotation
.end field

.field public globalCommentsCount:I

.field public globalVotedValue:I

.field public globalVotesCount:I

.field public mediaList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/model/Media;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;"
        }
    .end annotation
.end field

.field public ndcId:I

.field public refObject:Lcom/narvii/model/Feed;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/model/Feed$HeadlineFeedDeserializer;
    .end annotation
.end field

.field public refObjectId:Ljava/lang/String;

.field public refObjectSubtype:I

.field public refObjectType:I

.field public strategyInfo:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public votedValue:I

.field public votesCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 18
    iput v0, p0, Lcom/narvii/headlines/Headline;->ndcId:I

    return-void
.end method
