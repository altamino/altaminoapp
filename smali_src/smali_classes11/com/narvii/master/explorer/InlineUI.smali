.class Lcom/narvii/master/explorer/InlineUI;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public backgroundColor:I
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/util/JacksonUtils$ColorDeserializer;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/narvii/util/JacksonUtils$ColorSerializer;
    .end annotation
.end field

.field public displayMode:I

.field public textColor:I
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/util/JacksonUtils$ColorDeserializer;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/narvii/util/JacksonUtils$ColorSerializer;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/master/explorer/InlineUI;->backgroundColor:I

    .line 7
    .line 8
    .line 9
    const v0, -0x8c9394

    .line 10
    .line 11
    iput v0, p0, Lcom/narvii/master/explorer/InlineUI;->textColor:I

    .line 12
    return-void
.end method
