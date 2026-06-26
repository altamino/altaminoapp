.class Lcom/narvii/drawer/DrawerHost$8$2;
.super Ljava/lang/Object;
.source "DrawerHost.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/drawer/DrawerHost$8;->call(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/drawer/DrawerHost$8;

.field final synthetic val$listener:Lcom/narvii/util/http/ApiResponseListener;


# direct methods
.method constructor <init>(Lcom/narvii/drawer/DrawerHost$8;Lcom/narvii/util/http/ApiResponseListener;)V
    .locals 0

    .line 897
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost$8$2;->this$1:Lcom/narvii/drawer/DrawerHost$8;

    iput-object p2, p0, Lcom/narvii/drawer/DrawerHost$8$2;->val$listener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 900
    new-instance v0, Lcom/narvii/checkin/CheckInResult;

    invoke-direct {v0}, Lcom/narvii/checkin/CheckInResult;-><init>()V

    .line 901
    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    .line 902
    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v2

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v3

    mul-float v2, v2, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/narvii/checkin/CheckInResult;->earnedReputationPoint:I

    .line 903
    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v2

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v3

    mul-float v2, v2, v3

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v3

    mul-float v2, v2, v3

    const/high16 v3, 0x40c00000    # 6.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    iput v2, v0, Lcom/narvii/checkin/CheckInResult;->additionalReputationPoint:I

    .line 904
    iget-object v2, p0, Lcom/narvii/drawer/DrawerHost$8$2;->this$1:Lcom/narvii/drawer/DrawerHost$8;

    iget-object v2, v2, Lcom/narvii/drawer/DrawerHost$8;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object v2, v2, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    const-string v3, "account"

    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/account/AccountService;

    .line 905
    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getConsecutiveCheckInDays()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/narvii/checkin/CheckInResult;->consecutiveCheckInDays:I

    .line 906
    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v2

    iput-object v2, v0, Lcom/narvii/checkin/CheckInResult;->userProfile:Lcom/narvii/model/User;

    .line 907
    iget-object v2, v0, Lcom/narvii/checkin/CheckInResult;->userProfile:Lcom/narvii/model/User;

    iget v3, v2, Lcom/narvii/model/User;->reputation:I

    iget v4, v0, Lcom/narvii/checkin/CheckInResult;->earnedReputationPoint:I

    iget v5, v0, Lcom/narvii/checkin/CheckInResult;->additionalReputationPoint:I

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, v2, Lcom/narvii/model/User;->reputation:I

    .line 908
    iget v3, v2, Lcom/narvii/model/User;->level:I

    invoke-virtual {v1}, Ljava/util/Random;->nextBoolean()Z

    move-result v1

    add-int/2addr v3, v1

    iput v3, v2, Lcom/narvii/model/User;->level:I

    .line 909
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost$8$2;->this$1:Lcom/narvii/drawer/DrawerHost$8;

    iget-object v1, v1, Lcom/narvii/drawer/DrawerHost$8;->this$0:Lcom/narvii/drawer/DrawerHost;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/narvii/drawer/DrawerHost;->fakeCheckin:Z

    .line 911
    :try_start_0
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost$8$2;->val$listener:Lcom/narvii/util/http/ApiResponseListener;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 915
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$8$2;->this$1:Lcom/narvii/drawer/DrawerHost$8;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost$8;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {v0}, Lcom/narvii/drawer/DrawerHost;->updateAccount()V

    return-void

    :catch_0
    move-exception v0

    .line 913
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
