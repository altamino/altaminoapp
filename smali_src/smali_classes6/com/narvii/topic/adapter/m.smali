.class public final synthetic Lcom/narvii/topic/adapter/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;


# instance fields
.field public final synthetic a:Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/topic/adapter/m;->a:Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;

    return-void
.end method


# virtual methods
.method public final onDataSetChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/topic/adapter/m;->a:Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;

    invoke-static {v0}, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$RecyclerViewHolder;->a(Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;)V

    return-void
.end method
