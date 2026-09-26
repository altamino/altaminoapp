.class Lcom/narvii/blog/post/PollPostActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/LayoutTransition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/blog/post/PollPostActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/blog/post/PollPostActivity;


# direct methods
.method constructor <init>(Lcom/narvii/blog/post/PollPostActivity;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/blog/post/PollPostActivity$2;->this$0:Lcom/narvii/blog/post/PollPostActivity;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public endTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0

    .line 1
    const/4 p1, 0x3

    .line 2
    .line 3
    if-ne p4, p1, :cond_1

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3}, Landroid/view/View;->getId()I

    .line 7
    move-result p1

    .line 8
    .line 9
    .line 10
    const p2, 0x7f0a0b64

    .line 11
    .line 12
    if-ne p1, p2, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    check-cast p1, Lcom/narvii/model/PollOption;

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object p2, p0, Lcom/narvii/blog/post/PollPostActivity$2;->this$0:Lcom/narvii/blog/post/PollPostActivity;

    .line 23
    .line 24
    .line 25
    invoke-static {p2}, Lcom/narvii/blog/post/PollPostActivity;->access$000(Lcom/narvii/blog/post/PollPostActivity;)Lcom/narvii/post/PostObject;

    .line 26
    move-result-object p2

    .line 27
    .line 28
    check-cast p2, Lcom/narvii/blog/post/BlogPost;

    .line 29
    .line 30
    iget-object p2, p2, Lcom/narvii/blog/post/BlogPost;->polloptList:Ljava/util/List;

    .line 31
    .line 32
    if-eqz p2, :cond_0

    .line 33
    .line 34
    iget-object p2, p0, Lcom/narvii/blog/post/PollPostActivity$2;->this$0:Lcom/narvii/blog/post/PollPostActivity;

    .line 35
    .line 36
    .line 37
    invoke-static {p2}, Lcom/narvii/blog/post/PollPostActivity;->access$100(Lcom/narvii/blog/post/PollPostActivity;)Lcom/narvii/post/PostObject;

    .line 38
    move-result-object p2

    .line 39
    .line 40
    check-cast p2, Lcom/narvii/blog/post/BlogPost;

    .line 41
    .line 42
    iget-object p2, p2, Lcom/narvii/blog/post/BlogPost;->polloptList:Ljava/util/List;

    .line 43
    .line 44
    .line 45
    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 46
    .line 47
    :cond_0
    iget-object p1, p0, Lcom/narvii/blog/post/PollPostActivity$2;->this$0:Lcom/narvii/blog/post/PollPostActivity;

    .line 48
    .line 49
    .line 50
    invoke-static {p1}, Lcom/narvii/blog/post/PollPostActivity;->access$200(Lcom/narvii/blog/post/PollPostActivity;)Lcom/narvii/post/PostObject;

    .line 51
    move-result-object p2

    .line 52
    .line 53
    check-cast p2, Lcom/narvii/blog/post/BlogPost;

    .line 54
    .line 55
    iget-object p2, p2, Lcom/narvii/blog/post/BlogPost;->polloptList:Ljava/util/List;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p2}, Lcom/narvii/blog/post/PollPostActivity;->updateOptions(Ljava/util/List;)V

    .line 59
    :cond_1
    return-void
.end method

.method public startTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0

    return-void
.end method
