.class public final synthetic Lcom/narvii/detail/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/detail/FeedDetailFragment;

.field public final synthetic b:Landroid/widget/ListView;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/detail/FeedDetailFragment;Landroid/widget/ListView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/detail/c;->a:Lcom/narvii/detail/FeedDetailFragment;

    iput-object p2, p0, Lcom/narvii/detail/c;->b:Landroid/widget/ListView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/detail/c;->a:Lcom/narvii/detail/FeedDetailFragment;

    iget-object v1, p0, Lcom/narvii/detail/c;->b:Landroid/widget/ListView;

    invoke-static {v0, v1}, Lcom/narvii/detail/FeedDetailFragment;->x(Lcom/narvii/detail/FeedDetailFragment;Landroid/widget/ListView;)V

    return-void
.end method
