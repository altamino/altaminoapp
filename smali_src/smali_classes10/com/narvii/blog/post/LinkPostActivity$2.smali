.class Lcom/narvii/blog/post/LinkPostActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$2;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/blog/post/LinkPostActivity$2;->val$editText:Landroid/widget/EditText;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$2;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostActivity$2;->val$editText:Landroid/widget/EditText;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iput-object v0, p1, Lcom/narvii/blog/post/LinkPostActivity;->linkUrl:Ljava/lang/String;

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$2;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/narvii/blog/post/LinkPostActivity;->linkUrl:Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    move-result p1

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$2;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostActivity$2;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    .line 33
    .line 34
    .line 35
    const v1, 0x7f120b92

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    const/4 v1, 0x1

    .line 41
    .line 42
    .line 43
    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :cond_0
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$2;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    .line 51
    .line 52
    iget-object v0, p1, Lcom/narvii/blog/post/LinkPostActivity;->linkUrl:Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    invoke-static {v0}, Lcom/narvii/util/Utils;->getValidUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    iput-object v0, p1, Lcom/narvii/blog/post/LinkPostActivity;->linkUrl:Ljava/lang/String;

    .line 59
    .line 60
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$2;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    .line 61
    .line 62
    iget-object v0, p1, Lcom/narvii/blog/post/LinkPostActivity;->textCrawler:Lcom/narvii/util/crawler/TextCrawler;

    .line 63
    .line 64
    iget-object v1, p1, Lcom/narvii/blog/post/LinkPostActivity;->callback:Lcom/narvii/util/crawler/LinkPreviewCallback;

    .line 65
    .line 66
    iget-object p1, p1, Lcom/narvii/blog/post/LinkPostActivity;->linkUrl:Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/crawler/TextCrawler;->makePreview(Lcom/narvii/util/crawler/LinkPreviewCallback;Ljava/lang/String;)V

    .line 70
    .line 71
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$2;->val$editText:Landroid/widget/EditText;

    .line 72
    .line 73
    .line 74
    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/widget/EditText;)V

    .line 75
    :goto_0
    return-void
.end method
