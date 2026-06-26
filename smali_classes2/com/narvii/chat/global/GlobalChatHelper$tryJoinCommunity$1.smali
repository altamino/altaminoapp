.class final Lcom/narvii/chat/global/GlobalChatHelper$tryJoinCommunity$1;
.super Ljava/lang/Object;
.source "GlobalChatHelper.kt"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/global/GlobalChatHelper;->tryJoinCommunity(IZZZLcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;)Z
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
.field final synthetic $callback:Lcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;

.field final synthetic $cid:I

.field final synthetic this$0:Lcom/narvii/chat/global/GlobalChatHelper;


# direct methods
.method constructor <init>(Lcom/narvii/chat/global/GlobalChatHelper;ILcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatHelper$tryJoinCommunity$1;->this$0:Lcom/narvii/chat/global/GlobalChatHelper;

    iput p2, p0, Lcom/narvii/chat/global/GlobalChatHelper$tryJoinCommunity$1;->$cid:I

    iput-object p3, p0, Lcom/narvii/chat/global/GlobalChatHelper$tryJoinCommunity$1;->$callback:Lcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Boolean;)V
    .locals 2

    .line 152
    iget-object p1, p0, Lcom/narvii/chat/global/GlobalChatHelper$tryJoinCommunity$1;->this$0:Lcom/narvii/chat/global/GlobalChatHelper;

    iget v0, p0, Lcom/narvii/chat/global/GlobalChatHelper$tryJoinCommunity$1;->$cid:I

    iget-object v1, p0, Lcom/narvii/chat/global/GlobalChatHelper$tryJoinCommunity$1;->$callback:Lcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;

    invoke-static {p1, v0, v1}, Lcom/narvii/chat/global/GlobalChatHelper;->access$innerJoinCommunity(Lcom/narvii/chat/global/GlobalChatHelper;ILcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 39
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/global/GlobalChatHelper$tryJoinCommunity$1;->call(Ljava/lang/Boolean;)V

    return-void
.end method
