.class Lcom/narvii/comment/list/CommentListAdapter$9;
.super Ljava/lang/Object;
.source "CommentListAdapter.java"

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

    .line 1199
    iput-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter$9;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    iput-object p2, p0, Lcom/narvii/comment/list/CommentListAdapter$9;->val$a:Lcom/narvii/comment/post/CommentPostActivity;

    iput-object p3, p0, Lcom/narvii/comment/list/CommentListAdapter$9;->val$r:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1202
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter$9;->val$a:Lcom/narvii/comment/post/CommentPostActivity;

    iget-object v1, p0, Lcom/narvii/comment/list/CommentListAdapter$9;->val$r:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/narvii/comment/post/CommentPostActivity;->setTransparentArea(Landroid/graphics/Rect;)V

    return-void
.end method
