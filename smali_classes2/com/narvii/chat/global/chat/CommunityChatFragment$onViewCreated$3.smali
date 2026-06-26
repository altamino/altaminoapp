.class final Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$3;
.super Ljava/lang/Object;
.source "CommunityChatFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/global/chat/CommunityChatFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/global/chat/CommunityChatFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$3;->this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 213
    iget-object p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$3;->this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment;

    invoke-virtual {p1}, Lcom/narvii/chat/global/chat/CommunityChatFragment;->getAdapter()Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    return-void
.end method
