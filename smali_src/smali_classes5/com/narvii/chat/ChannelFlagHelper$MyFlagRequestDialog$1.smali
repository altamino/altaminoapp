.class Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;


# direct methods
.method constructor <init>(Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$1;->this$1:Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;

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
    iget-object v0, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$1;->this$1:Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/chat/ChannelFlagHelper;->g(Lcom/narvii/chat/ChannelFlagHelper;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$1;->this$1:Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lcom/narvii/chat/ChannelFlagHelper;->f(Lcom/narvii/chat/ChannelFlagHelper;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$1;->this$1:Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    .line 25
    const/4 v1, 0x1

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Lcom/narvii/chat/ChannelFlagHelper;->o(Lcom/narvii/chat/ChannelFlagHelper;Z)V

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$1;->this$1:Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    .line 33
    const/4 v1, 0x0

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v1}, Lcom/narvii/chat/ChannelFlagHelper;->q(Lcom/narvii/chat/ChannelFlagHelper;Ljava/lang/String;)V

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$1;->this$1:Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->b(Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;)V

    .line 42
    :cond_0
    return-void
.end method
