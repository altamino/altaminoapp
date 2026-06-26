.class final Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter$notifyDataSetChanged$1;
.super Ljava/lang/Object;
.source "PostListAdapter.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;->notifyDataSetChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter$notifyDataSetChanged$1;->this$0:Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter$notifyDataSetChanged$1;->this$0:Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    iget-object v0, v0, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;->this$0:Lcom/narvii/topic/adapter/PostListAdapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
