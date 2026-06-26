.class Lcom/narvii/comment/list/CommentListAdapter$6;
.super Ljava/lang/Object;
.source "CommentListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/comment/list/CommentListAdapter;->onNotification(Lcom/narvii/notification/Notification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/comment/list/CommentListAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/comment/list/CommentListAdapter;)V
    .locals 0

    .line 964
    iput-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter$6;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 967
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter$6;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    invoke-static {v0}, Lcom/narvii/comment/list/CommentListAdapter;->access$1100(Lcom/narvii/comment/list/CommentListAdapter;)Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    .line 968
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter$6;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object v1

    check-cast v1, Lcom/narvii/list/NVListFragment;

    invoke-virtual {v1}, Lcom/narvii/list/NVListFragment;->getHoverTopOffset()I

    move-result v1

    invoke-static {v0, v1}, Lcom/narvii/comment/list/CommentListAdapter;->access$1200(Lcom/narvii/comment/list/CommentListAdapter;I)V

    :cond_0
    return-void
.end method
