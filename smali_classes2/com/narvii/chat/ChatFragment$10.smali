.class Lcom/narvii/chat/ChatFragment$10;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/ChatFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/ChatFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/ChatFragment;)V
    .locals 0

    .line 1114
    iput-object p1, p0, Lcom/narvii/chat/ChatFragment$10;->this$0:Lcom/narvii/chat/ChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1117
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment$10;->this$0:Lcom/narvii/chat/ChatFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/narvii/chat/ChatFragment;->liveLayerTarget:Ljava/lang/String;

    .line 1118
    invoke-static {v0}, Lcom/narvii/chat/ChatFragment;->access$900(Lcom/narvii/chat/ChatFragment;)V

    const-wide/32 v0, 0x493e0

    .line 1119
    invoke-static {p0, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
