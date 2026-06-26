.class Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$1;
.super Ljava/lang/Object;
.source "ChannelFlagHelper.java"

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

    .line 284
    iput-object p1, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$1;->this$1:Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$1;->this$1:Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;

    iget-object v0, v0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    invoke-static {v0}, Lcom/narvii/chat/ChannelFlagHelper;->access$1400(Lcom/narvii/chat/ChannelFlagHelper;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$1;->this$1:Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;

    iget-object v0, v0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    invoke-static {v0}, Lcom/narvii/chat/ChannelFlagHelper;->access$1500(Lcom/narvii/chat/ChannelFlagHelper;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$1;->this$1:Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;

    iget-object v0, v0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/narvii/chat/ChannelFlagHelper;->access$1502(Lcom/narvii/chat/ChannelFlagHelper;Z)Z

    .line 289
    iget-object v0, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$1;->this$1:Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;

    iget-object v0, v0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/narvii/chat/ChannelFlagHelper;->access$702(Lcom/narvii/chat/ChannelFlagHelper;Ljava/lang/String;)Ljava/lang/String;

    .line 290
    iget-object v0, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$1;->this$1:Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;

    invoke-static {v0}, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->access$1600(Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;)V

    :cond_0
    return-void
.end method
