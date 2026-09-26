.class final enum Lorg/jsoup/parser/TokeniserState$1;
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
    .line 21
    .line 22
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->consumeData()Ljava/lang/String;

    .line 23
    move-result-object p2

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->emit(Ljava/lang/String;)V

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_0
    new-instance p2, Lorg/jsoup/parser/Token$EOF;

    .line 30
    .line 31
    .line 32
    invoke-direct {p2}, Lorg/jsoup/parser/Token$EOF;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->emit(Lorg/jsoup/parser/Token;)V

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_1
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->TagOpen:Lorg/jsoup/parser/TokeniserState;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->advanceTransition(Lorg/jsoup/parser/TokeniserState;)V

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_2
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->CharacterReferenceInData:Lorg/jsoup/parser/TokeniserState;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->advanceTransition(Lorg/jsoup/parser/TokeniserState;)V

    .line 48
    goto :goto_0

    .line 49
    .line 50
    .line 51
    :cond_3
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->error(Lorg/jsoup/parser/TokeniserState;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->consume()C

    .line 55
    move-result p2

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->emit(C)V

    .line 59
    :goto_0
    return-void
.end method
