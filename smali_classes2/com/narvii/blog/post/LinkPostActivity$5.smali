.class Lcom/narvii/blog/post/LinkPostActivity$5;
.super Ljava/lang/Object;
.source "LinkPostActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/blog/post/LinkPostActivity;->showLinkPasteDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/blog/post/LinkPostActivity;

.field final synthetic val$btnCrawler:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/narvii/blog/post/LinkPostActivity;Landroid/widget/TextView;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$5;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    iput-object p2, p0, Lcom/narvii/blog/post/LinkPostActivity$5;->val$btnCrawler:Landroid/widget/TextView;

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

    .line 251
    iget-object p2, p0, Lcom/narvii/blog/post/LinkPostActivity$5;->val$btnCrawler:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    .line 252
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 253
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$5;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    iget-object p2, p0, Lcom/narvii/blog/post/LinkPostActivity$5;->val$btnCrawler:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Lcom/narvii/blog/post/LinkPostActivity;->enableView(Landroid/widget/TextView;)V

    goto :goto_0

    .line 255
    :cond_0
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$5;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    iget-object p2, p0, Lcom/narvii/blog/post/LinkPostActivity$5;->val$btnCrawler:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Lcom/narvii/blog/post/LinkPostActivity;->disableView(Landroid/widget/TextView;)V

    :cond_1
    :goto_0
    return-void
.end method
