.class final Lcom/narvii/chat/global/chat/AggregationChatFragment$onViewCreated$2;
.super Ljava/lang/Object;
.source "AggregationChatFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/global/chat/AggregationChatFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/global/chat/AggregationChatFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/global/chat/AggregationChatFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment$onViewCreated$2;->this$0:Lcom/narvii/chat/global/chat/AggregationChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 139
    iget-object p1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment$onViewCreated$2;->this$0:Lcom/narvii/chat/global/chat/AggregationChatFragment;

    invoke-virtual {p1}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->getINDEX_GLOBAL_CHAT()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->onItemSelected(ILcom/narvii/model/Community;)V

    return-void
.end method
