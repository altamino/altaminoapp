.class Lcom/narvii/blog/post/ImagePostActivity$4;
.super Ljava/lang/Object;
.source "ImagePostActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/blog/post/ImagePostActivity;->editCaption(Lcom/narvii/model/Media;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/blog/post/ImagePostActivity;

.field final synthetic val$edit:Landroid/widget/EditText;

.field final synthetic val$media:Lcom/narvii/model/Media;


# direct methods
.method constructor <init>(Lcom/narvii/blog/post/ImagePostActivity;Lcom/narvii/model/Media;Landroid/widget/EditText;)V
    .locals 0

    .line 665
    iput-object p1, p0, Lcom/narvii/blog/post/ImagePostActivity$4;->this$0:Lcom/narvii/blog/post/ImagePostActivity;

    iput-object p2, p0, Lcom/narvii/blog/post/ImagePostActivity$4;->val$media:Lcom/narvii/model/Media;

    iput-object p3, p0, Lcom/narvii/blog/post/ImagePostActivity$4;->val$edit:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 668
    iget-object p1, p0, Lcom/narvii/blog/post/ImagePostActivity$4;->val$media:Lcom/narvii/model/Media;

    iget-object p2, p0, Lcom/narvii/blog/post/ImagePostActivity$4;->val$edit:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/narvii/model/Media;->caption:Ljava/lang/String;

    .line 669
    iget-object p1, p0, Lcom/narvii/blog/post/ImagePostActivity$4;->val$edit:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/widget/EditText;)V

    .line 670
    iget-object p1, p0, Lcom/narvii/blog/post/ImagePostActivity$4;->this$0:Lcom/narvii/blog/post/ImagePostActivity;

    invoke-virtual {p1}, Lcom/narvii/blog/post/ImagePostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    move-result-object p1

    .line 671
    iget-object p2, p0, Lcom/narvii/blog/post/ImagePostActivity$4;->this$0:Lcom/narvii/blog/post/ImagePostActivity;

    invoke-virtual {p2, p1}, Lcom/narvii/blog/post/ImagePostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    return-void
.end method
