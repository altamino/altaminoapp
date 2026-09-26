.class public final synthetic Lcom/narvii/topic/adapter/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/topic/adapter/y;->a:Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/topic/adapter/y;->a:Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;

    invoke-static {v0}, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$RecyclerViewHolder;->c(Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;)V

    return-void
.end method
