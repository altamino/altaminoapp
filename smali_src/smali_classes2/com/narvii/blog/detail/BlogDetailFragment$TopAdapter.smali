.class Lcom/narvii/blog/detail/BlogDetailFragment$TopAdapter;
.super Lcom/narvii/list/StaticViewAdapter;
.source "SourceFile"


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

    iput-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$TopAdapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 2
    invoke-direct {p0}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/blog/detail/BlogDetailFragment;Lcom/narvii/blog/detail/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/blog/detail/BlogDetailFragment$TopAdapter;-><init>(Lcom/narvii/blog/detail/BlogDetailFragment;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$TopAdapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$000(Lcom/narvii/blog/detail/BlogDetailFragment;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$TopAdapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$100(Lcom/narvii/blog/detail/BlogDetailFragment;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-super {p0}, Lcom/narvii/list/StaticViewAdapter;->getCount()I

    .line 20
    move-result v0

    .line 21
    return v0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    return v0
.end method
