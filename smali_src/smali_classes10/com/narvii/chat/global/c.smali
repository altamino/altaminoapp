.class public final synthetic Lcom/narvii/chat/global/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/global/GlobalChatHelper;

.field public final synthetic b:I

.field public final synthetic c:Lcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/global/GlobalChatHelper;ILcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/global/c;->a:Lcom/narvii/chat/global/GlobalChatHelper;

    iput p2, p0, Lcom/narvii/chat/global/c;->b:I

    iput-object p3, p0, Lcom/narvii/chat/global/c;->c:Lcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/global/c;->a:Lcom/narvii/chat/global/GlobalChatHelper;

    iget v1, p0, Lcom/narvii/chat/global/c;->b:I

    iget-object v2, p0, Lcom/narvii/chat/global/c;->c:Lcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, v2, p1}, Lcom/narvii/chat/global/GlobalChatHelper;->e(Lcom/narvii/chat/global/GlobalChatHelper;ILcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;Ljava/lang/Boolean;)V

    return-void
.end method
