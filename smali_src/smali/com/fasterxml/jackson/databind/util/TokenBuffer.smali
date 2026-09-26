.class public Lcom/fasterxml/jackson/databind/util/TokenBuffer;
.super Lcom/fasterxml/jackson/core/JsonGenerator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;,
        Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;
    }
.end annotation


# static fields
.field protected static final DEFAULT_GENERATOR_FEATURES:I


# instance fields
.field protected _appendOffset:I

.field protected _closed:Z

.field protected _first:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

.field protected _generatorFeatures:I

.field protected _hasNativeId:Z

.field protected _hasNativeObjectIds:Z

.field protected _hasNativeTypeIds:Z

.field protected _last:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

.field protected _mayHaveNativeIds:Z

.field protected _objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

.field protected _objectId:Ljava/lang/Object;

.field protected _typeId:Ljava/lang/Object;

.field protected _writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->collectDefaults()I

    .line 4
    move-result v0

    .line 5
    .line 6
    sput v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->DEFAULT_GENERATOR_FEATURES:I

    .line 7
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/JsonParser;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/JsonGenerator;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_hasNativeId:Z

    .line 6
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCodec()Lcom/fasterxml/jackson/core/ObjectCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

    sget v1, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->DEFAULT_GENERATOR_FEATURES:I

    iput v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_generatorFeatures:I

    const/4 v1, 0x0

    .line 7
    invoke-static {v1}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->createRootContext(Lcom/fasterxml/jackson/core/json/DupDetector;)Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 8
    new-instance v1, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    invoke-direct {v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;-><init>()V

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_last:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_first:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    iput v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_appendOffset:I

    .line 9
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->canReadTypeId()Z

    move-result v0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_hasNativeTypeIds:Z

    .line 10
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->canReadObjectId()Z

    move-result p1

    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_hasNativeObjectIds:Z

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_hasNativeTypeIds:Z

    or-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_mayHaveNativeIds:Z

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/ObjectCodec;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;-><init>(Lcom/fasterxml/jackson/core/ObjectCodec;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/ObjectCodec;Z)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/JsonGenerator;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_hasNativeId:Z

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

    sget p1, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->DEFAULT_GENERATOR_FEATURES:I

    iput p1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_generatorFeatures:I

    const/4 p1, 0x0

    .line 3
    invoke-static {p1}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->createRootContext(Lcom/fasterxml/jackson/core/json/DupDetector;)Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 4
    new-instance p1, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    invoke-direct {p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_last:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_first:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    iput v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_appendOffset:I

    iput-boolean p2, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_hasNativeTypeIds:Z

    iput-boolean p2, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_hasNativeObjectIds:Z

    or-int p1, p2, p2

    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_mayHaveNativeIds:Z

    return-void
.end method

.method private final _appendNativeIds(Ljava/lang/StringBuilder;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_last:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    .line 3
    .line 4
    iget v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_appendOffset:I

    .line 5
    .line 6
    add-int/lit8 v1, v1, -0x1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->findObjectId(I)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    const/16 v1, 0x5d

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const-string v2, "[objectId="

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_last:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    .line 32
    .line 33
    iget v2, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_appendOffset:I

    .line 34
    .line 35
    add-int/lit8 v2, v2, -0x1

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->findTypeId(I)Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    const-string v2, "[typeId="

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    :cond_1
    return-void
.end method

.method private final _checkNativeIds(Lcom/fasterxml/jackson/core/JsonParser;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getTypeId()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_typeId:Ljava/lang/Object;

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iput-boolean v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_hasNativeId:Z

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getObjectId()Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_objectId:Ljava/lang/Object;

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    iput-boolean v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_hasNativeId:Z

    .line 22
    :cond_1
    return-void
.end method


# virtual methods
.method protected final _append(Lcom/fasterxml/jackson/core/JsonToken;)V
    .locals 4

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_hasNativeId:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_last:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    iget v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_appendOffset:I

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_objectId:Ljava/lang/Object;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_typeId:Ljava/lang/Object;

    .line 1
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->append(ILcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_last:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    iget v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_appendOffset:I

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->append(ILcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    move-result-object p1

    :goto_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    iget p1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_appendOffset:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_appendOffset:I

    goto :goto_1

    :cond_1
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_last:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    iput v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_appendOffset:I

    :goto_1
    return-void
.end method

.method protected final _append(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V
    .locals 7

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_hasNativeId:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_last:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    iget v2, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_appendOffset:I

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_objectId:Ljava/lang/Object;

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_typeId:Ljava/lang/Object;

    move-object v3, p1

    move-object v4, p2

    .line 2
    invoke-virtual/range {v1 .. v6}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->append(ILcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_last:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    iget v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_appendOffset:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->append(ILcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    move-result-object p1

    :goto_0
    const/4 p2, 0x1

    if-nez p1, :cond_1

    iget p1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_appendOffset:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_appendOffset:I

    goto :goto_1

    :cond_1
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_last:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    iput p2, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_appendOffset:I

    :goto_1
    return-void
.end method

.method protected final _appendRaw(ILjava/lang/Object;)V
    .locals 7

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_hasNativeId:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_last:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    .line 7
    .line 8
    iget v2, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_appendOffset:I

    .line 9
    .line 10
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_objectId:Ljava/lang/Object;

    .line 11
    .line 12
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_typeId:Ljava/lang/Object;

    .line 13
    move v3, p1

    .line 14
    move-object v4, p2

    .line 15
    .line 16
    .line 17
    invoke-virtual/range {v1 .. v6}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->appendRaw(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    .line 18
    move-result-object p1

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_last:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    .line 22
    .line 23
    iget v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_appendOffset:I

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1, p1, p2}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->appendRaw(IILjava/lang/Object;)Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    .line 27
    move-result-object p1

    .line 28
    :goto_0
    const/4 p2, 0x1

    .line 29
    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    iget p1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_appendOffset:I

    .line 33
    add-int/2addr p1, p2

    .line 34
    .line 35
    iput p1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_appendOffset:I

    .line 36
    goto :goto_1

    .line 37
    .line 38
    :cond_1
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_last:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    .line 39
    .line 40
    iput p2, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_appendOffset:I

    .line 41
    :goto_1
    return-void
.end method

.method protected _reportUnsupportedOperation()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 3
    .line 4
    const-string v1, "Called operation not supported for TokenBuffer"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 8
    throw v0
.end method

.method public append(Lcom/fasterxml/jackson/databind/util/TokenBuffer;)Lcom/fasterxml/jackson/databind/util/TokenBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_hasNativeTypeIds:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->canWriteTypeId()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_hasNativeTypeIds:Z

    .line 11
    .line 12
    :cond_0
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_hasNativeObjectIds:Z

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->canWriteObjectId()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_hasNativeObjectIds:Z

    .line 21
    .line 22
    :cond_1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_hasNativeTypeIds:Z

    .line 23
    .line 24
    iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_hasNativeObjectIds:Z

    .line 25
    or-int/2addr v0, v1

    .line 26
    .line 27
    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_mayHaveNativeIds:Z

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->asParser()Lcom/fasterxml/jackson/core/JsonParser;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    .line 34
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->copyCurrentStructure(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    return-object p0
.end method

.method public asParser()Lcom/fasterxml/jackson/core/JsonParser;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

    .line 1
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->asParser(Lcom/fasterxml/jackson/core/ObjectCodec;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    return-object v0
.end method

.method public asParser(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 5

    .line 3
    new-instance v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_first:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCodec()Lcom/fasterxml/jackson/core/ObjectCodec;

    move-result-object v2

    iget-boolean v3, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_hasNativeTypeIds:Z

    iget-boolean v4, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_hasNativeObjectIds:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;-><init>(Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;Lcom/fasterxml/jackson/core/ObjectCodec;ZZ)V

    .line 4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getTokenLocation()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->setLocation(Lcom/fasterxml/jackson/core/JsonLocation;)V

    return-object v0
.end method

.method public asParser(Lcom/fasterxml/jackson/core/ObjectCodec;)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 4

    .line 2
    new-instance v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_first:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    iget-boolean v2, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_hasNativeTypeIds:Z

    iget-boolean v3, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_hasNativeObjectIds:Z

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;-><init>(Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;Lcom/fasterxml/jackson/core/ObjectCodec;ZZ)V

    return-object v0
.end method

.method public canWriteBinaryNatively()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canWriteObjectId()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_hasNativeObjectIds:Z

    return v0
.end method

.method public canWriteTypeId()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_hasNativeTypeIds:Z

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_closed:Z

    return-void
.end method

.method public copyCurrentEvent(Lcom/fasterxml/jackson/core/JsonParser;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_mayHaveNativeIds:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_checkNativeIds(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 8
    .line 9
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 17
    move-result v1

    .line 18
    .line 19
    aget v0, v0, v1

    .line 20
    const/4 v1, 0x1

    .line 21
    .line 22
    .line 23
    packed-switch v0, :pswitch_data_0

    .line 24
    .line 25
    new-instance p1, Ljava/lang/RuntimeException;

    .line 26
    .line 27
    const-string v0, "Internal error: should never end up through this code path"

    .line 28
    .line 29
    .line 30
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 31
    throw p1

    .line 32
    .line 33
    .line 34
    :pswitch_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getEmbeddedObject()Ljava/lang/Object;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeObject(Ljava/lang/Object;)V

    .line 39
    .line 40
    goto/16 :goto_0

    .line 41
    .line 42
    .line 43
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeNull()V

    .line 44
    .line 45
    goto/16 :goto_0

    .line 46
    :pswitch_2
    const/4 p1, 0x0

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeBoolean(Z)V

    .line 50
    .line 51
    goto/16 :goto_0

    .line 52
    .line 53
    .line 54
    :pswitch_3
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeBoolean(Z)V

    .line 55
    .line 56
    goto/16 :goto_0

    .line 57
    .line 58
    :pswitch_4
    sget-object v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType:[I

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getNumberType()Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 66
    move-result v1

    .line 67
    .line 68
    aget v0, v0, v1

    .line 69
    const/4 v1, 0x3

    .line 70
    .line 71
    if-eq v0, v1, :cond_2

    .line 72
    const/4 v1, 0x4

    .line 73
    .line 74
    if-eq v0, v1, :cond_1

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getDoubleValue()D

    .line 78
    move-result-wide v0

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeNumber(D)V

    .line 82
    .line 83
    goto/16 :goto_0

    .line 84
    .line 85
    .line 86
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getFloatValue()F

    .line 87
    move-result p1

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeNumber(F)V

    .line 91
    .line 92
    goto/16 :goto_0

    .line 93
    .line 94
    .line 95
    :cond_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getDecimalValue()Ljava/math/BigDecimal;

    .line 96
    move-result-object p1

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeNumber(Ljava/math/BigDecimal;)V

    .line 100
    goto :goto_0

    .line 101
    .line 102
    :pswitch_5
    sget-object v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType:[I

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getNumberType()Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    .line 106
    move-result-object v2

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 110
    move-result v2

    .line 111
    .line 112
    aget v0, v0, v2

    .line 113
    .line 114
    if-eq v0, v1, :cond_4

    .line 115
    const/4 v1, 0x2

    .line 116
    .line 117
    if-eq v0, v1, :cond_3

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    .line 121
    move-result-wide v0

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeNumber(J)V

    .line 125
    goto :goto_0

    .line 126
    .line 127
    .line 128
    :cond_3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getBigIntegerValue()Ljava/math/BigInteger;

    .line 129
    move-result-object p1

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeNumber(Ljava/math/BigInteger;)V

    .line 133
    goto :goto_0

    .line 134
    .line 135
    .line 136
    :cond_4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    .line 137
    move-result p1

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeNumber(I)V

    .line 141
    goto :goto_0

    .line 142
    .line 143
    .line 144
    :pswitch_6
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->hasTextCharacters()Z

    .line 145
    move-result v0

    .line 146
    .line 147
    if-eqz v0, :cond_5

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getTextCharacters()[C

    .line 151
    move-result-object v0

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getTextOffset()I

    .line 155
    move-result v1

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getTextLength()I

    .line 159
    move-result p1

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0, v0, v1, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeString([CII)V

    .line 163
    goto :goto_0

    .line 164
    .line 165
    .line 166
    :cond_5
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    .line 167
    move-result-object p1

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeString(Ljava/lang/String;)V

    .line 171
    goto :goto_0

    .line 172
    .line 173
    .line 174
    :pswitch_7
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    .line 175
    move-result-object p1

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeFieldName(Ljava/lang/String;)V

    .line 179
    goto :goto_0

    .line 180
    .line 181
    .line 182
    :pswitch_8
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeEndArray()V

    .line 183
    goto :goto_0

    .line 184
    .line 185
    .line 186
    :pswitch_9
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeStartArray()V

    .line 187
    goto :goto_0

    .line 188
    .line 189
    .line 190
    :pswitch_a
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeEndObject()V

    .line 191
    goto :goto_0

    .line 192
    .line 193
    .line 194
    :pswitch_b
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeStartObject()V

    .line 195
    :goto_0
    return-void

    .line 196
    nop

    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public copyCurrentStructure(Lcom/fasterxml/jackson/core/JsonParser;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    .line 7
    .line 8
    if-ne v0, v1, :cond_1

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_mayHaveNativeIds:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_checkNativeIds(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeFieldName(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    :cond_1
    iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_mayHaveNativeIds:Z

    .line 29
    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_checkNativeIds(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 34
    .line 35
    :cond_2
    sget-object v1, Lcom/fasterxml/jackson/databind/util/TokenBuffer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 39
    move-result v0

    .line 40
    .line 41
    aget v0, v1, v0

    .line 42
    const/4 v1, 0x1

    .line 43
    .line 44
    if-eq v0, v1, :cond_5

    .line 45
    const/4 v1, 0x3

    .line 46
    .line 47
    if-eq v0, v1, :cond_3

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->copyCurrentEvent(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 51
    goto :goto_2

    .line 52
    .line 53
    .line 54
    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeStartArray()V

    .line 55
    .line 56
    .line 57
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    .line 61
    .line 62
    if-eq v0, v1, :cond_4

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->copyCurrentStructure(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 66
    goto :goto_0

    .line 67
    .line 68
    .line 69
    :cond_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeEndArray()V

    .line 70
    goto :goto_2

    .line 71
    .line 72
    .line 73
    :cond_5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeStartObject()V

    .line 74
    .line 75
    .line 76
    :goto_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 77
    move-result-object v0

    .line 78
    .line 79
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    .line 80
    .line 81
    if-eq v0, v1, :cond_6

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->copyCurrentStructure(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 85
    goto :goto_1

    .line 86
    .line 87
    .line 88
    :cond_6
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeEndObject()V

    .line 89
    :goto_2
    return-void
.end method

.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/util/TokenBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->copyCurrentStructure(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 4
    return-object p0
.end method

.method public disable(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_generatorFeatures:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    .line 6
    move-result p1

    .line 7
    not-int p1, p1

    .line 8
    and-int/2addr p1, v0

    .line 9
    .line 10
    iput p1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_generatorFeatures:I

    .line 11
    return-object p0
.end method

.method public enable(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_generatorFeatures:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    .line 6
    move-result p1

    .line 7
    or-int/2addr p1, v0

    .line 8
    .line 9
    iput p1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_generatorFeatures:I

    .line 10
    return-object p0
.end method

.method public firstToken()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_first:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->type(I)Lcom/fasterxml/jackson/core/JsonToken;

    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public getCodec()Lcom/fasterxml/jackson/core/ObjectCodec;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

    return-object v0
.end method

.method public getFeatureMask()I
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_generatorFeatures:I

    return v0
.end method

.method public bridge synthetic getOutputContext()Lcom/fasterxml/jackson/core/JsonStreamContext;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->getOutputContext()Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    move-result-object v0

    return-object v0
.end method

.method public final getOutputContext()Lcom/fasterxml/jackson/core/json/JsonWriteContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_closed:Z

    return v0
.end method

.method public isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_generatorFeatures:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    .line 6
    move-result p1

    .line 7
    and-int/2addr p1, v0

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    const/4 p1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    return p1
.end method

.method public serialize(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_first:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    .line 3
    .line 4
    iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_mayHaveNativeIds:Z

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->hasIds()Z

    .line 12
    move-result v4

    .line 13
    .line 14
    if-eqz v4, :cond_0

    .line 15
    move v4, v3

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v4, v2

    .line 18
    :goto_0
    const/4 v5, -0x1

    .line 19
    :goto_1
    add-int/2addr v5, v3

    .line 20
    .line 21
    const/16 v6, 0x10

    .line 22
    .line 23
    if-lt v5, v6, :cond_3

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->next()Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    goto :goto_3

    .line 31
    .line 32
    :cond_1
    if-eqz v1, :cond_2

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->hasIds()Z

    .line 36
    move-result v4

    .line 37
    .line 38
    if-eqz v4, :cond_2

    .line 39
    move v4, v3

    .line 40
    goto :goto_2

    .line 41
    :cond_2
    move v4, v2

    .line 42
    :goto_2
    move v5, v2

    .line 43
    .line 44
    .line 45
    :cond_3
    invoke-virtual {v0, v5}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->type(I)Lcom/fasterxml/jackson/core/JsonToken;

    .line 46
    move-result-object v6

    .line 47
    .line 48
    if-nez v6, :cond_4

    .line 49
    :goto_3
    return-void

    .line 50
    .line 51
    :cond_4
    if-eqz v4, :cond_6

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v5}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->findObjectId(I)Ljava/lang/Object;

    .line 55
    move-result-object v7

    .line 56
    .line 57
    if-eqz v7, :cond_5

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v7}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectId(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :cond_5
    invoke-virtual {v0, v5}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->findTypeId(I)Ljava/lang/Object;

    .line 64
    move-result-object v7

    .line 65
    .line 66
    if-eqz v7, :cond_6

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v7}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeTypeId(Ljava/lang/Object;)V

    .line 70
    .line 71
    :cond_6
    sget-object v7, Lcom/fasterxml/jackson/databind/util/TokenBuffer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    .line 72
    .line 73
    .line 74
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 75
    move-result v6

    .line 76
    .line 77
    aget v6, v7, v6

    .line 78
    .line 79
    .line 80
    packed-switch v6, :pswitch_data_0

    .line 81
    .line 82
    new-instance p1, Ljava/lang/RuntimeException;

    .line 83
    .line 84
    const-string v0, "Internal error: should never end up through this code path"

    .line 85
    .line 86
    .line 87
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 88
    throw p1

    .line 89
    .line 90
    .line 91
    :pswitch_0
    invoke-virtual {v0, v5}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->get(I)Ljava/lang/Object;

    .line 92
    move-result-object v6

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObject(Ljava/lang/Object;)V

    .line 96
    goto :goto_1

    .line 97
    .line 98
    .line 99
    :pswitch_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNull()V

    .line 100
    goto :goto_1

    .line 101
    .line 102
    .line 103
    :pswitch_2
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBoolean(Z)V

    .line 104
    goto :goto_1

    .line 105
    .line 106
    .line 107
    :pswitch_3
    invoke-virtual {p1, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBoolean(Z)V

    .line 108
    goto :goto_1

    .line 109
    .line 110
    .line 111
    :pswitch_4
    invoke-virtual {v0, v5}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->get(I)Ljava/lang/Object;

    .line 112
    move-result-object v6

    .line 113
    .line 114
    instance-of v7, v6, Ljava/lang/Double;

    .line 115
    .line 116
    if-eqz v7, :cond_7

    .line 117
    .line 118
    check-cast v6, Ljava/lang/Double;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    .line 122
    move-result-wide v6

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, v6, v7}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(D)V

    .line 126
    goto :goto_1

    .line 127
    .line 128
    :cond_7
    instance-of v7, v6, Ljava/math/BigDecimal;

    .line 129
    .line 130
    if-eqz v7, :cond_8

    .line 131
    .line 132
    check-cast v6, Ljava/math/BigDecimal;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(Ljava/math/BigDecimal;)V

    .line 136
    goto :goto_1

    .line 137
    .line 138
    :cond_8
    instance-of v7, v6, Ljava/lang/Float;

    .line 139
    .line 140
    if-eqz v7, :cond_9

    .line 141
    .line 142
    check-cast v6, Ljava/lang/Float;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    .line 146
    move-result v6

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(F)V

    .line 150
    .line 151
    goto/16 :goto_1

    .line 152
    .line 153
    :cond_9
    if-nez v6, :cond_a

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNull()V

    .line 157
    .line 158
    goto/16 :goto_1

    .line 159
    .line 160
    :cond_a
    instance-of v7, v6, Ljava/lang/String;

    .line 161
    .line 162
    if-eqz v7, :cond_b

    .line 163
    .line 164
    check-cast v6, Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(Ljava/lang/String;)V

    .line 168
    .line 169
    goto/16 :goto_1

    .line 170
    .line 171
    :cond_b
    new-instance p1, Lcom/fasterxml/jackson/core/JsonGenerationException;

    .line 172
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .line 178
    const-string v1, "Unrecognized value type for VALUE_NUMBER_FLOAT: "

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    move-result-object v1

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 189
    move-result-object v1

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    const-string v1, ", can not serialize"

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    move-result-object v0

    .line 202
    .line 203
    .line 204
    invoke-direct {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerationException;-><init>(Ljava/lang/String;)V

    .line 205
    throw p1

    .line 206
    .line 207
    .line 208
    :pswitch_5
    invoke-virtual {v0, v5}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->get(I)Ljava/lang/Object;

    .line 209
    move-result-object v6

    .line 210
    .line 211
    instance-of v7, v6, Ljava/lang/Integer;

    .line 212
    .line 213
    if-eqz v7, :cond_c

    .line 214
    .line 215
    check-cast v6, Ljava/lang/Integer;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 219
    move-result v6

    .line 220
    .line 221
    .line 222
    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(I)V

    .line 223
    .line 224
    goto/16 :goto_1

    .line 225
    .line 226
    :cond_c
    instance-of v7, v6, Ljava/math/BigInteger;

    .line 227
    .line 228
    if-eqz v7, :cond_d

    .line 229
    .line 230
    check-cast v6, Ljava/math/BigInteger;

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(Ljava/math/BigInteger;)V

    .line 234
    .line 235
    goto/16 :goto_1

    .line 236
    .line 237
    :cond_d
    instance-of v7, v6, Ljava/lang/Long;

    .line 238
    .line 239
    if-eqz v7, :cond_e

    .line 240
    .line 241
    check-cast v6, Ljava/lang/Long;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 245
    move-result-wide v6

    .line 246
    .line 247
    .line 248
    invoke-virtual {p1, v6, v7}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(J)V

    .line 249
    .line 250
    goto/16 :goto_1

    .line 251
    .line 252
    :cond_e
    instance-of v7, v6, Ljava/lang/Short;

    .line 253
    .line 254
    if-eqz v7, :cond_f

    .line 255
    .line 256
    check-cast v6, Ljava/lang/Short;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v6}, Ljava/lang/Short;->shortValue()S

    .line 260
    move-result v6

    .line 261
    .line 262
    .line 263
    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(S)V

    .line 264
    .line 265
    goto/16 :goto_1

    .line 266
    .line 267
    :cond_f
    check-cast v6, Ljava/lang/Number;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 271
    move-result v6

    .line 272
    .line 273
    .line 274
    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(I)V

    .line 275
    .line 276
    goto/16 :goto_1

    .line 277
    .line 278
    .line 279
    :pswitch_6
    invoke-virtual {v0, v5}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->get(I)Ljava/lang/Object;

    .line 280
    move-result-object v6

    .line 281
    .line 282
    instance-of v7, v6, Lcom/fasterxml/jackson/core/SerializableString;

    .line 283
    .line 284
    if-eqz v7, :cond_10

    .line 285
    .line 286
    check-cast v6, Lcom/fasterxml/jackson/core/SerializableString;

    .line 287
    .line 288
    .line 289
    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Lcom/fasterxml/jackson/core/SerializableString;)V

    .line 290
    .line 291
    goto/16 :goto_1

    .line 292
    .line 293
    :cond_10
    check-cast v6, Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 297
    .line 298
    goto/16 :goto_1

    .line 299
    .line 300
    .line 301
    :pswitch_7
    invoke-virtual {v0, v5}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->get(I)Ljava/lang/Object;

    .line 302
    move-result-object v6

    .line 303
    .line 304
    instance-of v7, v6, Lcom/fasterxml/jackson/core/SerializableString;

    .line 305
    .line 306
    if-eqz v7, :cond_11

    .line 307
    .line 308
    check-cast v6, Lcom/fasterxml/jackson/core/SerializableString;

    .line 309
    .line 310
    .line 311
    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Lcom/fasterxml/jackson/core/SerializableString;)V

    .line 312
    .line 313
    goto/16 :goto_1

    .line 314
    .line 315
    :cond_11
    check-cast v6, Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 319
    .line 320
    goto/16 :goto_1

    .line 321
    .line 322
    .line 323
    :pswitch_8
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V

    .line 324
    .line 325
    goto/16 :goto_1

    .line 326
    .line 327
    .line 328
    :pswitch_9
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V

    .line 329
    .line 330
    goto/16 :goto_1

    .line 331
    .line 332
    .line 333
    :pswitch_a
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 334
    .line 335
    goto/16 :goto_1

    .line 336
    .line 337
    .line 338
    :pswitch_b
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 339
    .line 340
    goto/16 :goto_1

    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCodec(Lcom/fasterxml/jackson/core/ObjectCodec;)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

    return-object p0
.end method

.method public setFeatureMask(I)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 0

    iput p1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_generatorFeatures:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "[TokenBuffer: "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->asParser()Lcom/fasterxml/jackson/core/JsonParser;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    iget-boolean v2, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_hasNativeTypeIds:Z

    .line 17
    const/4 v3, 0x0

    .line 18
    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    iget-boolean v2, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_hasNativeObjectIds:Z

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v2, v3

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 28
    .line 29
    .line 30
    :goto_1
    :try_start_0
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 31
    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    const/16 v5, 0x64

    .line 34
    .line 35
    if-nez v4, :cond_3

    .line 36
    .line 37
    if-lt v3, v5, :cond_2

    .line 38
    .line 39
    const-string v1, " ... (truncated "

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    sub-int/2addr v3, v5

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v1, " entries)"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    :cond_2
    const/16 v1, 0x5d

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 61
    return-object v0

    .line 62
    .line 63
    :cond_3
    if-eqz v2, :cond_4

    .line 64
    .line 65
    .line 66
    :try_start_1
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_appendNativeIds(Ljava/lang/StringBuilder;)V

    .line 67
    goto :goto_2

    .line 68
    :catch_0
    move-exception v0

    .line 69
    goto :goto_3

    .line 70
    .line 71
    :cond_4
    :goto_2
    if-ge v3, v5, :cond_6

    .line 72
    .line 73
    if-lez v3, :cond_5

    .line 74
    .line 75
    const-string v5, ", "

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    :cond_5
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 82
    move-result-object v5

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    .line 88
    .line 89
    if-ne v4, v5, :cond_6

    .line 90
    .line 91
    const/16 v4, 0x28

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    .line 98
    move-result-object v4

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    const/16 v4, 0x29

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 107
    .line 108
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 109
    goto :goto_1

    .line 110
    .line 111
    :goto_3
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 112
    .line 113
    .line 114
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 115
    throw v1
.end method

.method public useDefaultPrettyPrinter()Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 0

    return-object p0
.end method

.method public version()Lcom/fasterxml/jackson/core/Version;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/fasterxml/jackson/databind/cfg/PackageVersion;->VERSION:Lcom/fasterxml/jackson/core/Version;

    .line 3
    return-object v0
.end method

.method public writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/InputStream;I)I
    .locals 0

    .line 4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;[BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 1
    new-array p1, p4, [B

    const/4 v0, 0x0

    .line 2
    invoke-static {p2, p3, p1, v0, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeObject(Ljava/lang/Object;)V

    return-void
.end method

.method public writeBoolean(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    .line 5
    goto :goto_0

    .line 6
    .line 7
    :cond_0
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/core/JsonToken;)V

    .line 11
    return-void
.end method

.method public final writeEndArray()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/core/JsonToken;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->getParent()Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 16
    :cond_0
    return-void
.end method

.method public final writeEndObject()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/core/JsonToken;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->getParent()Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 16
    :cond_0
    return-void
.end method

.method public writeFieldName(Lcom/fasterxml/jackson/core/SerializableString;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 4
    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->writeFieldName(Ljava/lang/String;)I

    return-void
.end method

.method public final writeFieldName(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 2
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->writeFieldName(Ljava/lang/String;)I

    return-void
.end method

.method public writeNull()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/core/JsonToken;)V

    .line 6
    return-void
.end method

.method public writeNumber(D)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V

    return-void
.end method

.method public writeNumber(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V

    return-void
.end method

.method public writeNumber(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V

    return-void
.end method

.method public writeNumber(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V

    return-void
.end method

.method public writeNumber(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V

    return-void
.end method

.method public writeNumber(Ljava/math/BigDecimal;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeNull()V

    goto :goto_0

    .line 7
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public writeNumber(Ljava/math/BigInteger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeNull()V

    goto :goto_0

    .line 9
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public writeNumber(S)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V

    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public writeObjectId(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_objectId:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_hasNativeId:Z

    return-void
.end method

.method public writeRaw(C)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_reportUnsupportedOperation()V

    return-void
.end method

.method public writeRaw(Lcom/fasterxml/jackson/core/SerializableString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_reportUnsupportedOperation()V

    return-void
.end method

.method public writeRaw(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_reportUnsupportedOperation()V

    return-void
.end method

.method public writeRaw(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_reportUnsupportedOperation()V

    return-void
.end method

.method public writeRaw([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_reportUnsupportedOperation()V

    return-void
.end method

.method public writeRawUTF8String([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_reportUnsupportedOperation()V

    .line 4
    return-void
.end method

.method public writeRawValue(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_reportUnsupportedOperation()V

    return-void
.end method

.method public writeRawValue(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_reportUnsupportedOperation()V

    return-void
.end method

.method public writeRawValue([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_reportUnsupportedOperation()V

    return-void
.end method

.method public final writeStartArray()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/core/JsonToken;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->createChildArrayContext()Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 14
    return-void
.end method

.method public final writeStartObject()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/core/JsonToken;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->createChildObjectContext()Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 14
    return-void
.end method

.method public writeString(Lcom/fasterxml/jackson/core/SerializableString;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeNull()V

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeNull()V

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public writeString([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public writeTree(Lcom/fasterxml/jackson/core/TreeNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public writeTypeId(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_typeId:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_hasNativeId:Z

    return-void
.end method

.method public writeUTF8String([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_reportUnsupportedOperation()V

    .line 4
    return-void
.end method
