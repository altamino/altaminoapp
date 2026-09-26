.class Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$4;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$4;->this$1:Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;

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
    iget-object v0, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$4;->this$1:Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$4$1;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$4$1;-><init>(Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$4;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->c(Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;Lcom/narvii/util/Callback;)V

    .line 11
    return-void
.end method
