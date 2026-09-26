.class final enum Lorg/jsoup/parser/TokeniserState$55;
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
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->consume()C

    .line 4
    move-result p2

    .line 5
    .line 6
    const/16 v0, 0x9

    .line 7
    .line 8
    if-eq p2, v0, :cond_4

    .line 9
    .line 10
    const/16 v0, 0xa

    .line 11
    .line 12
    if-eq p2, v0, :cond_4

    .line 13
    .line 14
    const/16 v0, 0xc

    .line 15
    .line 16
    if-eq p2, v0, :cond_4

    .line 17
    .line 18
    const/16 v0, 0xd

    .line 19
    .line 20
    if-eq p2, v0, :cond_4

    .line 21
    .line 22
    const/16 v0, 0x20

    .line 23
    .line 24
    if-eq p2, v0, :cond_4

    .line 25
    .line 26
    const/16 v0, 0x22

    .line 27
    .line 28
    if-eq p2, v0, :cond_3

    .line 29
    .line 30
    const/16 v0, 0x27

    .line 31
    .line 32
    if-eq p2, v0, :cond_2

    .line 33
    .line 34
    const/16 v0, 0x3e

    .line 35
    const/4 v1, 0x1

    .line 36
    .line 37
    if-eq p2, v0, :cond_1

    .line 38
    .line 39
    .line 40
    const v0, 0xffff

    .line 41
    .line 42
    if-eq p2, v0, :cond_0

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->error(Lorg/jsoup/parser/TokeniserState;)V

    .line 46
    .line 47
    iget-object p2, p1, Lorg/jsoup/parser/Tokeniser;->doctypePending:Lorg/jsoup/parser/Token$Doctype;

    .line 48
    .line 49
    iput-boolean v1, p2, Lorg/jsoup/parser/Token$Doctype;->forceQuirks:Z

    .line 50
    .line 51
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->BogusDoctype:Lorg/jsoup/parser/TokeniserState;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 55
    goto :goto_0

    .line 56
    .line 57
    .line 58
    :cond_0
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->eofError(Lorg/jsoup/parser/TokeniserState;)V

    .line 59
    .line 60
    iget-object p2, p1, Lorg/jsoup/parser/Tokeniser;->doctypePending:Lorg/jsoup/parser/Token$Doctype;

    .line 61
    .line 62
    iput-boolean v1, p2, Lorg/jsoup/parser/Token$Doctype;->forceQuirks:Z

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->emitDoctypePending()V

    .line 66
    .line 67
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 71
    goto :goto_0

    .line 72
    .line 73
    .line 74
    :cond_1
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->error(Lorg/jsoup/parser/TokeniserState;)V

    .line 75
    .line 76
    iget-object p2, p1, Lorg/jsoup/parser/Tokeniser;->doctypePending:Lorg/jsoup/parser/Token$Doctype;

    .line 77
    .line 78
    iput-boolean v1, p2, Lorg/jsoup/parser/Token$Doctype;->forceQuirks:Z

    .line 79
    .line 80
    .line 81
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
    .line 90
    :cond_2
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->error(Lorg/jsoup/parser/TokeniserState;)V

    .line 91
    .line 92
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->DoctypePublicIdentifier_singleQuoted:Lorg/jsoup/parser/TokeniserState;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 96
    goto :goto_0

    .line 97
    .line 98
    .line 99
    :cond_3
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->error(Lorg/jsoup/parser/TokeniserState;)V

    .line 100
    .line 101
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->DoctypePublicIdentifier_doubleQuoted:Lorg/jsoup/parser/TokeniserState;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 105
    goto :goto_0

    .line 106
    .line 107
    :cond_4
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->BeforeDoctypePublicIdentifier:Lorg/jsoup/parser/TokeniserState;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 111
    :goto_0
    return-void
.end method
