.class Lcom/narvii/comment/list/CommentListAdapter$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/comment/list/CommentListAdapter;->onHeightFix(Lcom/narvii/comment/post/CommentPostActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/comment/list/CommentListAdapter;

.field final synthetic val$a:Lcom/narvii/comment/post/CommentPostActivity;

.field final synthetic val$r:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/narvii/comment/list/CommentListAdapter;Lcom/narvii/comment/post/CommentPostActivity;Landroid/graphics/Rect;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter$9;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/comment/list/CommentListAdapter$9;->val$a:Lcom/narvii/comment/post/CommentPostActivity;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/comment/list/CommentListAdapter$9;->val$r:Landroid/graphics/Rect;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter$9;->val$a:Lcom/narvii/comment/post/CommentPostActivity;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/comment/list/CommentListAdapter$9;->val$r:Landroid/graphics/Rect;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/narvii/comment/post/CommentPostActivity;->setTransparentArea(Landroid/graphics/Rect;)V

    .line 8
    return-void
.end method
