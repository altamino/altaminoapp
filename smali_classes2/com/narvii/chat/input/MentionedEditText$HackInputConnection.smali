.class Lcom/narvii/chat/input/MentionedEditText$HackInputConnection;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "MentionedEditText.java"


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

    .line 328
    iput-object p1, p0, Lcom/narvii/chat/input/MentionedEditText$HackInputConnection;->this$0:Lcom/narvii/chat/input/MentionedEditText;

    .line 329
    invoke-direct {p0, p2, p3}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    const/4 p1, 0x0

    .line 326
    iput-boolean p1, p0, Lcom/narvii/chat/input/MentionedEditText$HackInputConnection;->keyEventFromDeleteSurroundingText:Z

    .line 330
    iput-object p4, p0, Lcom/narvii/chat/input/MentionedEditText$HackInputConnection;->editText:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public deleteSurroundingText(II)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    if-nez p2, :cond_2

    .line 366
    iget-object v1, p0, Lcom/narvii/chat/input/MentionedEditText$HackInputConnection;->this$0:Lcom/narvii/chat/input/MentionedEditText;

    invoke-static {v1}, Lcom/narvii/chat/input/MentionedEditText;->access$100(Lcom/narvii/chat/input/MentionedEditText;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 367
    iput-boolean v0, p0, Lcom/narvii/chat/input/MentionedEditText$HackInputConnection;->keyEventFromDeleteSurroundingText:Z

    .line 368
    new-instance v1, Landroid/view/KeyEvent;

    const/16 v2, 0x43

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/narvii/chat/input/MentionedEditText$HackInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 369
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->deleteSurroundingText(II)Z

    move-result p1

    return p1

    .line 371
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/input/MentionedEditText$HackInputConnection;->this$0:Lcom/narvii/chat/input/MentionedEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 373
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->deleteSurroundingText(II)Z

    move-result p1

    return p1
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 335
    iget-object v0, p0, Lcom/narvii/chat/input/MentionedEditText$HackInputConnection;->this$0:Lcom/narvii/chat/input/MentionedEditText;

    invoke-static {v0}, Lcom/narvii/chat/input/MentionedEditText;->access$100(Lcom/narvii/chat/input/MentionedEditText;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x43

    if-ne v0, v1, :cond_3

    .line 336
    iget-object v0, p0, Lcom/narvii/chat/input/MentionedEditText$HackInputConnection;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 337
    iget-object v1, p0, Lcom/narvii/chat/input/MentionedEditText$HackInputConnection;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    .line 338
    iget-object v2, p0, Lcom/narvii/chat/input/MentionedEditText$HackInputConnection;->this$0:Lcom/narvii/chat/input/MentionedEditText;

    invoke-static {v2, v0, v1}, Lcom/narvii/chat/input/MentionedEditText;->access$900(Lcom/narvii/chat/input/MentionedEditText;II)Lcom/narvii/chat/input/MentionedEditText$Range;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 340
    iget-object v0, p0, Lcom/narvii/chat/input/MentionedEditText$HackInputConnection;->this$0:Lcom/narvii/chat/input/MentionedEditText;

    invoke-static {v0, v2}, Lcom/narvii/chat/input/MentionedEditText;->access$1002(Lcom/narvii/chat/input/MentionedEditText;Z)Z

    .line 341
    iget-boolean v0, p0, Lcom/narvii/chat/input/MentionedEditText$HackInputConnection;->keyEventFromDeleteSurroundingText:Z

    if-nez v0, :cond_0

    .line 342
    invoke-super {p0, p1}, Landroid/view/inputmethod/InputConnectionWrapper;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 344
    :cond_0
    iput-boolean v2, p0, Lcom/narvii/chat/input/MentionedEditText$HackInputConnection;->keyEventFromDeleteSurroundingText:Z

    return v2

    .line 348
    :cond_1
    iget v3, v1, Lcom/narvii/chat/input/MentionedEditText$Range;->from:I

    const/4 v4, 0x1

    if-ne v0, v3, :cond_2

    .line 349
    iget-object v0, p0, Lcom/narvii/chat/input/MentionedEditText$HackInputConnection;->this$0:Lcom/narvii/chat/input/MentionedEditText;

    invoke-static {v0, v2}, Lcom/narvii/chat/input/MentionedEditText;->access$1002(Lcom/narvii/chat/input/MentionedEditText;Z)Z

    goto :goto_0

    .line 352
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/input/MentionedEditText$HackInputConnection;->this$0:Lcom/narvii/chat/input/MentionedEditText;

    invoke-static {v0, v4}, Lcom/narvii/chat/input/MentionedEditText;->access$1002(Lcom/narvii/chat/input/MentionedEditText;Z)Z

    .line 353
    iget-object v0, p0, Lcom/narvii/chat/input/MentionedEditText$HackInputConnection;->this$0:Lcom/narvii/chat/input/MentionedEditText;

    invoke-static {v0, v1}, Lcom/narvii/chat/input/MentionedEditText;->access$1102(Lcom/narvii/chat/input/MentionedEditText;Lcom/narvii/chat/input/MentionedEditText$Range;)Lcom/narvii/chat/input/MentionedEditText$Range;

    .line 354
    iget v0, v1, Lcom/narvii/chat/input/MentionedEditText$Range;->to:I

    iget v1, v1, Lcom/narvii/chat/input/MentionedEditText$Range;->from:I

    invoke-virtual {p0, v0, v1}, Landroid/view/inputmethod/InputConnectionWrapper;->setSelection(II)Z

    .line 356
    :goto_0
    iput-boolean v2, p0, Lcom/narvii/chat/input/MentionedEditText$HackInputConnection;->keyEventFromDeleteSurroundingText:Z

    .line 357
    invoke-super {p0, p1}, Landroid/view/inputmethod/InputConnectionWrapper;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    return v4

    .line 361
    :cond_3
    invoke-super {p0, p1}, Landroid/view/inputmethod/InputConnectionWrapper;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
