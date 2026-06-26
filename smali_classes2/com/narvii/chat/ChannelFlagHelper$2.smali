.class Lcom/narvii/chat/ChannelFlagHelper$2;
.super Ljava/lang/Object;
.source "ChannelFlagHelper.java"

# interfaces
.implements Lcom/narvii/photos/PhotoUploadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/ChannelFlagHelper;->uploadFlagScreenShot(Ljava/io/File;Lcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/ChannelFlagHelper;

.field final synthetic val$callback:Lcom/narvii/util/Callback;


# direct methods
.method constructor <init>(Lcom/narvii/chat/ChannelFlagHelper;Lcom/narvii/util/Callback;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/narvii/chat/ChannelFlagHelper$2;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    iput-object p2, p0, Lcom/narvii/chat/ChannelFlagHelper$2;->val$callback:Lcom/narvii/util/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 196
    iget-object p1, p0, Lcom/narvii/chat/ChannelFlagHelper$2;->val$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 197
    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 189
    iget-object p1, p0, Lcom/narvii/chat/ChannelFlagHelper$2;->val$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_0

    .line 190
    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onProgress(Ljava/lang/String;II)V
    .locals 0

    return-void
.end method
