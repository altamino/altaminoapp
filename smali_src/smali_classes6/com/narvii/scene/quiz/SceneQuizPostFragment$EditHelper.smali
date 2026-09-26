.class Lcom/narvii/scene/quiz/SceneQuizPostFragment$EditHelper;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment$EditHelper;->this$0:Lcom/narvii/scene/quiz/SceneQuizPostFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment$EditHelper;->editText:Landroid/widget/EditText;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment$EditHelper;->countDown:Landroid/widget/TextView;

    .line 10
    .line 11
    iput p4, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment$EditHelper;->maxLength:I

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/scene/quiz/SceneQuizPostFragment$EditHelper;->update()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 21
    .line 22
    new-instance p1, Lcom/narvii/widget/EditTextInnerScrollListener;

    .line 23
    .line 24
    .line 25
    invoke-direct {p1}, Lcom/narvii/widget/EditTextInnerScrollListener;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 29
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment$EditHelper;->this$0:Lcom/narvii/scene/quiz/SceneQuizPostFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->access$000(Lcom/narvii/scene/quiz/SceneQuizPostFragment;)Lcom/narvii/model/QuizQuestion;

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment$EditHelper;->this$0:Lcom/narvii/scene/quiz/SceneQuizPostFragment;

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/narvii/scene/quiz/SceneQuizPostFragment;->access$100(Lcom/narvii/scene/quiz/SceneQuizPostFragment;)V

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment$EditHelper;->this$0:Lcom/narvii/scene/quiz/SceneQuizPostFragment;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    .line 16
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/scene/quiz/SceneQuizPostFragment$EditHelper;->update()V

    .line 4
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/scene/quiz/SceneQuizPostFragment$EditHelper;->update()V

    .line 4
    return-void
.end method

.method update()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment$EditHelper;->countDown:Landroid/widget/TextView;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment$EditHelper;->editText:Landroid/widget/EditText;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    .line 8
    move-result v1

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    const/4 v1, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x4

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment$EditHelper;->countDown:Landroid/widget/TextView;

    .line 19
    .line 20
    iget v1, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment$EditHelper;->maxLength:I

    .line 21
    .line 22
    iget-object v2, p0, Lcom/narvii/scene/quiz/SceneQuizPostFragment$EditHelper;->editText:Landroid/widget/EditText;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    .line 26
    move-result v2

    .line 27
    sub-int/2addr v1, v2

    .line 28
    .line 29
    .line 30
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    return-void
.end method
