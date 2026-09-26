.class public Lcom/linkedin/urls/detection/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final _buffer:Ljava/lang/StringBuilder;

.field private final _reader:Lcom/linkedin/urls/detection/d;

.field private _startIndex:I


# direct methods
.method public constructor <init>(Lcom/linkedin/urls/detection/d;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/linkedin/urls/detection/e;->_reader:Lcom/linkedin/urls/detection/d;

    .line 6
    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    iput-object p1, p0, Lcom/linkedin/urls/detection/e;->_buffer:Ljava/lang/StringBuilder;

    .line 13
    return-void
.end method


# virtual methods
.method public a(C)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/linkedin/urls/detection/e;->_buffer:Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/linkedin/urls/detection/e;->_reader:Lcom/linkedin/urls/detection/d;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/linkedin/urls/detection/d;->d()I

    .line 14
    move-result v0

    .line 15
    .line 16
    add-int/lit8 v0, v0, -0x1

    .line 17
    .line 18
    iput v0, p0, Lcom/linkedin/urls/detection/e;->_startIndex:I

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/linkedin/urls/detection/e;->_buffer:Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    return-void
.end method

.method b(I)C
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/linkedin/urls/detection/e;->_buffer:Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public c(II)Ljava/lang/StringBuilder;
    .locals 1

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    iget v0, p0, Lcom/linkedin/urls/detection/e;->_startIndex:I

    .line 5
    add-int/2addr v0, p2

    .line 6
    .line 7
    iput v0, p0, Lcom/linkedin/urls/detection/e;->_startIndex:I

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/linkedin/urls/detection/e;->_buffer:Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public d(I)Ljava/lang/StringBuilder;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/linkedin/urls/detection/e;->_buffer:Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/linkedin/urls/detection/e;->_buffer:Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/linkedin/urls/detection/e;->_startIndex:I

    return v0
.end method

.method public g(Ljava/lang/String;)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/linkedin/urls/detection/e;->_buffer:Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public h()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/linkedin/urls/detection/e;->_buffer:Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public i(IILjava/lang/String;)Ljava/lang/StringBuilder;
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    iget v0, p0, Lcom/linkedin/urls/detection/e;->_startIndex:I

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 8
    move-result v1

    .line 9
    add-int/2addr v1, p1

    .line 10
    sub-int/2addr v1, p2

    .line 11
    add-int/2addr v0, v1

    .line 12
    .line 13
    iput v0, p0, Lcom/linkedin/urls/detection/e;->_startIndex:I

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/linkedin/urls/detection/e;->_buffer:Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method public j(I)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/linkedin/urls/detection/e;->_buffer:Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public k(II)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/linkedin/urls/detection/e;->_buffer:Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
