.class Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask$1;
.super Ljava/lang/Object;
.source "ThirdPartyAccountBaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask;


# direct methods
.method constructor <init>(Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask$1;->this$0:Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 297
    sget-object v0, Lcom/narvii/account/ThirdPartyAccountBaseFragment;->runningTask:Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask;

    iget-object v1, p0, Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask$1;->this$0:Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask;

    if-ne v0, v1, :cond_0

    .line 298
    iget-object v0, v1, Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask;->callback:Lcom/narvii/account/ThirdPartyAccountBaseFragment$SaveImageCallBack;

    iget-object v1, v1, Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask;->photoUrl:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/narvii/account/ThirdPartyAccountBaseFragment$SaveImageCallBack;->onCompleted(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 299
    sput-object v0, Lcom/narvii/account/ThirdPartyAccountBaseFragment;->runningTask:Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask;

    :cond_0
    return-void
.end method
