.class Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/photos/PhotoUploadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->uploadCurFlagScreenShoot(Lcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;

.field final synthetic val$callback:Lcom/narvii/util/Callback;


# direct methods
.method constructor <init>(Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;Lcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$2;->this$1:Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$2;->val$callback:Lcom/narvii/util/Callback;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$2;->val$callback:Lcom/narvii/util/Callback;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 10
    :cond_0
    return-void
.end method

.method public onFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$2;->val$callback:Lcom/narvii/util/Callback;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$2;->this$1:Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    .line 9
    .line 10
    .line 11
    invoke-static {p1, p2}, Lcom/narvii/chat/ChannelFlagHelper;->q(Lcom/narvii/chat/ChannelFlagHelper;Ljava/lang/String;)V

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$2;->val$callback:Lcom/narvii/util/Callback;

    .line 14
    .line 15
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 19
    :cond_0
    return-void
.end method

.method public onProgress(Ljava/lang/String;II)V
    .locals 0

    return-void
.end method
