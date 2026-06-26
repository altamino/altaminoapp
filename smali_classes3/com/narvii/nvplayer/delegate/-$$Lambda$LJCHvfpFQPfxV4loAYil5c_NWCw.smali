.class public final synthetic Lcom/narvii/nvplayer/delegate/-$$Lambda$LJCHvfpFQPfxV4loAYil5c_NWCw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/narvii/nvplayer/delegate/DiscoverVideoListDelegate;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/nvplayer/delegate/DiscoverVideoListDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/nvplayer/delegate/-$$Lambda$LJCHvfpFQPfxV4loAYil5c_NWCw;->f$0:Lcom/narvii/nvplayer/delegate/DiscoverVideoListDelegate;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/nvplayer/delegate/-$$Lambda$LJCHvfpFQPfxV4loAYil5c_NWCw;->f$0:Lcom/narvii/nvplayer/delegate/DiscoverVideoListDelegate;

    invoke-virtual {v0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->refreshPlayerPosition()V

    return-void
.end method
