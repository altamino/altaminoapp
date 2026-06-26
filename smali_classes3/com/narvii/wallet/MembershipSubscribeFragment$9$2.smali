.class Lcom/narvii/wallet/MembershipSubscribeFragment$9$2;
.super Ljava/lang/Object;
.source "MembershipSubscribeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/wallet/MembershipSubscribeFragment$9;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/wallet/MembershipSubscribeFragment$9;

.field final synthetic val$lis:Lcom/narvii/util/http/ApiResponseListener;

.field final synthetic val$req:Lcom/narvii/util/http/ApiRequest;


# direct methods
.method constructor <init>(Lcom/narvii/wallet/MembershipSubscribeFragment$9;Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V
    .locals 0

    .line 638
    iput-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$9$2;->this$1:Lcom/narvii/wallet/MembershipSubscribeFragment$9;

    iput-object p2, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$9$2;->val$req:Lcom/narvii/util/http/ApiRequest;

    iput-object p3, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$9$2;->val$lis:Lcom/narvii/util/http/ApiResponseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 641
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$9$2;->this$1:Lcom/narvii/wallet/MembershipSubscribeFragment$9;

    iget-object p1, p1, Lcom/narvii/wallet/MembershipSubscribeFragment$9;->val$pdlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 642
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$9$2;->this$1:Lcom/narvii/wallet/MembershipSubscribeFragment$9;

    iget-object p1, p1, Lcom/narvii/wallet/MembershipSubscribeFragment$9;->val$api:Lcom/narvii/util/http/ApiService;

    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$9$2;->val$req:Lcom/narvii/util/http/ApiRequest;

    iget-object v1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$9$2;->val$lis:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method
