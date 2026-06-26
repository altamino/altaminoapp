.class Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter$1;
.super Ljava/lang/Object;
.source "FeedDetailFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;->tryJoinCommunity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;)V
    .locals 0

    .line 1735
    iput-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter$1;->this$1:Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 0

    .line 1738
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1739
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter$1;->this$1:Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;

    invoke-static {p1}, Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;->access$1000(Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1735
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter$1;->call(Ljava/lang/Boolean;)V

    return-void
.end method
