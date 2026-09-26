.class final enum Lorg/jsoup/parser/TokeniserState$3;
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
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->current()C

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    const/16 v1, 0x26

    .line 9
    .line 10
    if-eq v0, v1, :cond_2

    .line 11
    .line 12
    const/16 v1, 0x3c

    .line 13
    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    .line 16
    .line 17
    const v1, 0xffff

    .line 18
    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    const/4 v0, 0x3

    .line 21
    .line 22
    new-array v0, v0, [C

    .line 23
    .line 24
    .line 25
    fill-array-data v0, :array_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/CharacterReader;->consumeToAny([C)Ljava/lang/String;

    .line 29
    move-result-object p2

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->emit(Ljava/lang/String;)V

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_0
    new-instance p2, Lorg/jsoup/parser/Token$EOF;

    .line 36
    .line 37
    .line 38
    invoke-direct {p2}, Lorg/jsoup/parser/Token$EOF;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->emit(Lorg/jsoup/parser/Token;)V

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_1
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->RcdataLessthanSign:Lorg/jsoup/parser/TokeniserState;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->advanceTransition(Lorg/jsoup/parser/TokeniserState;)V

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :cond_2
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->CharacterReferenceInRcdata:Lorg/jsoup/parser/TokeniserState;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->advanceTransition(Lorg/jsoup/parser/TokeniserState;)V

    .line 54
    goto :goto_0

    .line 55
    .line 56
    .line 57
    :cond_3
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->error(Lorg/jsoup/parser/TokeniserState;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->advance()V

    .line 61
    .line 62
    .line 63
    const p2, 0xfffd

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->emit(C)V

    .line 67
    :goto_0
    return-void

    .line 68
    nop

    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    :array_0
    .array-data 2
        0x26s
        0x3cs
        0x0s
    .end array-data
.end method
