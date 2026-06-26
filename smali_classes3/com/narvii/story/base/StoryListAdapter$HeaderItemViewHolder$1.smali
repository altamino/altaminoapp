.class final Lcom/narvii/story/base/StoryListAdapter$HeaderItemViewHolder$1;
.super Ljava/lang/Object;
.source "StoryListAdapter.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/base/StoryListAdapter$HeaderItemViewHolder;-><init>(Lcom/narvii/story/base/StoryListAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $itemView:Landroid/view/View;

.field final synthetic this$0:Lcom/narvii/story/base/StoryListAdapter$HeaderItemViewHolder;


# direct methods
.method constructor <init>(Lcom/narvii/story/base/StoryListAdapter$HeaderItemViewHolder;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/story/base/StoryListAdapter$HeaderItemViewHolder$1;->this$0:Lcom/narvii/story/base/StoryListAdapter$HeaderItemViewHolder;

    iput-object p2, p0, Lcom/narvii/story/base/StoryListAdapter$HeaderItemViewHolder$1;->$itemView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 219
    iget-object p1, p0, Lcom/narvii/story/base/StoryListAdapter$HeaderItemViewHolder$1;->this$0:Lcom/narvii/story/base/StoryListAdapter$HeaderItemViewHolder;

    iget-object p1, p1, Lcom/narvii/story/base/StoryListAdapter$HeaderItemViewHolder;->this$0:Lcom/narvii/story/base/StoryListAdapter;

    iget-object v0, p0, Lcom/narvii/story/base/StoryListAdapter$HeaderItemViewHolder$1;->$itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/narvii/story/base/StoryListAdapter;->onHeaderViewClicked(Landroid/view/View;)V

    return-void
.end method
