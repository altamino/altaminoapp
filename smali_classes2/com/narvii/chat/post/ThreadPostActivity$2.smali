.class Lcom/narvii/chat/post/ThreadPostActivity$2;
.super Ljava/lang/Object;
.source "ThreadPostActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/post/ThreadPostActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/post/ThreadPostActivity;

.field final synthetic val$user:Lcom/narvii/model/User;


# direct methods
.method constructor <init>(Lcom/narvii/chat/post/ThreadPostActivity;Lcom/narvii/model/User;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/narvii/chat/post/ThreadPostActivity$2;->this$0:Lcom/narvii/chat/post/ThreadPostActivity;

    iput-object p2, p0, Lcom/narvii/chat/post/ThreadPostActivity$2;->val$user:Lcom/narvii/model/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 257
    iget-object p1, p0, Lcom/narvii/chat/post/ThreadPostActivity$2;->this$0:Lcom/narvii/chat/post/ThreadPostActivity;

    invoke-virtual {p1}, Lcom/narvii/chat/post/ThreadPostActivity;->savePost()Lcom/narvii/chat/post/ThreadPost;

    move-result-object p1

    .line 258
    iget-object p2, p1, Lcom/narvii/chat/post/ThreadPost;->memberList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 259
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/User;

    .line 261
    iget-object v1, p0, Lcom/narvii/chat/post/ThreadPostActivity$2;->val$user:Lcom/narvii/model/User;

    iget-object v1, v1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    iget-object v0, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 264
    :cond_1
    iget-object p2, p0, Lcom/narvii/chat/post/ThreadPostActivity$2;->this$0:Lcom/narvii/chat/post/ThreadPostActivity;

    invoke-static {p2, p1}, Lcom/narvii/chat/post/ThreadPostActivity;->access$102(Lcom/narvii/chat/post/ThreadPostActivity;Lcom/narvii/post/PostObject;)Lcom/narvii/post/PostObject;

    .line 265
    iget-object p2, p0, Lcom/narvii/chat/post/ThreadPostActivity$2;->this$0:Lcom/narvii/chat/post/ThreadPostActivity;

    invoke-virtual {p2, p1}, Lcom/narvii/chat/post/ThreadPostActivity;->updateView(Lcom/narvii/chat/post/ThreadPost;)V

    return-void
.end method
