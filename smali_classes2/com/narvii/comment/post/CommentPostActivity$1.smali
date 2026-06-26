.class Lcom/narvii/comment/post/CommentPostActivity$1;
.super Ljava/lang/Object;
.source "CommentPostActivity.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/comment/post/CommentPostActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field called:Z

.field final synthetic this$0:Lcom/narvii/comment/post/CommentPostActivity;


# direct methods
.method constructor <init>(Lcom/narvii/comment/post/CommentPostActivity;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/narvii/comment/post/CommentPostActivity$1;->this$0:Lcom/narvii/comment/post/CommentPostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 5

    .line 156
    iget-object v0, p0, Lcom/narvii/comment/post/CommentPostActivity$1;->this$0:Lcom/narvii/comment/post/CommentPostActivity;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/narvii/comment/post/CommentPostActivity;->isKeyboardVisible:Z

    .line 159
    iget-object v0, p0, Lcom/narvii/comment/post/CommentPostActivity$1;->this$0:Lcom/narvii/comment/post/CommentPostActivity;

    iget-object v0, v0, Lcom/narvii/comment/post/CommentPostActivity;->switchingKeyboard:Lcom/narvii/util/statistics/TmpValue;

    invoke-virtual {v0}, Lcom/narvii/util/statistics/TmpValue;->getAndRemove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/comment/post/CommentPostActivity$SwitchKeyboard;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 160
    iget-object v3, v0, Lcom/narvii/comment/post/CommentPostActivity$SwitchKeyboard;->view:Landroid/view/View;

    if-nez v3, :cond_0

    goto :goto_0

    .line 163
    :cond_0
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne p1, v3, :cond_1

    iget-boolean v3, v0, Lcom/narvii/comment/post/CommentPostActivity$SwitchKeyboard;->openKeyboard:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-ne v3, v4, :cond_1

    .line 164
    iget-object v0, p0, Lcom/narvii/comment/post/CommentPostActivity$1;->this$0:Lcom/narvii/comment/post/CommentPostActivity;

    invoke-static {v0}, Lcom/narvii/comment/post/CommentPostActivity;->access$000(Lcom/narvii/comment/post/CommentPostActivity;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/narvii/comment/post/CommentPostActivity;->access$100(Lcom/narvii/comment/post/CommentPostActivity;Landroid/view/View;I)V

    goto :goto_1

    .line 165
    :cond_1
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p1, v3, :cond_3

    .line 166
    iget-object v3, p0, Lcom/narvii/comment/post/CommentPostActivity$1;->this$0:Lcom/narvii/comment/post/CommentPostActivity;

    iget-object v0, v0, Lcom/narvii/comment/post/CommentPostActivity$SwitchKeyboard;->view:Landroid/view/View;

    invoke-static {v3, v0, v1}, Lcom/narvii/comment/post/CommentPostActivity;->access$100(Lcom/narvii/comment/post/CommentPostActivity;Landroid/view/View;I)V

    goto :goto_1

    .line 161
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/narvii/comment/post/CommentPostActivity$1;->this$0:Lcom/narvii/comment/post/CommentPostActivity;

    invoke-static {v0}, Lcom/narvii/comment/post/CommentPostActivity;->access$000(Lcom/narvii/comment/post/CommentPostActivity;)Landroid/view/View;

    move-result-object v3

    invoke-static {v0, v3, v1}, Lcom/narvii/comment/post/CommentPostActivity;->access$100(Lcom/narvii/comment/post/CommentPostActivity;Landroid/view/View;I)V

    .line 170
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/narvii/comment/post/CommentPostActivity$1;->this$0:Lcom/narvii/comment/post/CommentPostActivity;

    invoke-static {v0}, Lcom/narvii/comment/post/CommentPostActivity;->access$000(Lcom/narvii/comment/post/CommentPostActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    .line 171
    :goto_2
    iget-object v3, p0, Lcom/narvii/comment/post/CommentPostActivity$1;->this$0:Lcom/narvii/comment/post/CommentPostActivity;

    xor-int/2addr v0, v1

    invoke-static {v3, v0}, Lcom/narvii/comment/post/CommentPostActivity;->access$200(Lcom/narvii/comment/post/CommentPostActivity;Z)V

    .line 174
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/narvii/comment/post/CommentPostActivity$1;->this$0:Lcom/narvii/comment/post/CommentPostActivity;

    invoke-static {v0}, Lcom/narvii/comment/post/CommentPostActivity;->access$000(Lcom/narvii/comment/post/CommentPostActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/narvii/comment/post/CommentPostActivity$1;->called:Z

    if-eqz v0, :cond_5

    .line 175
    iget-object v0, p0, Lcom/narvii/comment/post/CommentPostActivity$1;->this$0:Lcom/narvii/comment/post/CommentPostActivity;

    invoke-static {v0, v2}, Lcom/narvii/comment/post/CommentPostActivity;->access$300(Lcom/narvii/comment/post/CommentPostActivity;Z)V

    goto :goto_3

    .line 177
    :cond_5
    iget-object v0, p0, Lcom/narvii/comment/post/CommentPostActivity$1;->this$0:Lcom/narvii/comment/post/CommentPostActivity;

    invoke-static {v0, v1}, Lcom/narvii/comment/post/CommentPostActivity;->access$300(Lcom/narvii/comment/post/CommentPostActivity;Z)V

    .line 180
    :goto_3
    iget-object v0, p0, Lcom/narvii/comment/post/CommentPostActivity$1;->this$0:Lcom/narvii/comment/post/CommentPostActivity;

    invoke-static {v0}, Lcom/narvii/comment/post/CommentPostActivity;->access$000(Lcom/narvii/comment/post/CommentPostActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_6

    const/4 v2, 0x1

    :cond_6
    invoke-static {v0, v2}, Lcom/narvii/comment/post/CommentPostActivity;->access$400(Lcom/narvii/comment/post/CommentPostActivity;Z)V

    .line 182
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-boolean p1, p0, Lcom/narvii/comment/post/CommentPostActivity$1;->called:Z

    if-nez p1, :cond_9

    .line 183
    invoke-static {}, Lcom/narvii/comment/post/CommentPostActivity;->access$500()Ljava/lang/ref/WeakReference;

    move-result-object p1

    if-nez p1, :cond_7

    const/4 p1, 0x0

    goto :goto_4

    :cond_7
    invoke-static {}, Lcom/narvii/comment/post/CommentPostActivity;->access$500()Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/comment/post/CommentPostActivity$StatusListener;

    :goto_4
    if-eqz p1, :cond_8

    .line 185
    new-instance v0, Lcom/narvii/comment/post/CommentPostActivity$1$1;

    invoke-direct {v0, p0, p1}, Lcom/narvii/comment/post/CommentPostActivity$1$1;-><init>(Lcom/narvii/comment/post/CommentPostActivity$1;Lcom/narvii/comment/post/CommentPostActivity$StatusListener;)V

    const-wide/16 v2, 0xc8

    invoke-static {v0, v2, v3}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 192
    :cond_8
    iput-boolean v1, p0, Lcom/narvii/comment/post/CommentPostActivity$1;->called:Z

    .line 195
    :cond_9
    iget-object p1, p0, Lcom/narvii/comment/post/CommentPostActivity$1;->this$0:Lcom/narvii/comment/post/CommentPostActivity;

    iget-boolean v0, p1, Lcom/narvii/comment/post/CommentPostActivity;->isKeyboardVisible:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p1, Lcom/narvii/comment/post/CommentPostActivity;->defaultStickerSet:Z

    if-nez v0, :cond_a

    const-string v0, "stickerCollectionId"

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 196
    new-instance p1, Lcom/narvii/comment/post/CommentPostActivity$1$2;

    invoke-direct {p1, p0}, Lcom/narvii/comment/post/CommentPostActivity$1$2;-><init>(Lcom/narvii/comment/post/CommentPostActivity$1;)V

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    :cond_a
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 151
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/comment/post/CommentPostActivity$1;->call(Ljava/lang/Boolean;)V

    return-void
.end method
