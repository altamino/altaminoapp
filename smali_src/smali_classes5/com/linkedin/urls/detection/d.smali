.class public Lcom/linkedin/urls/detection/d;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput v0, p0, Lcom/linkedin/urls/detection/d;->_index:I

    .line 7
    .line 8
    iput v0, p0, Lcom/linkedin/urls/detection/d;->_backtracked:I

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    .line 12
    move-result-object p1

    .line 13
    .line 14
    iput-object p1, p0, Lcom/linkedin/urls/detection/d;->_content:[C

    .line 15
    return-void
.end method

.method private b(I)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/linkedin/urls/detection/d;->_content:[C

    .line 3
    array-length v0, v0

    .line 4
    .line 5
    iget v1, p0, Lcom/linkedin/urls/detection/d;->_index:I

    .line 6
    add-int/2addr v1, p1

    .line 7
    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    return p1
.end method

.method public c()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/linkedin/urls/detection/d;->_content:[C

    .line 3
    array-length v0, v0

    .line 4
    .line 5
    iget v1, p0, Lcom/linkedin/urls/detection/d;->_index:I

    .line 6
    .line 7
    if-gt v0, v1, :cond_0

    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/linkedin/urls/detection/d;->_index:I

    return v0
.end method

.method public e(II)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    :goto_0
    if-ge p1, p2, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/linkedin/urls/detection/d;->_content:[C

    .line 10
    .line 11
    aget-char v1, v1, p1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    add-int/lit8 p1, p1, 0x1

    .line 17
    goto :goto_0

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method public f()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/linkedin/urls/detection/d;->_content:[C

    .line 3
    array-length v0, v0

    .line 4
    return v0
.end method

.method public g()V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/linkedin/urls/detection/d;->_backtracked:I

    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    .line 6
    iput v0, p0, Lcom/linkedin/urls/detection/d;->_backtracked:I

    .line 7
    .line 8
    iget v0, p0, Lcom/linkedin/urls/detection/d;->_index:I

    .line 9
    sub-int/2addr v0, v1

    .line 10
    .line 11
    iput v0, p0, Lcom/linkedin/urls/detection/d;->_index:I

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v1}, Lcom/linkedin/urls/detection/d;->b(I)V

    .line 15
    return-void
.end method

.method public h(I)Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/lang/String;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/linkedin/urls/detection/d;->_content:[C

    .line 5
    .line 6
    iget v2, p0, Lcom/linkedin/urls/detection/d;->_index:I

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1, v2, p1}, Ljava/lang/String;-><init>([CII)V

    .line 10
    return-object v0
.end method

.method public i(I)C
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/linkedin/urls/detection/d;->a(I)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/linkedin/urls/detection/d;->_content:[C

    .line 9
    .line 10
    iget v1, p0, Lcom/linkedin/urls/detection/d;->_index:I

    .line 11
    add-int/2addr v1, p1

    .line 12
    .line 13
    aget-char p1, v0, v1

    .line 14
    return p1

    .line 15
    .line 16
    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 17
    .line 18
    .line 19
    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    .line 20
    throw p1
.end method

.method public j()C
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/linkedin/urls/detection/d;->_content:[C

    .line 3
    .line 4
    iget v1, p0, Lcom/linkedin/urls/detection/d;->_index:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x1

    .line 7
    .line 8
    iput v2, p0, Lcom/linkedin/urls/detection/d;->_index:I

    .line 9
    .line 10
    aget-char v0, v0, v1

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/linkedin/urls/detection/a;->o(C)Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    const/16 v0, 0x20

    .line 19
    :cond_0
    return v0
.end method

.method public k(I)V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/linkedin/urls/detection/d;->_index:I

    .line 3
    sub-int/2addr v0, p1

    .line 4
    const/4 v1, 0x0

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 8
    move-result v0

    .line 9
    .line 10
    iget v1, p0, Lcom/linkedin/urls/detection/d;->_backtracked:I

    .line 11
    add-int/2addr v1, v0

    .line 12
    .line 13
    iput v1, p0, Lcom/linkedin/urls/detection/d;->_backtracked:I

    .line 14
    .line 15
    iput p1, p0, Lcom/linkedin/urls/detection/d;->_index:I

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/d;->b(I)V

    .line 19
    return-void
.end method
