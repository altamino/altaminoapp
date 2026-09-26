.class public Lcom/narvii/model/PollOption;
.super Lcom/narvii/model/NVObject;
.source "SourceFile"


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

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/model/PollOption$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/model/PollOption$1;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/narvii/model/PollOption;->COMPARATOR:Ljava/util/Comparator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public firstMedia()Lcom/narvii/model/Media;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/PollOption;->mediaList:Ljava/util/List;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/PollOption;->mediaList:Ljava/util/List;

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Lcom/narvii/model/Media;

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 23
    :goto_1
    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/model/PollOption;->polloptId:Ljava/lang/String;

    return-object v0
.end method

.method public isDuplicate(Lcom/narvii/model/PollOption;)Z
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/model/PollOption;->type:I

    .line 3
    .line 4
    iget v1, p1, Lcom/narvii/model/PollOption;->type:I

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    return v2

    .line 9
    .line 10
    :cond_0
    if-nez v0, :cond_2

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/model/PollOption;->title:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p1, Lcom/narvii/model/PollOption;->title:Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    return v2

    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lcom/narvii/model/PollOption;->title:Ljava/lang/String;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/narvii/model/PollOption;->title:Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    .line 35
    move-result p1

    .line 36
    return p1

    .line 37
    :cond_2
    const/4 v1, 0x1

    .line 38
    .line 39
    if-ne v0, v1, :cond_3

    .line 40
    .line 41
    iget-object v0, p0, Lcom/narvii/model/PollOption;->refObjectId:Ljava/lang/String;

    .line 42
    .line 43
    iget-object p1, p1, Lcom/narvii/model/PollOption;->refObjectId:Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    move-result p1

    .line 48
    return p1

    .line 49
    :cond_3
    return v2
.end method

.method public isEmpty()Z
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/model/PollOption;->type:I

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/model/PollOption;->title:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/model/PollOption;->mediaList:Ljava/util/List;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 22
    move-result v0

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    :cond_0
    move v1, v2

    .line 26
    :cond_1
    return v1

    .line 27
    .line 28
    :cond_2
    if-ne v0, v2, :cond_4

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/model/PollOption;->refObjectId:Ljava/lang/String;

    .line 31
    .line 32
    if-nez v0, :cond_3

    .line 33
    move v1, v2

    .line 34
    :cond_3
    return v1

    .line 35
    :cond_4
    return v2
.end method

.method public isSame(Lcom/narvii/model/PollOption;)Z
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/model/PollOption;->type:I

    .line 3
    .line 4
    iget v1, p1, Lcom/narvii/model/PollOption;->type:I

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    return v2

    .line 9
    :cond_0
    const/4 v1, 0x1

    .line 10
    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/model/PollOption;->title:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/narvii/model/PollOption;->title:Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v3}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/model/PollOption;->mediaList:Ljava/util/List;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/narvii/model/PollOption;->mediaList:Ljava/util/List;

    .line 26
    .line 27
    .line 28
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isListEquals(Ljava/util/List;Ljava/util/List;)Z

    .line 29
    move-result p1

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    move v2, v1

    .line 33
    :cond_1
    return v2

    .line 34
    .line 35
    :cond_2
    if-ne v0, v1, :cond_3

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/model/PollOption;->refObjectId:Ljava/lang/String;

    .line 38
    .line 39
    iget-object p1, p1, Lcom/narvii/model/PollOption;->refObjectId:Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    move-result p1

    .line 44
    return p1

    .line 45
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

    iget-object v0, p0, Lcom/narvii/model/PollOption;->parentId:Ljava/lang/String;

    return-object v0
.end method

.method public status()I
    .locals 1

    iget v0, p0, Lcom/narvii/model/PollOption;->status:I

    return v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/model/PollOption;->uid:Ljava/lang/String;

    return-object v0
.end method
