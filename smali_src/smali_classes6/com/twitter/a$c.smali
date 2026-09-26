.class final Lcom/twitter/a$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field protected charIndex:I

.field protected codePointIndex:I

.field protected final text:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput v0, p0, Lcom/twitter/a$c;->codePointIndex:I

    .line 7
    .line 8
    iput v0, p0, Lcom/twitter/a$c;->charIndex:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/twitter/a$c;->text:Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method a(I)I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/twitter/a$c;->text:Ljava/lang/String;

    .line 3
    .line 4
    iget v1, p0, Lcom/twitter/a$c;->charIndex:I

    .line 5
    .line 6
    iget v2, p0, Lcom/twitter/a$c;->codePointIndex:I

    .line 7
    .line 8
    sub-int v2, p1, v2

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->offsetByCodePoints(II)I

    .line 12
    move-result v0

    .line 13
    .line 14
    iput v0, p0, Lcom/twitter/a$c;->charIndex:I

    .line 15
    .line 16
    iput p1, p0, Lcom/twitter/a$c;->codePointIndex:I

    .line 17
    return v0
.end method

.method b(I)I
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/twitter/a$c;->charIndex:I

    .line 3
    .line 4
    if-ge p1, v0, :cond_0

    .line 5
    .line 6
    iget v1, p0, Lcom/twitter/a$c;->codePointIndex:I

    .line 7
    .line 8
    iget-object v2, p0, Lcom/twitter/a$c;->text:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v2, p1, v0}, Ljava/lang/String;->codePointCount(II)I

    .line 12
    move-result v0

    .line 13
    sub-int/2addr v1, v0

    .line 14
    .line 15
    iput v1, p0, Lcom/twitter/a$c;->codePointIndex:I

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    iget v1, p0, Lcom/twitter/a$c;->codePointIndex:I

    .line 19
    .line 20
    iget-object v2, p0, Lcom/twitter/a$c;->text:Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v0, p1}, Ljava/lang/String;->codePointCount(II)I

    .line 24
    move-result v0

    .line 25
    add-int/2addr v1, v0

    .line 26
    .line 27
    iput v1, p0, Lcom/twitter/a$c;->codePointIndex:I

    .line 28
    .line 29
    :goto_0
    iput p1, p0, Lcom/twitter/a$c;->charIndex:I

    .line 30
    .line 31
    if-lez p1, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/twitter/a$c;->text:Ljava/lang/String;

    .line 34
    .line 35
    add-int/lit8 p1, p1, -0x1

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/String;->codePointAt(I)I

    .line 39
    move-result p1

    .line 40
    .line 41
    .line 42
    invoke-static {p1}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    .line 43
    move-result p1

    .line 44
    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    iget p1, p0, Lcom/twitter/a$c;->charIndex:I

    .line 48
    .line 49
    add-int/lit8 p1, p1, -0x1

    .line 50
    .line 51
    iput p1, p0, Lcom/twitter/a$c;->charIndex:I

    .line 52
    .line 53
    :cond_1
    iget p1, p0, Lcom/twitter/a$c;->codePointIndex:I

    .line 54
    return p1
.end method
