.class Lcom/narvii/chat/input/MentionedEditText$HackInputConnection;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/input/MentionedEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HackInputConnection"
.end annotation


# instance fields
.field private editText:Landroid/widget/EditText;

.field private keyEventFromDeleteSurroundingText:Z

.field final synthetic this$0:Lcom/narvii/chat/input/MentionedEditText;


# direct methods
.method constructor <init>(Lcom/narvii/chat/input/MentionedEditText;Landroid/view/inputmethod/InputConnection;ZLcom/narvii/chat/input/MentionedEditText;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/input/MentionedEditText$HackInputConnection;->this$0:Lcom/narvii/chat/input/MentionedEditText;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2, p3}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    .line 6
    const/4 p1, 0x0

    .line 7
    .line 8
    iput-boolean p1, p0, Lcom/narvii/chat/input/MentionedEditText$HackInputConnection;->keyEventFromDeleteSurroundingText:Z

    .line 9
    .line 10
    iput-object p4, p0, Lcom/narvii/chat/input/MentionedEditText$HackInputConnection;->editText:Landroid/widget/EditText;

    .line 11
    return-void
.end method


# virtual methods
.method public deleteSurroundingText(II)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p1, v0, :cond_2

    .line 4
    .line 5
    if-nez p2, :cond_2

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/chat/input/MentionedEditText$HackInputConnection;->this$0:Lcom/narvii/chat/input/MentionedEditText;

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Lcom/narvii/chat/input/MentionedEditText;->f(Lcom/narvii/chat/input/MentionedEditText;)Z

    .line 11
    move-result v1

    .line 12
    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/narvii/chat/input/MentionedEditText$HackInputConnection;->keyEventFromDeleteSurroundingText:Z

    .line 16
    .line 17
    new-instance v1, Landroid/view/KeyEvent;

    .line 18
    .line 19
    const/16 v2, 0x43

    .line 20
    const/4 v3, 0x0

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, v3, v2}, Landroid/view/KeyEvent;-><init>(II)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v1}, Lcom/narvii/chat/input/MentionedEditText$HackInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 27
    move-result v1

    .line 28
    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    .line 32
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->deleteSurroundingText(II)Z

    .line 33
    move-result p1

    .line 34
    return p1

    .line 35
    .line 36
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/input/MentionedEditText$HackInputConnection;->this$0:Lcom/narvii/chat/input/MentionedEditText;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    if-eqz p1, :cond_1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    move v0, v3

    .line 45
    :goto_0
    return v0

    .line 46
    .line 47
    .line 48
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->deleteSurroundingText(II)Z

    .line 49
    move-result p1

    .line 50
    return p1
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/MentionedEditText$HackInputConnection;->this$0:Lcom/narvii/chat/input/MentionedEditText;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/input/MentionedEditText;->f(Lcom/narvii/chat/input/MentionedEditText;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_3

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 18
    move-result v0

    .line 19
    .line 20
    const/16 v1, 0x43

    .line 21
    .line 22
    if-ne v0, v1, :cond_3

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/chat/input/MentionedEditText$HackInputConnection;->editText:Landroid/widget/EditText;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    .line 28
    move-result v0

    .line 29
    .line 30
    iget-object v1, p0, Lcom/narvii/chat/input/MentionedEditText$HackInputConnection;->editText:Landroid/widget/EditText;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 34
    move-result v1

    .line 35
    .line 36
    iget-object v2, p0, Lcom/narvii/chat/input/MentionedEditText$HackInputConnection;->this$0:Lcom/narvii/chat/input/MentionedEditText;

    .line 37
    .line 38
    .line 39
    invoke-static {v2, v0, v1}, Lcom/narvii/chat/input/MentionedEditText;->k(Lcom/narvii/chat/input/MentionedEditText;II)Lcom/narvii/chat/input/MentionedEditText$Range;

    .line 40
    move-result-object v1

    .line 41
    const/4 v2, 0x0

    .line 42
    .line 43
    if-nez v1, :cond_1

    .line 44
    .line 45
    iget-object v0, p0, Lcom/narvii/chat/input/MentionedEditText$HackInputConnection;->this$0:Lcom/narvii/chat/input/MentionedEditText;

    .line 46
    .line 47
    .line 48
    invoke-static {v0, v2}, Lcom/narvii/chat/input/MentionedEditText;->g(Lcom/narvii/chat/input/MentionedEditText;Z)V

    .line 49
    .line 50
    iget-boolean v0, p0, Lcom/narvii/chat/input/MentionedEditText$HackInputConnection;->keyEventFromDeleteSurroundingText:Z

    .line 51
    .line 52
    if-nez v0, :cond_0

    .line 53
    .line 54
    .line 55
    invoke-super {p0, p1}, Landroid/view/inputmethod/InputConnectionWrapper;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 56
    .line 57
    :cond_0
    iput-boolean v2, p0, Lcom/narvii/chat/input/MentionedEditText$HackInputConnection;->keyEventFromDeleteSurroundingText:Z

    .line 58
    return v2

    .line 59
    .line 60
    :cond_1
    iget v3, v1, Lcom/narvii/chat/input/MentionedEditText$Range;->from:I

    .line 61
    const/4 v4, 0x1

    .line 62
    .line 63
    if-ne v0, v3, :cond_2

    .line 64
    .line 65
    iget-object v0, p0, Lcom/narvii/chat/input/MentionedEditText$HackInputConnection;->this$0:Lcom/narvii/chat/input/MentionedEditText;

    .line 66
    .line 67
    .line 68
    invoke-static {v0, v2}, Lcom/narvii/chat/input/MentionedEditText;->g(Lcom/narvii/chat/input/MentionedEditText;Z)V

    .line 69
    goto :goto_0

    .line 70
    .line 71
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/input/MentionedEditText$HackInputConnection;->this$0:Lcom/narvii/chat/input/MentionedEditText;

    .line 72
    .line 73
    .line 74
    invoke-static {v0, v4}, Lcom/narvii/chat/input/MentionedEditText;->g(Lcom/narvii/chat/input/MentionedEditText;Z)V

    .line 75
    .line 76
    iget-object v0, p0, Lcom/narvii/chat/input/MentionedEditText$HackInputConnection;->this$0:Lcom/narvii/chat/input/MentionedEditText;

    .line 77
    .line 78
    .line 79
    invoke-static {v0, v1}, Lcom/narvii/chat/input/MentionedEditText;->h(Lcom/narvii/chat/input/MentionedEditText;Lcom/narvii/chat/input/MentionedEditText$Range;)V

    .line 80
    .line 81
    iget v0, v1, Lcom/narvii/chat/input/MentionedEditText$Range;->to:I

    .line 82
    .line 83
    iget v1, v1, Lcom/narvii/chat/input/MentionedEditText$Range;->from:I

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v0, v1}, Landroid/view/inputmethod/InputConnectionWrapper;->setSelection(II)Z

    .line 87
    .line 88
    :goto_0
    iput-boolean v2, p0, Lcom/narvii/chat/input/MentionedEditText$HackInputConnection;->keyEventFromDeleteSurroundingText:Z

    .line 89
    .line 90
    .line 91
    invoke-super {p0, p1}, Landroid/view/inputmethod/InputConnectionWrapper;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 92
    return v4

    .line 93
    .line 94
    .line 95
    :cond_3
    invoke-super {p0, p1}, Landroid/view/inputmethod/InputConnectionWrapper;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 96
    move-result p1

    .line 97
    return p1
.end method
