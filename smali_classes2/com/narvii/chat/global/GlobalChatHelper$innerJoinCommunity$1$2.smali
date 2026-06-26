.class final Lcom/narvii/chat/global/GlobalChatHelper$innerJoinCommunity$1$2;
.super Ljava/lang/Object;
.source "GlobalChatHelper.kt"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/global/GlobalChatHelper$innerJoinCommunity$1;->call(Ljava/lang/Boolean;)V
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


# instance fields
.field final synthetic $chatToJoin:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic this$0:Lcom/narvii/chat/global/GlobalChatHelper$innerJoinCommunity$1;


# direct methods
.method constructor <init>(Lcom/narvii/chat/global/GlobalChatHelper$innerJoinCommunity$1;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatHelper$innerJoinCommunity$1$2;->this$0:Lcom/narvii/chat/global/GlobalChatHelper$innerJoinCommunity$1;

    iput-object p2, p0, Lcom/narvii/chat/global/GlobalChatHelper$innerJoinCommunity$1$2;->$chatToJoin:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Boolean;)V
    .locals 3

    .line 190
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatHelper$innerJoinCommunity$1$2;->this$0:Lcom/narvii/chat/global/GlobalChatHelper$innerJoinCommunity$1;

    iget-object v0, v0, Lcom/narvii/chat/global/GlobalChatHelper$innerJoinCommunity$1;->$progress:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 191
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatHelper$innerJoinCommunity$1$2;->this$0:Lcom/narvii/chat/global/GlobalChatHelper$innerJoinCommunity$1;

    iget-object v1, v0, Lcom/narvii/chat/global/GlobalChatHelper$innerJoinCommunity$1;->$callback:Lcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;

    if-eqz v1, :cond_0

    iget v0, v0, Lcom/narvii/chat/global/GlobalChatHelper$innerJoinCommunity$1;->$cid:I

    const-string v2, "joinSuccess"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v1, v0, p1}, Lcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;->onPostJoinCommunity(IZ)V

    .line 193
    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 39
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/global/GlobalChatHelper$innerJoinCommunity$1$2;->call(Ljava/lang/Boolean;)V

    return-void
.end method
