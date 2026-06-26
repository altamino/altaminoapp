.class public Lcom/narvii/model/PollOption;
.super Lcom/narvii/model/NVObject;
.source "PollOption.java"


# static fields
.field public static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/narvii/model/PollOption;",
            ">;"
        }
    .end annotation
.end field

.field public static final OPT_FAVORITE:I = 0x1

.field public static final OPT_PLAIN:I


# instance fields
.field public createdTime:Ljava/lang/String;

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

.field public parentId:Ljava/lang/String;

.field public parentType:I

.field public polloptId:Ljava/lang/String;

.field public refObject:Lcom/narvii/model/Feed;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/model/Feed$FeedDeserializer;
    .end annotation
.end field

.field public refObjectId:Ljava/lang/String;

.field public refObjectType:I

.field public status:I

.field public title:Ljava/lang/String;

.field public type:I

.field public uid:Ljava/lang/String;

.field public votedValue:I

.field public votesCount:I

.field public votesSum:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 110
    new-instance v0, Lcom/narvii/model/PollOption$1;

    invoke-direct {v0}, Lcom/narvii/model/PollOption$1;-><init>()V

    sput-object v0, Lcom/narvii/model/PollOption;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    return-void
.end method


# virtual methods
.method public firstMedia()Lcom/narvii/model/Media;
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/narvii/model/PollOption;->mediaList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/narvii/model/PollOption;->mediaList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Media;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/narvii/model/PollOption;->polloptId:Ljava/lang/String;

    return-object v0
.end method

.method public isDuplicate(Lcom/narvii/model/PollOption;)Z
    .locals 3

    .line 94
    iget v0, p0, Lcom/narvii/model/PollOption;->type:I

    iget v1, p1, Lcom/narvii/model/PollOption;->type:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    if-nez v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/narvii/model/PollOption;->title:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/narvii/model/PollOption;->title:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/narvii/model/PollOption;->title:Ljava/lang/String;

    iget-object p1, p1, Lcom/narvii/model/PollOption;->title:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 104
    iget-object v0, p0, Lcom/narvii/model/PollOption;->refObjectId:Ljava/lang/String;

    iget-object p1, p1, Lcom/narvii/model/PollOption;->refObjectId:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    return v2
.end method

.method public isEmpty()Z
    .locals 3

    .line 71
    iget v0, p0, Lcom/narvii/model/PollOption;->type:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 72
    iget-object v0, p0, Lcom/narvii/model/PollOption;->title:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/model/PollOption;->mediaList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    if-ne v0, v2, :cond_4

    .line 74
    iget-object v0, p0, Lcom/narvii/model/PollOption;->refObjectId:Ljava/lang/String;

    if-nez v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1

    :cond_4
    return v2
.end method

.method public isSame(Lcom/narvii/model/PollOption;)Z
    .locals 4

    .line 81
    iget v0, p0, Lcom/narvii/model/PollOption;->type:I

    iget v1, p1, Lcom/narvii/model/PollOption;->type:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 85
    iget-object v0, p0, Lcom/narvii/model/PollOption;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/narvii/model/PollOption;->title:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/model/PollOption;->mediaList:Ljava/util/List;

    iget-object p1, p1, Lcom/narvii/model/PollOption;->mediaList:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isListEquals(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_2
    if-ne v0, v1, :cond_3

    .line 87
    iget-object v0, p0, Lcom/narvii/model/PollOption;->refObjectId:Ljava/lang/String;

    iget-object p1, p1, Lcom/narvii/model/PollOption;->refObjectId:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    return v2
.end method

.method public objectType()I
    .locals 1

    const/16 v0, 0xb

    return v0
.end method

.method public parentId()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/narvii/model/PollOption;->parentId:Ljava/lang/String;

    return-object v0
.end method

.method public status()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/narvii/model/PollOption;->status:I

    return v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/narvii/model/PollOption;->uid:Ljava/lang/String;

    return-object v0
.end method
