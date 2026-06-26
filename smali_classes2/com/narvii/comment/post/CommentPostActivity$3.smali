.class Lcom/narvii/comment/post/CommentPostActivity$3;
.super Ljava/lang/Object;
.source "CommentPostActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/comment/post/CommentPostActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/comment/post/CommentPostActivity;


# direct methods
.method constructor <init>(Lcom/narvii/comment/post/CommentPostActivity;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/narvii/comment/post/CommentPostActivity$3;->this$0:Lcom/narvii/comment/post/CommentPostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 224
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string p2, "\\u200D"

    const-string p3, ""

    .line 225
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 226
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 227
    :goto_0
    iget-object p2, p0, Lcom/narvii/comment/post/CommentPostActivity$3;->this$0:Lcom/narvii/comment/post/CommentPostActivity;

    iget-object p2, p2, Lcom/narvii/comment/post/CommentPostActivity;->postBtn:Landroid/widget/ImageView;

    xor-int/lit8 p3, p1, 0x1

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 228
    iget-object p2, p0, Lcom/narvii/comment/post/CommentPostActivity$3;->this$0:Lcom/narvii/comment/post/CommentPostActivity;

    iget-object p3, p2, Lcom/narvii/comment/post/CommentPostActivity;->postBtn:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p1, :cond_1

    const p1, 0x7f080301

    goto :goto_1

    :cond_1
    const p1, 0x7f080302

    :goto_1
    invoke-static {p2, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
