.class public final synthetic Lcom/narvii/chat/util/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/util/GlobalChatService;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/util/GlobalChatService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/util/m;->a:Lcom/narvii/chat/util/GlobalChatService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/util/m;->a:Lcom/narvii/chat/util/GlobalChatService;

    invoke-static {v0}, Lcom/narvii/chat/util/GlobalChatService;->a(Lcom/narvii/chat/util/GlobalChatService;)Ljava/util/ArrayList;

    return-void
.end method
