.class Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$4;


# direct methods
.method constructor <init>(Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$4;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$4$1;->this$2:Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$4;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$4$1;->this$2:Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$4;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$4;->this$1:Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagRequestDialog;->sendFlagRequest()V

    .line 8
    return-void
.end method
