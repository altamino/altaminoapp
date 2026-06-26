.class Lcom/narvii/blog/post/PollPostActivity$EditHelper;
.super Ljava/lang/Object;
.source "PollPostActivity.java"

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

    .line 461
    iput-object p1, p0, Lcom/narvii/blog/post/PollPostActivity$EditHelper;->this$0:Lcom/narvii/blog/post/PollPostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 462
    iput-object p2, p0, Lcom/narvii/blog/post/PollPostActivity$EditHelper;->editText:Landroid/widget/EditText;

    .line 463
    iput-object p3, p0, Lcom/narvii/blog/post/PollPostActivity$EditHelper;->countDown:Landroid/widget/TextView;

    .line 464
    invoke-virtual {p0}, Lcom/narvii/blog/post/PollPostActivity$EditHelper;->update()V

    .line 465
    invoke-virtual {p2, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 466
    invoke-virtual {p2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

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

    .line 490
    invoke-virtual {p0}, Lcom/narvii/blog/post/PollPostActivity$EditHelper;->update()V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 481
    invoke-virtual {p0}, Lcom/narvii/blog/post/PollPostActivity$EditHelper;->update()V

    return-void
.end method

.method update()V
    .locals 2

    .line 470
    iget-object v0, p0, Lcom/narvii/blog/post/PollPostActivity$EditHelper;->countDown:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/narvii/blog/post/PollPostActivity$EditHelper;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 472
    iget-object v0, p0, Lcom/narvii/blog/post/PollPostActivity$EditHelper;->countDown:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/narvii/blog/post/PollPostActivity$EditHelper;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x1e

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
