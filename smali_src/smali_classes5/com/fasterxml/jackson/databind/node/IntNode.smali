.class public Lcom/fasterxml/jackson/databind/node/IntNode;
.super Lcom/fasterxml/jackson/databind/node/NumericNode;
.source "SourceFile"


# static fields
.field private static final CANONICALS:[Lcom/fasterxml/jackson/databind/node/IntNode;

.field static final MAX_CANONICAL:I = 0xa

.field static final MIN_CANONICAL:I = -0x1


# instance fields
.field protected final _value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    .line 2
    const/16 v0, 0xc

    .line 3
    .line 4
    new-array v1, v0, [Lcom/fasterxml/jackson/databind/node/IntNode;

    .line 5
    .line 6
    sput-object v1, Lcom/fasterxml/jackson/databind/node/IntNode;->CANONICALS:[Lcom/fasterxml/jackson/databind/node/IntNode;

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    :goto_0
    if-ge v1, v0, :cond_0

    .line 10
    .line 11
    sget-object v2, Lcom/fasterxml/jackson/databind/node/IntNode;->CANONICALS:[Lcom/fasterxml/jackson/databind/node/IntNode;

    .line 12
    .line 13
    new-instance v3, Lcom/fasterxml/jackson/databind/node/IntNode;

    .line 14
    .line 15
    add-int/lit8 v4, v1, -0x1

    .line 16
    .line 17
    .line 18
    invoke-direct {v3, v4}, Lcom/fasterxml/jackson/databind/node/IntNode;-><init>(I)V

    .line 19
    .line 20
    aput-object v3, v2, v1

    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/node/NumericNode;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Lcom/fasterxml/jackson/databind/node/IntNode;->_value:I

    .line 6
    return-void
.end method

.method public static valueOf(I)Lcom/fasterxml/jackson/databind/node/IntNode;
    .locals 2

    .line 1
    .line 2
    const/16 v0, 0xa

    .line 3
    .line 4
    if-gt p0, v0, :cond_1

    .line 5
    const/4 v0, -0x1

    .line 6
    .line 7
    if-ge p0, v0, :cond_0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/databind/node/IntNode;->CANONICALS:[Lcom/fasterxml/jackson/databind/node/IntNode;

    .line 11
    sub-int/2addr p0, v0

    .line 12
    .line 13
    aget-object p0, v1, p0

    .line 14
    return-object p0

    .line 15
    .line 16
    :cond_1
    :goto_0
    new-instance v0, Lcom/fasterxml/jackson/databind/node/IntNode;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/node/IntNode;-><init>(I)V

    .line 20
    return-object v0
.end method


# virtual methods
.method public asBoolean(Z)Z
    .locals 0

    iget p1, p0, Lcom/fasterxml/jackson/databind/node/IntNode;->_value:I

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
    iget v0, p0, Lcom/fasterxml/jackson/databind/node/IntNode;->_value:I

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
    iget v0, p0, Lcom/fasterxml/jackson/databind/node/IntNode;->_value:I

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
    iget v0, p0, Lcom/fasterxml/jackson/databind/node/IntNode;->_value:I

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

    iget v0, p0, Lcom/fasterxml/jackson/databind/node/IntNode;->_value:I

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
    instance-of v2, p1, Lcom/fasterxml/jackson/databind/node/IntNode;

    .line 11
    .line 12
    if-eqz v2, :cond_3

    .line 13
    .line 14
    check-cast p1, Lcom/fasterxml/jackson/databind/node/IntNode;

    .line 15
    .line 16
    iget p1, p1, Lcom/fasterxml/jackson/databind/node/IntNode;->_value:I

    .line 17
    .line 18
    iget v2, p0, Lcom/fasterxml/jackson/databind/node/IntNode;->_value:I

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

    iget v0, p0, Lcom/fasterxml/jackson/databind/node/IntNode;->_value:I

    int-to-float v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/databind/node/IntNode;->_value:I

    return v0
.end method

.method public intValue()I
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/databind/node/IntNode;->_value:I

    return v0
.end method

.method public isInt()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isIntegralNumber()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public longValue()J
    .locals 2

    iget v0, p0, Lcom/fasterxml/jackson/databind/node/IntNode;->_value:I

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
    iget v0, p0, Lcom/fasterxml/jackson/databind/node/IntNode;->_value:I

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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
    iget p2, p0, Lcom/fasterxml/jackson/databind/node/IntNode;->_value:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(I)V

    .line 6
    return-void
.end method

.method public shortValue()S
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/databind/node/IntNode;->_value:I

    int-to-short v0, v0

    return v0
.end method
