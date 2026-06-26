.class final Lcom/narvii/chat/core/ChatService$refresh$1;
.super Ljava/lang/Object;
.source "ChatService.kt"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/core/ChatService;->refresh(Z)V
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
        "Lcom/narvii/community/AffiliationsService$AffiliationResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/core/ChatService;


# direct methods
.method constructor <init>(Lcom/narvii/chat/core/ChatService;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/core/ChatService$refresh$1;->this$0:Lcom/narvii/chat/core/ChatService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Lcom/narvii/community/AffiliationsService$AffiliationResponse;)V
    .locals 2

    .line 624
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 625
    iget-object p1, p1, Lcom/narvii/community/AffiliationsService$AffiliationResponse;->affiliations:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 626
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 628
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/core/ChatService$refresh$1;->this$0:Lcom/narvii/chat/core/ChatService;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/narvii/chat/core/ChatService;->queryThreadCheckInfo(Ljava/util/Set;Z)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 107
    check-cast p1, Lcom/narvii/community/AffiliationsService$AffiliationResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/core/ChatService$refresh$1;->call(Lcom/narvii/community/AffiliationsService$AffiliationResponse;)V

    return-void
.end method
