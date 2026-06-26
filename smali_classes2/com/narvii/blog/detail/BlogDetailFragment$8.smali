.class Lcom/narvii/blog/detail/BlogDetailFragment$8;
.super Ljava/lang/Object;
.source "BlogDetailFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/blog/detail/BlogDetailFragment;->bookmark(Ljava/lang/String;)V
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

    .line 2275
    iput-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$8;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    .line 2278
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$8;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f0174

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 2279
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$8;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    iget-object p1, p1, Lcom/narvii/blog/detail/BlogDetailFragment;->blogAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 2280
    iput-boolean v0, p1, Lcom/narvii/detail/FeedDetailAdapter;->isBookmarked:Z

    .line 2281
    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 2275
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/detail/BlogDetailFragment$8;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
