.class Lcom/narvii/story/StoryListFragment$5;
.super Ljava/lang/Object;
.source "StoryListFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/StoryListFragment;->onSnapPotionChanged(IILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/model/Community;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/StoryListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/story/StoryListFragment;)V
    .locals 0

    .line 821
    iput-object p1, p0, Lcom/narvii/story/StoryListFragment$5;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/Community;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 825
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$5;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryListFragment;->access$900(Lcom/narvii/story/StoryListFragment;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p1, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 826
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$5;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryListFragment;->access$900(Lcom/narvii/story/StoryListFragment;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p1, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 828
    :cond_0
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment$5;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {p1}, Lcom/narvii/story/StoryListFragment;->access$1000(Lcom/narvii/story/StoryListFragment;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 821
    check-cast p1, Lcom/narvii/model/Community;

    invoke-virtual {p0, p1}, Lcom/narvii/story/StoryListFragment$5;->call(Lcom/narvii/model/Community;)V

    return-void
.end method
