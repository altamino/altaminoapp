.class public final synthetic Lcom/narvii/chat/-$$Lambda$ChatFragment$hAX_VnDy_32BchcR9RvhW5Mgr54;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/narvii/chat/ChatFragment;

.field private final synthetic f$1:Lcom/narvii/model/ChatThread;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/ChatFragment;Lcom/narvii/model/ChatThread;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/-$$Lambda$ChatFragment$hAX_VnDy_32BchcR9RvhW5Mgr54;->f$0:Lcom/narvii/chat/ChatFragment;

    iput-object p2, p0, Lcom/narvii/chat/-$$Lambda$ChatFragment$hAX_VnDy_32BchcR9RvhW5Mgr54;->f$1:Lcom/narvii/model/ChatThread;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/narvii/chat/-$$Lambda$ChatFragment$hAX_VnDy_32BchcR9RvhW5Mgr54;->f$0:Lcom/narvii/chat/ChatFragment;

    iget-object v1, p0, Lcom/narvii/chat/-$$Lambda$ChatFragment$hAX_VnDy_32BchcR9RvhW5Mgr54;->f$1:Lcom/narvii/model/ChatThread;

    invoke-virtual {v0, v1, p1}, Lcom/narvii/chat/ChatFragment;->lambda$updateFloatView$1$ChatFragment(Lcom/narvii/model/ChatThread;Landroid/view/View;)V

    return-void
.end method
