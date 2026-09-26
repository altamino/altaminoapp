.class public final synthetic Lcom/narvii/comment/post/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/comment/post/CommentPostActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/comment/post/CommentPostActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/comment/post/a;->a:Lcom/narvii/comment/post/CommentPostActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/comment/post/a;->a:Lcom/narvii/comment/post/CommentPostActivity;

    invoke-static {v0}, Lcom/narvii/comment/post/CommentPostActivity;->u(Lcom/narvii/comment/post/CommentPostActivity;)V

    return-void
.end method
