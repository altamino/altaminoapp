.class public Lcom/narvii/chat/input/MentionedEditText$Range;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/input/MentionedEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Range"
.end annotation


# instance fields
.field public from:I

.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public to:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/chat/input/MentionedEditText$Range;->id:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/chat/input/MentionedEditText$Range;->name:Ljava/lang/String;

    .line 8
    .line 9
    iput p3, p0, Lcom/narvii/chat/input/MentionedEditText$Range;->from:I

    .line 10
    .line 11
    iput p4, p0, Lcom/narvii/chat/input/MentionedEditText$Range;->to:I

    .line 12
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/chat/input/MentionedEditText$Range;II)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/input/MentionedEditText$Range;->isWrapped(II)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic b(Lcom/narvii/chat/input/MentionedEditText$Range;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/input/MentionedEditText$Range;->setOffset(I)V

    return-void
.end method

.method private isWrapped(II)Z
    .locals 1

    iget v0, p0, Lcom/narvii/chat/input/MentionedEditText$Range;->from:I

    if-lt v0, p1, :cond_0

    iget p1, p0, Lcom/narvii/chat/input/MentionedEditText$Range;->to:I

    if-gt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private setOffset(I)V
    .locals 1

    iget v0, p0, Lcom/narvii/chat/input/MentionedEditText$Range;->from:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/narvii/chat/input/MentionedEditText$Range;->from:I

    iget v0, p0, Lcom/narvii/chat/input/MentionedEditText$Range;->to:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/narvii/chat/input/MentionedEditText$Range;->to:I

    return-void
.end method


# virtual methods
.method contains(II)Z
    .locals 1

    iget v0, p0, Lcom/narvii/chat/input/MentionedEditText$Range;->from:I

    if-gt v0, p1, :cond_0

    iget p1, p0, Lcom/narvii/chat/input/MentionedEditText$Range;->to:I

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method getAnchorPosition(I)I
    .locals 3

    iget v0, p0, Lcom/narvii/chat/input/MentionedEditText$Range;->from:I

    sub-int v1, p1, v0

    iget v2, p0, Lcom/narvii/chat/input/MentionedEditText$Range;->to:I

    sub-int p1, v2, p1

    sub-int/2addr v1, p1

    if-ltz v1, :cond_0

    return v2

    :cond_0
    return v0
.end method

.method getLength()I
    .locals 2

    iget v0, p0, Lcom/narvii/chat/input/MentionedEditText$Range;->from:I

    iget v1, p0, Lcom/narvii/chat/input/MentionedEditText$Range;->to:I

    if-ge v0, v1, :cond_0

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isEqual(II)Z
    .locals 2

    iget v0, p0, Lcom/narvii/chat/input/MentionedEditText$Range;->from:I

    if-ne v0, p1, :cond_0

    iget v1, p0, Lcom/narvii/chat/input/MentionedEditText$Range;->to:I

    if-eq v1, p2, :cond_1

    :cond_0
    if-ne v0, p2, :cond_2

    iget p2, p0, Lcom/narvii/chat/input/MentionedEditText$Range;->to:I

    if-ne p2, p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method isWrappedBy(II)Z
    .locals 2

    iget v0, p0, Lcom/narvii/chat/input/MentionedEditText$Range;->from:I

    if-le p1, v0, :cond_0

    iget v1, p0, Lcom/narvii/chat/input/MentionedEditText$Range;->to:I

    if-lt p1, v1, :cond_1

    :cond_0
    if-le p2, v0, :cond_2

    iget p1, p0, Lcom/narvii/chat/input/MentionedEditText$Range;->to:I

    if-ge p2, p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
