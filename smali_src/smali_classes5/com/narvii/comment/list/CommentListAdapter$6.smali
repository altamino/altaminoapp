.class Lcom/narvii/comment/list/CommentListAdapter$6;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter$6;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter$6;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/comment/list/CommentListAdapter;->m(Lcom/narvii/comment/list/CommentListAdapter;)Landroid/graphics/Rect;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter$6;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    check-cast v1, Lcom/narvii/list/NVListFragment;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/narvii/list/NVListFragment;->getHoverTopOffset()I

    .line 20
    move-result v1

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1}, Lcom/narvii/comment/list/CommentListAdapter;->u(Lcom/narvii/comment/list/CommentListAdapter;I)V

    .line 24
    :cond_0
    return-void
.end method
