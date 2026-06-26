.class public Lcom/narvii/model/story/StoryTopic$Style;
.super Ljava/lang/Object;
.source "StoryTopic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/model/story/StoryTopic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Style"
.end annotation


# instance fields
.field public backgroundColor:I
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/util/JacksonUtils$ColorDeserializer;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/narvii/util/JacksonUtils$ColorSerializer;
    .end annotation
.end field

.field public backgroundImage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    if-eqz p1, :cond_5

    .line 70
    const-class v2, Lcom/narvii/model/story/StoryTopic$Style;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 72
    :cond_1
    check-cast p1, Lcom/narvii/model/story/StoryTopic$Style;

    .line 74
    iget v2, p0, Lcom/narvii/model/story/StoryTopic$Style;->backgroundColor:I

    iget v3, p1, Lcom/narvii/model/story/StoryTopic$Style;->backgroundColor:I

    if-eq v2, v3, :cond_2

    return v1

    .line 75
    :cond_2
    iget-object v2, p0, Lcom/narvii/model/story/StoryTopic$Style;->backgroundImage:Ljava/lang/String;

    iget-object p1, p1, Lcom/narvii/model/story/StoryTopic$Style;->backgroundImage:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 80
    iget v0, p0, Lcom/narvii/model/story/StoryTopic$Style;->backgroundColor:I

    mul-int/lit8 v0, v0, 0x1f

    .line 81
    iget-object v1, p0, Lcom/narvii/model/story/StoryTopic$Style;->backgroundImage:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method
