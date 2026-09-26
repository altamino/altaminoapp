.class Lcom/narvii/wallet/MembershipSubscribeFragment$OnFailPurchaseEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/wallet/MembershipSubscribeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnFailPurchaseEvent"
.end annotation


# instance fields
.field private final apiService:Lcom/narvii/util/http/ApiService;

.field private final listener:Lcom/narvii/util/http/ApiResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/wallet/MembershipResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final message:Ljava/lang/String;

.field private final progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

.field private final request:Lcom/narvii/util/http/ApiRequest;


# direct methods
.method public constructor <init>(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/util/http/ApiResponseListener;Lcom/narvii/util/http/ApiService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "Ljava/lang/String;",
            "Lcom/narvii/util/dialog/ProgressDialog;",
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/wallet/MembershipResponse;",
            ">;",
            "Lcom/narvii/util/http/ApiService;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$OnFailPurchaseEvent;->request:Lcom/narvii/util/http/ApiRequest;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$OnFailPurchaseEvent;->message:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$OnFailPurchaseEvent;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$OnFailPurchaseEvent;->listener:Lcom/narvii/util/http/ApiResponseListener;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$OnFailPurchaseEvent;->apiService:Lcom/narvii/util/http/ApiService;

    .line 14
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/wallet/MembershipSubscribeFragment$OnFailPurchaseEvent;)Lcom/narvii/util/http/ApiService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$OnFailPurchaseEvent;->apiService:Lcom/narvii/util/http/ApiService;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/wallet/MembershipSubscribeFragment$OnFailPurchaseEvent;)Lcom/narvii/util/http/ApiResponseListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$OnFailPurchaseEvent;->listener:Lcom/narvii/util/http/ApiResponseListener;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/narvii/wallet/MembershipSubscribeFragment$OnFailPurchaseEvent;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$OnFailPurchaseEvent;->message:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/narvii/wallet/MembershipSubscribeFragment$OnFailPurchaseEvent;)Lcom/narvii/util/dialog/ProgressDialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$OnFailPurchaseEvent;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/narvii/wallet/MembershipSubscribeFragment$OnFailPurchaseEvent;)Lcom/narvii/util/http/ApiRequest;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$OnFailPurchaseEvent;->request:Lcom/narvii/util/http/ApiRequest;

    return-object p0
.end method
