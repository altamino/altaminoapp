.class public Lcom/narvii/model/InterestData;
.super Lcom/narvii/model/NVObject;
.source "InterestData.java"

# interfaces
.implements Lcom/narvii/model/StrategyObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/model/InterestData$Style;
    }
.end annotation


# instance fields
.field public displayName:Ljava/lang/String;

.field public foldedTopicList:Ljava/util/List;
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

.field public interestId:Ljava/lang/String;

.field public isSelected:Z

.field public name:Ljava/lang/String;

.field public strategyInfo:Ljava/lang/String;

.field public style:Lcom/narvii/model/InterestData$Style;

.field public topicList:Ljava/util/List;
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

.field public visibleTopicList:Ljava/util/List;
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/narvii/model/InterestData;->displayName:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/narvii/model/InterestData;->displayName:Ljava/lang/String;

    return-object v0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/InterestData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStrategyInfo()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/narvii/model/InterestData;->strategyInfo:Ljava/lang/String;

    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/narvii/model/InterestData;->interestId:Ljava/lang/String;

    return-object v0
.end method

.method public objectType()I
    .locals 1

    const/16 v0, 0x7e

    return v0
.end method

.method public parentId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setStrategyInfo(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/narvii/model/InterestData;->strategyInfo:Ljava/lang/String;

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
