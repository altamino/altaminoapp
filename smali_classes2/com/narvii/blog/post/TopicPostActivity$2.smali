.class Lcom/narvii/blog/post/TopicPostActivity$2;
.super Ljava/lang/Object;
.source "TopicPostActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/blog/post/TopicPostActivity;->editPollDuration()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/blog/post/TopicPostActivity;

.field final synthetic val$post:Lcom/narvii/blog/post/BlogPost;


# direct methods
.method constructor <init>(Lcom/narvii/blog/post/TopicPostActivity;Lcom/narvii/blog/post/BlogPost;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/narvii/blog/post/TopicPostActivity$2;->this$0:Lcom/narvii/blog/post/TopicPostActivity;

    iput-object p2, p0, Lcom/narvii/blog/post/TopicPostActivity$2;->val$post:Lcom/narvii/blog/post/BlogPost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 301
    iget-object p1, p0, Lcom/narvii/blog/post/TopicPostActivity$2;->val$post:Lcom/narvii/blog/post/BlogPost;

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/narvii/blog/post/BlogPost;->durationInDays:I

    .line 302
    iget-object p2, p0, Lcom/narvii/blog/post/TopicPostActivity$2;->this$0:Lcom/narvii/blog/post/TopicPostActivity;

    invoke-static {p2, p1}, Lcom/narvii/blog/post/TopicPostActivity;->access$002(Lcom/narvii/blog/post/TopicPostActivity;Lcom/narvii/post/PostObject;)Lcom/narvii/post/PostObject;

    .line 303
    iget-object p1, p0, Lcom/narvii/blog/post/TopicPostActivity$2;->this$0:Lcom/narvii/blog/post/TopicPostActivity;

    iget-object p2, p0, Lcom/narvii/blog/post/TopicPostActivity$2;->val$post:Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p1, p2}, Lcom/narvii/blog/post/TopicPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    return-void
.end method
