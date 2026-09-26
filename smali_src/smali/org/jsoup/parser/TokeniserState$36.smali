.class final enum Lorg/jsoup/parser/TokeniserState$36;
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
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    const/16 v1, 0x20

    .line 9
    .line 10
    if-eq v0, v1, :cond_4

    .line 11
    .line 12
    const/16 v1, 0x22

    .line 13
    .line 14
    if-eq v0, v1, :cond_2

    .line 15
    .line 16
    const/16 v1, 0x27

    .line 17
    .line 18
    if-eq v0, v1, :cond_2

    .line 19
    .line 20
    const/16 v1, 0x2f

    .line 21
    .line 22
    if-eq v0, v1, :cond_1

    .line 23
    .line 24
    .line 25
    const v1, 0xffff

    .line 26
    .line 27
    if-eq v0, v1, :cond_0

    .line 28
    .line 29
    const/16 v1, 0x9

    .line 30
    .line 31
    if-eq v0, v1, :cond_4

    .line 32
    .line 33
    const/16 v1, 0xa

    .line 34
    .line 35
    if-eq v0, v1, :cond_4

    .line 36
    .line 37
    const/16 v1, 0xc

    .line 38
    .line 39
    if-eq v0, v1, :cond_4

    .line 40
    .line 41
    const/16 v1, 0xd

    .line 42
    .line 43
    if-eq v0, v1, :cond_4

    .line 44
    .line 45
    .line 46
    packed-switch v0, :pswitch_data_0

    .line 47
    .line 48
    iget-object v0, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Tag;->newAttribute()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->unconsume()V

    .line 55
    .line 56
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->AttributeName:Lorg/jsoup/parser/TokeniserState;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 60
    goto :goto_0

    .line 61
    .line 62
    .line 63
    :pswitch_0
    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->emitTagPending()V

    .line 64
    .line 65
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 69
    goto :goto_0

    .line 70
    .line 71
    :pswitch_1
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->BeforeAttributeValue:Lorg/jsoup/parser/TokeniserState;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 75
    goto :goto_0

    .line 76
    .line 77
    .line 78
    :cond_0
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->eofError(Lorg/jsoup/parser/TokeniserState;)V

    .line 79
    .line 80
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 84
    goto :goto_0

    .line 85
    .line 86
    :cond_1
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->SelfClosingStartTag:Lorg/jsoup/parser/TokeniserState;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 90
    goto :goto_0

    .line 91
    .line 92
    .line 93
    :cond_2
    :pswitch_2
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->error(Lorg/jsoup/parser/TokeniserState;)V

    .line 94
    .line 95
    iget-object p2, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2}, Lorg/jsoup/parser/Token$Tag;->newAttribute()V

    .line 99
    .line 100
    iget-object p2, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/Token$Tag;->appendAttributeName(C)V

    .line 104
    .line 105
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->AttributeName:Lorg/jsoup/parser/TokeniserState;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 109
    goto :goto_0

    .line 110
    .line 111
    .line 112
    :cond_3
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->error(Lorg/jsoup/parser/TokeniserState;)V

    .line 113
    .line 114
    iget-object p2, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    .line 115
    .line 116
    .line 117
    const v0, 0xfffd

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/Token$Tag;->appendAttributeName(C)V

    .line 121
    .line 122
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->AttributeName:Lorg/jsoup/parser/TokeniserState;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 126
    :cond_4
    :goto_0
    return-void

    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
