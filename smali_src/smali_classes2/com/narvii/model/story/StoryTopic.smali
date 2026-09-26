.class public Lcom/narvii/model/story/StoryTopic;
.super Lcom/narvii/model/NVObject;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/model/StrategyObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/model/story/StoryTopic$Style;,
        Lcom/narvii/model/story/StoryTopic$ActiveInfo;
    }
.end annotation


# static fields
.field public static final SUBSCRIPTION_STATUS_NONE:I = 0x0

.field public static final SUBSCRIPTION_STATUS_SUBSCRIBED:I = 0x1


# instance fields
.field public activeInfo:Lcom/narvii/model/story/StoryTopic$ActiveInfo;

.field public communityCount:I

.field public invalid:Z

.field public isBookmarked:Z

.field public landingTab:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public originalName:Ljava/lang/String;

.field public storyCount:I

.field public strategyInfo:Ljava/lang/String;

.field public style:Lcom/narvii/model/story/StoryTopic$Style;

.field public subTopicList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/model/story/StoryTopic;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/story/StoryTopic;",
            ">;"
        }
    .end annotation
.end field

.field public subscriptionStatus:I

.field public tabList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/model/story/StoryTopicTab;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/story/StoryTopicTab;",
            ">;"
        }
    .end annotation
.end field

.field public topicId:I


# direct methods
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
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz p1, :cond_9

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    move-result-object v3

    .line 16
    .line 17
    if-eq v2, v3, :cond_1

    .line 18
    goto :goto_3

    .line 19
    .line 20
    :cond_1
    check-cast p1, Lcom/narvii/model/story/StoryTopic;

    .line 21
    .line 22
    iget v2, p0, Lcom/narvii/model/story/StoryTopic;->topicId:I

    .line 23
    .line 24
    iget v3, p1, Lcom/narvii/model/story/StoryTopic;->topicId:I

    .line 25
    .line 26
    if-eq v2, v3, :cond_2

    .line 27
    return v1

    .line 28
    .line 29
    :cond_2
    iget-object v2, p0, Lcom/narvii/model/story/StoryTopic;->name:Ljava/lang/String;

    .line 30
    .line 31
    if-eqz v2, :cond_3

    .line 32
    .line 33
    iget-object v3, p1, Lcom/narvii/model/story/StoryTopic;->name:Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result v2

    .line 38
    .line 39
    if-nez v2, :cond_4

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_3
    iget-object v2, p1, Lcom/narvii/model/story/StoryTopic;->name:Ljava/lang/String;

    .line 43
    .line 44
    if-eqz v2, :cond_4

    .line 45
    :goto_0
    return v1

    .line 46
    .line 47
    :cond_4
    iget-object v2, p0, Lcom/narvii/model/story/StoryTopic;->style:Lcom/narvii/model/story/StoryTopic$Style;

    .line 48
    .line 49
    if-eqz v2, :cond_5

    .line 50
    .line 51
    iget-object v3, p1, Lcom/narvii/model/story/StoryTopic;->style:Lcom/narvii/model/story/StoryTopic$Style;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v3}, Lcom/narvii/model/story/StoryTopic$Style;->equals(Ljava/lang/Object;)Z

    .line 55
    move-result v2

    .line 56
    .line 57
    if-nez v2, :cond_6

    .line 58
    goto :goto_1

    .line 59
    .line 60
    :cond_5
    iget-object v2, p1, Lcom/narvii/model/story/StoryTopic;->style:Lcom/narvii/model/story/StoryTopic$Style;

    .line 61
    .line 62
    if-eqz v2, :cond_6

    .line 63
    :goto_1
    return v1

    .line 64
    .line 65
    :cond_6
    iget-object v2, p0, Lcom/narvii/model/story/StoryTopic;->originalName:Ljava/lang/String;

    .line 66
    .line 67
    iget-object p1, p1, Lcom/narvii/model/story/StoryTopic;->originalName:Ljava/lang/String;

    .line 68
    .line 69
    if-eqz v2, :cond_7

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    move-result p1

    .line 74
    .line 75
    if-nez p1, :cond_8

    .line 76
    goto :goto_2

    .line 77
    .line 78
    :cond_7
    if-eqz p1, :cond_8

    .line 79
    :goto_2
    return v1

    .line 80
    :cond_8
    return v0

    .line 81
    :cond_9
    :goto_3
    return v1
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/story/StoryTopic;->originalName:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/model/story/StoryTopic;->originalName:Ljava/lang/String;

    .line 11
    return-object v0

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/story/StoryTopic;->name:Ljava/lang/String;

    .line 14
    return-object v0
.end method

.method public getStrategyInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/model/story/StoryTopic;->strategyInfo:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/model/story/StoryTopic;->topicId:I

    .line 3
    .line 4
    mul-int/lit8 v0, v0, 0x1f

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/model/story/StoryTopic;->name:Ljava/lang/String;

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 13
    move-result v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v1, v2

    .line 16
    :goto_0
    add-int/2addr v0, v1

    .line 17
    .line 18
    mul-int/lit8 v0, v0, 0x1f

    .line 19
    .line 20
    iget-object v1, p0, Lcom/narvii/model/story/StoryTopic;->style:Lcom/narvii/model/story/StoryTopic$Style;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/narvii/model/story/StoryTopic$Style;->hashCode()I

    .line 26
    move-result v1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move v1, v2

    .line 29
    :goto_1
    add-int/2addr v0, v1

    .line 30
    .line 31
    mul-int/lit8 v0, v0, 0x1f

    .line 32
    .line 33
    iget-object v1, p0, Lcom/narvii/model/story/StoryTopic;->originalName:Ljava/lang/String;

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 39
    move-result v2

    .line 40
    :cond_2
    add-int/2addr v0, v2

    .line 41
    return v0
.end method

.method public id()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, ""

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget v1, p0, Lcom/narvii/model/story/StoryTopic;->topicId:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public isNotified()Z
    .locals 2

    iget v0, p0, Lcom/narvii/model/story/StoryTopic;->subscriptionStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public objectType()I
    .locals 1

    const/16 v0, 0x80

    return v0
.end method

.method public parentId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setStrategyInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/model/story/StoryTopic;->strategyInfo:Ljava/lang/String;

    return-void
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
