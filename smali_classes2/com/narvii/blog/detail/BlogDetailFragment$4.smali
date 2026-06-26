.class Lcom/narvii/blog/detail/BlogDetailFragment$4;
.super Ljava/lang/Object;
.source "BlogDetailFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/blog/detail/BlogDetailFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/blog/detail/BlogDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/blog/detail/BlogDetailFragment;)V
    .locals 0

    .line 505
    iput-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$4;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 1

    .line 508
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$4;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    iget-object p1, p1, Lcom/narvii/blog/detail/BlogDetailFragment;->blogAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 509
    iput-boolean v0, p1, Lcom/narvii/detail/FeedDetailAdapter;->isBookmarked:Z

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 505
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/detail/BlogDetailFragment$4;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
