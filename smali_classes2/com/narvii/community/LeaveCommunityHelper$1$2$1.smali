.class Lcom/narvii/community/LeaveCommunityHelper$1$2$1;
.super Ljava/lang/Object;
.source "LeaveCommunityHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/community/LeaveCommunityHelper$1$2;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/narvii/community/LeaveCommunityHelper$1$2;


# direct methods
.method constructor <init>(Lcom/narvii/community/LeaveCommunityHelper$1$2;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/narvii/community/LeaveCommunityHelper$1$2$1;->this$2:Lcom/narvii/community/LeaveCommunityHelper$1$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 82
    iget-object p1, p0, Lcom/narvii/community/LeaveCommunityHelper$1$2$1;->this$2:Lcom/narvii/community/LeaveCommunityHelper$1$2;

    iget-object p1, p1, Lcom/narvii/community/LeaveCommunityHelper$1$2;->val$progressDlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    return-void
.end method
