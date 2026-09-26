.class public final synthetic Lcom/narvii/detail/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/livelayer/LiveLayerOnlineBar$OnFoldChangedListener;


# instance fields
.field public final synthetic a:Lcom/narvii/detail/FeedDetailFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/detail/FeedDetailFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/detail/b;->a:Lcom/narvii/detail/FeedDetailFragment;

    return-void
.end method


# virtual methods
.method public final onFoldChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/detail/b;->a:Lcom/narvii/detail/FeedDetailFragment;

    invoke-static {v0, p1}, Lcom/narvii/detail/FeedDetailFragment;->w(Lcom/narvii/detail/FeedDetailFragment;Z)V

    return-void
.end method
