.class final Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter$createErrorItem$1;
.super Ljava/lang/Object;
.source "AggregationChatFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;->createErrorItem(Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter$createErrorItem$1;->this$0:Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 218
    iget-object p1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter$createErrorItem$1;->this$0:Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;

    invoke-virtual {p1}, Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;->onErrorRetry()V

    return-void
.end method
