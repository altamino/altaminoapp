.class public final synthetic Lcom/narvii/blog/post/-$$Lambda$StoryPostActivity$4$Ng7trLR1R5asK9RxdnCpr3s6Rsc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/narvii/blog/post/StoryPostActivity$4;

.field private final synthetic f$1:Lcom/narvii/blog/post/BlogPost;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/blog/post/StoryPostActivity$4;Lcom/narvii/blog/post/BlogPost;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/blog/post/-$$Lambda$StoryPostActivity$4$Ng7trLR1R5asK9RxdnCpr3s6Rsc;->f$0:Lcom/narvii/blog/post/StoryPostActivity$4;

    iput-object p2, p0, Lcom/narvii/blog/post/-$$Lambda$StoryPostActivity$4$Ng7trLR1R5asK9RxdnCpr3s6Rsc;->f$1:Lcom/narvii/blog/post/BlogPost;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/narvii/blog/post/-$$Lambda$StoryPostActivity$4$Ng7trLR1R5asK9RxdnCpr3s6Rsc;->f$0:Lcom/narvii/blog/post/StoryPostActivity$4;

    iget-object v1, p0, Lcom/narvii/blog/post/-$$Lambda$StoryPostActivity$4$Ng7trLR1R5asK9RxdnCpr3s6Rsc;->f$1:Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {v0, v1, p1}, Lcom/narvii/blog/post/StoryPostActivity$4;->lambda$onFinish$0$StoryPostActivity$4(Lcom/narvii/blog/post/BlogPost;Landroid/view/View;)V

    return-void
.end method
