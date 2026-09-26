.class public final synthetic Lcom/narvii/detail/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/detail/i;->a:Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/detail/i;->a:Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;

    invoke-static {v0, p1}, Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;->f(Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;Landroid/view/View;)V

    return-void
.end method
