.class Lcom/narvii/drawer/DrawerHost$8$2;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost$8$2;->this$1:Lcom/narvii/drawer/DrawerHost$8;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/drawer/DrawerHost$8$2;->val$listener:Lcom/narvii/util/http/ApiResponseListener;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/checkin/CheckInResult;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/checkin/CheckInResult;-><init>()V

    .line 6
    .line 7
    new-instance v1, Ljava/util/Random;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    move-result-wide v2

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    .line 18
    move-result v2

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    .line 22
    move-result v3

    .line 23
    mul-float/2addr v2, v3

    .line 24
    .line 25
    const/high16 v3, 0x41a00000    # 20.0f

    .line 26
    mul-float/2addr v2, v3

    .line 27
    float-to-int v2, v2

    .line 28
    .line 29
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    iput v2, v0, Lcom/narvii/checkin/CheckInResult;->earnedReputationPoint:I

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    .line 35
    move-result v2

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    .line 39
    move-result v3

    .line 40
    mul-float/2addr v2, v3

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    .line 44
    move-result v3

    .line 45
    mul-float/2addr v2, v3

    .line 46
    .line 47
    const/high16 v3, 0x40c00000    # 6.0f

    .line 48
    mul-float/2addr v2, v3

    .line 49
    float-to-int v2, v2

    .line 50
    .line 51
    iput v2, v0, Lcom/narvii/checkin/CheckInResult;->additionalReputationPoint:I

    .line 52
    .line 53
    iget-object v2, p0, Lcom/narvii/drawer/DrawerHost$8$2;->this$1:Lcom/narvii/drawer/DrawerHost$8;

    .line 54
    .line 55
    iget-object v2, v2, Lcom/narvii/drawer/DrawerHost$8;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 56
    .line 57
    iget-object v2, v2, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    .line 58
    .line 59
    const-string v3, "account"

    .line 60
    .line 61
    .line 62
    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    move-result-object v2

    .line 64
    .line 65
    check-cast v2, Lcom/narvii/account/AccountService;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getConsecutiveCheckInDays()I

    .line 69
    move-result v3

    .line 70
    .line 71
    add-int/lit8 v3, v3, 0x1

    .line 72
    .line 73
    iput v3, v0, Lcom/narvii/checkin/CheckInResult;->consecutiveCheckInDays:I

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 77
    move-result-object v2

    .line 78
    .line 79
    iput-object v2, v0, Lcom/narvii/checkin/CheckInResult;->userProfile:Lcom/narvii/model/User;

    .line 80
    .line 81
    iget v3, v2, Lcom/narvii/model/User;->reputation:I

    .line 82
    .line 83
    iget v4, v0, Lcom/narvii/checkin/CheckInResult;->earnedReputationPoint:I

    .line 84
    .line 85
    iget v5, v0, Lcom/narvii/checkin/CheckInResult;->additionalReputationPoint:I

    .line 86
    add-int/2addr v4, v5

    .line 87
    add-int/2addr v3, v4

    .line 88
    .line 89
    iput v3, v2, Lcom/narvii/model/User;->reputation:I

    .line 90
    .line 91
    iget v3, v2, Lcom/narvii/model/User;->level:I

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/util/Random;->nextBoolean()Z

    .line 95
    move-result v1

    .line 96
    add-int/2addr v3, v1

    .line 97
    .line 98
    iput v3, v2, Lcom/narvii/model/User;->level:I

    .line 99
    .line 100
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost$8$2;->this$1:Lcom/narvii/drawer/DrawerHost$8;

    .line 101
    .line 102
    iget-object v1, v1, Lcom/narvii/drawer/DrawerHost$8;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 103
    const/4 v2, 0x0

    .line 104
    .line 105
    iput-boolean v2, v1, Lcom/narvii/drawer/DrawerHost;->fakeCheckin:Z

    .line 106
    .line 107
    :try_start_0
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost$8$2;->val$listener:Lcom/narvii/util/http/ApiResponseListener;

    .line 108
    const/4 v2, 0x0

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v2, v0}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .line 113
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$8$2;->this$1:Lcom/narvii/drawer/DrawerHost$8;

    .line 114
    .line 115
    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost$8;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Lcom/narvii/drawer/DrawerHost;->updateAccount()V

    .line 119
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .line 122
    new-instance v1, Ljava/lang/RuntimeException;

    .line 123
    .line 124
    .line 125
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 126
    throw v1
.end method
