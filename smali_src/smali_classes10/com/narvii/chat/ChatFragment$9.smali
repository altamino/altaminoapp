.class Lcom/narvii/chat/ChatFragment$9;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/ChatFragment$9;->this$0:Lcom/narvii/chat/ChatFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment$9;->this$0:Lcom/narvii/chat/ChatFragment;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    iput-object v1, v0, Lcom/narvii/chat/ChatFragment;->liveLayerTarget:Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/chat/ChatFragment;->w(Lcom/narvii/chat/ChatFragment;)V

    .line 9
    .line 10
    .line 11
    const-wide/32 v0, 0x493e0

    .line 12
    .line 13
    .line 14
    invoke-static {p0, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 15
    return-void
.end method
