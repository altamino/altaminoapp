.class public final Landroidx/compose/ui/text/input/InputState_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroidx/compose/ui/text/input/TextFieldValue;)Landroid/view/inputmethod/ExtractedText;
    .locals 5
    .param p0    # Landroidx/compose/ui/text/input/TextFieldValue;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Landroid/view/inputmethod/ExtractedText;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/compose/ui/text/input/TextFieldValue;->h()Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    iput-object v1, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 17
    const/4 v1, 0x0

    .line 18
    .line 19
    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/compose/ui/text/input/TextFieldValue;->h()Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 27
    move-result v2

    .line 28
    .line 29
    iput v2, v0, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 30
    const/4 v2, -0x1

    .line 31
    .line 32
    iput v2, v0, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/compose/ui/text/input/TextFieldValue;->g()J

    .line 36
    move-result-wide v2

    .line 37
    .line 38
    .line 39
    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->l(J)I

    .line 40
    move-result v2

    .line 41
    .line 42
    iput v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/compose/ui/text/input/TextFieldValue;->g()J

    .line 46
    move-result-wide v2

    .line 47
    .line 48
    .line 49
    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->k(J)I

    .line 50
    move-result v2

    .line 51
    .line 52
    iput v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Landroidx/compose/ui/text/input/TextFieldValue;->h()Ljava/lang/String;

    .line 56
    move-result-object p0

    .line 57
    const/4 v2, 0x2

    .line 58
    const/4 v3, 0x0

    .line 59
    .line 60
    const/16 v4, 0xa

    .line 61
    .line 62
    .line 63
    invoke-static {p0, v4, v1, v2, v3}, Lkotlin/text/k;->O(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    .line 64
    move-result p0

    .line 65
    .line 66
    xor-int/lit8 p0, p0, 0x1

    .line 67
    .line 68
    iput p0, v0, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 69
    return-object v0
.end method
