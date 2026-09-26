.class public final synthetic Lcom/narvii/chat/core/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/core/ChatService;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/core/ChatService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/core/g;->a:Lcom/narvii/chat/core/ChatService;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/core/g;->a:Lcom/narvii/chat/core/ChatService;

    check-cast p1, Lcom/narvii/community/AffiliationsService$AffiliationResponse;

    invoke-static {v0, p1}, Lcom/narvii/chat/core/ChatService;->j(Lcom/narvii/chat/core/ChatService;Lcom/narvii/community/AffiliationsService$AffiliationResponse;)V

    return-void
.end method
