.class public Lcom/fasterxml/jackson/databind/node/ShortNode;
.super Lcom/fasterxml/jackson/databind/node/NumericNode;
.source "SourceFile"


# instance fields
.field protected final _value:S


# direct methods
.method public constructor <init>(S)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/node/NumericNode;-><init>()V

    .line 4
    .line 5
    iput-short p1, p0, Lcom/fasterxml/jackson/databind/node/ShortNode;->_value:S

    .line 6
    return-void
.end method

.method public static valueOf(S)Lcom/fasterxml/jackson/databind/node/ShortNode;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/fasterxml/jackson/databind/node/ShortNode;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/node/ShortNode;-><init>(S)V

    .line 6
    return-object v0
.end method


# virtual methods
.method public asBoolean(Z)Z
    .locals 0

    iget-short p1, p0, Lcom/fasterxml/jackson/databind/node/ShortNode;->_value:S

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public asText()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-short v0, p0, Lcom/fasterxml/jackson/databind/node/ShortNode;->_value:S

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/NumberOutput;->toString(I)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public asToken()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    .line 3
    return-object v0
.end method

.method public bigIntegerValue()Ljava/math/BigInteger;
    .locals 2

    .line 1
    .line 2
    iget-short v0, p0, Lcom/fasterxml/jackson/databind/node/ShortNode;->_value:S

    .line 3
    int-to-long v0, v0

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public canConvertToInt()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canConvertToLong()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public decimalValue()Ljava/math/BigDecimal;
    .locals 2

    .line 1
    .line 2
    iget-short v0, p0, Lcom/fasterxml/jackson/databind/node/ShortNode;->_value:S

    .line 3
    int-to-long v0, v0

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public doubleValue()D
    .locals 2

    iget-short v0, p0, Lcom/fasterxml/jackson/databind/node/ShortNode;->_value:S

    int-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p1, p0, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez p1, :cond_1

    .line 8
    return v1

    .line 9
    .line 10
    :cond_1
    instance-of v2, p1, Lcom/fasterxml/jackson/databind/node/ShortNode;

    .line 11
    .line 12
    if-eqz v2, :cond_3

    .line 13
    .line 14
    check-cast p1, Lcom/fasterxml/jackson/databind/node/ShortNode;

    .line 15
    .line 16
    iget-short p1, p1, Lcom/fasterxml/jackson/databind/node/ShortNode;->_value:S

    .line 17
    .line 18
    iget-short v2, p0, Lcom/fasterxml/jackson/databind/node/ShortNode;->_value:S

    .line 19
    .line 20
    if-ne p1, v2, :cond_2

    .line 21
    goto :goto_0

    .line 22
    :cond_2
    move v0, v1

    .line 23
    :goto_0
    return v0

    .line 24
    :cond_3
    return v1
.end method

.method public floatValue()F
    .locals 1

    iget-short v0, p0, Lcom/fasterxml/jackson/databind/node/ShortNode;->_value:S

    int-to-float v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-short v0, p0, Lcom/fasterxml/jackson/databind/node/ShortNode;->_value:S

    return v0
.end method

.method public intValue()I
    .locals 1

    iget-short v0, p0, Lcom/fasterxml/jackson/databind/node/ShortNode;->_value:S

    return v0
.end method

.method public isIntegralNumber()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isShort()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public longValue()J
    .locals 2

    iget-short v0, p0, Lcom/fasterxml/jackson/databind/node/ShortNode;->_value:S

    int-to-long v0, v0

    return-wide v0
.end method

.method public numberType()Lcom/fasterxml/jackson/core/JsonParser$NumberType;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->INT:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    .line 3
    return-object v0
.end method

.method public numberValue()Ljava/lang/Number;
    .locals 1

    .line 1
    .line 2
    iget-short v0, p0, Lcom/fasterxml/jackson/databind/node/ShortNode;->_value:S

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .line 1
    .line 2
    iget-short p2, p0, Lcom/fasterxml/jackson/databind/node/ShortNode;->_value:S

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(S)V

    .line 6
    return-void
.end method

.method public shortValue()S
    .locals 1

    iget-short v0, p0, Lcom/fasterxml/jackson/databind/node/ShortNode;->_value:S

    return v0
.end method
