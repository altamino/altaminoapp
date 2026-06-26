.class Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$3$1;
.super Ljava/lang/Object;
.source "ChannelFlagHelper.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$3;->onProcessYUV([BIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$3;


# direct methods
.method constructor <init>(Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$3;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$3$1;->this$2:Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 360
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$3$1;->call(Ljava/lang/String;)V

    return-void
.end method

.method public call(Ljava/lang/String;)V
    .locals 2

    .line 363
    invoke-static {}, Lcom/narvii/chat/ChannelFlagHelper;->access$1100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "finish upload"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v0, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$3$1;->this$2:Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$3;

    iget-object v0, v0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$3;->this$1:Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;

    iget-object v0, v0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    invoke-static {v0, p1}, Lcom/narvii/chat/ChannelFlagHelper;->access$702(Lcom/narvii/chat/ChannelFlagHelper;Ljava/lang/String;)Ljava/lang/String;

    .line 365
    iget-object p1, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$3$1;->this$2:Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$3;

    iget-object p1, p1, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$3;->this$1:Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;

    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagRequestDialog;->sendFlagRequest()V

    return-void
.end method
