.class final Lcom/narvii/chat/video/utils/VVChatHelper$showReputationClaimDialog$1$onFinish$1;
.super Ljava/lang/Object;
.source "VVChatHelper.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/utils/VVChatHelper$showReputationClaimDialog$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ReputationPostResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $resp:Lcom/narvii/model/api/ReputationPostResponse;

.field final synthetic this$0:Lcom/narvii/chat/video/utils/VVChatHelper$showReputationClaimDialog$1;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/utils/VVChatHelper$showReputationClaimDialog$1;Lcom/narvii/model/api/ReputationPostResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/video/utils/VVChatHelper$showReputationClaimDialog$1$onFinish$1;->this$0:Lcom/narvii/chat/video/utils/VVChatHelper$showReputationClaimDialog$1;

    iput-object p2, p0, Lcom/narvii/chat/video/utils/VVChatHelper$showReputationClaimDialog$1$onFinish$1;->$resp:Lcom/narvii/model/api/ReputationPostResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 358
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatHelper$showReputationClaimDialog$1$onFinish$1;->this$0:Lcom/narvii/chat/video/utils/VVChatHelper$showReputationClaimDialog$1;

    iget-object v0, v0, Lcom/narvii/chat/video/utils/VVChatHelper$showReputationClaimDialog$1;->$a:Lcom/narvii/app/NVActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatHelper$showReputationClaimDialog$1$onFinish$1;->this$0:Lcom/narvii/chat/video/utils/VVChatHelper$showReputationClaimDialog$1;

    iget-object v1, v0, Lcom/narvii/chat/video/utils/VVChatHelper$showReputationClaimDialog$1;->$a:Lcom/narvii/app/NVActivity;

    iget-object v2, p0, Lcom/narvii/chat/video/utils/VVChatHelper$showReputationClaimDialog$1$onFinish$1;->$resp:Lcom/narvii/model/api/ReputationPostResponse;

    iget-object v0, v0, Lcom/narvii/chat/video/utils/VVChatHelper$showReputationClaimDialog$1;->$repDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-static {v1, v2, v0}, Lcom/narvii/chat/screenroom/widgets/ReputationClaimDialog;->show(Lcom/narvii/app/NVContext;Lcom/narvii/model/api/ReputationPostResponse;Landroid/content/DialogInterface$OnDismissListener;)Lcom/narvii/chat/screenroom/widgets/ReputationClaimDialog;

    return-void
.end method
