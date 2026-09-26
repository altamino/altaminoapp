.class Lcom/narvii/chat/post/ThreadPostActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/post/ThreadPostActivity$1;->this$0:Lcom/narvii/chat/post/ThreadPostActivity;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/post/ThreadPostActivity$1;->val$view:Landroid/view/View;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPostActivity$1;->val$view:Landroid/view/View;

    .line 3
    .line 4
    check-cast v0, Landroid/widget/EditText;

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->showSoftKeyboard(Landroid/widget/EditText;)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPostActivity$1;->this$0:Lcom/narvii/chat/post/ThreadPostActivity;

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/narvii/chat/post/ThreadPostActivity;->B(Lcom/narvii/chat/post/ThreadPostActivity;Z)V

    .line 14
    return-void
.end method
