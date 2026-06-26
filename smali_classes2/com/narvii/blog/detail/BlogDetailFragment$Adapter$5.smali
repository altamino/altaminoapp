.class Lcom/narvii/blog/detail/BlogDetailFragment$Adapter$5;
.super Ljava/lang/Object;
.source "BlogDetailFragment.java"

# interfaces
.implements Lcom/narvii/poll/PollOptionListLayout$PollPreviewBlockListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->setResponse(Lcom/narvii/model/api/FeedResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;


# direct methods
.method constructor <init>(Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;)V
    .locals 0

    .line 1008
    iput-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter$5;->this$1:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewBlocked()V
    .locals 1

    .line 1011
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter$5;->this$1:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    iget-object v0, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-static {v0}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$3600(Lcom/narvii/blog/detail/BlogDetailFragment;)Z

    return-void
.end method
