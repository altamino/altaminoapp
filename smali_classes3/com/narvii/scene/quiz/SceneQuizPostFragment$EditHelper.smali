.class Lcom/narvii/scene/quiz/SceneQuizPostFragment$EditHelper;
.super Ljava/lang/Object;
.source "SceneQuizPostFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/scene/quiz/SceneQuizPostFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EditHelper"
.end annotation


# instance fields
.field countDown:Landroid/widget/TextView;

.field editText:Landroid/widget/EditText;

.field maxLength:I

.field final synthetic this$0:Lcom/narvii/scene/quiz/SceneQuizPostFragment;


# direct methods
.method constructor <init>(Lcom/narvii/scene/quiz/SceneQuizPostFragment;Landroid/widget/EditText;Landroid/widget/TextView;I)V
    .locals 0

    .line 470
    iput-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment$EditHelper;->this$0:Lcom/narvii/scene/quiz/SceneQuizPostFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 471
    iput-object p2, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment$EditHelper;->editText:Landroid/widget/EditText;

    .line 472
    iput-object p3, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment$EditHelper;->countDown:Landroid/widget/TextView;

    .line 473
    iput p4, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment$EditHelper;->maxLength:I

    .line 474
    invoke-virtual {p0}, Lcom/narvii/scene/quiz/SceneQuizPostFragment$EditHelper;->update()V

    .line 475
    invoke-virtual {p2, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 476
    invoke-virtual {p2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 477
    new-instance p1, Lcom/narvii/widget/EditTextInnerScrollListener;

    invoke-direct {p1}, Lcom/narvii/widget/EditTextInnerScrollListener;-><init>()V

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 496
    iget-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment$EditHelper;->this$0:Lcom/narvii/scene/quiz/SceneQuizPostFragment;

    invoke-static {p1}, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->access$000(Lcom/narvii/scene/quiz/SceneQuizPostFragment;)Lcom/narvii/model/QuizQuestion;

    .line 497
    iget-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment$EditHelper;->this$0:Lcom/narvii/scene/quiz/SceneQuizPostFragment;

    invoke-static {p1}, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->access$100(Lcom/narvii/scene/quiz/SceneQuizPostFragment;)V

    .line 498
    iget-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment$EditHelper;->this$0:Lcom/narvii/scene/quiz/SceneQuizPostFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    .line 503
    invoke-virtual {p0}, Lcom/narvii/scene/quiz/SceneQuizPostFragment$EditHelper;->update()V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 491
    invoke-virtual {p0}, Lcom/narvii/scene/quiz/SceneQuizPostFragment$EditHelper;->update()V

    return-void
.end method

.method update()V
    .locals 3

    .line 481
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment$EditHelper;->countDown:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment$EditHelper;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 482
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment$EditHelper;->countDown:Landroid/widget/TextView;

    iget v1, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment$EditHelper;->maxLength:I

    iget-object v2, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment$EditHelper;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
