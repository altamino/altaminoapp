.class Lcom/narvii/blog/post/QuizQuestionEditor$EditHelper;
.super Ljava/lang/Object;
.source "QuizQuestionEditor.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/blog/post/QuizQuestionEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EditHelper"
.end annotation


# instance fields
.field countDown:Landroid/widget/TextView;

.field editText:Landroid/widget/EditText;

.field maxLength:I

.field final synthetic this$0:Lcom/narvii/blog/post/QuizQuestionEditor;


# direct methods
.method constructor <init>(Lcom/narvii/blog/post/QuizQuestionEditor;Landroid/widget/EditText;Landroid/widget/TextView;I)V
    .locals 0

    .line 434
    iput-object p1, p0, Lcom/narvii/blog/post/QuizQuestionEditor$EditHelper;->this$0:Lcom/narvii/blog/post/QuizQuestionEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 435
    iput-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor$EditHelper;->editText:Landroid/widget/EditText;

    .line 436
    iput-object p3, p0, Lcom/narvii/blog/post/QuizQuestionEditor$EditHelper;->countDown:Landroid/widget/TextView;

    .line 437
    iput p4, p0, Lcom/narvii/blog/post/QuizQuestionEditor$EditHelper;->maxLength:I

    .line 438
    invoke-virtual {p0}, Lcom/narvii/blog/post/QuizQuestionEditor$EditHelper;->update()V

    .line 439
    invoke-virtual {p2, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 440
    invoke-virtual {p2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 459
    iget-object p1, p0, Lcom/narvii/blog/post/QuizQuestionEditor$EditHelper;->this$0:Lcom/narvii/blog/post/QuizQuestionEditor;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .line 464
    invoke-virtual {p0}, Lcom/narvii/blog/post/QuizQuestionEditor$EditHelper;->update()V

    .line 465
    iget-object p1, p0, Lcom/narvii/blog/post/QuizQuestionEditor$EditHelper;->editText:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/narvii/blog/post/QuizQuestionEditor$EditHelper;->this$0:Lcom/narvii/blog/post/QuizQuestionEditor;

    iget-object v1, v0, Lcom/narvii/blog/post/QuizQuestionEditor;->answer1:Landroid/widget/EditText;

    if-ne p1, v1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 467
    iget-object p2, v0, Lcom/narvii/blog/post/QuizQuestionEditor;->scroll:Landroid/widget/ScrollView;

    invoke-virtual {p2, p1}, Landroid/widget/ScrollView;->getLocationInWindow([I)V

    const/4 p2, 0x1

    .line 468
    aget v0, p1, p2

    .line 469
    iget-object v1, p0, Lcom/narvii/blog/post/QuizQuestionEditor$EditHelper;->editText:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->getLocationInWindow([I)V

    .line 470
    aget p1, p1, p2

    sub-int/2addr p1, v0

    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor$EditHelper;->this$0:Lcom/narvii/blog/post/QuizQuestionEditor;

    invoke-virtual {p2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {p2, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p2

    float-to-int p2, p2

    sub-int/2addr p1, p2

    if-lez p1, :cond_0

    .line 472
    iget-object p2, p0, Lcom/narvii/blog/post/QuizQuestionEditor$EditHelper;->this$0:Lcom/narvii/blog/post/QuizQuestionEditor;

    iget-object p2, p2, Lcom/narvii/blog/post/QuizQuestionEditor;->scroll:Landroid/widget/ScrollView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 454
    invoke-virtual {p0}, Lcom/narvii/blog/post/QuizQuestionEditor$EditHelper;->update()V

    return-void
.end method

.method update()V
    .locals 3

    .line 444
    iget-object v0, p0, Lcom/narvii/blog/post/QuizQuestionEditor$EditHelper;->countDown:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/narvii/blog/post/QuizQuestionEditor$EditHelper;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 445
    iget-object v0, p0, Lcom/narvii/blog/post/QuizQuestionEditor$EditHelper;->countDown:Landroid/widget/TextView;

    iget v1, p0, Lcom/narvii/blog/post/QuizQuestionEditor$EditHelper;->maxLength:I

    iget-object v2, p0, Lcom/narvii/blog/post/QuizQuestionEditor$EditHelper;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
