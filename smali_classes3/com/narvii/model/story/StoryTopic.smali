.class public Lcom/narvii/model/story/StoryTopic;
.super Lcom/narvii/model/NVObject;
.source "StoryTopic.java"

# interfaces
.implements Lcom/narvii/model/StrategyObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/model/story/StoryTopic$ActiveInfo;,
        Lcom/narvii/model/story/StoryTopic$Style;
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

    .line 15
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_9

    .line 102
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_3

    .line 104
    :cond_1
    check-cast p1, Lcom/narvii/model/story/StoryTopic;

    .line 106
    iget v2, p0, Lcom/narvii/model/story/StoryTopic;->topicId:I

    iget v3, p1, Lcom/narvii/model/story/StoryTopic;->topicId:I

    if-eq v2, v3, :cond_2

    return v1

    .line 107
    :cond_2
    iget-object v2, p0, Lcom/narvii/model/story/StoryTopic;->name:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v3, p1, Lcom/narvii/model/story/StoryTopic;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lcom/narvii/model/story/StoryTopic;->name:Ljava/lang/String;

    if-eqz v2, :cond_4

    :goto_0
    return v1

    .line 108
    :cond_4
    iget-object v2, p0, Lcom/narvii/model/story/StoryTopic;->style:Lcom/narvii/model/story/StoryTopic$Style;

    if-eqz v2, :cond_5

    iget-object v3, p1, Lcom/narvii/model/story/StoryTopic;->style:Lcom/narvii/model/story/StoryTopic$Style;

    invoke-virtual {v2, v3}, Lcom/narvii/model/story/StoryTopic$Style;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_5
    iget-object v2, p1, Lcom/narvii/model/story/StoryTopic;->style:Lcom/narvii/model/story/StoryTopic$Style;

    if-eqz v2, :cond_6

    :goto_1
    return v1

    .line 109
    :cond_6
    iget-object v2, p0, Lcom/narvii/model/story/StoryTopic;->originalName:Ljava/lang/String;

    iget-object p1, p1, Lcom/narvii/model/story/StoryTopic;->originalName:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_2

    :cond_7
    if-eqz p1, :cond_8

    :goto_2
    return v1

    :cond_8
    return v0

    :cond_9
    :goto_3
    return v1
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/narvii/model/story/StoryTopic;->originalName:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/narvii/model/story/StoryTopic;->originalName:Ljava/lang/String;

    return-object v0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/story/StoryTopic;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStrategyInfo()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/narvii/model/story/StoryTopic;->strategyInfo:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 121
    iget v0, p0, Lcom/narvii/model/story/StoryTopic;->topicId:I

    mul-int/lit8 v0, v0, 0x1f

    .line 122
    iget-object v1, p0, Lcom/narvii/model/story/StoryTopic;->name:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 123
    iget-object v1, p0, Lcom/narvii/model/story/StoryTopic;->style:Lcom/narvii/model/story/StoryTopic$Style;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/narvii/model/story/StoryTopic$Style;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 124
    iget-object v1, p0, Lcom/narvii/model/story/StoryTopic;->originalName:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_2
    add-int/2addr v0, v2

    return v0
.end method

.method public id()Ljava/lang/String;
    .locals 2

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/narvii/model/story/StoryTopic;->topicId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNotified()Z
    .locals 2

    .line 56
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

    .line 52
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
