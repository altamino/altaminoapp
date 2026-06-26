.class Lcom/narvii/blog/post/StoryPostActivity$1;
.super Ljava/lang/Object;
.source "StoryPostActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/blog/post/StoryPostActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/blog/post/StoryPostActivity;


# direct methods
.method constructor <init>(Lcom/narvii/blog/post/StoryPostActivity;)V
    .locals 0

    .line 499
    iput-object p1, p0, Lcom/narvii/blog/post/StoryPostActivity$1;->this$0:Lcom/narvii/blog/post/StoryPostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 512
    iget-object p1, p0, Lcom/narvii/blog/post/StoryPostActivity$1;->this$0:Lcom/narvii/blog/post/StoryPostActivity;

    invoke-static {p1}, Lcom/narvii/blog/post/StoryPostActivity;->access$000(Lcom/narvii/blog/post/StoryPostActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/blog/post/StoryPostActivity$1;->this$0:Lcom/narvii/blog/post/StoryPostActivity;

    invoke-static {p1}, Lcom/narvii/blog/post/StoryPostActivity;->access$100(Lcom/narvii/blog/post/StoryPostActivity;)Lcom/narvii/post/PostObject;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/blog/post/StoryPostActivity$1;->this$0:Lcom/narvii/blog/post/StoryPostActivity;

    invoke-static {p1}, Lcom/narvii/blog/post/StoryPostActivity;->access$000(Lcom/narvii/blog/post/StoryPostActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity$1;->this$0:Lcom/narvii/blog/post/StoryPostActivity;

    invoke-static {v0}, Lcom/narvii/blog/post/StoryPostActivity;->access$200(Lcom/narvii/blog/post/StoryPostActivity;)Lcom/narvii/post/PostObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    iget-object v0, v0, Lcom/narvii/blog/post/BlogPost;->title:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 515
    :cond_0
    iget-object p1, p0, Lcom/narvii/blog/post/StoryPostActivity$1;->this$0:Lcom/narvii/blog/post/StoryPostActivity;

    invoke-virtual {p1}, Lcom/narvii/blog/post/StoryPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    .line 516
    iget-object p1, p0, Lcom/narvii/blog/post/StoryPostActivity$1;->this$0:Lcom/narvii/blog/post/StoryPostActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
