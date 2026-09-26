.class Lcom/narvii/blog/post/LinkPostActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$3;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/blog/post/LinkPostActivity$3;->val$btnCrawler:Landroid/widget/TextView;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
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

    .line 1
    .line 2
    iget-object p2, p0, Lcom/narvii/blog/post/LinkPostActivity$3;->val$btnCrawler:Landroid/widget/TextView;

    .line 3
    .line 4
    if-eqz p2, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result p1

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$3;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    .line 17
    .line 18
    iget-object p2, p0, Lcom/narvii/blog/post/LinkPostActivity$3;->val$btnCrawler:Landroid/widget/TextView;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2}, Lcom/narvii/blog/post/LinkPostActivity;->enableView(Landroid/widget/TextView;)V

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$3;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    .line 25
    .line 26
    iget-object p2, p0, Lcom/narvii/blog/post/LinkPostActivity$3;->val$btnCrawler:Landroid/widget/TextView;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2}, Lcom/narvii/blog/post/LinkPostActivity;->disableView(Landroid/widget/TextView;)V

    .line 30
    :cond_1
    :goto_0
    return-void
.end method
