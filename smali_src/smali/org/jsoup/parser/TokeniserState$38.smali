.class final enum Lorg/jsoup/parser/TokeniserState$38;
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
    sget-object v0, Lorg/jsoup/parser/TokeniserState;->attributeDoubleValueCharsSorted:[C

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/CharacterReader;->consumeToAny([C)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 10
    move-result v1

    .line 11
    .line 12
    if-lez v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/Token$Tag;->appendAttributeValue(Ljava/lang/String;)V

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    iget-object v0, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Tag;->setEmptyAttributeValue()V

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->consume()C

    .line 27
    move-result p2

    .line 28
    .line 29
    if-eqz p2, :cond_5

    .line 30
    .line 31
    const/16 v0, 0x22

    .line 32
    .line 33
    if-eq p2, v0, :cond_4

    .line 34
    .line 35
    const/16 v1, 0x26

    .line 36
    .line 37
    if-eq p2, v1, :cond_2

    .line 38
    .line 39
    .line 40
    const v0, 0xffff

    .line 41
    .line 42
    if-eq p2, v0, :cond_1

    .line 43
    .line 44
    iget-object p1, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Token$Tag;->appendAttributeValue(C)V

    .line 48
    goto :goto_1

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->eofError(Lorg/jsoup/parser/TokeniserState;)V

    .line 52
    .line 53
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 57
    goto :goto_1

    .line 58
    .line 59
    .line 60
    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 61
    move-result-object p2

    .line 62
    const/4 v0, 0x1

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, p2, v0}, Lorg/jsoup/parser/Tokeniser;->consumeCharacterReference(Ljava/lang/Character;Z)[I

    .line 66
    move-result-object p2

    .line 67
    .line 68
    if-eqz p2, :cond_3

    .line 69
    .line 70
    iget-object p1, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Token$Tag;->appendAttributeValue([I)V

    .line 74
    goto :goto_1

    .line 75
    .line 76
    :cond_3
    iget-object p1, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v1}, Lorg/jsoup/parser/Token$Tag;->appendAttributeValue(C)V

    .line 80
    goto :goto_1

    .line 81
    .line 82
    :cond_4
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->AfterAttributeValue_quoted:Lorg/jsoup/parser/TokeniserState;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 86
    goto :goto_1

    .line 87
    .line 88
    .line 89
    :cond_5
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->error(Lorg/jsoup/parser/TokeniserState;)V

    .line 90
    .line 91
    iget-object p1, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    .line 92
    .line 93
    .line 94
    const p2, 0xfffd

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Token$Tag;->appendAttributeValue(C)V

    .line 98
    :goto_1
    return-void
.end method
