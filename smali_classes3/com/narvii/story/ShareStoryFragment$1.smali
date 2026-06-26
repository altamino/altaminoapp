.class Lcom/narvii/story/ShareStoryFragment$1;
.super Lcom/narvii/story/ShareStoryFragment$SectionAdapter;
.source "ShareStoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/ShareStoryFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/ShareStoryFragment;


# direct methods
.method constructor <init>(Lcom/narvii/story/ShareStoryFragment;I)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/narvii/story/ShareStoryFragment$1;->this$0:Lcom/narvii/story/ShareStoryFragment;

    invoke-direct {p0, p1, p2}, Lcom/narvii/story/ShareStoryFragment$SectionAdapter;-><init>(Lcom/narvii/story/ShareStoryFragment;I)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/narvii/story/ShareStoryFragment$1;->this$0:Lcom/narvii/story/ShareStoryFragment;

    invoke-static {v0}, Lcom/narvii/story/ShareStoryFragment;->access$000(Lcom/narvii/story/ShareStoryFragment;)Lcom/narvii/story/ShareStoryFragment$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
