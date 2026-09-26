.class public final synthetic Lcom/narvii/detail/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/detail/FeedDetailFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/detail/FeedDetailFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/detail/f;->a:Lcom/narvii/detail/FeedDetailFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/detail/f;->a:Lcom/narvii/detail/FeedDetailFragment;

    invoke-virtual {v0}, Lcom/narvii/detail/FeedDetailFragment;->tryShowTippingTooltip()V

    return-void
.end method
