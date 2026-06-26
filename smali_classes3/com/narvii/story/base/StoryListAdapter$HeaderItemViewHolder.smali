.class public final Lcom/narvii/story/base/StoryListAdapter$HeaderItemViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "StoryListAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/story/base/StoryListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "HeaderItemViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/base/StoryListAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/story/base/StoryListAdapter;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    iput-object p1, p0, Lcom/narvii/story/base/StoryListAdapter$HeaderItemViewHolder;->this$0:Lcom/narvii/story/base/StoryListAdapter;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 219
    new-instance p1, Lcom/narvii/story/base/StoryListAdapter$HeaderItemViewHolder$1;

    invoke-direct {p1, p0, p2}, Lcom/narvii/story/base/StoryListAdapter$HeaderItemViewHolder$1;-><init>(Lcom/narvii/story/base/StoryListAdapter$HeaderItemViewHolder;Landroid/view/View;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
