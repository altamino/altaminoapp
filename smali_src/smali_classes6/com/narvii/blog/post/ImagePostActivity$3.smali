.class Lcom/narvii/blog/post/ImagePostActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/blog/post/ImagePostActivity$3;->this$0:Lcom/narvii/blog/post/ImagePostActivity;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/blog/post/ImagePostActivity$3;->val$media:Lcom/narvii/model/Media;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/blog/post/ImagePostActivity$3;->val$edit:Landroid/widget/EditText;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/blog/post/ImagePostActivity$3;->val$media:Lcom/narvii/model/Media;

    .line 3
    .line 4
    iget-object p2, p0, Lcom/narvii/blog/post/ImagePostActivity$3;->val$edit:Landroid/widget/EditText;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 8
    move-result-object p2

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    iput-object p2, p1, Lcom/narvii/model/Media;->caption:Ljava/lang/String;

    .line 19
    .line 20
    iget-object p1, p0, Lcom/narvii/blog/post/ImagePostActivity$3;->val$edit:Landroid/widget/EditText;

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/widget/EditText;)V

    .line 24
    .line 25
    iget-object p1, p0, Lcom/narvii/blog/post/ImagePostActivity$3;->this$0:Lcom/narvii/blog/post/ImagePostActivity;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/narvii/blog/post/ImagePostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    iget-object p2, p0, Lcom/narvii/blog/post/ImagePostActivity$3;->this$0:Lcom/narvii/blog/post/ImagePostActivity;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, p1}, Lcom/narvii/blog/post/ImagePostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    .line 35
    return-void
.end method
