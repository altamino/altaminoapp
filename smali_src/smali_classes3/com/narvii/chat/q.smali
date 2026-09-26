.class public final synthetic Lcom/narvii/chat/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/ChatListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/ChatListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/q;->a:Lcom/narvii/chat/ChatListFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/q;->a:Lcom/narvii/chat/ChatListFragment;

    invoke-static {v0}, Lcom/narvii/chat/ChatListFragment;->t(Lcom/narvii/chat/ChatListFragment;)V

    return-void
.end method
