.class public final synthetic Lcom/narvii/topic/adapter/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;


# instance fields
.field public final synthetic a:Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/topic/adapter/z;->a:Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;

    return-void
.end method


# virtual methods
.method public final onDataSetChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/topic/adapter/z;->a:Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;

    invoke-static {v0}, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$RecyclerViewHolder;->b(Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;)V

    return-void
.end method
