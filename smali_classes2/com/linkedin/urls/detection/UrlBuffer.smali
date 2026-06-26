.class public Lcom/linkedin/urls/detection/UrlBuffer;
.super Ljava/lang/Object;
.source "UrlBuffer.java"


# instance fields
.field private final _buffer:Ljava/lang/StringBuilder;

.field private final _reader:Lcom/linkedin/urls/detection/InputTextReader;

.field private _startIndex:I


# direct methods
.method public constructor <init>(Lcom/linkedin/urls/detection/InputTextReader;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/linkedin/urls/detection/UrlBuffer;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/linkedin/urls/detection/UrlBuffer;->_buffer:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public append(C)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlBuffer;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlBuffer;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v0}, Lcom/linkedin/urls/detection/InputTextReader;->getPosition()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/linkedin/urls/detection/UrlBuffer;->_startIndex:I

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlBuffer;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method charAt(I)C
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlBuffer;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p1

    return p1
.end method

.method public delete(II)Ljava/lang/StringBuilder;
    .locals 1

    if-nez p1, :cond_0

    .line 43
    iget v0, p0, Lcom/linkedin/urls/detection/UrlBuffer;->_startIndex:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/linkedin/urls/detection/UrlBuffer;->_startIndex:I

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlBuffer;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public deleteCharAt(I)Ljava/lang/StringBuilder;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlBuffer;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public getBufferString()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlBuffer;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStartIndex()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/linkedin/urls/detection/UrlBuffer;->_startIndex:I

    return v0
.end method

.method public lastIndexOf(Ljava/lang/String;)I
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlBuffer;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public length()I
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlBuffer;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    return v0
.end method

.method public replace(IILjava/lang/String;)Ljava/lang/StringBuilder;
    .locals 2

    if-nez p1, :cond_0

    .line 58
    iget v0, p0, Lcom/linkedin/urls/detection/UrlBuffer;->_startIndex:I

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p1

    sub-int/2addr v1, p2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/linkedin/urls/detection/UrlBuffer;->_startIndex:I

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlBuffer;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public substring(I)Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlBuffer;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public substring(II)Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlBuffer;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
