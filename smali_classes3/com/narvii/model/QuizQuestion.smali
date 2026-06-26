.class public Lcom/narvii/model/QuizQuestion;
.super Lcom/narvii/model/NVObject;
.source "QuizQuestion.java"

# interfaces
.implements Lcom/narvii/image/BackgroundSource;


# instance fields
.field public extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

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

.field public quizQuestionId:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    return-void
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/narvii/model/QuizQuestion;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-static {v0}, Lcom/narvii/post/BackgroundUtils;->getBackgroundColor(Lcom/fasterxml/jackson/databind/node/ObjectNode;)I

    move-result v0

    return v0
.end method

.method public getBackgroundMedia()Lcom/narvii/model/Media;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/narvii/model/QuizQuestion;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-static {v0}, Lcom/narvii/post/BackgroundUtils;->getBackgroundMedia(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/model/Media;

    move-result-object v0

    return-object v0
.end method

.method public getCorrectAnswer()Lcom/narvii/model/QuizOption;
    .locals 3

    .line 79
    invoke-virtual {p0}, Lcom/narvii/model/QuizQuestion;->quizOptions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 81
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/QuizOption;

    .line 82
    iget-object v2, p0, Lcom/narvii/model/QuizQuestion;->quizQuestionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/narvii/model/QuizOption;->isCorrect(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasBackground()Z
    .locals 1

    .line 59
    invoke-virtual {p0}, Lcom/narvii/model/QuizQuestion;->getBackgroundColor()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/narvii/model/QuizQuestion;->getBackgroundMedia()Lcom/narvii/model/Media;

    move-result-object v0

    if-eqz v0, :cond_0

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

.method public hasDuplicateOption()Z
    .locals 8

    .line 149
    invoke-virtual {p0}, Lcom/narvii/model/QuizQuestion;->quizOptions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 153
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_1
    add-int/lit8 v4, v2, -0x1

    if-ge v3, v4, :cond_3

    .line 154
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/QuizOption;

    add-int/lit8 v3, v3, 0x1

    move v5, v3

    :goto_0
    if-ge v5, v2, :cond_1

    .line 156
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/narvii/model/QuizOption;

    .line 157
    iget-object v7, v4, Lcom/narvii/model/QuizOption;->title:Ljava/lang/String;

    iget-object v6, v6, Lcom/narvii/model/QuizOption;->title:Ljava/lang/String;

    invoke-static {v7, v6}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 219
    invoke-virtual {p0}, Lcom/narvii/model/QuizQuestion;->id()Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    invoke-super {p0}, Lcom/narvii/model/NVObject;->hashCode()I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x3f81

    .line 224
    iget-object v1, p0, Lcom/narvii/model/QuizQuestion;->title:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 225
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 227
    :cond_1
    iget-object v1, p0, Lcom/narvii/model/QuizQuestion;->mediaList:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 228
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/narvii/model/QuizQuestion;->quizQuestionId:Ljava/lang/String;

    return-object v0
.end method

.method public isComplete()Z
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/narvii/model/QuizQuestion;->title:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/model/QuizQuestion;->quizOptions()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 140
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/QuizOption;

    .line 141
    iget-object v2, v2, Lcom/narvii/model/QuizOption;->title:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_3
    return v1

    :cond_4
    const/4 v0, 0x1

    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public isEmpty()Z
    .locals 4

    .line 108
    iget-object v0, p0, Lcom/narvii/model/QuizQuestion;->title:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    return v1

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/QuizQuestion;->mediaList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    return v1

    .line 114
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/model/QuizQuestion;->quizOptions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 116
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/QuizOption;

    .line 117
    iget-object v3, v2, Lcom/narvii/model/QuizOption;->title:Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    return v1

    .line 120
    :cond_3
    iget-object v2, v2, Lcom/narvii/model/QuizOption;->mediaList:Ljava/util/List;

    invoke-static {v2}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 125
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/model/QuizQuestion;->quizAnswerExplanation()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 126
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    return v1

    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method public isOptionIdCorrect(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/model/QuizQuestion;->getCorrectAnswer()Lcom/narvii/model/QuizOption;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 94
    iget-object v1, v1, Lcom/narvii/model/QuizOption;->optId:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public isSame(Lcom/narvii/model/QuizQuestion;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 168
    :cond_0
    iget-object v1, p0, Lcom/narvii/model/QuizQuestion;->quizQuestionId:Ljava/lang/String;

    iget-object v2, p1, Lcom/narvii/model/QuizQuestion;->quizQuestionId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/narvii/model/QuizQuestion;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/narvii/model/QuizQuestion;->title:Ljava/lang/String;

    .line 169
    invoke-static {v1, v3}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/narvii/model/QuizQuestion;->mediaList:Ljava/util/List;

    iget-object v3, p1, Lcom/narvii/model/QuizQuestion;->mediaList:Ljava/util/List;

    .line 170
    invoke-static {v1, v3}, Lcom/narvii/util/Utils;->isListEquals(Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 171
    invoke-virtual {p0}, Lcom/narvii/model/QuizQuestion;->quizAnswerExplanation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/narvii/model/QuizQuestion;->quizAnswerExplanation()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 172
    invoke-virtual {p0}, Lcom/narvii/model/QuizQuestion;->getBackgroundColor()I

    move-result v1

    invoke-virtual {p1}, Lcom/narvii/model/QuizQuestion;->getBackgroundColor()I

    move-result v3

    if-ne v1, v3, :cond_4

    .line 173
    invoke-virtual {p0}, Lcom/narvii/model/QuizQuestion;->getBackgroundMedia()Lcom/narvii/model/Media;

    move-result-object v1

    invoke-virtual {p1}, Lcom/narvii/model/QuizQuestion;->getBackgroundMedia()Lcom/narvii/model/Media;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 174
    invoke-virtual {p0}, Lcom/narvii/model/QuizQuestion;->quizOptions()Ljava/util/List;

    move-result-object v1

    .line 175
    invoke-virtual {p1}, Lcom/narvii/model/QuizQuestion;->quizOptions()Ljava/util/List;

    move-result-object p1

    if-nez v1, :cond_1

    if-nez p1, :cond_1

    return v0

    :cond_1
    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    .line 179
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 180
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    .line 181
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/model/QuizOption;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/narvii/model/QuizOption;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    return v2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    return v2
.end method

.method public objectType()I
    .locals 1

    const/16 v0, 0x17

    return v0
.end method

.method public parentId()Ljava/lang/String;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/narvii/model/QuizQuestion;->parentId:Ljava/lang/String;

    return-object v0
.end method

.method public quizAnswerExplanation()Ljava/lang/String;
    .locals 4

    .line 63
    iget-object v0, p0, Lcom/narvii/model/QuizQuestion;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "quizAnswerExplanation"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public quizOptions()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/QuizOption;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/narvii/model/QuizQuestion;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "quizQuestionOptList"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/QuizOption;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public setBackgroundColor(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 44
    iget-object v0, p0, Lcom/narvii/model/QuizQuestion;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez v0, :cond_0

    .line 45
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/model/QuizQuestion;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/QuizQuestion;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-static {v0, p1}, Lcom/narvii/post/BackgroundUtils;->setBackgroundColor(Lcom/fasterxml/jackson/databind/node/ObjectNode;I)V

    return-void
.end method

.method public setBackgroundMediaList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;)V"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/narvii/model/QuizQuestion;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez v0, :cond_0

    .line 52
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/model/QuizQuestion;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/QuizQuestion;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-static {v0, p1}, Lcom/narvii/post/BackgroundUtils;->setBackgroundMediaList(Lcom/fasterxml/jackson/databind/node/ObjectNode;Ljava/util/List;)V

    return-void
.end method

.method public setQuizAnswerExplanation(Ljava/lang/String;)V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/narvii/model/QuizQuestion;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez v0, :cond_0

    .line 68
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/model/QuizQuestion;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/QuizQuestion;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v1, "quizAnswerExplanation"

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    return-void
.end method

.method public setQuizOptions(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/QuizOption;",
            ">;)V"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/narvii/model/QuizQuestion;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez v0, :cond_0

    .line 102
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/model/QuizQuestion;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/QuizQuestion;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    sget-object v1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    const-string v1, "quizQuestionOptList"

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

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
