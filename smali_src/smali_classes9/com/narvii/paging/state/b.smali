.class public final synthetic Lcom/narvii/paging/state/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/paging/state/ErrorRetryListener;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/paging/state/ErrorRetryListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/paging/state/b;->a:Lcom/narvii/paging/state/ErrorRetryListener;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/paging/state/b;->a:Lcom/narvii/paging/state/ErrorRetryListener;

    invoke-static {v0, p1}, Lcom/narvii/paging/state/PageLoadStateItemViewHolder;->a(Lcom/narvii/paging/state/ErrorRetryListener;Landroid/view/View;)V

    return-void
.end method
