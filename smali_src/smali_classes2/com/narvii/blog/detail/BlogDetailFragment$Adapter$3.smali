.class Lcom/narvii/blog/detail/BlogDetailFragment$Adapter$3;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter$3;->this$1:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onPreviewBlocked()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter$3;->this$1:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$2200(Lcom/narvii/blog/detail/BlogDetailFragment;)Z

    .line 8
    return-void
.end method
