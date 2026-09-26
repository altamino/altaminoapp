.class public final synthetic Lcom/narvii/chat/input/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/input/ChatInputFragment;

.field public final synthetic b:Ljava/lang/Boolean;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/input/ChatInputFragment;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/input/b;->a:Lcom/narvii/chat/input/ChatInputFragment;

    iput-object p2, p0, Lcom/narvii/chat/input/b;->b:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/input/b;->a:Lcom/narvii/chat/input/ChatInputFragment;

    iget-object v1, p0, Lcom/narvii/chat/input/b;->b:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/narvii/chat/input/ChatInputFragment;->o(Lcom/narvii/chat/input/ChatInputFragment;Ljava/lang/Boolean;)V

    return-void
.end method
