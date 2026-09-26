.class public Lorg/schabi/newpipe/extractor/utils/jsextractor/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/extractor/utils/jsextractor/b$h;,
        Lorg/schabi/newpipe/extractor/utils/jsextractor/b$d;,
        Lorg/schabi/newpipe/extractor/utils/jsextractor/b$g;,
        Lorg/schabi/newpipe/extractor/utils/jsextractor/b$c;,
        Lorg/schabi/newpipe/extractor/utils/jsextractor/b$e;,
        Lorg/schabi/newpipe/extractor/utils/jsextractor/b$b;,
        Lorg/schabi/newpipe/extractor/utils/jsextractor/b$f;
    }
.end annotation


# instance fields
.field private final braceStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lorg/schabi/newpipe/extractor/utils/jsextractor/b$b;",
            ">;"
        }
    .end annotation
.end field

.field private final lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/b$d;

.field private final parenStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lorg/schabi/newpipe/extractor/utils/jsextractor/b$f;",
            ">;"
        }
    .end annotation
.end field

.field private final stream:Lorg/schabi/newpipe/extractor/utils/jsextractor/d;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/b;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b;->stream:Lorg/schabi/newpipe/extractor/utils/jsextractor/d;

    .line 3
    new-instance p1, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$d;

    invoke-direct {p1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$d;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/b$d;

    .line 4
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b;->braceStack:Ljava/util/Stack;

    .line 5
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b;->parenStack:Ljava/util/Stack;

    return-void
.end method


# virtual methods
.method a(Lorg/schabi/newpipe/extractor/utils/jsextractor/c;)Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->isOp:Z

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->RETURN:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 7
    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    .line 10
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->CASE:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 11
    .line 12
    if-ne p1, v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 17
    :goto_1
    return p1
.end method

.method public b()Lorg/schabi/newpipe/extractor/utils/jsextractor/b$h;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b;->stream:Lorg/schabi/newpipe/extractor/utils/jsextractor/d;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->t()Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->DIV:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 9
    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->ASSIGN_DIV:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 13
    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/b;->h()Z

    .line 18
    move-result v1

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b;->stream:Lorg/schabi/newpipe/extractor/utils/jsextractor/d;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->w(Lorg/schabi/newpipe/extractor/utils/jsextractor/c;)V

    .line 26
    .line 27
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->REGEXP:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 28
    .line 29
    :cond_1
    new-instance v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$h;

    .line 30
    .line 31
    iget-object v2, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b;->stream:Lorg/schabi/newpipe/extractor/utils/jsextractor/d;

    .line 32
    .line 33
    iget v3, v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->tokenBeg:I

    .line 34
    .line 35
    iget v2, v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->tokenEnd:I

    .line 36
    .line 37
    .line 38
    invoke-direct {v1, v0, v3, v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$h;-><init>(Lorg/schabi/newpipe/extractor/utils/jsextractor/c;II)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/b;->i(Lorg/schabi/newpipe/extractor/utils/jsextractor/b$h;)V

    .line 42
    return-object v1
.end method

.method c(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b;->braceStack:Ljava/util/Stack;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/b$d;

    .line 11
    .line 12
    new-instance v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$c;

    .line 13
    .line 14
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->RC:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 15
    .line 16
    iget-object v2, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b;->stream:Lorg/schabi/newpipe/extractor/utils/jsextractor/d;

    .line 17
    .line 18
    iget v2, v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->lineno:I

    .line 19
    .line 20
    iget-object v3, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b;->braceStack:Ljava/util/Stack;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 24
    move-result-object v3

    .line 25
    .line 26
    check-cast v3, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$b;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1, v2, v3}, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$c;-><init>(Lorg/schabi/newpipe/extractor/utils/jsextractor/c;ILorg/schabi/newpipe/extractor/utils/jsextractor/b$b;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$d;->c(Lorg/schabi/newpipe/extractor/utils/jsextractor/b$e;)V

    .line 33
    return-void

    .line 34
    .line 35
    :cond_0
    new-instance v0, Laa/h;

    .line 36
    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    const-string v2, "unmatched closing brace at "

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    .line 55
    invoke-direct {v0, p1}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 56
    throw v0
.end method

.method d(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b;->parenStack:Ljava/util/Stack;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/b$d;

    .line 11
    .line 12
    new-instance v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$g;

    .line 13
    .line 14
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->RP:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 15
    .line 16
    iget-object v2, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b;->stream:Lorg/schabi/newpipe/extractor/utils/jsextractor/d;

    .line 17
    .line 18
    iget v2, v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->lineno:I

    .line 19
    .line 20
    iget-object v3, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b;->parenStack:Ljava/util/Stack;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 24
    move-result-object v3

    .line 25
    .line 26
    check-cast v3, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$f;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1, v2, v3}, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$g;-><init>(Lorg/schabi/newpipe/extractor/utils/jsextractor/c;ILorg/schabi/newpipe/extractor/utils/jsextractor/b$f;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$d;->c(Lorg/schabi/newpipe/extractor/utils/jsextractor/b$e;)V

    .line 33
    return-void

    .line 34
    .line 35
    :cond_0
    new-instance v0, Laa/h;

    .line 36
    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    const-string v2, "unmached closing paren at "

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    .line 55
    invoke-direct {v0, p1}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 56
    throw v0
.end method

.method e()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/b$d;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$d;->a()Lorg/schabi/newpipe/extractor/utils/jsextractor/b$e;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$a;->$SwitchMap$org$schabi$newpipe$extractor$utils$jsextractor$Token:[I

    .line 12
    .line 13
    iget-object v2, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/b$d;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$d;->a()Lorg/schabi/newpipe/extractor/utils/jsextractor/b$e;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    iget-object v2, v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$e;->token:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 23
    move-result v2

    .line 24
    .line 25
    aget v0, v0, v2

    .line 26
    const/4 v2, 0x0

    .line 27
    .line 28
    if-eq v0, v1, :cond_0

    .line 29
    const/4 v3, 0x2

    .line 30
    .line 31
    if-eq v0, v3, :cond_0

    .line 32
    .line 33
    .line 34
    packed-switch v0, :pswitch_data_0

    .line 35
    .line 36
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/b$d;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$d;->a()Lorg/schabi/newpipe/extractor/utils/jsextractor/b$e;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    iget-object v0, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$e;->token:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 43
    .line 44
    iget-boolean v0, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->isOp:Z

    .line 45
    xor-int/2addr v1, v0

    .line 46
    goto :goto_0

    .line 47
    .line 48
    :pswitch_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/b$d;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$d;->e()Lorg/schabi/newpipe/extractor/utils/jsextractor/b$e;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    if-eqz v0, :cond_0

    .line 55
    .line 56
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/b$d;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$d;->e()Lorg/schabi/newpipe/extractor/utils/jsextractor/b$e;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    iget v0, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$e;->lineno:I

    .line 63
    .line 64
    iget-object v3, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b;->stream:Lorg/schabi/newpipe/extractor/utils/jsextractor/d;

    .line 65
    .line 66
    iget v3, v3, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->lineno:I

    .line 67
    .line 68
    if-eq v0, v3, :cond_0

    .line 69
    goto :goto_0

    .line 70
    .line 71
    :pswitch_1
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b;->braceStack:Ljava/util/Stack;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 75
    move-result v0

    .line 76
    .line 77
    if-nez v0, :cond_0

    .line 78
    .line 79
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b;->braceStack:Ljava/util/Stack;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    .line 83
    move-result-object v0

    .line 84
    .line 85
    check-cast v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$b;

    .line 86
    .line 87
    iget-boolean v0, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$b;->isBlock:Z

    .line 88
    .line 89
    if-eqz v0, :cond_0

    .line 90
    goto :goto_0

    .line 91
    :cond_0
    :pswitch_2
    move v1, v2

    .line 92
    .line 93
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/b$d;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$d;->a()Lorg/schabi/newpipe/extractor/utils/jsextractor/b$e;

    .line 97
    move-result-object v0

    .line 98
    .line 99
    instance-of v0, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$g;

    .line 100
    .line 101
    if-eqz v0, :cond_2

    .line 102
    .line 103
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/b$d;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$d;->a()Lorg/schabi/newpipe/extractor/utils/jsextractor/b$e;

    .line 107
    move-result-object v0

    .line 108
    .line 109
    iget-object v0, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$e;->token:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 110
    .line 111
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->RP:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 112
    .line 113
    if-ne v0, v2, :cond_2

    .line 114
    .line 115
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/b$d;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$d;->a()Lorg/schabi/newpipe/extractor/utils/jsextractor/b$e;

    .line 119
    move-result-object v0

    .line 120
    .line 121
    check-cast v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$g;

    .line 122
    .line 123
    iget-object v0, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$g;->paren:Lorg/schabi/newpipe/extractor/utils/jsextractor/b$f;

    .line 124
    goto :goto_1

    .line 125
    :cond_2
    const/4 v0, 0x0

    .line 126
    .line 127
    :goto_1
    new-instance v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$b;

    .line 128
    .line 129
    .line 130
    invoke-direct {v2, v1, v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$b;-><init>(ZLorg/schabi/newpipe/extractor/utils/jsextractor/b$f;)V

    .line 131
    .line 132
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b;->braceStack:Ljava/util/Stack;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/b$d;

    .line 138
    .line 139
    new-instance v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$c;

    .line 140
    .line 141
    sget-object v3, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->LC:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 142
    .line 143
    iget-object v4, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b;->stream:Lorg/schabi/newpipe/extractor/utils/jsextractor/d;

    .line 144
    .line 145
    iget v4, v4, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->lineno:I

    .line 146
    .line 147
    .line 148
    invoke-direct {v1, v3, v4, v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$c;-><init>(Lorg/schabi/newpipe/extractor/utils/jsextractor/c;ILorg/schabi/newpipe/extractor/utils/jsextractor/b$b;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$d;->c(Lorg/schabi/newpipe/extractor/utils/jsextractor/b$e;)V

    .line 152
    return-void

    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method f()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/b$d;

    .line 3
    .line 4
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->FUNCTION:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$d;->b(Lorg/schabi/newpipe/extractor/utils/jsextractor/c;)Z

    .line 8
    move-result v0

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/b$d;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$d;->e()Lorg/schabi/newpipe/extractor/utils/jsextractor/b$e;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/b$d;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$d;->e()Lorg/schabi/newpipe/extractor/utils/jsextractor/b$e;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    iget-object v0, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$e;->token:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/b;->a(Lorg/schabi/newpipe/extractor/utils/jsextractor/c;)Z

    .line 32
    move-result v0

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    :goto_0
    move v0, v2

    .line 36
    goto :goto_1

    .line 37
    .line 38
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/b$d;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$d;->f(Lorg/schabi/newpipe/extractor/utils/jsextractor/c;)Z

    .line 42
    move-result v0

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/b$d;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$d;->d()Lorg/schabi/newpipe/extractor/utils/jsextractor/b$e;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/b$d;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$d;->d()Lorg/schabi/newpipe/extractor/utils/jsextractor/b$e;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    iget-object v0, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$e;->token:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/b;->a(Lorg/schabi/newpipe/extractor/utils/jsextractor/c;)Z

    .line 64
    move-result v0

    .line 65
    .line 66
    if-eqz v0, :cond_1

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    move v0, v3

    .line 69
    .line 70
    :goto_1
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/b$d;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$d;->a()Lorg/schabi/newpipe/extractor/utils/jsextractor/b$e;

    .line 74
    move-result-object v1

    .line 75
    .line 76
    if-eqz v1, :cond_2

    .line 77
    .line 78
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/b$d;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$d;->a()Lorg/schabi/newpipe/extractor/utils/jsextractor/b$e;

    .line 82
    move-result-object v1

    .line 83
    .line 84
    iget-object v1, v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$e;->token:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->a()Z

    .line 88
    move-result v1

    .line 89
    .line 90
    if-eqz v1, :cond_2

    .line 91
    goto :goto_2

    .line 92
    :cond_2
    move v2, v3

    .line 93
    .line 94
    :goto_2
    new-instance v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$f;

    .line 95
    .line 96
    .line 97
    invoke-direct {v1, v0, v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$f;-><init>(ZZ)V

    .line 98
    .line 99
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b;->parenStack:Ljava/util/Stack;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/b$d;

    .line 105
    .line 106
    new-instance v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$g;

    .line 107
    .line 108
    sget-object v3, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->LP:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 109
    .line 110
    iget-object v4, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b;->stream:Lorg/schabi/newpipe/extractor/utils/jsextractor/d;

    .line 111
    .line 112
    iget v4, v4, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->lineno:I

    .line 113
    .line 114
    .line 115
    invoke-direct {v2, v3, v4, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$g;-><init>(Lorg/schabi/newpipe/extractor/utils/jsextractor/c;ILorg/schabi/newpipe/extractor/utils/jsextractor/b$f;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$d;->c(Lorg/schabi/newpipe/extractor/utils/jsextractor/b$e;)V

    .line 119
    return-void
.end method

.method public g()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b;->braceStack:Ljava/util/Stack;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b;->parenStack:Ljava/util/Stack;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method h()Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/b$d;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$d;->a()Lorg/schabi/newpipe/extractor/utils/jsextractor/b$e;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-eqz v0, :cond_8

    .line 10
    .line 11
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/b$d;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$d;->a()Lorg/schabi/newpipe/extractor/utils/jsextractor/b$e;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    iget-object v0, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$e;->token:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 18
    .line 19
    iget-boolean v2, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->isKeyw:Z

    .line 20
    const/4 v3, 0x0

    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->THIS:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 25
    .line 26
    if-eq v0, v2, :cond_0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v1, v3

    .line 29
    :goto_0
    return v1

    .line 30
    .line 31
    :cond_1
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->RP:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 32
    .line 33
    if-ne v0, v2, :cond_2

    .line 34
    .line 35
    iget-object v2, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/b$d;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$d;->a()Lorg/schabi/newpipe/extractor/utils/jsextractor/b$e;

    .line 39
    move-result-object v2

    .line 40
    .line 41
    instance-of v2, v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$g;

    .line 42
    .line 43
    if-eqz v2, :cond_2

    .line 44
    .line 45
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/b$d;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$d;->a()Lorg/schabi/newpipe/extractor/utils/jsextractor/b$e;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    check-cast v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$g;

    .line 52
    .line 53
    iget-object v0, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$g;->paren:Lorg/schabi/newpipe/extractor/utils/jsextractor/b$f;

    .line 54
    .line 55
    iget-boolean v0, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$f;->conditional:Z

    .line 56
    return v0

    .line 57
    .line 58
    :cond_2
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->RC:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 59
    .line 60
    if-ne v0, v2, :cond_5

    .line 61
    .line 62
    iget-object v2, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/b$d;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$d;->a()Lorg/schabi/newpipe/extractor/utils/jsextractor/b$e;

    .line 66
    move-result-object v2

    .line 67
    .line 68
    instance-of v2, v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$c;

    .line 69
    .line 70
    if-eqz v2, :cond_5

    .line 71
    .line 72
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/b$d;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$d;->a()Lorg/schabi/newpipe/extractor/utils/jsextractor/b$e;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    check-cast v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$c;

    .line 79
    .line 80
    iget-object v0, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$c;->brace:Lorg/schabi/newpipe/extractor/utils/jsextractor/b$b;

    .line 81
    .line 82
    iget-boolean v2, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$b;->isBlock:Z

    .line 83
    .line 84
    if-eqz v2, :cond_4

    .line 85
    .line 86
    iget-object v0, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$b;->paren:Lorg/schabi/newpipe/extractor/utils/jsextractor/b$f;

    .line 87
    .line 88
    if-eqz v0, :cond_3

    .line 89
    .line 90
    iget-boolean v0, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$f;->funcExpr:Z

    .line 91
    xor-int/2addr v0, v1

    .line 92
    return v0

    .line 93
    :cond_3
    return v1

    .line 94
    :cond_4
    return v3

    .line 95
    .line 96
    :cond_5
    iget-boolean v2, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->isPunct:Z

    .line 97
    .line 98
    if-eqz v2, :cond_7

    .line 99
    .line 100
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->RB:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 101
    .line 102
    if-eq v0, v2, :cond_6

    .line 103
    goto :goto_1

    .line 104
    :cond_6
    move v1, v3

    .line 105
    :goto_1
    return v1

    .line 106
    :cond_7
    return v3

    .line 107
    :cond_8
    return v1
.end method

.method i(Lorg/schabi/newpipe/extractor/utils/jsextractor/b$h;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p1, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$h;->token:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 3
    .line 4
    iget-boolean v1, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->isPunct:Z

    .line 5
    .line 6
    if-eqz v1, :cond_4

    .line 7
    .line 8
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$a;->$SwitchMap$org$schabi$newpipe$extractor$utils$jsextractor$Token:[I

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 12
    move-result v0

    .line 13
    .line 14
    aget v0, v1, v0

    .line 15
    const/4 v1, 0x1

    .line 16
    .line 17
    if-eq v0, v1, :cond_3

    .line 18
    const/4 v1, 0x2

    .line 19
    .line 20
    if-eq v0, v1, :cond_2

    .line 21
    const/4 v1, 0x3

    .line 22
    .line 23
    if-eq v0, v1, :cond_1

    .line 24
    const/4 v1, 0x4

    .line 25
    .line 26
    if-eq v0, v1, :cond_0

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_0
    iget p1, p1, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$h;->start:I

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/b;->c(I)V

    .line 33
    return-void

    .line 34
    .line 35
    :cond_1
    iget p1, p1, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$h;->start:I

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/b;->d(I)V

    .line 39
    return-void

    .line 40
    .line 41
    .line 42
    :cond_2
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/b;->e()V

    .line 43
    return-void

    .line 44
    .line 45
    .line 46
    :cond_3
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/b;->f()V

    .line 47
    return-void

    .line 48
    .line 49
    :cond_4
    :goto_0
    iget-object p1, p1, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$h;->token:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 50
    .line 51
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->COMMENT:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 52
    .line 53
    if-eq p1, v0, :cond_5

    .line 54
    .line 55
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/b$d;

    .line 56
    .line 57
    new-instance v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$e;

    .line 58
    .line 59
    iget-object v2, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/b;->stream:Lorg/schabi/newpipe/extractor/utils/jsextractor/d;

    .line 60
    .line 61
    iget v2, v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->lineno:I

    .line 62
    .line 63
    .line 64
    invoke-direct {v1, p1, v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$e;-><init>(Lorg/schabi/newpipe/extractor/utils/jsextractor/c;I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$d;->c(Lorg/schabi/newpipe/extractor/utils/jsextractor/b$e;)V

    .line 68
    :cond_5
    return-void
.end method
