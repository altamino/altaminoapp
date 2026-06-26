.class final Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$RecyclerViewHolder$1;
.super Ljava/lang/Object;
.source "MyCommunityModuleHorizontalAdapter.kt"

# interfaces
.implements Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$RecyclerViewHolder;-><init>(Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$RecyclerViewHolder;


# direct methods
.method constructor <init>(Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$RecyclerViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$RecyclerViewHolder$1;->this$0:Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$RecyclerViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataSetChanged()V
    .locals 1

    .line 118
    new-instance v0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$RecyclerViewHolder$1$1;

    invoke-direct {v0, p0}, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$RecyclerViewHolder$1$1;-><init>(Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$RecyclerViewHolder$1;)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method
