.class public final synthetic Lcom/narvii/chat/video/overlay/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/video/overlay/ChatGuestListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/video/overlay/ChatGuestListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/video/overlay/a;->a:Lcom/narvii/chat/video/overlay/ChatGuestListFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/a;->a:Lcom/narvii/chat/video/overlay/ChatGuestListFragment;

    invoke-static {v0}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->t(Lcom/narvii/chat/video/overlay/ChatGuestListFragment;)V

    return-void
.end method
