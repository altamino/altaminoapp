.class Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$4;
.super Ljava/lang/Object;
.source "ChannelFlagHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->flagWithScreenShoot()V
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

    .line 373
    iput-object p1, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$4;->this$1:Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 377
    iget-object v0, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$4;->this$1:Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;

    new-instance v1, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$4$1;

    invoke-direct {v1, p0}, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$4$1;-><init>(Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$4;)V

    invoke-static {v0, v1}, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->access$2000(Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;Lcom/narvii/util/Callback;)V

    return-void
.end method
