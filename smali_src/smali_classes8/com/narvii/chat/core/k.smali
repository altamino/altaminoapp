.class public final synthetic Lcom/narvii/chat/core/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/core/ChatService;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/core/ChatService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/core/k;->a:Lcom/narvii/chat/core/ChatService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/core/k;->a:Lcom/narvii/chat/core/ChatService;

    invoke-static {v0}, Lcom/narvii/chat/core/ChatService;->a(Lcom/narvii/chat/core/ChatService;)V

    return-void
.end method
