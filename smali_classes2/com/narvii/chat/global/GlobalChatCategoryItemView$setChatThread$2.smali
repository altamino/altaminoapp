.class final Lcom/narvii/chat/global/GlobalChatCategoryItemView$setChatThread$2;
.super Ljava/lang/Object;
.source "GlobalChatCategoryItemView.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/global/GlobalChatCategoryItemView;->setChatThread(Lcom/narvii/chat/hangout/HangoutItem;Lcom/narvii/model/ChatThread;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGlobalChatCategoryItemView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlobalChatCategoryItemView.kt\ncom/narvii/chat/global/GlobalChatCategoryItemView$setChatThread$2\n*L\n1#1,230:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $thread:Lcom/narvii/model/ChatThread;

.field final synthetic this$0:Lcom/narvii/chat/global/GlobalChatCategoryItemView;


# direct methods
.method constructor <init>(Lcom/narvii/chat/global/GlobalChatCategoryItemView;Lcom/narvii/model/ChatThread;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView$setChatThread$2;->this$0:Lcom/narvii/chat/global/GlobalChatCategoryItemView;

    iput-object p2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView$setChatThread$2;->$thread:Lcom/narvii/model/ChatThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 216
    iget-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView$setChatThread$2;->this$0:Lcom/narvii/chat/global/GlobalChatCategoryItemView;

    invoke-static {p1}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->access$getShownInAdapter$p(Lcom/narvii/chat/global/GlobalChatCategoryItemView;)Lcom/narvii/list/NVAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 217
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView$setChatThread$2;->$thread:Lcom/narvii/model/ChatThread;

    sget-object v1, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 219
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView$setChatThread$2;->this$0:Lcom/narvii/chat/global/GlobalChatCategoryItemView;

    invoke-static {p1}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->access$getCommunityMap$p(Lcom/narvii/chat/global/GlobalChatCategoryItemView;)Ljava/util/HashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView$setChatThread$2;->$thread:Lcom/narvii/model/ChatThread;

    iget v0, v0, Lcom/narvii/model/ChatThread;->ndcId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Community;

    if-eqz p1, :cond_1

    .line 221
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView$setChatThread$2;->this$0:Lcom/narvii/chat/global/GlobalChatCategoryItemView;

    invoke-static {v0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->access$getChatLaunchHelper$p(Lcom/narvii/chat/global/GlobalChatCategoryItemView;)Lcom/narvii/chat/global/GlobalChatHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView$setChatThread$2;->$thread:Lcom/narvii/model/ChatThread;

    invoke-virtual {v0, v1, p1}, Lcom/narvii/chat/global/GlobalChatHelper;->launchChatThread(Lcom/narvii/model/ChatThread;Lcom/narvii/model/Community;)V

    :cond_1
    return-void
.end method
