.class final enum Lorg/jsoup/parser/TokeniserState$44;
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
    const-string v0, "--"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/CharacterReader;->matchConsume(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->createCommentPending()V

    .line 12
    .line 13
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->CommentStart:Lorg/jsoup/parser/TokeniserState;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    const-string v0, "DOCTYPE"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/CharacterReader;->matchConsumeIgnoreCase(Ljava/lang/String;)Z

    .line 23
    move-result v0

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->Doctype:Lorg/jsoup/parser/TokeniserState;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_1
    const-string v0, "[CDATA["

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/CharacterReader;->matchConsume(Ljava/lang/String;)Z

    .line 37
    move-result p2

    .line 38
    .line 39
    if-eqz p2, :cond_2

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->createTempBuffer()V

    .line 43
    .line 44
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->CdataSection:Lorg/jsoup/parser/TokeniserState;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 48
    goto :goto_0

    .line 49
    .line 50
    .line 51
    :cond_2
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->error(Lorg/jsoup/parser/TokeniserState;)V

    .line 52
    .line 53
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->BogusComment:Lorg/jsoup/parser/TokeniserState;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->advanceTransition(Lorg/jsoup/parser/TokeniserState;)V

    .line 57
    :goto_0
    return-void
.end method
