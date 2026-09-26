.class Lcom/narvii/chat/post/ThreadPostActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/post/ThreadPostActivity$2;->this$0:Lcom/narvii/chat/post/ThreadPostActivity;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/post/ThreadPostActivity$2;->val$user:Lcom/narvii/model/User;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/post/ThreadPostActivity$2;->this$0:Lcom/narvii/chat/post/ThreadPostActivity;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/chat/post/ThreadPostActivity;->savePost()Lcom/narvii/chat/post/ThreadPost;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    iget-object p2, p1, Lcom/narvii/chat/post/ThreadPost;->memberList:Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    .line 15
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    check-cast v0, Lcom/narvii/model/User;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/narvii/chat/post/ThreadPostActivity$2;->val$user:Lcom/narvii/model/User;

    .line 27
    .line 28
    iget-object v1, v1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    invoke-static {v1, v0}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    move-result v0

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    .line 39
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_1
    iget-object p2, p0, Lcom/narvii/chat/post/ThreadPostActivity$2;->this$0:Lcom/narvii/chat/post/ThreadPostActivity;

    .line 43
    .line 44
    .line 45
    invoke-static {p2, p1}, Lcom/narvii/chat/post/ThreadPostActivity;->access$002(Lcom/narvii/chat/post/ThreadPostActivity;Lcom/narvii/post/PostObject;)Lcom/narvii/post/PostObject;

    .line 46
    .line 47
    iget-object p2, p0, Lcom/narvii/chat/post/ThreadPostActivity$2;->this$0:Lcom/narvii/chat/post/ThreadPostActivity;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, p1}, Lcom/narvii/chat/post/ThreadPostActivity;->updateView(Lcom/narvii/chat/post/ThreadPost;)V

    .line 51
    return-void
.end method
