.class Lcom/narvii/feed/quizzes/share/QuizShareFragment$3;
.super Ljava/lang/Object;
.source "QuizShareFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/feed/quizzes/share/QuizShareFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/feed/quizzes/share/QuizShareFragment;


# direct methods
.method constructor <init>(Lcom/narvii/feed/quizzes/share/QuizShareFragment;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment$3;->this$0:Lcom/narvii/feed/quizzes/share/QuizShareFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 143
    iget-object p1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment$3;->this$0:Lcom/narvii/feed/quizzes/share/QuizShareFragment;

    invoke-static {p1}, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->access$100(Lcom/narvii/feed/quizzes/share/QuizShareFragment;)Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 144
    iget-object p1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment$3;->this$0:Lcom/narvii/feed/quizzes/share/QuizShareFragment;

    invoke-static {p1}, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->access$100(Lcom/narvii/feed/quizzes/share/QuizShareFragment;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 145
    iget-object p1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment$3;->this$0:Lcom/narvii/feed/quizzes/share/QuizShareFragment;

    invoke-static {p1}, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->access$100(Lcom/narvii/feed/quizzes/share/QuizShareFragment;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 146
    iget-object p1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment$3;->this$0:Lcom/narvii/feed/quizzes/share/QuizShareFragment;

    invoke-static {p1}, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->access$100(Lcom/narvii/feed/quizzes/share/QuizShareFragment;)Landroid/widget/EditText;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->showSoftKeyboard(Landroid/widget/EditText;)V

    .line 147
    iget-object p1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment$3;->this$0:Lcom/narvii/feed/quizzes/share/QuizShareFragment;

    invoke-static {p1}, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->access$200(Lcom/narvii/feed/quizzes/share/QuizShareFragment;)V

    .line 149
    :cond_0
    iget-object p1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment$3;->this$0:Lcom/narvii/feed/quizzes/share/QuizShareFragment;

    invoke-static {p1}, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->access$100(Lcom/narvii/feed/quizzes/share/QuizShareFragment;)Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment$3;->this$0:Lcom/narvii/feed/quizzes/share/QuizShareFragment;

    invoke-static {v0}, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->access$100(Lcom/narvii/feed/quizzes/share/QuizShareFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 150
    iget-object p1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment$3;->this$0:Lcom/narvii/feed/quizzes/share/QuizShareFragment;

    invoke-static {p1}, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->access$100(Lcom/narvii/feed/quizzes/share/QuizShareFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0f03aa

    goto :goto_0

    :cond_1
    const v0, 0x7f0f03cd

    :goto_0
    iget-object v1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment$3;->this$0:Lcom/narvii/feed/quizzes/share/QuizShareFragment;

    invoke-static {v1}, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->access$300(Lcom/narvii/feed/quizzes/share/QuizShareFragment;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/narvii/app/NVFragment;->setActionBarRightButton(ILandroid/view/View$OnClickListener;)V

    .line 151
    iget-object p1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment$3;->this$0:Lcom/narvii/feed/quizzes/share/QuizShareFragment;

    invoke-static {p1}, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->access$100(Lcom/narvii/feed/quizzes/share/QuizShareFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move-object v0, v1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment$3;->this$0:Lcom/narvii/feed/quizzes/share/QuizShareFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0802ae

    invoke-static {v0, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_1
    invoke-static {p1, v0}, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->access$400(Lcom/narvii/feed/quizzes/share/QuizShareFragment;Landroid/graphics/drawable/Drawable;)V

    .line 152
    iget-object p1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment$3;->this$0:Lcom/narvii/feed/quizzes/share/QuizShareFragment;

    invoke-static {p1, v1}, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->access$500(Lcom/narvii/feed/quizzes/share/QuizShareFragment;Landroid/graphics/drawable/Drawable;)V

    .line 153
    iget-object p1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment$3;->this$0:Lcom/narvii/feed/quizzes/share/QuizShareFragment;

    invoke-static {p1}, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->access$600(Lcom/narvii/feed/quizzes/share/QuizShareFragment;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 154
    iget-object p1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment$3;->this$0:Lcom/narvii/feed/quizzes/share/QuizShareFragment;

    invoke-static {p1}, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->access$600(Lcom/narvii/feed/quizzes/share/QuizShareFragment;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment$3;->this$0:Lcom/narvii/feed/quizzes/share/QuizShareFragment;

    invoke-static {v0}, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->access$100(Lcom/narvii/feed/quizzes/share/QuizShareFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 157
    :cond_3
    iget-object p1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment$3;->this$0:Lcom/narvii/feed/quizzes/share/QuizShareFragment;

    invoke-static {p1}, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->access$700(Lcom/narvii/feed/quizzes/share/QuizShareFragment;)V

    return-void
.end method
