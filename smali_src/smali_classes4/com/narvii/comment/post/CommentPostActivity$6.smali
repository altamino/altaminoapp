.class Lcom/narvii/comment/post/CommentPostActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/comment/post/CommentPostActivity;->onPickMediaResult(Ljava/util/List;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/comment/post/CommentPostActivity;


# direct methods
.method constructor <init>(Lcom/narvii/comment/post/CommentPostActivity;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/comment/post/CommentPostActivity$6;->this$0:Lcom/narvii/comment/post/CommentPostActivity;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/post/CommentPostActivity$6;->this$0:Lcom/narvii/comment/post/CommentPostActivity;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/comment/post/CommentPostActivity;->editContent:Landroid/widget/EditText;

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->showSoftKeyboard(Landroid/widget/EditText;)V

    .line 8
    return-void
.end method
