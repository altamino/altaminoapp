.class Lcom/narvii/blog/post/LinkPostActivity$4;
.super Ljava/lang/Object;
.source "LinkPostActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/narvii/blog/post/LinkPostActivity;Landroid/widget/EditText;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$4;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    iput-object p2, p0, Lcom/narvii/blog/post/LinkPostActivity$4;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 228
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$4;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostActivity$4;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/narvii/blog/post/LinkPostActivity;->linkUrl:Ljava/lang/String;

    .line 229
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$4;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    iget-object p1, p1, Lcom/narvii/blog/post/LinkPostActivity;->linkUrl:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 230
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$4;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostActivity$4;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    const v1, 0x7f0f0ae7

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    goto :goto_0

    .line 232
    :cond_0
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$4;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    iget-object v0, p1, Lcom/narvii/blog/post/LinkPostActivity;->linkUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/Utils;->getValidUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/narvii/blog/post/LinkPostActivity;->linkUrl:Ljava/lang/String;

    .line 233
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$4;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    iget-object v0, p1, Lcom/narvii/blog/post/LinkPostActivity;->textCrawler:Lcom/narvii/util/crawler/TextCrawler;

    iget-object v1, p1, Lcom/narvii/blog/post/LinkPostActivity;->callback:Lcom/narvii/util/crawler/LinkPreviewCallback;

    iget-object p1, p1, Lcom/narvii/blog/post/LinkPostActivity;->linkUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/crawler/TextCrawler;->makePreview(Lcom/narvii/util/crawler/LinkPreviewCallback;Ljava/lang/String;)V

    .line 234
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$4;->val$editText:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/widget/EditText;)V

    :goto_0
    return-void
.end method
