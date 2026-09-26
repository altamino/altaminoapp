.class Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask$1;->this$0:Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask;

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
    sget-object v0, Lcom/narvii/account/ThirdPartyAccountBaseFragment;->runningTask:Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask$1;->this$0:Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask;

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, v1, Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask;->callback:Lcom/narvii/account/ThirdPartyAccountBaseFragment$SaveImageCallBack;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask;->photoUrl:Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Lcom/narvii/account/ThirdPartyAccountBaseFragment$SaveImageCallBack;->onCompleted(Ljava/lang/String;)V

    .line 14
    const/4 v0, 0x0

    .line 15
    .line 16
    sput-object v0, Lcom/narvii/account/ThirdPartyAccountBaseFragment;->runningTask:Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask;

    .line 17
    :cond_0
    return-void
.end method
