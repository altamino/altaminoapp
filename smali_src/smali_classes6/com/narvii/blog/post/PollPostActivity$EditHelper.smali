.class Lcom/narvii/blog/post/PollPostActivity$EditHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/blog/post/PollPostActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EditHelper"
.end annotation


# instance fields
.field countDown:Landroid/widget/TextView;

.field editText:Landroid/widget/EditText;

.field final synthetic this$0:Lcom/narvii/blog/post/PollPostActivity;


# direct methods
.method constructor <init>(Lcom/narvii/blog/post/PollPostActivity;Landroid/widget/EditText;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/blog/post/PollPostActivity$EditHelper;->this$0:Lcom/narvii/blog/post/PollPostActivity;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/blog/post/PollPostActivity$EditHelper;->editText:Landroid/widget/EditText;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/blog/post/PollPostActivity$EditHelper;->countDown:Landroid/widget/TextView;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/blog/post/PollPostActivity$EditHelper;->update()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 19
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

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
    invoke-virtual {p0}, Lcom/narvii/blog/post/PollPostActivity$EditHelper;->update()V

    .line 4
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/blog/post/PollPostActivity$EditHelper;->update()V

    .line 4
    return-void
.end method

.method update()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/blog/post/PollPostActivity$EditHelper;->countDown:Landroid/widget/TextView;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/blog/post/PollPostActivity$EditHelper;->editText:Landroid/widget/EditText;

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
    iget-object v0, p0, Lcom/narvii/blog/post/PollPostActivity$EditHelper;->countDown:Landroid/widget/TextView;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/narvii/blog/post/PollPostActivity$EditHelper;->editText:Landroid/widget/EditText;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    .line 24
    move-result v1

    .line 25
    .line 26
    rsub-int/lit8 v1, v1, 0x1e

    .line 27
    .line 28
    .line 29
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    return-void
.end method
