.class Lcom/narvii/sharedfolder/SharedFolderFragment$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SharedFolderFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/SharedFolderFragment;->sendStatsRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/sharedfolder/SharedFolderStatsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/sharedfolder/SharedFolderFragment;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedFolderFragment;Ljava/lang/Class;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedFolderFragment$1;->this$0:Lcom/narvii/sharedfolder/SharedFolderFragment;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 93
    check-cast p2, Lcom/narvii/sharedfolder/SharedFolderStatsResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/sharedfolder/SharedFolderFragment$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/sharedfolder/SharedFolderStatsResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/sharedfolder/SharedFolderStatsResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 96
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 97
    iget-object p1, p2, Lcom/narvii/sharedfolder/SharedFolderStatsResponse;->stats:Lcom/narvii/sharedfolder/SharedFolderStatsResponse$Stats;

    if-nez p1, :cond_0

    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedFolderFragment$1;->this$0:Lcom/narvii/sharedfolder/SharedFolderFragment;

    iget p1, p1, Lcom/narvii/sharedfolder/SharedFolderStatsResponse$Stats;->fileCount:I

    invoke-static {v0, p1}, Lcom/narvii/sharedfolder/SharedFolderFragment;->access$002(Lcom/narvii/sharedfolder/SharedFolderFragment;I)I

    .line 101
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedFolderFragment$1;->this$0:Lcom/narvii/sharedfolder/SharedFolderFragment;

    iget-object p2, p2, Lcom/narvii/sharedfolder/SharedFolderStatsResponse;->stats:Lcom/narvii/sharedfolder/SharedFolderStatsResponse$Stats;

    iget p2, p2, Lcom/narvii/sharedfolder/SharedFolderStatsResponse$Stats;->folderCount:I

    invoke-static {p1, p2}, Lcom/narvii/sharedfolder/SharedFolderFragment;->access$102(Lcom/narvii/sharedfolder/SharedFolderFragment;I)I

    .line 102
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedFolderFragment$1;->this$0:Lcom/narvii/sharedfolder/SharedFolderFragment;

    invoke-static {p1}, Lcom/narvii/sharedfolder/SharedFolderFragment;->access$200(Lcom/narvii/sharedfolder/SharedFolderFragment;)V

    return-void
.end method
