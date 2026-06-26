.class final Lcom/narvii/chat/global/GlobalChatHelper$innerJoinCommunity$1;
.super Ljava/lang/Object;
.source "GlobalChatHelper.kt"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/global/GlobalChatHelper;->innerJoinCommunity(ILcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGlobalChatHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlobalChatHelper.kt\ncom/narvii/chat/global/GlobalChatHelper$innerJoinCommunity$1\n*L\n1#1,287:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $callback:Lcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;

.field final synthetic $cid:I

.field final synthetic $progress:Lcom/narvii/util/dialog/ProgressDialog;

.field final synthetic this$0:Lcom/narvii/chat/global/GlobalChatHelper;


# direct methods
.method constructor <init>(Lcom/narvii/chat/global/GlobalChatHelper;ILcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;Lcom/narvii/util/dialog/ProgressDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatHelper$innerJoinCommunity$1;->this$0:Lcom/narvii/chat/global/GlobalChatHelper;

    iput p2, p0, Lcom/narvii/chat/global/GlobalChatHelper$innerJoinCommunity$1;->$cid:I

    iput-object p3, p0, Lcom/narvii/chat/global/GlobalChatHelper$innerJoinCommunity$1;->$callback:Lcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;

    iput-object p4, p0, Lcom/narvii/chat/global/GlobalChatHelper$innerJoinCommunity$1;->$progress:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Boolean;)V
    .locals 3

    const-string v0, "success"

    .line 175
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 183
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 184
    iget-object v1, p0, Lcom/narvii/chat/global/GlobalChatHelper$innerJoinCommunity$1;->$callback:Lcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;->followingChatToJoin()Lcom/narvii/model/ChatThread;

    move-result-object v1

    iput-object v1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 185
    :cond_0
    iget-object v1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lcom/narvii/model/ChatThread;

    if-nez v2, :cond_1

    .line 186
    iget-object p1, p0, Lcom/narvii/chat/global/GlobalChatHelper$innerJoinCommunity$1;->$progress:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 187
    iget-object p1, p0, Lcom/narvii/chat/global/GlobalChatHelper$innerJoinCommunity$1;->$callback:Lcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;

    if-eqz p1, :cond_4

    iget v0, p0, Lcom/narvii/chat/global/GlobalChatHelper$innerJoinCommunity$1;->$cid:I

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;->onPostJoinCommunity(IZ)V

    goto :goto_0

    .line 189
    :cond_1
    iget-object v2, p0, Lcom/narvii/chat/global/GlobalChatHelper$innerJoinCommunity$1;->this$0:Lcom/narvii/chat/global/GlobalChatHelper;

    check-cast v1, Lcom/narvii/model/ChatThread;

    if-eqz v1, :cond_2

    new-instance v0, Lcom/narvii/chat/global/GlobalChatHelper$innerJoinCommunity$1$2;

    invoke-direct {v0, p0, p1}, Lcom/narvii/chat/global/GlobalChatHelper$innerJoinCommunity$1$2;-><init>(Lcom/narvii/chat/global/GlobalChatHelper$innerJoinCommunity$1;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-static {v2, v1, v0}, Lcom/narvii/chat/global/GlobalChatHelper;->access$joinChat(Lcom/narvii/chat/global/GlobalChatHelper;Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0

    .line 202
    :cond_3
    iget-object p1, p0, Lcom/narvii/chat/global/GlobalChatHelper$innerJoinCommunity$1;->$progress:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 203
    iget-object p1, p0, Lcom/narvii/chat/global/GlobalChatHelper$innerJoinCommunity$1;->$callback:Lcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;

    if-eqz p1, :cond_4

    iget v0, p0, Lcom/narvii/chat/global/GlobalChatHelper$innerJoinCommunity$1;->$cid:I

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;->onPostJoinCommunity(IZ)V

    :cond_4
    :goto_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 39
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/global/GlobalChatHelper$innerJoinCommunity$1;->call(Ljava/lang/Boolean;)V

    return-void
.end method
