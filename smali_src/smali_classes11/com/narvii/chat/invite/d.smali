.class public final synthetic Lcom/narvii/chat/invite/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/invite/JoinThreadFragment;

.field public final synthetic b:Lcom/narvii/model/ChatThread;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/invite/JoinThreadFragment;Lcom/narvii/model/ChatThread;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/invite/d;->a:Lcom/narvii/chat/invite/JoinThreadFragment;

    iput-object p2, p0, Lcom/narvii/chat/invite/d;->b:Lcom/narvii/model/ChatThread;

    iput-object p3, p0, Lcom/narvii/chat/invite/d;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/invite/d;->a:Lcom/narvii/chat/invite/JoinThreadFragment;

    iget-object v1, p0, Lcom/narvii/chat/invite/d;->b:Lcom/narvii/model/ChatThread;

    iget-object v2, p0, Lcom/narvii/chat/invite/d;->c:Ljava/lang/String;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, v2, p1}, Lcom/narvii/chat/invite/JoinThreadFragment;->n(Lcom/narvii/chat/invite/JoinThreadFragment;Lcom/narvii/model/ChatThread;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method
