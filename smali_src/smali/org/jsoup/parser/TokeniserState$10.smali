.class final enum Lorg/jsoup/parser/TokeniserState$10;
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
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->consumeTagName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/Token$Tag;->appendTagName(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->consume()C

    .line 13
    move-result p2

    .line 14
    .line 15
    if-eqz p2, :cond_4

    .line 16
    .line 17
    const/16 v0, 0x20

    .line 18
    .line 19
    if-eq p2, v0, :cond_3

    .line 20
    .line 21
    const/16 v0, 0x2f

    .line 22
    .line 23
    if-eq p2, v0, :cond_2

    .line 24
    .line 25
    const/16 v0, 0x3e

    .line 26
    .line 27
    if-eq p2, v0, :cond_1

    .line 28
    .line 29
    .line 30
    const v0, 0xffff

    .line 31
    .line 32
    if-eq p2, v0, :cond_0

    .line 33
    .line 34
    const/16 v0, 0x9

    .line 35
    .line 36
    if-eq p2, v0, :cond_3

    .line 37
    .line 38
    const/16 v0, 0xa

    .line 39
    .line 40
    if-eq p2, v0, :cond_3

    .line 41
    .line 42
    const/16 v0, 0xc

    .line 43
    .line 44
    if-eq p2, v0, :cond_3

    .line 45
    .line 46
    const/16 v0, 0xd

    .line 47
    .line 48
    if-eq p2, v0, :cond_3

    .line 49
    .line 50
    iget-object p1, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Token$Tag;->appendTagName(C)V

    .line 54
    goto :goto_0

    .line 55
    .line 56
    .line 57
    :cond_0
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->eofError(Lorg/jsoup/parser/TokeniserState;)V

    .line 58
    .line 59
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 63
    goto :goto_0

    .line 64
    .line 65
    .line 66
    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->emitTagPending()V

    .line 67
    .line 68
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 72
    goto :goto_0

    .line 73
    .line 74
    :cond_2
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->SelfClosingStartTag:Lorg/jsoup/parser/TokeniserState;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 78
    goto :goto_0

    .line 79
    .line 80
    :cond_3
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->BeforeAttributeName:Lorg/jsoup/parser/TokeniserState;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 84
    goto :goto_0

    .line 85
    .line 86
    :cond_4
    iget-object p1, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    .line 87
    .line 88
    .line 89
    invoke-static {}, Lorg/jsoup/parser/TokeniserState;->access$300()Ljava/lang/String;

    .line 90
    move-result-object p2

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Token$Tag;->appendTagName(Ljava/lang/String;)V

    .line 94
    :goto_0
    return-void
.end method
