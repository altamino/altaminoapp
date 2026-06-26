.class Lcom/narvii/blog/detail/BlogDetailFragment$TopAdapter;
.super Lcom/narvii/list/StaticViewAdapter;
.source "BlogDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/blog/detail/BlogDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TopAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/blog/detail/BlogDetailFragment;


# direct methods
.method private constructor <init>(Lcom/narvii/blog/detail/BlogDetailFragment;)V
    .locals 0

    .line 649
    iput-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$TopAdapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-direct {p0}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/blog/detail/BlogDetailFragment;Lcom/narvii/blog/detail/BlogDetailFragment$1;)V
    .locals 0

    .line 649
    invoke-direct {p0, p1}, Lcom/narvii/blog/detail/BlogDetailFragment$TopAdapter;-><init>(Lcom/narvii/blog/detail/BlogDetailFragment;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 652
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$TopAdapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-static {v0}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$500(Lcom/narvii/blog/detail/BlogDetailFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$TopAdapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-static {v0}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$600(Lcom/narvii/blog/detail/BlogDetailFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 653
    invoke-super {p0}, Lcom/narvii/list/StaticViewAdapter;->getCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
