.class public Lcom/narvii/model/QuizQuestion;
.super Lcom/narvii/model/NVObject;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/QuizQuestion;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/post/BackgroundUtils;->getBackgroundColor(Lcom/fasterxml/jackson/databind/node/ObjectNode;)I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getBackgroundMedia()Lcom/narvii/model/Media;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/QuizQuestion;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/post/BackgroundUtils;->getBackgroundMedia(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/model/Media;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getCorrectAnswer()Lcom/narvii/model/QuizOption;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/model/QuizQuestion;->quizOptions()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, Lcom/narvii/model/QuizOption;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/narvii/model/QuizQuestion;->quizQuestionId:Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Lcom/narvii/model/QuizOption;->isCorrect(Ljava/lang/String;)Z

    .line 28
    move-result v2

    .line 29
    .line 30
    if-eqz v2, :cond_0

    .line 31
    return-object v1

    .line 32
    :cond_1
    const/4 v0, 0x0

    .line 33
    return-object v0
.end method

.method public hasBackground()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/model/QuizQuestion;->getBackgroundColor()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/model/QuizQuestion;->getBackgroundMedia()Lcom/narvii/model/Media;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    :goto_1
    return v0
.end method

.method public hasDuplicateOption()Z
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/model/QuizQuestion;->quizOptions()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    move-result v2

    .line 13
    move v3, v1

    .line 14
    .line 15
    :cond_1
    add-int/lit8 v4, v2, -0x1

    .line 16
    .line 17
    if-ge v3, v4, :cond_3

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v4

    .line 22
    .line 23
    check-cast v4, Lcom/narvii/model/QuizOption;

    .line 24
    .line 25
    add-int/lit8 v3, v3, 0x1

    .line 26
    move v5, v3

    .line 27
    .line 28
    :goto_0
    if-ge v5, v2, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object v6

    .line 33
    .line 34
    check-cast v6, Lcom/narvii/model/QuizOption;

    .line 35
    .line 36
    iget-object v7, v4, Lcom/narvii/model/QuizOption;->title:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v6, v6, Lcom/narvii/model/QuizOption;->title:Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    invoke-static {v7, v6}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    .line 42
    move-result v6

    .line 43
    .line 44
    if-eqz v6, :cond_2

    .line 45
    const/4 v0, 0x1

    .line 46
    return v0

    .line 47
    .line 48
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_3
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/model/QuizQuestion;->id()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-super {p0}, Lcom/narvii/model/NVObject;->hashCode()I

    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/QuizQuestion;->title:Ljava/lang/String;

    .line 18
    .line 19
    const/16 v1, 0x3f81

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 25
    move-result v0

    .line 26
    xor-int/2addr v1, v0

    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Lcom/narvii/model/QuizQuestion;->mediaList:Ljava/util/List;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    .line 34
    move-result v0

    .line 35
    xor-int/2addr v1, v0

    .line 36
    :cond_2
    return v1
.end method

.method public id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/model/QuizQuestion;->quizQuestionId:Ljava/lang/String;

    return-object v0
.end method

.method public isComplete()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/QuizQuestion;->title:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 13
    move-result v0

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    goto :goto_0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/model/QuizQuestion;->quizOptions()Ljava/util/List;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    return v1

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    move-result v2

    .line 32
    .line 33
    if-eqz v2, :cond_4

    .line 34
    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    check-cast v2, Lcom/narvii/model/QuizOption;

    .line 40
    .line 41
    iget-object v2, v2, Lcom/narvii/model/QuizOption;->title:Ljava/lang/String;

    .line 42
    .line 43
    if-eqz v2, :cond_3

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 47
    move-result-object v2

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 51
    move-result v2

    .line 52
    .line 53
    if-nez v2, :cond_2

    .line 54
    :cond_3
    return v1

    .line 55
    :cond_4
    const/4 v0, 0x1

    .line 56
    return v0

    .line 57
    :cond_5
    :goto_0
    return v1
.end method

.method public isEmpty()Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/QuizQuestion;->title:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 13
    move-result v0

    .line 14
    .line 15
    if-lez v0, :cond_0

    .line 16
    return v1

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/QuizQuestion;->mediaList:Ljava/util/List;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 24
    move-result v0

    .line 25
    .line 26
    if-lez v0, :cond_1

    .line 27
    return v1

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/model/QuizQuestion;->quizOptions()Ljava/util/List;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    if-eqz v0, :cond_4

    .line 34
    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    .line 40
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    move-result v2

    .line 42
    .line 43
    if-eqz v2, :cond_4

    .line 44
    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    move-result-object v2

    .line 48
    .line 49
    check-cast v2, Lcom/narvii/model/QuizOption;

    .line 50
    .line 51
    iget-object v3, v2, Lcom/narvii/model/QuizOption;->title:Ljava/lang/String;

    .line 52
    .line 53
    if-eqz v3, :cond_3

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 57
    move-result-object v3

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 61
    move-result v3

    .line 62
    .line 63
    if-lez v3, :cond_3

    .line 64
    return v1

    .line 65
    .line 66
    :cond_3
    iget-object v2, v2, Lcom/narvii/model/QuizOption;->mediaList:Ljava/util/List;

    .line 67
    .line 68
    .line 69
    invoke-static {v2}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    .line 70
    move-result v2

    .line 71
    .line 72
    if-nez v2, :cond_2

    .line 73
    return v1

    .line 74
    .line 75
    .line 76
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/model/QuizQuestion;->quizAnswerExplanation()Ljava/lang/String;

    .line 77
    move-result-object v0

    .line 78
    .line 79
    if-eqz v0, :cond_5

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 83
    move-result-object v0

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 87
    move-result v0

    .line 88
    .line 89
    if-lez v0, :cond_5

    .line 90
    return v1

    .line 91
    :cond_5
    const/4 v0, 0x1

    .line 92
    return v0
.end method

.method public isOptionIdCorrect(Ljava/lang/String;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/model/QuizQuestion;->getCorrectAnswer()Lcom/narvii/model/QuizOption;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget-object v1, v1, Lcom/narvii/model/QuizOption;->optId:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-static {p1, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    move-result p1

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    const/4 p1, 0x1

    .line 20
    return p1

    .line 21
    :cond_1
    return v0
.end method

.method public isSame(Lcom/narvii/model/QuizQuestion;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p1, p0, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    iget-object v1, p0, Lcom/narvii/model/QuizQuestion;->quizQuestionId:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v2, p1, Lcom/narvii/model/QuizQuestion;->quizQuestionId:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    if-eqz v1, :cond_4

    .line 16
    .line 17
    iget-object v1, p0, Lcom/narvii/model/QuizQuestion;->title:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v3, p1, Lcom/narvii/model/QuizQuestion;->title:Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v3}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    .line 23
    move-result v1

    .line 24
    .line 25
    if-eqz v1, :cond_4

    .line 26
    .line 27
    iget-object v1, p0, Lcom/narvii/model/QuizQuestion;->mediaList:Ljava/util/List;

    .line 28
    .line 29
    iget-object v3, p1, Lcom/narvii/model/QuizQuestion;->mediaList:Ljava/util/List;

    .line 30
    .line 31
    .line 32
    invoke-static {v1, v3}, Lcom/narvii/util/Utils;->isListEquals(Ljava/util/List;Ljava/util/List;)Z

    .line 33
    move-result v1

    .line 34
    .line 35
    if-eqz v1, :cond_4

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/narvii/model/QuizQuestion;->quizAnswerExplanation()Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/narvii/model/QuizQuestion;->quizAnswerExplanation()Ljava/lang/String;

    .line 43
    move-result-object v3

    .line 44
    .line 45
    .line 46
    invoke-static {v1, v3}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    .line 47
    move-result v1

    .line 48
    .line 49
    if-eqz v1, :cond_4

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/narvii/model/QuizQuestion;->getBackgroundColor()I

    .line 53
    move-result v1

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/narvii/model/QuizQuestion;->getBackgroundColor()I

    .line 57
    move-result v3

    .line 58
    .line 59
    if-ne v1, v3, :cond_4

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/narvii/model/QuizQuestion;->getBackgroundMedia()Lcom/narvii/model/Media;

    .line 63
    move-result-object v1

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/narvii/model/QuizQuestion;->getBackgroundMedia()Lcom/narvii/model/Media;

    .line 67
    move-result-object v3

    .line 68
    .line 69
    .line 70
    invoke-static {v1, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    move-result v1

    .line 72
    .line 73
    if-eqz v1, :cond_4

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/narvii/model/QuizQuestion;->quizOptions()Ljava/util/List;

    .line 77
    move-result-object v1

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/narvii/model/QuizQuestion;->quizOptions()Ljava/util/List;

    .line 81
    move-result-object p1

    .line 82
    .line 83
    if-nez v1, :cond_1

    .line 84
    .line 85
    if-nez p1, :cond_1

    .line 86
    return v0

    .line 87
    .line 88
    :cond_1
    if-eqz v1, :cond_4

    .line 89
    .line 90
    if-eqz p1, :cond_4

    .line 91
    .line 92
    .line 93
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 94
    move-result v3

    .line 95
    .line 96
    .line 97
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 98
    move-result v4

    .line 99
    .line 100
    if-ne v3, v4, :cond_4

    .line 101
    .line 102
    .line 103
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 104
    move-result v3

    .line 105
    move v4, v2

    .line 106
    .line 107
    :goto_0
    if-ge v4, v3, :cond_3

    .line 108
    .line 109
    .line 110
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 111
    move-result-object v5

    .line 112
    .line 113
    check-cast v5, Lcom/narvii/model/QuizOption;

    .line 114
    .line 115
    .line 116
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 117
    move-result-object v6

    .line 118
    .line 119
    .line 120
    invoke-virtual {v5, v6}, Lcom/narvii/model/QuizOption;->equals(Ljava/lang/Object;)Z

    .line 121
    move-result v5

    .line 122
    .line 123
    if-nez v5, :cond_2

    .line 124
    return v2

    .line 125
    .line 126
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 127
    goto :goto_0

    .line 128
    :cond_3
    return v0

    .line 129
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

    iget-object v0, p0, Lcom/narvii/model/QuizQuestion;->parentId:Ljava/lang/String;

    return-object v0
.end method

.method public quizAnswerExplanation()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/QuizQuestion;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 3
    .line 4
    .line 5
    const-string/jumbo v1, "quizAnswerExplanation"

    .line 6
    .line 7
    .line 8
    filled-new-array {v1}, [Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public quizOptions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/QuizOption;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/QuizQuestion;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 3
    .line 4
    .line 5
    const-string/jumbo v1, "quizQuestionOptList"

    .line 6
    .line 7
    .line 8
    filled-new-array {v1}, [Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    .line 17
    goto :goto_0

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    const-class v1, Lcom/narvii/model/QuizOption;

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 27
    move-result-object v0

    .line 28
    :goto_0
    return-object v0
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/model/QuizQuestion;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/model/QuizQuestion;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/QuizQuestion;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 15
    .line 16
    .line 17
    invoke-static {v0, p1}, Lcom/narvii/post/BackgroundUtils;->setBackgroundColor(Lcom/fasterxml/jackson/databind/node/ObjectNode;I)V

    .line 18
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/QuizQuestion;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/model/QuizQuestion;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/QuizQuestion;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 13
    .line 14
    .line 15
    invoke-static {v0, p1}, Lcom/narvii/post/BackgroundUtils;->setBackgroundMediaList(Lcom/fasterxml/jackson/databind/node/ObjectNode;Ljava/util/List;)V

    .line 16
    return-void
.end method

.method public setQuizAnswerExplanation(Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/QuizQuestion;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/model/QuizQuestion;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/QuizQuestion;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 13
    .line 14
    .line 15
    const-string/jumbo v1, "quizAnswerExplanation"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 19
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/QuizQuestion;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/model/QuizQuestion;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/QuizQuestion;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 13
    .line 14
    sget-object v1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    const-string/jumbo v1, "quizQuestionOptList"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 25
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
