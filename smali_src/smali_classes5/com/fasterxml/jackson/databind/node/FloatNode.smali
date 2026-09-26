.class public Lcom/fasterxml/jackson/databind/node/FloatNode;
.super Lcom/fasterxml/jackson/databind/node/NumericNode;
.source "SourceFile"


# instance fields
.field protected final _value:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/node/NumericNode;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    .line 6
    return-void
.end method

.method public static valueOf(F)Lcom/fasterxml/jackson/databind/node/FloatNode;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/fasterxml/jackson/databind/node/FloatNode;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/node/FloatNode;-><init>(F)V

    .line 6
    return-object v0
.end method


# virtual methods
.method public asText()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    .line 3
    float-to-double v0, v0

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/fasterxml/jackson/core/io/NumberOutput;->toString(D)Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public asToken()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    .line 3
    return-object v0
.end method

.method public bigIntegerValue()Ljava/math/BigInteger;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/FloatNode;->decimalValue()Ljava/math/BigDecimal;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public canConvertToInt()Z
    .locals 2

    iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    const/high16 v1, -0x31000000

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    const/high16 v1, 0x4f000000

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canConvertToLong()Z
    .locals 2

    iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    const/high16 v1, -0x21000000

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    const/high16 v1, 0x5f000000

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public decimalValue()Ljava/math/BigDecimal;
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    .line 3
    float-to-double v0, v0

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public doubleValue()D
    .locals 2

    iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    float-to-double v0, v0

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
    instance-of v2, p1, Lcom/fasterxml/jackson/databind/node/FloatNode;

    .line 11
    .line 12
    if-eqz v2, :cond_3

    .line 13
    .line 14
    check-cast p1, Lcom/fasterxml/jackson/databind/node/FloatNode;

    .line 15
    .line 16
    iget p1, p1, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    .line 17
    .line 18
    iget v2, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    .line 19
    .line 20
    .line 21
    invoke-static {v2, p1}, Ljava/lang/Float;->compare(FF)I

    .line 22
    move-result p1

    .line 23
    .line 24
    if-nez p1, :cond_2

    .line 25
    goto :goto_0

    .line 26
    :cond_2
    move v0, v1

    .line 27
    :goto_0
    return v0

    .line 28
    :cond_3
    return v1
.end method

.method public floatValue()F
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public intValue()I
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    float-to-int v0, v0

    return v0
.end method

.method public isFloat()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isFloatingPointNumber()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public longValue()J
    .locals 2

    iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    float-to-long v0, v0

    return-wide v0
.end method

.method public numberType()Lcom/fasterxml/jackson/core/JsonParser$NumberType;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->FLOAT:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    .line 3
    return-object v0
.end method

.method public numberValue()Ljava/lang/Number;
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

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
    iget p2, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(F)V

    .line 6
    return-void
.end method

.method public shortValue()S
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    float-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method
