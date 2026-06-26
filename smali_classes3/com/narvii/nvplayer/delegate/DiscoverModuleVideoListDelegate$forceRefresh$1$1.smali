.class final Lcom/narvii/nvplayer/delegate/DiscoverModuleVideoListDelegate$forceRefresh$1$1;
.super Ljava/lang/Object;
.source "DiscoverModuleVideoListDelegate.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/nvplayer/delegate/DiscoverModuleVideoListDelegate$forceRefresh$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/nvplayer/delegate/DiscoverModuleVideoListDelegate$forceRefresh$1;


# direct methods
.method constructor <init>(Lcom/narvii/nvplayer/delegate/DiscoverModuleVideoListDelegate$forceRefresh$1;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/nvplayer/delegate/DiscoverModuleVideoListDelegate$forceRefresh$1$1;->this$0:Lcom/narvii/nvplayer/delegate/DiscoverModuleVideoListDelegate$forceRefresh$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/narvii/nvplayer/delegate/DiscoverModuleVideoListDelegate$forceRefresh$1$1;->this$0:Lcom/narvii/nvplayer/delegate/DiscoverModuleVideoListDelegate$forceRefresh$1;

    iget-object v0, v0, Lcom/narvii/nvplayer/delegate/DiscoverModuleVideoListDelegate$forceRefresh$1;->this$0:Lcom/narvii/nvplayer/delegate/DiscoverModuleVideoListDelegate;

    invoke-virtual {v0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->refreshPlayerPosition()V

    return-void
.end method
