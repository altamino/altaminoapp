.class public final synthetic Lcom/narvii/chat/setting/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/setting/LiveWaitingListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/setting/LiveWaitingListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/setting/j;->a:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/setting/j;->a:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    invoke-static {v0, p1}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->A(Lcom/narvii/chat/setting/LiveWaitingListFragment;Landroid/view/View;)V

    return-void
.end method
