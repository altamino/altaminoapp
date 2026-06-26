.class Lcom/narvii/story/StoryListFragment$8;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "StoryListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/StoryListFragment;->createLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/StoryListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/story/StoryListFragment;Landroid/content/Context;)V
    .locals 0

    .line 1520
    iput-object p1, p0, Lcom/narvii/story/StoryListFragment$8;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public canScrollVertically()Z
    .locals 1

    .line 1523
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$8;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryListFragment;->access$1100(Lcom/narvii/story/StoryListFragment;)Z

    move-result v0

    return v0
.end method
