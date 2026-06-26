.class public Lcom/linkedin/urls/detection/InputTextReader;
.super Ljava/lang/Object;
.source "InputTextReader.java"


# static fields
.field protected static final MAX_BACKTRACK_MULTIPLIER:I = 0xa

.field private static final MINIMUM_BACKTRACK_LENGTH:I = 0x14


# instance fields
.field private _backtracked:I

.field private final _content:[C

.field private _index:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/linkedin/urls/detection/InputTextReader;->_index:I

    .line 35
    iput v0, p0, Lcom/linkedin/urls/detection/InputTextReader;->_backtracked:I

    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lcom/linkedin/urls/detection/InputTextReader;->_content:[C

    return-void
.end method

.method private checkBacktrackLoop(I)V
    .locals 0

    return-void
.end method


# virtual methods
.method public canReadChars(I)Z
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/linkedin/urls/detection/InputTextReader;->_content:[C

    array-length v0, v0

    iget v1, p0, Lcom/linkedin/urls/detection/InputTextReader;->_index:I

    add-int/2addr v1, p1

    if-lt v0, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public eof()Z
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/linkedin/urls/detection/InputTextReader;->_content:[C

    array-length v0, v0

    iget v1, p0, Lcom/linkedin/urls/detection/InputTextReader;->_index:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPosition()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/linkedin/urls/detection/InputTextReader;->_index:I

    return v0
.end method

.method public getRangeContent(II)Ljava/lang/String;
    .locals 2

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    if-ge p1, p2, :cond_0

    .line 139
    iget-object v1, p0, Lcom/linkedin/urls/detection/InputTextReader;->_content:[C

    aget-char v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTotalLength()I
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/linkedin/urls/detection/InputTextReader;->_content:[C

    array-length v0, v0

    return v0
.end method

.method public goBack()V
    .locals 2

    .line 131
    iget v0, p0, Lcom/linkedin/urls/detection/InputTextReader;->_backtracked:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/linkedin/urls/detection/InputTextReader;->_backtracked:I

    .line 132
    iget v0, p0, Lcom/linkedin/urls/detection/InputTextReader;->_index:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/linkedin/urls/detection/InputTextReader;->_index:I

    .line 133
    invoke-direct {p0, v1}, Lcom/linkedin/urls/detection/InputTextReader;->checkBacktrackLoop(I)V

    return-void
.end method

.method public peek(I)Ljava/lang/String;
    .locals 3

    .line 64
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/linkedin/urls/detection/InputTextReader;->_content:[C

    iget v2, p0, Lcom/linkedin/urls/detection/InputTextReader;->_index:I

    invoke-direct {v0, v1, v2, p1}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public peekChar(I)C
    .locals 2

    .line 73
    invoke-virtual {p0, p1}, Lcom/linkedin/urls/detection/InputTextReader;->canReadChars(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/linkedin/urls/detection/InputTextReader;->_content:[C

    iget v1, p0, Lcom/linkedin/urls/detection/InputTextReader;->_index:I

    add-int/2addr v1, p1

    aget-char p1, v0, v1

    return p1

    .line 74
    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public read()C
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/linkedin/urls/detection/InputTextReader;->_content:[C

    iget v1, p0, Lcom/linkedin/urls/detection/InputTextReader;->_index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/linkedin/urls/detection/InputTextReader;->_index:I

    aget-char v0, v0, v1

    .line 56
    invoke-static {v0}, Lcom/linkedin/urls/detection/CharUtils;->isWhiteSpace(C)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x20

    :cond_0
    return v0
.end method

.method public seek(I)V
    .locals 2

    .line 121
    iget v0, p0, Lcom/linkedin/urls/detection/InputTextReader;->_index:I

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 122
    iget v1, p0, Lcom/linkedin/urls/detection/InputTextReader;->_backtracked:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/linkedin/urls/detection/InputTextReader;->_backtracked:I

    .line 123
    iput p1, p0, Lcom/linkedin/urls/detection/InputTextReader;->_index:I

    .line 124
    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/InputTextReader;->checkBacktrackLoop(I)V

    return-void
.end method
