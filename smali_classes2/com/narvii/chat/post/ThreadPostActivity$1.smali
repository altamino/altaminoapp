.class Lcom/narvii/chat/post/ThreadPostActivity$1;
.super Ljava/lang/Object;
.source "ThreadPostActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/post/ThreadPostActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/post/ThreadPostActivity;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/narvii/chat/post/ThreadPostActivity;Landroid/view/View;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/narvii/chat/post/ThreadPostActivity$1;->this$0:Lcom/narvii/chat/post/ThreadPostActivity;

    iput-object p2, p0, Lcom/narvii/chat/post/ThreadPostActivity$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPostActivity$1;->val$view:Landroid/view/View;

    check-cast v0, Landroid/widget/EditText;

    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->showSoftKeyboard(Landroid/widget/EditText;)V

    .line 133
    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPostActivity$1;->this$0:Lcom/narvii/chat/post/ThreadPostActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/narvii/chat/post/ThreadPostActivity;->access$002(Lcom/narvii/chat/post/ThreadPostActivity;Z)Z

    return-void
.end method
