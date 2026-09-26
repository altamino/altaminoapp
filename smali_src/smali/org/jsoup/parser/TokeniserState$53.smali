.class final enum Lorg/jsoup/parser/TokeniserState$53;
.super Lorg/jsoup/parser/TokeniserState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/TokeniserState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/TokeniserState$1;)V

    .line 5
    return-void
.end method


# virtual methods
.method read(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->matchesLetter()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->consumeLetterSequence()Ljava/lang/String;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    iget-object p1, p1, Lorg/jsoup/parser/Tokeniser;->doctypePending:Lorg/jsoup/parser/Token$Doctype;

    .line 13
    .line 14
    iget-object p1, p1, Lorg/jsoup/parser/Token$Doctype;->name:Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    return-void

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->consume()C

    .line 22
    move-result p2

    .line 23
    .line 24
    if-eqz p2, :cond_4

    .line 25
    .line 26
    const/16 v0, 0x20

    .line 27
    .line 28
    if-eq p2, v0, :cond_3

    .line 29
    .line 30
    const/16 v0, 0x3e

    .line 31
    .line 32
    if-eq p2, v0, :cond_2

    .line 33
    .line 34
    .line 35
    const v0, 0xffff

    .line 36
    .line 37
    if-eq p2, v0, :cond_1

    .line 38
    .line 39
    const/16 v0, 0x9

    .line 40
    .line 41
    if-eq p2, v0, :cond_3

    .line 42
    .line 43
    const/16 v0, 0xa

    .line 44
    .line 45
    if-eq p2, v0, :cond_3

    .line 46
    .line 47
    const/16 v0, 0xc

    .line 48
    .line 49
    if-eq p2, v0, :cond_3

    .line 50
    .line 51
    const/16 v0, 0xd

    .line 52
    .line 53
    if-eq p2, v0, :cond_3

    .line 54
    .line 55
    iget-object p1, p1, Lorg/jsoup/parser/Tokeniser;->doctypePending:Lorg/jsoup/parser/Token$Doctype;

    .line 56
    .line 57
    iget-object p1, p1, Lorg/jsoup/parser/Token$Doctype;->name:Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    goto :goto_0

    .line 62
    .line 63
    .line 64
    :cond_1
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->eofError(Lorg/jsoup/parser/TokeniserState;)V

    .line 65
    .line 66
    iget-object p2, p1, Lorg/jsoup/parser/Tokeniser;->doctypePending:Lorg/jsoup/parser/Token$Doctype;

    .line 67
    const/4 v0, 0x1

    .line 68
    .line 69
    iput-boolean v0, p2, Lorg/jsoup/parser/Token$Doctype;->forceQuirks:Z

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->emitDoctypePending()V

    .line 73
    .line 74
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 78
    goto :goto_0

    .line 79
    .line 80
    .line 81
    :cond_2
    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->emitDoctypePending()V

    .line 82
    .line 83
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 87
    goto :goto_0

    .line 88
    .line 89
    :cond_3
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->AfterDoctypeName:Lorg/jsoup/parser/TokeniserState;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 93
    goto :goto_0

    .line 94
    .line 95
    .line 96
    :cond_4
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->error(Lorg/jsoup/parser/TokeniserState;)V

    .line 97
    .line 98
    iget-object p1, p1, Lorg/jsoup/parser/Tokeniser;->doctypePending:Lorg/jsoup/parser/Token$Doctype;

    .line 99
    .line 100
    iget-object p1, p1, Lorg/jsoup/parser/Token$Doctype;->name:Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const p2, 0xfffd

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 107
    :goto_0
    return-void
.end method
