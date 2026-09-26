.class public final synthetic Lcom/narvii/blog/post/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/blog/post/TopicPostActivity;

.field public final synthetic b:Lcom/narvii/blog/post/BlogPost;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/blog/post/TopicPostActivity;Lcom/narvii/blog/post/BlogPost;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/blog/post/d;->a:Lcom/narvii/blog/post/TopicPostActivity;

    iput-object p2, p0, Lcom/narvii/blog/post/d;->b:Lcom/narvii/blog/post/BlogPost;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/blog/post/d;->a:Lcom/narvii/blog/post/TopicPostActivity;

    iget-object v1, p0, Lcom/narvii/blog/post/d;->b:Lcom/narvii/blog/post/BlogPost;

    invoke-static {v0, v1, p1, p2}, Lcom/narvii/blog/post/TopicPostActivity;->y(Lcom/narvii/blog/post/TopicPostActivity;Lcom/narvii/blog/post/BlogPost;Landroid/content/DialogInterface;I)V

    return-void
.end method
