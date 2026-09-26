.class public final synthetic Lcom/narvii/detail/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/detail/FeedDetailFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/detail/FeedDetailFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/detail/d;->a:Lcom/narvii/detail/FeedDetailFragment;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/detail/d;->a:Lcom/narvii/detail/FeedDetailFragment;

    check-cast p1, Lcom/narvii/model/api/UserListResponse;

    invoke-static {v0, p1}, Lcom/narvii/detail/FeedDetailFragment;->u(Lcom/narvii/detail/FeedDetailFragment;Lcom/narvii/model/api/UserListResponse;)V

    return-void
.end method
