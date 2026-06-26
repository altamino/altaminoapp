.class public final synthetic Lcom/narvii/story/-$$Lambda$ShareStoryFragment$86NRFzvDlxKf83-0bcENWBgWJUU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field private final synthetic f$0:Lcom/narvii/story/ShareStoryFragment;

.field private final synthetic f$1:Lcom/narvii/model/Community;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/story/ShareStoryFragment;Lcom/narvii/model/Community;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/story/-$$Lambda$ShareStoryFragment$86NRFzvDlxKf83-0bcENWBgWJUU;->f$0:Lcom/narvii/story/ShareStoryFragment;

    iput-object p2, p0, Lcom/narvii/story/-$$Lambda$ShareStoryFragment$86NRFzvDlxKf83-0bcENWBgWJUU;->f$1:Lcom/narvii/model/Community;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/narvii/story/-$$Lambda$ShareStoryFragment$86NRFzvDlxKf83-0bcENWBgWJUU;->f$0:Lcom/narvii/story/ShareStoryFragment;

    iget-object v1, p0, Lcom/narvii/story/-$$Lambda$ShareStoryFragment$86NRFzvDlxKf83-0bcENWBgWJUU;->f$1:Lcom/narvii/model/Community;

    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {v0, v1, p1}, Lcom/narvii/story/ShareStoryFragment;->lambda$toStoryPost$1$ShareStoryFragment(Lcom/narvii/model/Community;Lcom/narvii/blog/post/BlogPost;)V

    return-void
.end method
