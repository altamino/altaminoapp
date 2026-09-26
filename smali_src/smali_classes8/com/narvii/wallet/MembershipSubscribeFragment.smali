.class public Lcom/narvii/wallet/MembershipSubscribeFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/wallet/RedeemCouponComponent$IRedeemCouponCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/wallet/MembershipSubscribeFragment$OnFailPurchaseEvent;
    }
.end annotation


# static fields
.field public static final ACTION_PURCHASED_SUB_CHANGED:Ljava/lang/String; = "com.narvii.action.PURCHASED_SUB_CHANGED"

.field private static final REMOTE_AMINO_PLUS_PRICING:Ljava/lang/String; = "android_amino_plus_pricing"

.field private static final TAG:Ljava/lang/String; = "MembershipSubscribeFragment"

.field private static final TITLE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private aminoPlusPricingVersion:J

.field private checkMembershipAndPaymentResultCode:I

.field private checkMembershipAndPaymentResultMessage:Ljava/lang/String;

.field private checkMembershipAndPaymentResultReason:Ljava/lang/String;

.field private freeTrial:Z

.field private iabPendingDlg:Lcom/narvii/util/dialog/ProgressDialog;

.field private iabPendingProduct:Lcom/narvii/wallet/Product;

.field private inflater:Landroid/view/LayoutInflater;

.field private isDone:Z

.field private lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field private membership:Lcom/narvii/wallet/MembershipStatus;

.field private membershipService:Lcom/narvii/wallet/MembershipService;

.field private paymentContext:Lcom/fasterxml/jackson/databind/node/ObjectNode;

.field private paymentError:Ljava/lang/String;

.field private progress:Landroid/view/View;

.field private purchasingProduct:Lcom/narvii/wallet/Product;

.field private purchasingProductSku:Ljava/lang/String;

.field private final receiver:Landroid/content/BroadcastReceiver;

.field private redeem:Z

.field private redeemCouponComponent:Lcom/narvii/wallet/RedeemCouponComponent;

.field private redeemProductError:Ljava/lang/String;

.field private redeemProductList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/wallet/Product;",
            ">;"
        }
    .end annotation
.end field

.field private redeemTransactionId:Ljava/lang/String;

.field private root:Landroid/view/View;

.field private selectedRedeemProduct:Lcom/narvii/wallet/Product;

.field private selectedSubProduct:Lcom/narvii/wallet/Product;

.field private subProductError:Ljava/lang/String;

.field private subProductList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/wallet/Product;",
            ">;"
        }
    .end annotation
.end field

.field private wasMembership:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    const-string v0, "\\d+"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sput-object v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->TITLE_PATTERN:Ljava/util/regex/Pattern;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/wallet/MembershipSubscribeFragment$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/wallet/MembershipSubscribeFragment$1;-><init>(Lcom/narvii/wallet/MembershipSubscribeFragment;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 11
    return-void
.end method

.method static bridge synthetic A(Lcom/narvii/wallet/MembershipSubscribeFragment;)Lcom/narvii/wallet/Product;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->purchasingProduct:Lcom/narvii/wallet/Product;

    return-object p0
.end method

.method static bridge synthetic B(Lcom/narvii/wallet/MembershipSubscribeFragment;)Lcom/narvii/wallet/RedeemCouponComponent;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeemCouponComponent:Lcom/narvii/wallet/RedeemCouponComponent;

    return-object p0
.end method

.method static bridge synthetic C(Lcom/narvii/wallet/MembershipSubscribeFragment;)Lcom/narvii/wallet/Product;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->selectedRedeemProduct:Lcom/narvii/wallet/Product;

    return-object p0
.end method

.method static bridge synthetic D(Lcom/narvii/wallet/MembershipSubscribeFragment;)Lcom/narvii/wallet/Product;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->selectedSubProduct:Lcom/narvii/wallet/Product;

    return-object p0
.end method

.method static bridge synthetic E(Lcom/narvii/wallet/MembershipSubscribeFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->wasMembership:Z

    return p0
.end method

.method static bridge synthetic F(Lcom/narvii/wallet/MembershipSubscribeFragment;Lcom/narvii/wallet/MembershipStatus;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    return-void
.end method

.method static bridge synthetic G(Lcom/narvii/wallet/MembershipSubscribeFragment;Lcom/fasterxml/jackson/databind/node/ObjectNode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->paymentContext:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    return-void
.end method

.method static bridge synthetic H(Lcom/narvii/wallet/MembershipSubscribeFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->paymentError:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic I(Lcom/narvii/wallet/MembershipSubscribeFragment;Lcom/narvii/wallet/Product;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->purchasingProduct:Lcom/narvii/wallet/Product;

    return-void
.end method

.method static bridge synthetic J(Lcom/narvii/wallet/MembershipSubscribeFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->purchasingProductSku:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic K(Lcom/narvii/wallet/MembershipSubscribeFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeemProductError:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic L(Lcom/narvii/wallet/MembershipSubscribeFragment;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeemProductList:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic M(Lcom/narvii/wallet/MembershipSubscribeFragment;Lcom/narvii/wallet/Product;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->selectedRedeemProduct:Lcom/narvii/wallet/Product;

    return-void
.end method

.method static bridge synthetic N(Lcom/narvii/wallet/MembershipSubscribeFragment;Lcom/narvii/wallet/Product;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->selectedSubProduct:Lcom/narvii/wallet/Product;

    return-void
.end method

.method static bridge synthetic O(Lcom/narvii/wallet/MembershipSubscribeFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->subProductError:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic P(Lcom/narvii/wallet/MembershipSubscribeFragment;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->subProductList:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic Q(Lcom/narvii/wallet/MembershipSubscribeFragment;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->checkMembershipAndPayment()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic R(Lcom/narvii/wallet/MembershipSubscribeFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->confetti()V

    return-void
.end method

.method static bridge synthetic S(Lcom/narvii/wallet/MembershipSubscribeFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->createPaymentContext()V

    return-void
.end method

.method static bridge synthetic T(Lcom/narvii/wallet/MembershipSubscribeFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->done()V

    return-void
.end method

.method static bridge synthetic U(Lcom/narvii/wallet/MembershipSubscribeFragment;)Lcom/narvii/wallet/MembershipService;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->getMembershipService()Lcom/narvii/wallet/MembershipService;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic V(Lcom/narvii/wallet/MembershipSubscribeFragment;Lcom/narvii/wallet/MembershipSubscribeFragment$OnFailPurchaseEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->handleOnFailPurchase(Lcom/narvii/wallet/MembershipSubscribeFragment$OnFailPurchaseEvent;)V

    return-void
.end method

.method static bridge synthetic W(Lcom/narvii/wallet/MembershipSubscribeFragment;Lcom/narvii/wallet/MembershipResponse;Lcom/narvii/util/dialog/ProgressDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/wallet/MembershipSubscribeFragment;->handleSuccessPurchase(Lcom/narvii/wallet/MembershipResponse;Lcom/narvii/util/dialog/ProgressDialog;)V

    return-void
.end method

.method static bridge synthetic X(Lcom/narvii/wallet/MembershipSubscribeFragment;Lcom/narvii/util/dialog/ProgressDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->hideProgressDialog(Lcom/narvii/util/dialog/ProgressDialog;)V

    return-void
.end method

.method static bridge synthetic Y(Lcom/narvii/wallet/MembershipSubscribeFragment;Lcom/narvii/wallet/Product;Ljava/util/List;)Lcom/narvii/wallet/Product;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/wallet/MembershipSubscribeFragment;->pickProduct(Lcom/narvii/wallet/Product;Ljava/util/List;)Lcom/narvii/wallet/Product;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic Z(Lcom/narvii/wallet/MembershipSubscribeFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->querySubscriptions()V

    return-void
.end method

.method static bridge synthetic a0(Lcom/narvii/wallet/MembershipSubscribeFragment;ILjava/lang/String;Lcom/narvii/wallet/Product;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/wallet/MembershipSubscribeFragment;->sendPurchaseFailEvent(ILjava/lang/String;Lcom/narvii/wallet/Product;)V

    return-void
.end method

.method static bridge synthetic b0(Lcom/narvii/wallet/MembershipSubscribeFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->showDialog(Ljava/lang/String;)V

    return-void
.end method

.method private buildNotCancelableProgressDialog()Lcom/narvii/util/dialog/ProgressDialog;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 14
    return-object v0
.end method

.method static bridge synthetic c0(Lcom/narvii/wallet/MembershipSubscribeFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->showPurchaseErrorDialog(Ljava/lang/String;)V

    return-void
.end method

.method private checkMembershipAndPayment()Ljava/lang/Boolean;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->checkMembershipAndPaymentResultCode:I

    .line 4
    const/4 v1, 0x0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->checkMembershipAndPaymentResultReason:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->checkMembershipAndPaymentResultMessage:Ljava/lang/String;

    .line 9
    .line 10
    iget-boolean v2, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->isDone:Z

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 16
    move-result v2

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    return-object v1

    .line 20
    .line 21
    :cond_0
    iget-object v2, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    .line 22
    .line 23
    if-nez v2, :cond_1

    .line 24
    return-object v1

    .line 25
    .line 26
    :cond_1
    iget-boolean v3, v2, Lcom/narvii/wallet/MembershipStatus;->isAutoRenew:Z

    .line 27
    .line 28
    if-eqz v3, :cond_2

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->done()V

    .line 32
    .line 33
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 34
    return-object v0

    .line 35
    .line 36
    :cond_2
    iget v2, v2, Lcom/narvii/wallet/MembershipStatus;->membershipStatus:I

    .line 37
    .line 38
    if-nez v2, :cond_3

    .line 39
    .line 40
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 41
    return-object v0

    .line 42
    .line 43
    :cond_3
    const-string v3, ")"

    .line 44
    .line 45
    .line 46
    const v4, 0x7f120c5f

    .line 47
    const/4 v5, 0x1

    .line 48
    .line 49
    if-ne v2, v5, :cond_e

    .line 50
    .line 51
    .line 52
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->membershipPaymentIsCoins()Z

    .line 53
    move-result v2

    .line 54
    .line 55
    if-eqz v2, :cond_4

    .line 56
    .line 57
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 58
    return-object v0

    .line 59
    .line 60
    :cond_4
    iget-object v2, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    .line 61
    .line 62
    iget v2, v2, Lcom/narvii/wallet/MembershipStatus;->paymentType:I

    .line 63
    const/4 v6, 0x5

    .line 64
    .line 65
    .line 66
    const v7, 0x7f1202ba

    .line 67
    .line 68
    if-ne v2, v6, :cond_c

    .line 69
    .line 70
    iget-object v2, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->paymentContext:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 71
    .line 72
    if-nez v2, :cond_6

    .line 73
    .line 74
    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->paymentError:Ljava/lang/String;

    .line 75
    .line 76
    if-nez v0, :cond_5

    .line 77
    return-object v1

    .line 78
    .line 79
    .line 80
    :cond_5
    invoke-direct {p0, v0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->showDialog(Ljava/lang/String;)V

    .line 81
    .line 82
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 83
    return-object v0

    .line 84
    .line 85
    :cond_6
    const-string v3, "packageName"

    .line 86
    .line 87
    .line 88
    filled-new-array {v3}, [Ljava/lang/String;

    .line 89
    move-result-object v3

    .line 90
    .line 91
    .line 92
    invoke-static {v2, v3}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    .line 93
    move-result-object v2

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 97
    move-result-object v3

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 101
    move-result-object v3

    .line 102
    .line 103
    .line 104
    invoke-static {v3, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 105
    move-result v3

    .line 106
    .line 107
    if-nez v3, :cond_8

    .line 108
    .line 109
    new-instance v3, Lcom/narvii/util/dialog/AlertDialog;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 113
    move-result-object v4

    .line 114
    .line 115
    .line 116
    invoke-direct {v3, v4}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 117
    .line 118
    if-eqz v2, :cond_7

    .line 119
    .line 120
    const-string v4, ".master"

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 124
    move-result v4

    .line 125
    .line 126
    if-eqz v4, :cond_7

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 130
    move-result-object v4

    .line 131
    .line 132
    .line 133
    const v5, 0x7f120c61

    .line 134
    .line 135
    .line 136
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 137
    move-result-object v4

    .line 138
    .line 139
    iput-object v4, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->checkMembershipAndPaymentResultMessage:Ljava/lang/String;

    .line 140
    .line 141
    const-string v4, "RENEW_IN_MASTER"

    .line 142
    .line 143
    iput-object v4, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->checkMembershipAndPaymentResultReason:Ljava/lang/String;

    .line 144
    .line 145
    const/16 v4, 0x33

    .line 146
    .line 147
    iput v4, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->checkMembershipAndPaymentResultCode:I

    .line 148
    goto :goto_0

    .line 149
    .line 150
    .line 151
    :cond_7
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 152
    move-result-object v4

    .line 153
    .line 154
    new-array v5, v5, [Ljava/lang/Object;

    .line 155
    .line 156
    aput-object v2, v5, v0

    .line 157
    .line 158
    .line 159
    const v6, 0x7f120c62

    .line 160
    .line 161
    .line 162
    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 163
    move-result-object v4

    .line 164
    .line 165
    iput-object v4, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->checkMembershipAndPaymentResultMessage:Ljava/lang/String;

    .line 166
    .line 167
    const-string v4, "RENEW_IN_STANDALONE"

    .line 168
    .line 169
    iput-object v4, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->checkMembershipAndPaymentResultReason:Ljava/lang/String;

    .line 170
    .line 171
    const/16 v4, 0x34

    .line 172
    .line 173
    iput v4, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->checkMembershipAndPaymentResultCode:I

    .line 174
    .line 175
    :goto_0
    iget-object v4, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->checkMembershipAndPaymentResultMessage:Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v3, v4}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 179
    .line 180
    new-instance v4, Lcom/narvii/wallet/z;

    .line 181
    .line 182
    .line 183
    invoke-direct {v4, p0, v2}, Lcom/narvii/wallet/z;-><init>(Lcom/narvii/wallet/MembershipSubscribeFragment;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    const v2, 0x104000a

    .line 187
    const/4 v5, 0x4

    .line 188
    .line 189
    .line 190
    invoke-virtual {v3, v2, v5, v4}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v3, v7, v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v3}, Lcom/narvii/app/NVDialog;->show()V

    .line 197
    .line 198
    .line 199
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->done()V

    .line 200
    .line 201
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 202
    return-object v0

    .line 203
    .line 204
    :cond_8
    iget-object v2, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->paymentContext:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 205
    .line 206
    const-string v3, "orderId"

    .line 207
    .line 208
    .line 209
    filled-new-array {v3}, [Ljava/lang/String;

    .line 210
    move-result-object v3

    .line 211
    .line 212
    .line 213
    invoke-static {v2, v3}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    .line 214
    move-result-object v2

    .line 215
    .line 216
    .line 217
    invoke-direct {p0, v2}, Lcom/narvii/wallet/MembershipSubscribeFragment;->trimOrderId(Ljava/lang/String;)Ljava/lang/String;

    .line 218
    move-result-object v2

    .line 219
    .line 220
    sget-object v3, Lcom/narvii/wallet/MembershipBillingManager;->INSTANCE:Lcom/narvii/wallet/MembershipBillingManager;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v3}, Lcom/narvii/wallet/MembershipBillingManager;->getPurchaseList()Ljava/util/List;

    .line 224
    move-result-object v3

    .line 225
    .line 226
    .line 227
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 228
    move-result-object v3

    .line 229
    .line 230
    .line 231
    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 232
    move-result v4

    .line 233
    .line 234
    if-eqz v4, :cond_a

    .line 235
    .line 236
    .line 237
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 238
    move-result-object v4

    .line 239
    .line 240
    check-cast v4, Lcom/android/billingclient/api/Purchase;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v4}, Lcom/android/billingclient/api/Purchase;->c()Ljava/lang/String;

    .line 244
    move-result-object v5

    .line 245
    .line 246
    .line 247
    invoke-direct {p0, v5}, Lcom/narvii/wallet/MembershipSubscribeFragment;->trimOrderId(Ljava/lang/String;)Ljava/lang/String;

    .line 248
    move-result-object v5

    .line 249
    .line 250
    .line 251
    invoke-static {v5, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 252
    move-result v5

    .line 253
    .line 254
    if-eqz v5, :cond_9

    .line 255
    goto :goto_1

    .line 256
    :cond_a
    move-object v4, v1

    .line 257
    .line 258
    :goto_1
    if-nez v4, :cond_b

    .line 259
    .line 260
    new-instance v2, Lcom/narvii/util/dialog/AlertDialog;

    .line 261
    .line 262
    .line 263
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 264
    move-result-object v3

    .line 265
    .line 266
    .line 267
    invoke-direct {v2, v3}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 271
    move-result-object v3

    .line 272
    .line 273
    .line 274
    const v4, 0x7f120c63

    .line 275
    .line 276
    .line 277
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 278
    move-result-object v3

    .line 279
    .line 280
    iput-object v3, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->checkMembershipAndPaymentResultMessage:Ljava/lang/String;

    .line 281
    .line 282
    const-string v4, "RENEW_IN_ANOTHER_GOOGLE_PLAY_ACCOUNT"

    .line 283
    .line 284
    iput-object v4, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->checkMembershipAndPaymentResultReason:Ljava/lang/String;

    .line 285
    .line 286
    const/16 v4, 0x35

    .line 287
    .line 288
    iput v4, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->checkMembershipAndPaymentResultCode:I

    .line 289
    .line 290
    .line 291
    invoke-virtual {v2, v3}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v2, v7, v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v2}, Lcom/narvii/app/NVDialog;->show()V

    .line 298
    .line 299
    .line 300
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->done()V

    .line 301
    .line 302
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 303
    return-object v0

    .line 304
    .line 305
    :cond_b
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 306
    return-object v0

    .line 307
    :cond_c
    const/4 v5, 0x3

    .line 308
    .line 309
    if-ne v2, v5, :cond_d

    .line 310
    .line 311
    new-instance v2, Lcom/narvii/util/dialog/AlertDialog;

    .line 312
    .line 313
    .line 314
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 315
    move-result-object v3

    .line 316
    .line 317
    .line 318
    invoke-direct {v2, v3}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 322
    move-result-object v3

    .line 323
    .line 324
    .line 325
    const v4, 0x7f120c60

    .line 326
    .line 327
    .line 328
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 329
    move-result-object v3

    .line 330
    .line 331
    iput-object v3, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->checkMembershipAndPaymentResultMessage:Ljava/lang/String;

    .line 332
    .line 333
    const-string v4, "RENEW_IN_APPSTORE"

    .line 334
    .line 335
    iput-object v4, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->checkMembershipAndPaymentResultReason:Ljava/lang/String;

    .line 336
    .line 337
    const/16 v4, 0x36

    .line 338
    .line 339
    iput v4, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->checkMembershipAndPaymentResultCode:I

    .line 340
    .line 341
    .line 342
    invoke-virtual {v2, v3}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v2, v7, v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v2}, Lcom/narvii/app/NVDialog;->show()V

    .line 349
    .line 350
    .line 351
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->done()V

    .line 352
    .line 353
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 354
    return-object v0

    .line 355
    .line 356
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 360
    .line 361
    .line 362
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 363
    move-result-object v1

    .line 364
    .line 365
    .line 366
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    const-string v1, " (PT_"

    .line 369
    .line 370
    .line 371
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    iget-object v1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    .line 374
    .line 375
    iget v1, v1, Lcom/narvii/wallet/MembershipStatus;->paymentType:I

    .line 376
    .line 377
    .line 378
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 385
    move-result-object v0

    .line 386
    .line 387
    .line 388
    invoke-direct {p0, v0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->showDialog(Ljava/lang/String;)V

    .line 389
    .line 390
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 391
    return-object v0

    .line 392
    .line 393
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 397
    .line 398
    .line 399
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 400
    move-result-object v1

    .line 401
    .line 402
    .line 403
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    const-string v1, " (MS_"

    .line 406
    .line 407
    .line 408
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    iget-object v1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    .line 411
    .line 412
    iget v1, v1, Lcom/narvii/wallet/MembershipStatus;->membershipStatus:I

    .line 413
    .line 414
    .line 415
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 422
    move-result-object v0

    .line 423
    .line 424
    .line 425
    invoke-direct {p0, v0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->showDialog(Ljava/lang/String;)V

    .line 426
    .line 427
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 428
    return-object v0
.end method

.method private confetti()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v0, v0, Lcom/narvii/app/FragmentWrapperActivity;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/app/FragmentWrapperActivity;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/app/FragmentWrapperActivity;->getRootFragment()Landroidx/fragment/app/Fragment;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    instance-of v0, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    check-cast v0, Lcom/narvii/app/FragmentWrapperActivity;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/narvii/app/FragmentWrapperActivity;->getRootFragment()Landroidx/fragment/app/Fragment;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    check-cast v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    .line 35
    .line 36
    const-wide/16 v1, 0x190

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->showCofetti(J)V

    .line 40
    .line 41
    sget-object v1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 42
    .line 43
    new-instance v2, Lcom/narvii/wallet/b0;

    .line 44
    .line 45
    .line 46
    invoke-direct {v2, v0}, Lcom/narvii/wallet/b0;-><init>(Lcom/narvii/wallet/MembershipMainRecyclerFragment;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 50
    const/4 v1, 0x1

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->flipCard(Z)V

    .line 54
    :cond_0
    return-void
.end method

.method private createPaymentContext()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->paymentContext:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->paymentContext:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 11
    :cond_0
    return-void
.end method

.method static bridge synthetic d0(Lcom/narvii/wallet/MembershipSubscribeFragment;Lcom/narvii/wallet/MembershipResponse;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->updateMembership(Lcom/narvii/wallet/MembershipResponse;)V

    return-void
.end method

.method private done()V
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->isDone:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeemCouponComponent:Lcom/narvii/wallet/RedeemCouponComponent;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/narvii/wallet/RedeemCouponComponent;->destroy()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    const-string/jumbo v2, "subscribe"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentManager;->l1(Ljava/lang/String;I)V

    .line 27
    .line 28
    :cond_0
    iput-boolean v1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->isDone:Z

    .line 29
    return-void
.end method

.method static bridge synthetic e0(Lcom/narvii/wallet/MembershipSubscribeFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->updateUI()V

    return-void
.end method

.method private findPurchase(Lcom/narvii/wallet/PurchasesUpdate;)Lcom/android/billingclient/api/Purchase;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_3

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/narvii/wallet/PurchasesUpdate;->getPurchases()Ljava/util/List;

    .line 7
    move-result-object v1

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/wallet/PurchasesUpdate;->getPurchases()Ljava/util/List;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v1

    .line 23
    .line 24
    if-eqz v1, :cond_3

    .line 25
    .line 26
    .line 27
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    check-cast v1, Lcom/android/billingclient/api/Purchase;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->e()Ljava/util/List;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    .line 37
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    .line 41
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    move-result v3

    .line 43
    .line 44
    if-eqz v3, :cond_1

    .line 45
    .line 46
    .line 47
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    move-result-object v3

    .line 49
    .line 50
    check-cast v3, Ljava/lang/String;

    .line 51
    .line 52
    iget-object v4, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->purchasingProductSku:Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    move-result v3

    .line 57
    .line 58
    if-eqz v3, :cond_2

    .line 59
    return-object v1

    .line 60
    :cond_3
    :goto_0
    return-object v0
.end method

.method private getCurrentDatePlusSevenDays()Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x6

    .line 6
    const/4 v2, 0x7

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 10
    .line 11
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 12
    .line 13
    const-string v2, "MMMM dd, yyyy"

    .line 14
    .line 15
    .line 16
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 17
    move-result-object v3

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method

.method private getError()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeem:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeemProductError:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->subProductError:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method private getFirstPurchaseProduct(Lcom/android/billingclient/api/Purchase;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->e()Ljava/util/List;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    .line 8
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    check-cast p1, Ljava/lang/String;

    .line 12
    return-object p1
.end method

.method private getFirstSkuSafety(Lcom/android/billingclient/api/Purchase;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    const-string v0, ""

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->e()Ljava/util/List;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    return-object v0

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-direct {p0, p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->getFirstPurchaseProduct(Lcom/android/billingclient/api/Purchase;)Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method private getMembershipService()Lcom/narvii/wallet/MembershipService;
    .locals 1

    .line 1
    .line 2
    const-string v0, "membership"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/wallet/MembershipService;

    .line 9
    return-object v0
.end method

.method private getPricingPhase(Ljava/util/List;)Lcom/android/billingclient/api/l$b;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/l$b;",
            ">;)",
            "Lcom/android/billingclient/api/l$b;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    move-result v0

    .line 5
    .line 6
    add-int/lit8 v0, v0, -0x1

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    check-cast p1, Lcom/android/billingclient/api/l$b;

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->logPricingPhase(Lcom/android/billingclient/api/l$b;)V

    .line 16
    return-object p1
.end method

.method private getPricingVersion()J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/firebase/remoteconfig/a;->k()Lcom/google/firebase/remoteconfig/a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "android_amino_plus_pricing"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/google/firebase/remoteconfig/a;->m(Ljava/lang/String;)J

    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method private getProductDetails(Lcom/narvii/wallet/Product;)Lcom/android/billingclient/api/l;
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/wallet/Product;->skuList:[Ljava/lang/String;

    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    array-length v0, p1

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/narvii/wallet/MembershipBillingManager;->INSTANCE:Lcom/narvii/wallet/MembershipBillingManager;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/narvii/wallet/MembershipBillingManager;->getProductDetails([Ljava/lang/String;)Lcom/android/billingclient/api/l;

    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 19
    return-object p1
.end method

.method private getProductList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/wallet/Product;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeem:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeemProductList:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->subProductList:Ljava/util/List;

    :goto_0
    return-object v0
.end method

.method private getSelectedProduct()Lcom/narvii/wallet/Product;
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeem:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->selectedRedeemProduct:Lcom/narvii/wallet/Product;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->selectedSubProduct:Lcom/narvii/wallet/Product;

    :goto_0
    return-object v0
.end method

.method private getTransactionID()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeemTransactionId:Ljava/lang/String;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeemTransactionId:Ljava/lang/String;

    .line 15
    :cond_0
    return-void
.end method

.method private handleBillingError(Lcom/android/billingclient/api/h;)V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->iabPendingDlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->hideProgressDialog(Lcom/narvii/util/dialog/ProgressDialog;)V

    .line 9
    .line 10
    iput-object v1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->iabPendingDlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 11
    .line 12
    :cond_0
    const-string v0, "logging"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Lcom/narvii/util/logging/LoggingService;

    .line 19
    .line 20
    const/16 v2, 0xc

    .line 21
    .line 22
    new-array v2, v2, [Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    const-string/jumbo v3, "type"

    .line 26
    const/4 v4, 0x0

    .line 27
    .line 28
    aput-object v3, v2, v4

    .line 29
    const/4 v3, 0x1

    .line 30
    .line 31
    const-string v5, "IAP"

    .line 32
    .line 33
    aput-object v5, v2, v3

    .line 34
    const/4 v3, 0x2

    .line 35
    .line 36
    const-string v5, "months"

    .line 37
    .line 38
    aput-object v5, v2, v3

    .line 39
    .line 40
    iget-object v3, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->iabPendingProduct:Lcom/narvii/wallet/Product;

    .line 41
    .line 42
    iget v3, v3, Lcom/narvii/wallet/Product;->numberOfMonths:I

    .line 43
    .line 44
    .line 45
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    move-result-object v3

    .line 47
    const/4 v5, 0x3

    .line 48
    .line 49
    aput-object v3, v2, v5

    .line 50
    const/4 v3, 0x4

    .line 51
    .line 52
    const-string v5, "sku"

    .line 53
    .line 54
    aput-object v5, v2, v3

    .line 55
    .line 56
    iget-object v3, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->iabPendingProduct:Lcom/narvii/wallet/Product;

    .line 57
    .line 58
    iget-object v3, v3, Lcom/narvii/wallet/Product;->skuList:[Ljava/lang/String;

    .line 59
    .line 60
    aget-object v3, v3, v4

    .line 61
    const/4 v4, 0x5

    .line 62
    .line 63
    aput-object v3, v2, v4

    .line 64
    const/4 v3, 0x6

    .line 65
    .line 66
    const-string v4, "reason"

    .line 67
    .line 68
    aput-object v4, v2, v3

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/android/billingclient/api/h;->b()I

    .line 72
    move-result v3

    .line 73
    .line 74
    .line 75
    invoke-static {v3}, Lcom/narvii/wallet/IabUtils;->getReason(I)Ljava/lang/String;

    .line 76
    move-result-object v3

    .line 77
    const/4 v4, 0x7

    .line 78
    .line 79
    aput-object v3, v2, v4

    .line 80
    .line 81
    const/16 v3, 0x8

    .line 82
    .line 83
    const-string v4, "code"

    .line 84
    .line 85
    aput-object v4, v2, v3

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/android/billingclient/api/h;->b()I

    .line 89
    move-result v3

    .line 90
    .line 91
    .line 92
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    move-result-object v3

    .line 94
    .line 95
    const/16 v4, 0x9

    .line 96
    .line 97
    aput-object v3, v2, v4

    .line 98
    .line 99
    const/16 v3, 0xa

    .line 100
    .line 101
    const-string v4, "message"

    .line 102
    .line 103
    aput-object v4, v2, v3

    .line 104
    .line 105
    const/16 v3, 0xb

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/android/billingclient/api/h;->a()Ljava/lang/String;

    .line 109
    move-result-object p1

    .line 110
    .line 111
    aput-object p1, v2, v3

    .line 112
    .line 113
    const-string p1, "MembershipPurchaseError"

    .line 114
    .line 115
    .line 116
    invoke-interface {v0, p1, v2}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    .line 118
    iput-object v1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->iabPendingProduct:Lcom/narvii/wallet/Product;

    .line 119
    .line 120
    .line 121
    const p1, 0x7f120826

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 125
    move-result-object p1

    .line 126
    .line 127
    .line 128
    invoke-direct {p0, p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->showAlertDialog(Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method private handleOnFailPurchase(Lcom/narvii/wallet/MembershipSubscribeFragment$OnFailPurchaseEvent;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/narvii/wallet/MembershipSubscribeFragment$OnFailPurchaseEvent;->d(Lcom/narvii/wallet/MembershipSubscribeFragment$OnFailPurchaseEvent;)Lcom/narvii/util/dialog/ProgressDialog;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->hideProgressDialog(Lcom/narvii/util/dialog/ProgressDialog;)V

    .line 8
    .line 9
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lcom/narvii/wallet/MembershipSubscribeFragment$OnFailPurchaseEvent;->c(Lcom/narvii/wallet/MembershipSubscribeFragment$OnFailPurchaseEvent;)Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    new-instance v1, Lcom/narvii/wallet/s;

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, p0}, Lcom/narvii/wallet/s;-><init>(Lcom/narvii/wallet/MembershipSubscribeFragment;)V

    .line 29
    .line 30
    .line 31
    const v2, 0x7f1202ba

    .line 32
    const/4 v3, 0x0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v2, v3, v1}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Lcom/narvii/wallet/MembershipSubscribeFragment$OnFailPurchaseEvent;->b(Lcom/narvii/wallet/MembershipSubscribeFragment$OnFailPurchaseEvent;)Lcom/narvii/util/http/ApiResponseListener;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    new-instance v2, Lcom/narvii/wallet/x;

    .line 42
    .line 43
    .line 44
    invoke-direct {v2, p1, v1}, Lcom/narvii/wallet/x;-><init>(Lcom/narvii/wallet/MembershipSubscribeFragment$OnFailPurchaseEvent;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 45
    .line 46
    .line 47
    const p1, 0x7f12100d

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p1, v3, v2}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 54
    return-void
.end method

.method private handleOnQuerySubscriptionsSuccess()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->checkMembershipAndPayment()Ljava/lang/Boolean;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->updateUI()V

    .line 8
    .line 9
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 10
    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->iabPendingProduct:Lcom/narvii/wallet/Product;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->iabPendingDlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 18
    const/4 v1, 0x0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, v0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->hideProgressDialog(Lcom/narvii/util/dialog/ProgressDialog;)V

    .line 24
    .line 25
    iput-object v1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->iabPendingDlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->iabPendingProduct:Lcom/narvii/wallet/Product;

    .line 28
    .line 29
    iput-object v1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->iabPendingProduct:Lcom/narvii/wallet/Product;

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, v0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->purchaseSubscribe(Lcom/narvii/wallet/Product;)V

    .line 33
    :cond_1
    return-void
.end method

.method private handleSuccessPurchase(Lcom/narvii/wallet/MembershipResponse;Lcom/narvii/util/dialog/ProgressDialog;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/narvii/wallet/MembershipSubscribeFragment;->hideProgressDialog(Lcom/narvii/util/dialog/ProgressDialog;)V

    .line 4
    .line 5
    new-instance p2, Landroid/content/Intent;

    .line 6
    .line 7
    const-string v0, "com.narvii.action.PURCHASED_SUB_CHANGED"

    .line 8
    .line 9
    .line 10
    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->d(Landroid/content/Intent;)Z

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->done()V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->confetti()V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->updateMembership(Lcom/narvii/wallet/MembershipResponse;)V

    .line 31
    .line 32
    const-string p1, "statistics"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 39
    .line 40
    const-string p2, "Purchase Membership"

    .line 41
    .line 42
    .line 43
    invoke-interface {p1, p2}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    const-string p2, "Membership Active"

    .line 47
    .line 48
    iget-boolean v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->wasMembership:Z

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p2, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    new-instance p2, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->purchasingProduct:Lcom/narvii/wallet/Product;

    .line 60
    const/4 v1, 0x1

    .line 61
    .line 62
    if-nez v0, :cond_0

    .line 63
    move v0, v1

    .line 64
    goto :goto_0

    .line 65
    .line 66
    :cond_0
    iget v0, v0, Lcom/narvii/wallet/Product;->numberOfMonths:I

    .line 67
    .line 68
    .line 69
    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v0, " Months"

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object p2

    .line 79
    .line 80
    const-string v0, "Length"

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v0, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 84
    move-result-object p1

    .line 85
    .line 86
    iget-object p2, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->purchasingProduct:Lcom/narvii/wallet/Product;

    .line 87
    .line 88
    if-eqz p2, :cond_2

    .line 89
    .line 90
    iget-object p2, p2, Lcom/narvii/wallet/Product;->dollarPrice:Ljava/lang/Double;

    .line 91
    .line 92
    if-nez p2, :cond_1

    .line 93
    goto :goto_1

    .line 94
    .line 95
    .line 96
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Double;->floatValue()F

    .line 97
    move-result p2

    .line 98
    goto :goto_2

    .line 99
    :cond_2
    :goto_1
    const/4 p2, 0x0

    .line 100
    .line 101
    :goto_2
    const-string v0, "Price"

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v0, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;F)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 105
    move-result-object p1

    .line 106
    .line 107
    const-string p2, "Type"

    .line 108
    .line 109
    const-string v0, "IAP"

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, p2, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 113
    move-result-object p1

    .line 114
    .line 115
    iget-boolean p2, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->freeTrial:Z

    .line 116
    .line 117
    if-eqz p2, :cond_3

    .line 118
    .line 119
    const-string p2, "Trial"

    .line 120
    goto :goto_3

    .line 121
    .line 122
    :cond_3
    iget-boolean p2, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->wasMembership:Z

    .line 123
    .line 124
    if-eqz p2, :cond_4

    .line 125
    .line 126
    const-string p2, "Renew"

    .line 127
    goto :goto_3

    .line 128
    .line 129
    :cond_4
    const-string p2, "Standard"

    .line 130
    .line 131
    :goto_3
    const-string v0, "Type 2"

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v0, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 135
    move-result-object p1

    .line 136
    .line 137
    const-string p2, "Auto Renew"

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, p2, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 141
    move-result-object p1

    .line 142
    .line 143
    const-string p2, "Purchase Membership Total"

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 147
    return-void
.end method

.method private hideProgressDialog(Lcom/narvii/util/dialog/ProgressDialog;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 4
    return-void
.end method

.method private isAminoPlusMembership()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v0, v0, Lcom/narvii/wallet/MembershipStatus;->membershipStatus:I

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    return v1
.end method

.method private isMembershipLoaded()Z
    .locals 1

    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->paymentContext:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->paymentError:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isMembershipRenewal()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    :cond_0
    iget-boolean v2, v0, Lcom/narvii/wallet/MembershipStatus;->isAutoRenew:Z

    .line 9
    .line 10
    if-nez v2, :cond_1

    .line 11
    .line 12
    iget-object v2, v0, Lcom/narvii/wallet/MembershipStatus;->expiredTime:Ljava/util/Date;

    .line 13
    .line 14
    if-nez v2, :cond_2

    .line 15
    .line 16
    :cond_1
    iget-boolean v2, v0, Lcom/narvii/wallet/MembershipStatus;->isPremiumItemMembership:Z

    .line 17
    .line 18
    if-eqz v2, :cond_3

    .line 19
    .line 20
    iget-object v0, v0, Lcom/narvii/wallet/MembershipStatus;->createdTime:Ljava/util/Date;

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lcom/narvii/util/DateUtils;->isToday(Ljava/util/Date;)Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-nez v0, :cond_3

    .line 27
    :cond_2
    const/4 v1, 0x1

    .line 28
    :cond_3
    return v1
.end method

.method private synthetic lambda$checkMembershipAndPayment$8(Ljava/lang/String;Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    new-instance p2, Lcom/narvii/util/PackageUtils;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-direct {p2, v0}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, p1}, Lcom/narvii/util/PackageUtils;->openCommunity(Ljava/lang/String;)Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, p1}, Lcom/narvii/util/PackageUtils;->openGooglePlay(Ljava/lang/String;)V

    .line 19
    :cond_0
    return-void
.end method

.method private synthetic lambda$handleOnFailPurchase$4(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->done()V

    .line 4
    return-void
.end method

.method private static synthetic lambda$handleOnFailPurchase$5(Lcom/narvii/wallet/MembershipSubscribeFragment$OnFailPurchaseEvent;Lcom/narvii/util/http/ApiResponseListener;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment$OnFailPurchaseEvent;->d(Lcom/narvii/wallet/MembershipSubscribeFragment$OnFailPurchaseEvent;)Lcom/narvii/util/dialog/ProgressDialog;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment$OnFailPurchaseEvent;->a(Lcom/narvii/wallet/MembershipSubscribeFragment$OnFailPurchaseEvent;)Lcom/narvii/util/http/ApiService;

    .line 11
    move-result-object p2

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment$OnFailPurchaseEvent;->e(Lcom/narvii/wallet/MembershipSubscribeFragment$OnFailPurchaseEvent;)Lcom/narvii/util/http/ApiRequest;

    .line 15
    move-result-object p0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, p0, p1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 19
    return-void
.end method

.method private synthetic lambda$observePurchaseUpdate$3(Lcom/narvii/wallet/PurchasesUpdate;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/narvii/wallet/PurchasesUpdate;->getBillingResult()Lcom/android/billingclient/api/h;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/narvii/wallet/PurchasesUpdate;->isSuccess()Z

    .line 8
    move-result v1

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->buildNotCancelableProgressDialog()Lcom/narvii/util/dialog/ProgressDialog;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->findPurchase(Lcom/narvii/wallet/PurchasesUpdate;)Lcom/android/billingclient/api/Purchase;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->showPurchaseErrorToUser()V

    .line 27
    return-void

    .line 28
    .line 29
    :cond_0
    sget-object v1, Lcom/narvii/wallet/MembershipBillingManager;->INSTANCE:Lcom/narvii/wallet/MembershipBillingManager;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p1}, Lcom/narvii/wallet/MembershipBillingManager;->processPurchase(Lcom/android/billingclient/api/Purchase;)V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    const-string v2, "/membership/product/subscribe"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    const-string v2, "sku"

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->getFirstSkuSafety(Lcom/android/billingclient/api/Purchase;)Ljava/lang/String;

    .line 52
    move-result-object v3

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 60
    move-result-object v2

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 64
    move-result-object v2

    .line 65
    .line 66
    const-string v3, "packageName"

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 70
    move-result-object v1

    .line 71
    const/4 v2, 0x5

    .line 72
    .line 73
    .line 74
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    move-result-object v2

    .line 76
    .line 77
    const-string v3, "paymentType"

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 81
    move-result-object v1

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->d()Ljava/lang/String;

    .line 85
    move-result-object v2

    .line 86
    .line 87
    .line 88
    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->createObjectNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 89
    move-result-object v2

    .line 90
    .line 91
    const-string v3, "paymentContext"

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 95
    move-result-object v1

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 99
    move-result-object v1

    .line 100
    .line 101
    const-string v2, "api"

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 105
    move-result-object v2

    .line 106
    .line 107
    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 108
    .line 109
    new-instance v3, Lcom/narvii/wallet/MembershipSubscribeFragment$4;

    .line 110
    .line 111
    const-class v4, Lcom/narvii/wallet/MembershipResponse;

    .line 112
    .line 113
    .line 114
    invoke-direct {v3, p0, v4, v0, v2}, Lcom/narvii/wallet/MembershipSubscribeFragment$4;-><init>(Lcom/narvii/wallet/MembershipSubscribeFragment;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/util/http/ApiService;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2, v1, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 118
    .line 119
    .line 120
    invoke-direct {p0, p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->sendPurchaseSuccessEvent(Lcom/android/billingclient/api/Purchase;)V

    .line 121
    .line 122
    .line 123
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->sendStatisticsPurchaseProductEvent()V

    .line 124
    goto :goto_0

    .line 125
    .line 126
    .line 127
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/wallet/PurchasesUpdate;->userCanceled()Z

    .line 128
    move-result p1

    .line 129
    .line 130
    if-nez p1, :cond_2

    .line 131
    .line 132
    .line 133
    const p1, 0x7f120826

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 137
    move-result-object p1

    .line 138
    .line 139
    .line 140
    invoke-direct {p0, p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->showPurchaseErrorDialog(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-direct {p0, v0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->sendPurchaseErrorEvent(Lcom/android/billingclient/api/h;)V

    .line 144
    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$observeSetupFinished$1(Lcom/android/billingclient/api/h;)V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/wallet/BillingManager;->INSTANCE:Lcom/narvii/wallet/BillingManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/wallet/BillingManager;->getBillingState()Lcom/narvii/wallet/BillingState;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/wallet/BillingState;->isConnected()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->querySubscriptions()V

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->iabPendingProduct:Lcom/narvii/wallet/Product;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->handleBillingError(Lcom/android/billingclient/api/h;)V

    .line 24
    goto :goto_0

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->showPurchaseErrorToast()V

    .line 28
    :goto_0
    return-void
.end method

.method private synthetic lambda$observeSubUpdate$2(Lcom/android/billingclient/api/h;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/billingclient/api/h;->b()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->handleOnQuerySubscriptionsSuccess()V

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->iabPendingProduct:Lcom/narvii/wallet/Product;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->handleBillingError(Lcom/android/billingclient/api/h;)V

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->showPurchaseErrorToast()V

    .line 22
    :goto_0
    return-void
.end method

.method private synthetic lambda$purchaseSubscribe$10(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->iabPendingDlg:Lcom/narvii/util/dialog/ProgressDialog;

    iput-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->iabPendingProduct:Lcom/narvii/wallet/Product;

    return-void
.end method

.method private static synthetic lambda$purchaseSubscribe$11(Lcom/narvii/util/http/ApiService;Lcom/narvii/util/http/ApiRequest;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 4
    return-void
.end method

.method private synthetic lambda$querySubscriptions$9()Lw7/l0;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->updateUiOnMainThread()V

    .line 4
    .line 5
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 6
    return-object v0
.end method

.method private synthetic lambda$setRedeemCoupon$0(Lcom/narvii/model/NVObject;)V
    .locals 1

    .line 1
    .line 2
    sget-object p1, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    const-string v0, "GetCoinsButton"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 16
    return-void
.end method

.method private synthetic lambda$showPurchaseErrorToUser$6(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->done()V

    .line 4
    return-void
.end method

.method private static synthetic lambda$showPurchaseErrorToUser$7(Lcom/narvii/util/dialog/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 4
    return-void
.end method

.method private logPricingPhase(Lcom/android/billingclient/api/l$b;)V
    .locals 3

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    const-string v1, "Pricing phase { priceCurrencyCode: "

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/android/billingclient/api/l$b;->e()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v1, ",formattedPrice: "

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/android/billingclient/api/l$b;->c()Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v1, ",priceAmountMicros: "

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/android/billingclient/api/l$b;->d()J

    .line 41
    move-result-wide v1

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v1, ",billingPeriod: "

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/android/billingclient/api/l$b;->b()Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v1, ",billingCycleCount: "

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/android/billingclient/api/l$b;->a()I

    .line 65
    move-result v1

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v1, ",recurrenceMode: "

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/android/billingclient/api/l$b;->f()I

    .line 77
    move-result p1

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string p1, "  }"

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object p1

    .line 90
    .line 91
    const-string v0, "MembershipSubscribeFragment"

    .line 92
    .line 93
    .line 94
    invoke-static {v0, p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method private logPricingPhaseList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/l$b;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Lcom/android/billingclient/api/l$b;

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, v0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->logPricingPhase(Lcom/android/billingclient/api/l$b;)V

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void
.end method

.method private membershipPaymentIsCoins()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v0, v0, Lcom/narvii/wallet/MembershipStatus;->paymentType:I

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    return v1
.end method

.method public static synthetic n(Lcom/narvii/wallet/MembershipSubscribeFragment;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/wallet/MembershipSubscribeFragment;->lambda$checkMembershipAndPayment$8(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o(Lcom/narvii/wallet/MembershipSubscribeFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->lambda$handleOnFailPurchase$4(Landroid/view/View;)V

    return-void
.end method

.method private observePurchaseUpdate()V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/wallet/BillingManager;->INSTANCE:Lcom/narvii/wallet/BillingManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/wallet/BillingManager;->getPurchasesUpdate()La;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    new-instance v1, Lcom/narvii/wallet/c0;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/narvii/wallet/c0;-><init>(Lcom/narvii/wallet/MembershipSubscribeFragment;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0, v1}, La;->i(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 15
    return-void
.end method

.method private observeSetupFinished()V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/wallet/BillingManager;->INSTANCE:Lcom/narvii/wallet/BillingManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/wallet/BillingManager;->getSetupFinished()Landroidx/lifecycle/LiveData;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    new-instance v1, Lcom/narvii/wallet/u;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/narvii/wallet/u;-><init>(Lcom/narvii/wallet/MembershipSubscribeFragment;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->i(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 15
    return-void
.end method

.method private observeSubUpdate()V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/wallet/MembershipBillingManager;->INSTANCE:Lcom/narvii/wallet/MembershipBillingManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipBillingManager;->getSubsUpdate()La;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    new-instance v1, Lcom/narvii/wallet/a0;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/narvii/wallet/a0;-><init>(Lcom/narvii/wallet/MembershipSubscribeFragment;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0, v1}, La;->i(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 15
    return-void
.end method

.method public static synthetic p(Lcom/narvii/wallet/MembershipSubscribeFragment$OnFailPurchaseEvent;Lcom/narvii/util/http/ApiResponseListener;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/wallet/MembershipSubscribeFragment;->lambda$handleOnFailPurchase$5(Lcom/narvii/wallet/MembershipSubscribeFragment$OnFailPurchaseEvent;Lcom/narvii/util/http/ApiResponseListener;Landroid/view/View;)V

    return-void
.end method

.method private pickProduct(Lcom/narvii/wallet/Product;Ljava/util/List;)Lcom/narvii/wallet/Product;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/wallet/Product;",
            "Ljava/util/List<",
            "Lcom/narvii/wallet/Product;",
            ">;)",
            "Lcom/narvii/wallet/Product;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    .line 10
    :cond_0
    if-eqz p1, :cond_2

    .line 11
    .line 12
    iget-object p1, p1, Lcom/narvii/wallet/Product;->skuList:[Ljava/lang/String;

    .line 13
    .line 14
    if-eqz p1, :cond_2

    .line 15
    array-length v0, p1

    .line 16
    .line 17
    if-lez v0, :cond_2

    .line 18
    const/4 v0, 0x0

    .line 19
    .line 20
    aget-object p1, p1, v0

    .line 21
    .line 22
    .line 23
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v2

    .line 29
    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    check-cast v2, Lcom/narvii/wallet/Product;

    .line 37
    .line 38
    iget-object v3, v2, Lcom/narvii/wallet/Product;->skuList:[Ljava/lang/String;

    .line 39
    .line 40
    if-eqz v3, :cond_1

    .line 41
    array-length v4, v3

    .line 42
    .line 43
    if-lez v4, :cond_1

    .line 44
    .line 45
    aget-object v3, v3, v0

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    move-result v3

    .line 50
    .line 51
    if-eqz v3, :cond_1

    .line 52
    return-object v2

    .line 53
    .line 54
    .line 55
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    .line 59
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    move-result v0

    .line 61
    .line 62
    if-eqz v0, :cond_4

    .line 63
    .line 64
    .line 65
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    check-cast v0, Lcom/narvii/wallet/Product;

    .line 69
    .line 70
    iget-boolean v1, v0, Lcom/narvii/wallet/Product;->suggested:Z

    .line 71
    .line 72
    if-eqz v1, :cond_3

    .line 73
    return-object v0

    .line 74
    .line 75
    .line 76
    :cond_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 77
    move-result p1

    .line 78
    .line 79
    div-int/lit8 p1, p1, 0x2

    .line 80
    .line 81
    .line 82
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 83
    move-result-object p1

    .line 84
    .line 85
    check-cast p1, Lcom/narvii/wallet/Product;

    .line 86
    return-object p1
.end method

.method private purchaseSubscribe(Lcom/narvii/wallet/Product;)V
    .locals 14

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/wallet/MembershipBillingManager;->INSTANCE:Lcom/narvii/wallet/MembershipBillingManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipBillingManager;->getSubsDetails()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->iabPendingDlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, v0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->hideProgressDialog(Lcom/narvii/util/dialog/ProgressDialog;)V

    .line 20
    .line 21
    :cond_0
    iput-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->iabPendingProduct:Lcom/narvii/wallet/Product;

    .line 22
    .line 23
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 31
    .line 32
    iput-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->iabPendingDlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 33
    .line 34
    new-instance v0, Lcom/narvii/wallet/v;

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, p0}, Lcom/narvii/wallet/v;-><init>(Lcom/narvii/wallet/MembershipSubscribeFragment;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 41
    .line 42
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->iabPendingDlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 46
    .line 47
    sget-object p1, Lcom/narvii/wallet/BillingManager;->INSTANCE:Lcom/narvii/wallet/BillingManager;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/narvii/wallet/BillingManager;->getBillingState()Lcom/narvii/wallet/BillingState;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/narvii/wallet/BillingState;->isConnected()Z

    .line 55
    move-result v0

    .line 56
    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    .line 60
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->querySubscriptions()V

    .line 61
    .line 62
    goto/16 :goto_2

    .line 63
    .line 64
    .line 65
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/wallet/BillingManager;->connectBillingClient()V

    .line 66
    .line 67
    goto/16 :goto_2

    .line 68
    .line 69
    .line 70
    :cond_2
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->checkMembershipAndPayment()Ljava/lang/Boolean;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 74
    const/4 v2, 0x6

    .line 75
    const/4 v3, 0x4

    .line 76
    const/4 v4, 0x3

    .line 77
    .line 78
    const-string v5, "months"

    .line 79
    const/4 v6, 0x2

    .line 80
    .line 81
    .line 82
    const-string/jumbo v7, "type"

    .line 83
    .line 84
    const-string v8, "logging"

    .line 85
    const/4 v9, 0x5

    .line 86
    .line 87
    const-string v10, "sku"

    .line 88
    .line 89
    const-string v11, "IAP"

    .line 90
    const/4 v12, 0x1

    .line 91
    const/4 v13, 0x0

    .line 92
    .line 93
    if-eq v0, v1, :cond_4

    .line 94
    .line 95
    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->checkMembershipAndPaymentResultReason:Ljava/lang/String;

    .line 96
    .line 97
    if-eqz v0, :cond_3

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v8}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 101
    move-result-object v0

    .line 102
    .line 103
    check-cast v0, Lcom/narvii/util/logging/LoggingService;

    .line 104
    .line 105
    const/16 v1, 0xc

    .line 106
    .line 107
    new-array v1, v1, [Ljava/lang/Object;

    .line 108
    .line 109
    aput-object v7, v1, v13

    .line 110
    .line 111
    aput-object v11, v1, v12

    .line 112
    .line 113
    aput-object v5, v1, v6

    .line 114
    .line 115
    iget v5, p1, Lcom/narvii/wallet/Product;->numberOfMonths:I

    .line 116
    .line 117
    .line 118
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    move-result-object v5

    .line 120
    .line 121
    aput-object v5, v1, v4

    .line 122
    .line 123
    aput-object v10, v1, v3

    .line 124
    .line 125
    iget-object p1, p1, Lcom/narvii/wallet/Product;->skuList:[Ljava/lang/String;

    .line 126
    .line 127
    aget-object p1, p1, v13

    .line 128
    .line 129
    aput-object p1, v1, v9

    .line 130
    .line 131
    const-string p1, "reason"

    .line 132
    .line 133
    aput-object p1, v1, v2

    .line 134
    const/4 p1, 0x7

    .line 135
    .line 136
    iget-object v2, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->checkMembershipAndPaymentResultReason:Ljava/lang/String;

    .line 137
    .line 138
    aput-object v2, v1, p1

    .line 139
    .line 140
    const/16 p1, 0x8

    .line 141
    .line 142
    const-string v2, "code"

    .line 143
    .line 144
    aput-object v2, v1, p1

    .line 145
    .line 146
    iget p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->checkMembershipAndPaymentResultCode:I

    .line 147
    .line 148
    .line 149
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    move-result-object p1

    .line 151
    .line 152
    const/16 v2, 0x9

    .line 153
    .line 154
    aput-object p1, v1, v2

    .line 155
    .line 156
    const/16 p1, 0xa

    .line 157
    .line 158
    const-string v2, "message"

    .line 159
    .line 160
    aput-object v2, v1, p1

    .line 161
    .line 162
    const/16 p1, 0xb

    .line 163
    .line 164
    iget-object v2, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->checkMembershipAndPaymentResultMessage:Ljava/lang/String;

    .line 165
    .line 166
    aput-object v2, v1, p1

    .line 167
    .line 168
    const-string p1, "MembershipPurchaseError"

    .line 169
    .line 170
    .line 171
    invoke-interface {v0, p1, v1}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    :cond_3
    return-void

    .line 173
    .line 174
    .line 175
    :cond_4
    invoke-direct {p0, p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->getProductDetails(Lcom/narvii/wallet/Product;)Lcom/android/billingclient/api/l;

    .line 176
    move-result-object v0

    .line 177
    .line 178
    if-eqz v0, :cond_8

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0, v8}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 182
    move-result-object v1

    .line 183
    .line 184
    check-cast v1, Lcom/narvii/util/logging/LoggingService;

    .line 185
    .line 186
    new-array v2, v2, [Ljava/lang/Object;

    .line 187
    .line 188
    aput-object v7, v2, v13

    .line 189
    .line 190
    aput-object v11, v2, v12

    .line 191
    .line 192
    aput-object v5, v2, v6

    .line 193
    .line 194
    iget v5, p1, Lcom/narvii/wallet/Product;->numberOfMonths:I

    .line 195
    .line 196
    .line 197
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 198
    move-result-object v5

    .line 199
    .line 200
    aput-object v5, v2, v4

    .line 201
    .line 202
    aput-object v10, v2, v3

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0}, Lcom/android/billingclient/api/l;->b()Ljava/lang/String;

    .line 206
    move-result-object v3

    .line 207
    .line 208
    aput-object v3, v2, v9

    .line 209
    .line 210
    const-string v3, "MembershipPurchaseStarting"

    .line 211
    .line 212
    .line 213
    invoke-interface {v1, v3, v2}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    .line 215
    const-string v1, "statistics"

    .line 216
    .line 217
    .line 218
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 219
    move-result-object v1

    .line 220
    .line 221
    check-cast v1, Lcom/narvii/util/statistics/StatisticsService;

    .line 222
    .line 223
    const-string v2, "Attempts Purchase Membership"

    .line 224
    .line 225
    .line 226
    invoke-interface {v1, v2}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 227
    move-result-object v1

    .line 228
    .line 229
    const-string v2, "Membership Active"

    .line 230
    .line 231
    iget-boolean v3, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->wasMembership:Z

    .line 232
    .line 233
    .line 234
    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 235
    move-result-object v1

    .line 236
    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    .line 242
    iget v3, p1, Lcom/narvii/wallet/Product;->numberOfMonths:I

    .line 243
    .line 244
    .line 245
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    const-string v3, " Months"

    .line 248
    .line 249
    .line 250
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    move-result-object v2

    .line 255
    .line 256
    const-string v3, "Length"

    .line 257
    .line 258
    .line 259
    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 260
    move-result-object v1

    .line 261
    .line 262
    iget-object v2, p1, Lcom/narvii/wallet/Product;->dollarPrice:Ljava/lang/Double;

    .line 263
    .line 264
    if-nez v2, :cond_5

    .line 265
    const/4 v2, 0x0

    .line 266
    goto :goto_0

    .line 267
    .line 268
    .line 269
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Double;->floatValue()F

    .line 270
    move-result v2

    .line 271
    .line 272
    :goto_0
    const-string v3, "Price"

    .line 273
    .line 274
    .line 275
    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;F)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 276
    move-result-object v1

    .line 277
    .line 278
    const-string v2, "Type"

    .line 279
    .line 280
    .line 281
    invoke-virtual {v1, v2, v11}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 282
    move-result-object v1

    .line 283
    .line 284
    iget-boolean v2, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->freeTrial:Z

    .line 285
    .line 286
    if-eqz v2, :cond_6

    .line 287
    .line 288
    const-string v2, "Trial"

    .line 289
    goto :goto_1

    .line 290
    .line 291
    :cond_6
    iget-boolean v2, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->wasMembership:Z

    .line 292
    .line 293
    if-eqz v2, :cond_7

    .line 294
    .line 295
    const-string v2, "Renew"

    .line 296
    goto :goto_1

    .line 297
    .line 298
    :cond_7
    const-string v2, "Standard"

    .line 299
    .line 300
    :goto_1
    const-string v3, "Type 2"

    .line 301
    .line 302
    .line 303
    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 304
    move-result-object v1

    .line 305
    .line 306
    const-string v2, "Auto Renew"

    .line 307
    .line 308
    .line 309
    invoke-virtual {v1, v2, v12}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 310
    move-result-object v1

    .line 311
    .line 312
    const-string v2, "Attempts Purchase Membership Total"

    .line 313
    .line 314
    .line 315
    invoke-virtual {v1, v2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 316
    .line 317
    new-instance v1, Lcom/narvii/util/dialog/ProgressDialog;

    .line 318
    .line 319
    .line 320
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 321
    move-result-object v2

    .line 322
    .line 323
    .line 324
    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 325
    .line 326
    .line 327
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 328
    move-result-object v2

    .line 329
    .line 330
    .line 331
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 332
    move-result-object v2

    .line 333
    .line 334
    .line 335
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 336
    move-result-object v2

    .line 337
    .line 338
    const-string v3, "/membership/product/pre-subscribe"

    .line 339
    .line 340
    .line 341
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 342
    move-result-object v2

    .line 343
    .line 344
    .line 345
    invoke-virtual {v0}, Lcom/android/billingclient/api/l;->b()Ljava/lang/String;

    .line 346
    move-result-object v3

    .line 347
    .line 348
    .line 349
    invoke-virtual {v2, v10, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 350
    move-result-object v2

    .line 351
    .line 352
    .line 353
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 354
    move-result-object v3

    .line 355
    .line 356
    .line 357
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 358
    move-result-object v3

    .line 359
    .line 360
    const-string v4, "packageName"

    .line 361
    .line 362
    .line 363
    invoke-virtual {v2, v4, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 364
    move-result-object v2

    .line 365
    .line 366
    const-string v3, "paymentType"

    .line 367
    .line 368
    .line 369
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 370
    move-result-object v4

    .line 371
    .line 372
    .line 373
    invoke-virtual {v2, v3, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 374
    move-result-object v2

    .line 375
    .line 376
    .line 377
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 378
    move-result-object v8

    .line 379
    .line 380
    const-string v2, "api"

    .line 381
    .line 382
    .line 383
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 384
    move-result-object v2

    .line 385
    move-object v9, v2

    .line 386
    .line 387
    check-cast v9, Lcom/narvii/util/http/ApiService;

    .line 388
    .line 389
    new-instance v10, Lcom/narvii/wallet/MembershipSubscribeFragment$7;

    .line 390
    .line 391
    const-class v4, Lcom/narvii/model/api/ApiResponse;

    .line 392
    move-object v2, v10

    .line 393
    move-object v3, p0

    .line 394
    move-object v5, v1

    .line 395
    move-object v6, p1

    .line 396
    move-object v7, v0

    .line 397
    .line 398
    .line 399
    invoke-direct/range {v2 .. v7}, Lcom/narvii/wallet/MembershipSubscribeFragment$7;-><init>(Lcom/narvii/wallet/MembershipSubscribeFragment;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/wallet/Product;Lcom/android/billingclient/api/l;)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {v9, v8, v10}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 403
    .line 404
    new-instance p1, Lcom/narvii/wallet/w;

    .line 405
    .line 406
    .line 407
    invoke-direct {p1, v9, v8}, Lcom/narvii/wallet/w;-><init>(Lcom/narvii/util/http/ApiService;Lcom/narvii/util/http/ApiRequest;)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v1, p1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 414
    :cond_8
    :goto_2
    return-void
.end method

.method public static synthetic q(Lcom/narvii/wallet/MembershipSubscribeFragment;)Lw7/l0;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->lambda$querySubscriptions$9()Lw7/l0;

    move-result-object p0

    return-object p0
.end method

.method private querySubscriptions()V
    .locals 3

    .line 1
    .line 2
    const-string v0, "MembershipSubscribeFragment"

    .line 3
    .line 4
    const-string v1, "Billing client is not initialized or already connected"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->subProductList:Ljava/util/List;

    .line 10
    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-nez v0, :cond_3

    .line 18
    .line 19
    sget-object v0, Lcom/narvii/wallet/MembershipBillingManager;->INSTANCE:Lcom/narvii/wallet/MembershipBillingManager;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipBillingManager;->getSubsDetails()Ljava/util/List;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 27
    move-result v0

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    new-instance v0, Ljava/util/ArrayList;

    .line 32
    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    iget-object v1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->subProductList:Ljava/util/List;

    .line 37
    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    move-result v2

    .line 45
    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    .line 49
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    move-result-object v2

    .line 51
    .line 52
    check-cast v2, Lcom/narvii/wallet/Product;

    .line 53
    .line 54
    iget-object v2, v2, Lcom/narvii/wallet/Product;->skuList:[Ljava/lang/String;

    .line 55
    .line 56
    if-eqz v2, :cond_0

    .line 57
    .line 58
    .line 59
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 60
    move-result-object v2

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 64
    goto :goto_0

    .line 65
    .line 66
    :cond_1
    sget-object v1, Lcom/narvii/wallet/MembershipBillingManager;->INSTANCE:Lcom/narvii/wallet/MembershipBillingManager;

    .line 67
    .line 68
    new-instance v2, Lcom/narvii/wallet/t;

    .line 69
    .line 70
    .line 71
    invoke-direct {v2, p0}, Lcom/narvii/wallet/t;-><init>(Lcom/narvii/wallet/MembershipSubscribeFragment;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v0, v2}, Lcom/narvii/wallet/MembershipBillingManager;->querySubsDetails(Ljava/util/ArrayList;Le8/a;)V

    .line 75
    goto :goto_1

    .line 76
    .line 77
    .line 78
    :cond_2
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->handleOnQuerySubscriptionsSuccess()V

    .line 79
    :cond_3
    :goto_1
    return-void
.end method

.method public static synthetic r(Lcom/narvii/wallet/MembershipSubscribeFragment;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->lambda$purchaseSubscribe$10(Landroid/content/DialogInterface;)V

    return-void
.end method

.method private redeemSubscribe(Lcom/narvii/wallet/Product;Lcom/narvii/wallet/Coupon;)V
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    iget-object v1, p2, Lcom/narvii/wallet/Coupon;->coupon:Lcom/narvii/wallet/CouponDetail;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    iget-object v1, v1, Lcom/narvii/wallet/CouponDetail;->couponValue:Ljava/lang/Integer;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 16
    move-result v1

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    move v1, v0

    .line 19
    .line 20
    .line 21
    :goto_1
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->checkMembershipAndPayment()Ljava/lang/Boolean;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 25
    const/4 v4, 0x4

    .line 26
    const/4 v5, 0x3

    .line 27
    .line 28
    const-string v6, "months"

    .line 29
    const/4 v7, 0x2

    .line 30
    .line 31
    .line 32
    const-string/jumbo v8, "type"

    .line 33
    .line 34
    const-string v9, "logging"

    .line 35
    .line 36
    const-string v10, "Coin"

    .line 37
    const/4 v11, 0x1

    .line 38
    .line 39
    if-eq v2, v3, :cond_2

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v9}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    move-result-object p2

    .line 44
    .line 45
    check-cast p2, Lcom/narvii/util/logging/LoggingService;

    .line 46
    .line 47
    const/16 v1, 0xa

    .line 48
    .line 49
    new-array v1, v1, [Ljava/lang/Object;

    .line 50
    .line 51
    aput-object v8, v1, v0

    .line 52
    .line 53
    aput-object v10, v1, v11

    .line 54
    .line 55
    aput-object v6, v1, v7

    .line 56
    .line 57
    iget p1, p1, Lcom/narvii/wallet/Product;->numberOfMonths:I

    .line 58
    .line 59
    .line 60
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    aput-object p1, v1, v5

    .line 64
    .line 65
    const-string p1, "reason"

    .line 66
    .line 67
    aput-object p1, v1, v4

    .line 68
    const/4 p1, 0x5

    .line 69
    .line 70
    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->checkMembershipAndPaymentResultReason:Ljava/lang/String;

    .line 71
    .line 72
    aput-object v0, v1, p1

    .line 73
    const/4 p1, 0x6

    .line 74
    .line 75
    const-string v0, "code"

    .line 76
    .line 77
    aput-object v0, v1, p1

    .line 78
    .line 79
    iget p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->checkMembershipAndPaymentResultCode:I

    .line 80
    .line 81
    .line 82
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    move-result-object p1

    .line 84
    const/4 v0, 0x7

    .line 85
    .line 86
    aput-object p1, v1, v0

    .line 87
    .line 88
    const/16 p1, 0x8

    .line 89
    .line 90
    const-string v0, "message"

    .line 91
    .line 92
    aput-object v0, v1, p1

    .line 93
    .line 94
    const/16 p1, 0x9

    .line 95
    .line 96
    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->checkMembershipAndPaymentResultMessage:Ljava/lang/String;

    .line 97
    .line 98
    aput-object v0, v1, p1

    .line 99
    .line 100
    const-string p1, "MembershipPurchaseError"

    .line 101
    .line 102
    .line 103
    invoke-interface {p2, p1, v1}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    return-void

    .line 105
    .line 106
    :cond_2
    sget-object v2, Lcom/narvii/logging/ActSemantic;->purchase:Lcom/narvii/logging/ActSemantic;

    .line 107
    .line 108
    .line 109
    invoke-static {p0, v2}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 110
    move-result-object v2

    .line 111
    .line 112
    const-string v3, "PurchaseButton"

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2, v3}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 116
    move-result-object v2

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, v9}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 123
    move-result-object v2

    .line 124
    .line 125
    check-cast v2, Lcom/narvii/util/logging/LoggingService;

    .line 126
    .line 127
    new-array v3, v4, [Ljava/lang/Object;

    .line 128
    .line 129
    aput-object v8, v3, v0

    .line 130
    .line 131
    aput-object v10, v3, v11

    .line 132
    .line 133
    aput-object v6, v3, v7

    .line 134
    .line 135
    iget v4, p1, Lcom/narvii/wallet/Product;->numberOfMonths:I

    .line 136
    .line 137
    .line 138
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 139
    move-result-object v4

    .line 140
    .line 141
    aput-object v4, v3, v5

    .line 142
    .line 143
    const-string v4, "MembershipPurchaseStarting"

    .line 144
    .line 145
    .line 146
    invoke-interface {v2, v4, v3}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    .line 148
    const-string v2, "statistics"

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 152
    move-result-object v2

    .line 153
    .line 154
    check-cast v2, Lcom/narvii/util/statistics/StatisticsService;

    .line 155
    .line 156
    const-string v3, "Attempts Purchase Membership"

    .line 157
    .line 158
    .line 159
    invoke-interface {v2, v3}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 160
    move-result-object v2

    .line 161
    .line 162
    const-string v3, "Membership Active"

    .line 163
    .line 164
    iget-boolean v4, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->wasMembership:Z

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2, v3, v4}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 168
    move-result-object v2

    .line 169
    .line 170
    new-instance v3, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .line 175
    iget v4, p1, Lcom/narvii/wallet/Product;->numberOfMonths:I

    .line 176
    .line 177
    .line 178
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    const-string v4, " Months"

    .line 181
    .line 182
    .line 183
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    move-result-object v3

    .line 188
    .line 189
    const-string v4, "Length"

    .line 190
    .line 191
    .line 192
    invoke-virtual {v2, v4, v3}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 193
    move-result-object v2

    .line 194
    .line 195
    const-string v3, "Type"

    .line 196
    .line 197
    .line 198
    invoke-virtual {v2, v3, v10}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 199
    move-result-object v2

    .line 200
    .line 201
    const-string v3, "Auto Renew"

    .line 202
    .line 203
    .line 204
    invoke-virtual {v2, v3, v11}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 205
    move-result-object v2

    .line 206
    .line 207
    const-string v3, "Coupon"

    .line 208
    .line 209
    .line 210
    invoke-virtual {v2, v3, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;I)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 211
    move-result-object v2

    .line 212
    .line 213
    const-string v3, "Attempts Purchase Membership Total"

    .line 214
    .line 215
    .line 216
    invoke-virtual {v2, v3}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 217
    .line 218
    .line 219
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 220
    move-result-object v2

    .line 221
    .line 222
    .line 223
    const-string/jumbo v3, "transactionId"

    .line 224
    .line 225
    iget-object v4, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeemTransactionId:Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v2, v3, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 229
    .line 230
    const-string v3, "isAutoRenew"

    .line 231
    .line 232
    .line 233
    invoke-virtual {v2, v3, v11}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 234
    .line 235
    if-eqz p2, :cond_3

    .line 236
    .line 237
    .line 238
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 239
    move-result-object v3

    .line 240
    .line 241
    iget-object p2, p2, Lcom/narvii/wallet/Coupon;->couponMappingId:Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v3, p2}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 245
    .line 246
    const-string p2, "couponMappingIdList"

    .line 247
    .line 248
    .line 249
    invoke-virtual {v2, p2, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 250
    .line 251
    .line 252
    :cond_3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 253
    move-result-object p2

    .line 254
    .line 255
    .line 256
    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 257
    move-result-object p2

    .line 258
    .line 259
    const-string v3, "/membership/product/subscribe"

    .line 260
    .line 261
    .line 262
    invoke-virtual {p2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 263
    move-result-object p2

    .line 264
    .line 265
    iget-object v3, p1, Lcom/narvii/wallet/Product;->skuList:[Ljava/lang/String;

    .line 266
    .line 267
    aget-object v0, v3, v0

    .line 268
    .line 269
    const-string v3, "sku"

    .line 270
    .line 271
    .line 272
    invoke-virtual {p2, v3, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 273
    move-result-object p2

    .line 274
    .line 275
    .line 276
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 277
    move-result-object v0

    .line 278
    .line 279
    .line 280
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 281
    move-result-object v0

    .line 282
    .line 283
    const-string v3, "packageName"

    .line 284
    .line 285
    .line 286
    invoke-virtual {p2, v3, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 287
    move-result-object p2

    .line 288
    .line 289
    const-string v0, "paymentType"

    .line 290
    .line 291
    .line 292
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 293
    move-result-object v3

    .line 294
    .line 295
    .line 296
    invoke-virtual {p2, v0, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 297
    move-result-object p2

    .line 298
    .line 299
    const-string v0, "paymentContext"

    .line 300
    .line 301
    .line 302
    invoke-virtual {p2, v0, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 303
    move-result-object p2

    .line 304
    .line 305
    .line 306
    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 307
    move-result-object p2

    .line 308
    .line 309
    const-string v0, "api"

    .line 310
    .line 311
    .line 312
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 313
    move-result-object v0

    .line 314
    .line 315
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 316
    .line 317
    new-instance v2, Lcom/narvii/wallet/MembershipSubscribeFragment$8;

    .line 318
    .line 319
    const-class v3, Lcom/narvii/wallet/MembershipResponse;

    .line 320
    .line 321
    .line 322
    invoke-direct {v2, p0, v3, p1, v1}, Lcom/narvii/wallet/MembershipSubscribeFragment$8;-><init>(Lcom/narvii/wallet/MembershipSubscribeFragment;Ljava/lang/Class;Lcom/narvii/wallet/Product;I)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v0, p2, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 326
    return-void
.end method

.method private registerForBroadcast()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 13
    .line 14
    new-instance v2, Landroid/content/IntentFilter;

    .line 15
    .line 16
    const-string v3, "com.narvii.action.WALLET_CHANGED"

    .line 17
    .line 18
    .line 19
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 23
    return-void
.end method

.method private restoreValuesFromInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    const-string v0, "purchasingProduct"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-class v1, Lcom/narvii/wallet/Product;

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/wallet/Product;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->purchasingProduct:Lcom/narvii/wallet/Product;

    .line 17
    .line 18
    const-string v0, "purchasingProductSku"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->purchasingProductSku:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "redeemTransactionId"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    iput-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeemTransactionId:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public static synthetic s(Lcom/narvii/wallet/MembershipSubscribeFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->updateUI()V

    return-void
.end method

.method private savePurchaseVariables(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->purchasingProduct:Lcom/narvii/wallet/Product;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "purchasingProduct"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    const-string v0, "purchasingProductSku"

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->purchasingProductSku:Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    const-string v0, "redeemTransactionId"

    .line 21
    .line 22
    iget-object v1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeemTransactionId:Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method private sendFirebaseEvent()V
    .locals 2

    .line 1
    .line 2
    const-string v0, "buy_membership"

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0, v1}, Lcom/narvii/util/statistics/FirebaseLogManager;->logEvent(Lcom/narvii/app/NVContext;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    return-void
.end method

.method private sendPurchaseErrorEvent(Lcom/android/billingclient/api/h;)V
    .locals 5

    .line 1
    .line 2
    const-string v0, "logging"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/util/logging/LoggingService;

    .line 9
    .line 10
    const/16 v1, 0xc

    .line 11
    .line 12
    new-array v1, v1, [Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    const-string/jumbo v2, "type"

    .line 16
    const/4 v3, 0x0

    .line 17
    .line 18
    aput-object v2, v1, v3

    .line 19
    const/4 v2, 0x1

    .line 20
    .line 21
    const-string v4, "IAP"

    .line 22
    .line 23
    aput-object v4, v1, v2

    .line 24
    const/4 v2, 0x2

    .line 25
    .line 26
    const-string v4, "months"

    .line 27
    .line 28
    aput-object v4, v1, v2

    .line 29
    .line 30
    iget-object v2, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->purchasingProduct:Lcom/narvii/wallet/Product;

    .line 31
    .line 32
    if-nez v2, :cond_0

    .line 33
    move v2, v3

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_0
    iget v2, v2, Lcom/narvii/wallet/Product;->numberOfMonths:I

    .line 37
    .line 38
    .line 39
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object v2

    .line 41
    const/4 v4, 0x3

    .line 42
    .line 43
    aput-object v2, v1, v4

    .line 44
    const/4 v2, 0x4

    .line 45
    .line 46
    const-string v4, "sku"

    .line 47
    .line 48
    aput-object v4, v1, v2

    .line 49
    .line 50
    iget-object v2, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->purchasingProduct:Lcom/narvii/wallet/Product;

    .line 51
    .line 52
    if-nez v2, :cond_1

    .line 53
    const/4 v2, 0x0

    .line 54
    goto :goto_1

    .line 55
    .line 56
    :cond_1
    iget-object v2, v2, Lcom/narvii/wallet/Product;->skuList:[Ljava/lang/String;

    .line 57
    .line 58
    aget-object v2, v2, v3

    .line 59
    :goto_1
    const/4 v3, 0x5

    .line 60
    .line 61
    aput-object v2, v1, v3

    .line 62
    const/4 v2, 0x6

    .line 63
    .line 64
    const-string v3, "reason"

    .line 65
    .line 66
    aput-object v3, v1, v2

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/android/billingclient/api/h;->b()I

    .line 70
    move-result v2

    .line 71
    .line 72
    .line 73
    invoke-static {v2}, Lcom/narvii/wallet/IabUtils;->getReason(I)Ljava/lang/String;

    .line 74
    move-result-object v2

    .line 75
    const/4 v3, 0x7

    .line 76
    .line 77
    aput-object v2, v1, v3

    .line 78
    .line 79
    const/16 v2, 0x8

    .line 80
    .line 81
    const-string v3, "code"

    .line 82
    .line 83
    aput-object v3, v1, v2

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/android/billingclient/api/h;->b()I

    .line 87
    move-result v2

    .line 88
    .line 89
    .line 90
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    move-result-object v2

    .line 92
    .line 93
    const/16 v3, 0x9

    .line 94
    .line 95
    aput-object v2, v1, v3

    .line 96
    .line 97
    const/16 v2, 0xa

    .line 98
    .line 99
    const-string v3, "message"

    .line 100
    .line 101
    aput-object v3, v1, v2

    .line 102
    .line 103
    const/16 v2, 0xb

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/android/billingclient/api/h;->a()Ljava/lang/String;

    .line 107
    move-result-object p1

    .line 108
    .line 109
    aput-object p1, v1, v2

    .line 110
    .line 111
    const-string p1, "MembershipPurchaseError"

    .line 112
    .line 113
    .line 114
    invoke-interface {v0, p1, v1}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    return-void
.end method

.method private sendPurchaseFailEvent(ILjava/lang/String;Lcom/narvii/wallet/Product;)V
    .locals 4

    .line 1
    .line 2
    const-string v0, "logging"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/util/logging/LoggingService;

    .line 9
    .line 10
    const/16 v1, 0xa

    .line 11
    .line 12
    new-array v1, v1, [Ljava/lang/Object;

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    .line 16
    const-string/jumbo v3, "type"

    .line 17
    .line 18
    aput-object v3, v1, v2

    .line 19
    const/4 v2, 0x1

    .line 20
    .line 21
    const-string v3, "IAP"

    .line 22
    .line 23
    aput-object v3, v1, v2

    .line 24
    const/4 v2, 0x2

    .line 25
    .line 26
    const-string v3, "months"

    .line 27
    .line 28
    aput-object v3, v1, v2

    .line 29
    .line 30
    iget p3, p3, Lcom/narvii/wallet/Product;->numberOfMonths:I

    .line 31
    .line 32
    .line 33
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    move-result-object p3

    .line 35
    const/4 v2, 0x3

    .line 36
    .line 37
    aput-object p3, v1, v2

    .line 38
    const/4 p3, 0x4

    .line 39
    .line 40
    const-string v2, "reason"

    .line 41
    .line 42
    aput-object v2, v1, p3

    .line 43
    .line 44
    const/16 p3, 0x10cc

    .line 45
    .line 46
    if-ne p1, p3, :cond_0

    .line 47
    .line 48
    const-string p3, "NO_ENOUGH_COINS"

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/4 p3, 0x0

    .line 51
    :goto_0
    const/4 v2, 0x5

    .line 52
    .line 53
    aput-object p3, v1, v2

    .line 54
    const/4 p3, 0x6

    .line 55
    .line 56
    const-string v2, "code"

    .line 57
    .line 58
    aput-object v2, v1, p3

    .line 59
    const/4 p3, 0x7

    .line 60
    .line 61
    .line 62
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    aput-object p1, v1, p3

    .line 66
    .line 67
    const/16 p1, 0x8

    .line 68
    .line 69
    const-string p3, "message"

    .line 70
    .line 71
    aput-object p3, v1, p1

    .line 72
    .line 73
    const/16 p1, 0x9

    .line 74
    .line 75
    aput-object p2, v1, p1

    .line 76
    .line 77
    const-string p1, "MembershipPurchaseError"

    .line 78
    .line 79
    .line 80
    invoke-interface {v0, p1, v1}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    return-void
.end method

.method private sendPurchaseSuccessEvent(Lcom/android/billingclient/api/Purchase;)V
    .locals 5

    .line 1
    .line 2
    const-string v0, "logging"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/util/logging/LoggingService;

    .line 9
    .line 10
    const/16 v1, 0xa

    .line 11
    .line 12
    new-array v1, v1, [Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    const-string/jumbo v2, "type"

    .line 16
    const/4 v3, 0x0

    .line 17
    .line 18
    aput-object v2, v1, v3

    .line 19
    const/4 v2, 0x1

    .line 20
    .line 21
    const-string v4, "IAP"

    .line 22
    .line 23
    aput-object v4, v1, v2

    .line 24
    const/4 v2, 0x2

    .line 25
    .line 26
    const-string v4, "months"

    .line 27
    .line 28
    aput-object v4, v1, v2

    .line 29
    .line 30
    iget-object v2, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->purchasingProduct:Lcom/narvii/wallet/Product;

    .line 31
    .line 32
    if-nez v2, :cond_0

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_0
    iget v3, v2, Lcom/narvii/wallet/Product;->numberOfMonths:I

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object v2

    .line 40
    const/4 v3, 0x3

    .line 41
    .line 42
    aput-object v2, v1, v3

    .line 43
    const/4 v2, 0x4

    .line 44
    .line 45
    const-string v3, "sku"

    .line 46
    .line 47
    aput-object v3, v1, v2

    .line 48
    const/4 v2, 0x5

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->getFirstSkuSafety(Lcom/android/billingclient/api/Purchase;)Ljava/lang/String;

    .line 52
    move-result-object v3

    .line 53
    .line 54
    aput-object v3, v1, v2

    .line 55
    const/4 v2, 0x6

    .line 56
    .line 57
    const-string v3, "orderId"

    .line 58
    .line 59
    aput-object v3, v1, v2

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->c()Ljava/lang/String;

    .line 63
    move-result-object v2

    .line 64
    const/4 v3, 0x7

    .line 65
    .line 66
    aput-object v2, v1, v3

    .line 67
    .line 68
    const/16 v2, 0x8

    .line 69
    .line 70
    .line 71
    const-string/jumbo v3, "token"

    .line 72
    .line 73
    aput-object v3, v1, v2

    .line 74
    .line 75
    const/16 v2, 0x9

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->h()Ljava/lang/String;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    aput-object p1, v1, v2

    .line 82
    .line 83
    const-string p1, "MembershipPurchaseSucceed"

    .line 84
    .line 85
    .line 86
    invoke-interface {v0, p1, v1}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    return-void
.end method

.method private sendRedeemProductRequest()V
    .locals 4

    .line 1
    .line 2
    const-string v0, "api"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    const-string v2, "/membership/product/v2"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x1

    .line 20
    .line 21
    .line 22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    const-string v3, "paymentType"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    const-string v3, "packageName"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    new-instance v2, Lcom/narvii/wallet/MembershipSubscribeFragment$6;

    .line 50
    .line 51
    const-class v3, Lcom/narvii/wallet/ProductListResponse;

    .line 52
    .line 53
    .line 54
    invoke-direct {v2, p0, v3}, Lcom/narvii/wallet/MembershipSubscribeFragment$6;-><init>(Lcom/narvii/wallet/MembershipSubscribeFragment;Ljava/lang/Class;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 58
    return-void
.end method

.method private sendStatisticsPurchaseProductEvent()V
    .locals 4

    .line 1
    .line 2
    const-string v0, "statistics"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/util/statistics/StatisticsService;

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    iget-object v2, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->purchasingProduct:Lcom/narvii/wallet/Product;

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    const/4 v2, 0x3

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    iget v2, v2, Lcom/narvii/wallet/Product;->numberOfMonths:I

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v2, " Months"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    iget-object v2, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->purchasingProduct:Lcom/narvii/wallet/Product;

    .line 36
    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    iget-object v2, v2, Lcom/narvii/wallet/Product;->dollarPrice:Ljava/lang/Double;

    .line 40
    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 45
    move-result-wide v2

    .line 46
    goto :goto_1

    .line 47
    .line 48
    :cond_1
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 49
    .line 50
    .line 51
    :goto_1
    invoke-interface {v0, v1, v2, v3}, Lcom/narvii/util/statistics/StatisticsService;->revenue(Ljava/lang/String;D)V

    .line 52
    return-void
.end method

.method private sendSubProductRequest()V
    .locals 4

    .line 1
    .line 2
    const-string v0, "api"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    const-string v2, "/membership/product/v2"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x5

    .line 20
    .line 21
    .line 22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    const-string v3, "paymentType"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    const-string v3, "packageName"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    iget-wide v2, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->aminoPlusPricingVersion:J

    .line 46
    .line 47
    .line 48
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 49
    move-result-object v2

    .line 50
    .line 51
    const-string v3, "packageVersion"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 59
    move-result-object v1

    .line 60
    .line 61
    new-instance v2, Lcom/narvii/wallet/MembershipSubscribeFragment$5;

    .line 62
    .line 63
    const-class v3, Lcom/narvii/wallet/ProductListResponse;

    .line 64
    .line 65
    .line 66
    invoke-direct {v2, p0, v3}, Lcom/narvii/wallet/MembershipSubscribeFragment$5;-><init>(Lcom/narvii/wallet/MembershipSubscribeFragment;Ljava/lang/Class;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 70
    return-void
.end method

.method private setClickLister(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a0ab1

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    .line 12
    .line 13
    const v0, 0x7f0a0c38

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    .line 22
    .line 23
    const v0, 0x7f0a0191

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    .line 32
    .line 33
    const v0, 0x7f0a0ba1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    .line 42
    .line 43
    const v0, 0x7f0a0e16

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    .line 52
    .line 53
    const v0, 0x7f0a0ba4

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    return-void
.end method

.method private setExtraInfoText(Ljava/lang/String;Z)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->root:Landroid/view/View;

    .line 3
    .line 4
    .line 5
    const v1, 0x7f0a0956

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Landroid/widget/TextView;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    return-void

    .line 15
    .line 16
    :cond_0
    iget-boolean v1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeem:Z

    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x1

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    if-nez p1, :cond_1

    .line 23
    move p1, v3

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move p1, v2

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->setVisibleAnim(Landroid/view/View;Z)V

    .line 29
    .line 30
    if-eqz p2, :cond_2

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->getCurrentDatePlusSevenDays()Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    new-array p2, v3, [Ljava/lang/Object;

    .line 37
    .line 38
    aput-object p1, p2, v2

    .line 39
    .line 40
    .line 41
    const p1, 0x7f12117e

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    goto :goto_1

    .line 50
    .line 51
    .line 52
    :cond_2
    const p1, 0x7f12117f

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 56
    :goto_1
    return-void
.end method

.method private setPriceUnavailable(Landroid/view/View;Landroid/widget/TextView;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const v0, 0x7f120f48

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 7
    const/4 p2, 0x0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 11
    return-void
.end method

.method private setRedeemCoupon()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeemCouponComponent:Lcom/narvii/wallet/RedeemCouponComponent;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    new-instance v1, Lcom/narvii/wallet/f0;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/narvii/wallet/f0;-><init>(Lcom/narvii/wallet/MembershipSubscribeFragment;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/narvii/wallet/RedeemCouponComponent;->setGetCoinsPreClickListener(Lcom/narvii/list/ObjectItemClickListener;)V

    .line 13
    :cond_0
    return-void
.end method

.method private setVisibleAnim(Landroid/view/View;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->setVisibleAnim(Landroid/view/View;ZZ)V

    return-void
.end method

.method private setVisibleAnim(Landroid/view/View;ZZ)V
    .locals 1

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    const/16 p2, 0x8

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    .line 3
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 4
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f010039

    invoke-static {p2, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p3

    if-eqz p3, :cond_2

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    .line 6
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 7
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f010037

    invoke-static {p2, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private showAlertDialog(Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->showPurchaseErrorDialog(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method private showDialog(Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->showPurchaseErrorDialog(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->done()V

    .line 7
    return-void
.end method

.method private showPurchaseErrorDialog(Ljava/lang/String;)V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 13
    const/4 p1, 0x0

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    .line 17
    const v2, 0x7f1202ba

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v2, p1, v1}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 24
    return-void
.end method

.method private showPurchaseErrorToUser()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const v2, 0x7f120c5f

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v2, " (MS_"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    iget-object v2, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    .line 32
    .line 33
    iget v2, v2, Lcom/narvii/wallet/MembershipStatus;->membershipStatus:I

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v2, ")"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    new-instance v1, Lcom/narvii/wallet/d0;

    .line 51
    .line 52
    .line 53
    invoke-direct {v1, p0}, Lcom/narvii/wallet/d0;-><init>(Lcom/narvii/wallet/MembershipSubscribeFragment;)V

    .line 54
    .line 55
    .line 56
    const v2, 0x7f1202ba

    .line 57
    const/4 v3, 0x0

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v2, v3, v1}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 61
    .line 62
    new-instance v1, Lcom/narvii/wallet/e0;

    .line 63
    .line 64
    .line 65
    invoke-direct {v1, v0}, Lcom/narvii/wallet/e0;-><init>(Lcom/narvii/util/dialog/AlertDialog;)V

    .line 66
    .line 67
    .line 68
    const v2, 0x7f120df2

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v2, v3, v1}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 75
    return-void
.end method

.method private showPurchaseErrorToast()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    const v1, 0x7f120826

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    .line 20
    return-void
.end method

.method private stopListenBroadcast()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->f(Landroid/content/BroadcastReceiver;)V

    .line 10
    :cond_0
    return-void
.end method

.method private switchToRedeem()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeemProductList:Ljava/util/List;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->sendRedeemProductRequest()V

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeem:Z

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->updateUI()V

    .line 14
    return-void
.end method

.method public static synthetic t(Lcom/narvii/wallet/MembershipSubscribeFragment;Lcom/android/billingclient/api/h;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->lambda$observeSetupFinished$1(Lcom/android/billingclient/api/h;)V

    return-void
.end method

.method private thereIsNoMembership()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v0, v0, Lcom/narvii/wallet/MembershipStatus;->membershipStatus:I

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method private trimOrderId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-object p1

    .line 4
    .line 5
    :cond_0
    const-string v0, ".."

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 9
    move-result v0

    .line 10
    .line 11
    if-gez v0, :cond_1

    .line 12
    return-object p1

    .line 13
    :cond_1
    const/4 v1, 0x0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public static synthetic u(Lcom/narvii/wallet/MembershipSubscribeFragment;Lcom/narvii/wallet/PurchasesUpdate;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->lambda$observePurchaseUpdate$3(Lcom/narvii/wallet/PurchasesUpdate;)V

    return-void
.end method

.method private updateMembership(Lcom/narvii/wallet/MembershipResponse;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v0, v0, Lcom/narvii/app/FragmentWrapperActivity;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/app/FragmentWrapperActivity;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/app/FragmentWrapperActivity;->getRootFragment()Landroidx/fragment/app/Fragment;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    instance-of v0, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    check-cast v0, Lcom/narvii/app/FragmentWrapperActivity;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/narvii/app/FragmentWrapperActivity;->getRootFragment()Landroidx/fragment/app/Fragment;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    check-cast v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p1}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->updateMembership(Lcom/narvii/wallet/MembershipResponse;)V

    .line 38
    :cond_0
    return-void
.end method

.method private updateUI()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->isMembershipLoaded()Z

    move-result v1

    iget-object v2, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->root:Landroid/view/View;

    .line 2
    invoke-direct {v0, v2, v1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->setVisibleAnim(Landroid/view/View;Z)V

    iget-object v2, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->progress:Landroid/view/View;

    const/4 v3, 0x1

    xor-int/2addr v1, v3

    .line 3
    invoke-direct {v0, v2, v1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->setVisibleAnim(Landroid/view/View;Z)V

    .line 4
    invoke-direct/range {p0 .. p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->getProductList()Ljava/util/List;

    move-result-object v1

    .line 5
    invoke-direct/range {p0 .. p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->getSelectedProduct()Lcom/narvii/wallet/Product;

    move-result-object v2

    .line 6
    invoke-direct/range {p0 .. p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->getError()Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-direct/range {p0 .. p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->thereIsNoMembership()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->isAminoPlusMembership()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->membershipPaymentIsCoins()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move v5, v6

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v3

    :goto_1
    iget-object v7, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->root:Landroid/view/View;

    const v8, 0x7f0a0b8a

    .line 8
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-nez v1, :cond_2

    if-nez v4, :cond_2

    move v8, v3

    goto :goto_2

    :cond_2
    move v8, v6

    :goto_2
    invoke-direct {v0, v7, v8}, Lcom/narvii/wallet/MembershipSubscribeFragment;->setVisibleAnim(Landroid/view/View;Z)V

    iget-object v7, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->root:Landroid/view/View;

    const v8, 0x7f0a04fd

    .line 9
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const/4 v8, 0x0

    if-nez v1, :cond_3

    move-object v9, v4

    goto :goto_3

    :cond_3
    move-object v9, v8

    :goto_3
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->root:Landroid/view/View;

    const v9, 0x7f0a0c38

    .line 10
    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-nez v1, :cond_4

    if-eqz v4, :cond_4

    move v9, v3

    goto :goto_4

    :cond_4
    move v9, v6

    :goto_4
    invoke-direct {v0, v7, v9}, Lcom/narvii/wallet/MembershipSubscribeFragment;->setVisibleAnim(Landroid/view/View;Z)V

    iget-object v7, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->root:Landroid/view/View;

    const v9, 0x7f0a0ba1

    .line 11
    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget-boolean v10, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeem:Z

    if-nez v10, :cond_5

    if-nez v4, :cond_5

    move v10, v3

    goto :goto_5

    :cond_5
    move v10, v6

    :goto_5
    invoke-direct {v0, v7, v10}, Lcom/narvii/wallet/MembershipSubscribeFragment;->setVisibleAnim(Landroid/view/View;Z)V

    iget-object v7, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->root:Landroid/view/View;

    const v10, 0x7f0a0ba6

    .line 12
    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget-boolean v11, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeem:Z

    if-nez v11, :cond_6

    if-nez v4, :cond_6

    move v11, v3

    goto :goto_6

    :cond_6
    move v11, v6

    :goto_6
    invoke-direct {v0, v7, v11}, Lcom/narvii/wallet/MembershipSubscribeFragment;->setVisibleAnim(Landroid/view/View;Z)V

    iget-object v7, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeemCouponComponent:Lcom/narvii/wallet/RedeemCouponComponent;

    iget-boolean v11, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeem:Z

    if-eqz v11, :cond_7

    if-nez v4, :cond_7

    move v11, v3

    goto :goto_7

    :cond_7
    move v11, v6

    .line 13
    :goto_7
    invoke-direct {v0, v7, v11, v3}, Lcom/narvii/wallet/MembershipSubscribeFragment;->setVisibleAnim(Landroid/view/View;ZZ)V

    iget-object v7, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->root:Landroid/view/View;

    const v11, 0x7f0a0e16

    .line 14
    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v5, :cond_8

    iget-boolean v5, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeem:Z

    if-nez v5, :cond_8

    move v5, v3

    goto :goto_8

    :cond_8
    move v5, v6

    :goto_8
    invoke-direct {v0, v7, v5}, Lcom/narvii/wallet/MembershipSubscribeFragment;->setVisibleAnim(Landroid/view/View;Z)V

    iget-object v5, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->root:Landroid/view/View;

    .line 15
    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v7, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {v7}, Lcom/narvii/wallet/MembershipService;->freeTrial()Z

    move-result v7

    if-eqz v7, :cond_9

    const v7, 0x7f120c80

    goto :goto_9

    :cond_9
    const v7, 0x7f120c7f

    :goto_9
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    iget-object v5, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 16
    invoke-virtual {v5}, Lcom/narvii/wallet/MembershipService;->freeTrial()Z

    move-result v5

    invoke-direct {v0, v4, v5}, Lcom/narvii/wallet/MembershipSubscribeFragment;->setExtraInfoText(Ljava/lang/String;Z)V

    iget-object v4, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->root:Landroid/view/View;

    const v5, 0x7f0a0191

    .line 17
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v5, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->root:Landroid/view/View;

    const v7, 0x7f0a0ba4

    .line 18
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-boolean v7, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeem:Z

    .line 19
    invoke-direct {v0, v4, v7}, Lcom/narvii/wallet/MembershipSubscribeFragment;->setVisibleAnim(Landroid/view/View;Z)V

    const/16 v4, 0x8

    .line 20
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->root:Landroid/view/View;

    .line 21
    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/narvii/widget/ThumbImageView;

    .line 22
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0807b5

    invoke-static {v5, v7, v8}, Landroidx/core/content/res/ResourcesCompat;->e(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v4, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 23
    invoke-virtual {v4, v8}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    if-nez v1, :cond_a

    move v4, v6

    goto :goto_a

    .line 24
    :cond_a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    :goto_a
    iget-object v5, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->root:Landroid/view/View;

    const v7, 0x7f0a0df5

    .line 25
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 26
    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-boolean v7, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeem:Z

    const/high16 v9, 0x40000000    # 2.0f

    if-eqz v7, :cond_c

    iget-object v1, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->selectedRedeemProduct:Lcom/narvii/wallet/Product;

    if-eqz v1, :cond_24

    iget-object v1, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0d0598

    .line 27
    invoke-virtual {v1, v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 28
    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v2, 0x7f0a0c04

    .line 29
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v7, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->selectedRedeemProduct:Lcom/narvii/wallet/Product;

    .line 30
    iget-object v7, v7, Lcom/narvii/wallet/Product;->title:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0a0c03

    .line 31
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v7, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->selectedRedeemProduct:Lcom/narvii/wallet/Product;

    .line 32
    iget v7, v7, Lcom/narvii/wallet/Product;->price:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0a0f36

    .line 33
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/UserAvatarLayout;

    .line 34
    invoke-virtual {v1, v9, v6}, Lcom/narvii/widget/UserAvatarLayout;->setAvatarStroke(FZ)V

    .line 35
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x7f070090

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const-string v7, "#90F5A623"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1, v2, v7, v6}, Lcom/narvii/widget/UserAvatarLayout;->setAvatarShadow(IIZ)V

    const-string v2, "account"

    .line 36
    invoke-virtual {v0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/account/AccountService;

    .line 37
    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 38
    invoke-virtual {v1, v2, v3, v3}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;ZZ)V

    :cond_b
    iget-object v1, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeemCouponComponent:Lcom/narvii/wallet/RedeemCouponComponent;

    iget-object v2, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->selectedRedeemProduct:Lcom/narvii/wallet/Product;

    .line 39
    invoke-virtual {v1, v2, v3, v0}, Lcom/narvii/wallet/RedeemCouponComponent;->bindProduct(Lcom/narvii/model/IBaseProduct;ZLcom/narvii/wallet/RedeemCouponComponent$IRedeemCouponCallback;)V

    goto/16 :goto_1c

    :cond_c
    move v7, v6

    :goto_b
    if-ge v7, v4, :cond_24

    .line 40
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/narvii/wallet/Product;

    if-ne v10, v2, :cond_d

    move v11, v3

    goto :goto_c

    :cond_d
    move v11, v6

    .line 41
    :goto_c
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    if-ge v7, v12, :cond_e

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    goto :goto_d

    :cond_e
    move-object v12, v8

    :goto_d
    if-nez v12, :cond_10

    iget-object v12, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->inflater:Landroid/view/LayoutInflater;

    const v13, 0x7f0d0599

    .line 42
    invoke-virtual {v12, v13, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    if-nez v7, :cond_f

    .line 43
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v13, v6}, Landroidx/core/view/MarginLayoutParamsCompat;->d(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 44
    :cond_f
    invoke-virtual {v5, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_10
    const v13, 0x7f0a0192

    .line 45
    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/narvii/widget/ThumbImageView;

    .line 46
    iget-object v14, v13, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v14, :cond_11

    .line 47
    new-instance v14, Landroid/graphics/drawable/ColorDrawable;

    const/4 v15, -0x1

    invoke-direct {v14, v15}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v14, v13, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 48
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v14

    if-eqz v11, :cond_12

    invoke-static {v14, v9}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v14

    goto :goto_e

    :cond_12
    const/high16 v15, 0x3f800000    # 1.0f

    invoke-static {v14, v15}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v14

    :goto_e
    iput v14, v13, Lcom/narvii/widget/NVImageView;->strokeWidth:F

    const v14, -0xa59dd

    if-eqz v11, :cond_13

    move v15, v14

    goto :goto_f

    :cond_13
    const v15, -0x19191a

    .line 49
    :goto_f
    iput v15, v13, Lcom/narvii/widget/NVImageView;->strokeColor:I

    if-eqz v11, :cond_14

    goto :goto_10

    :cond_14
    move v14, v6

    .line 50
    :goto_10
    invoke-virtual {v13, v14}, Lcom/narvii/widget/ThumbImageView;->setShadowColor(I)V

    sget-object v13, Lcom/narvii/wallet/MembershipSubscribeFragment;->TITLE_PATTERN:Ljava/util/regex/Pattern;

    .line 51
    iget-object v14, v10, Lcom/narvii/wallet/Product;->title:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 52
    iget-object v14, v10, Lcom/narvii/wallet/Product;->title:Ljava/lang/String;

    .line 53
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-eqz v15, :cond_15

    .line 54
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v14

    .line 55
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v10, Lcom/narvii/wallet/Product;->title:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->start()I

    move-result v9

    invoke-virtual {v8, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v10, Lcom/narvii/wallet/Product;->title:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    goto :goto_11

    :cond_15
    move-object v8, v14

    const/4 v14, 0x0

    :goto_11
    const v9, 0x7f0a0e51

    .line 56
    invoke-virtual {v12, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 57
    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v14, -0x4ece

    if-eqz v11, :cond_16

    move v15, v14

    goto :goto_12

    :cond_16
    const v15, -0x7d7d7e

    .line 58
    :goto_12
    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setTextColor(I)V

    const v9, 0x7f0a0e53

    .line 59
    invoke-virtual {v12, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 60
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v11, :cond_17

    move v8, v14

    goto :goto_13

    :cond_17
    const v8, -0x7d7d7e

    .line 61
    :goto_13
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const v8, 0x7f0a0ede

    .line 62
    invoke-virtual {v12, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-eqz v11, :cond_18

    const/4 v15, 0x4

    goto :goto_14

    :cond_18
    move v15, v6

    :goto_14
    invoke-virtual {v8, v15}, Landroid/view/View;->setVisibility(I)V

    const v8, 0x7f0a0b85

    .line 63
    invoke-virtual {v12, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 64
    invoke-direct {v0, v10}, Lcom/narvii/wallet/MembershipSubscribeFragment;->getProductDetails(Lcom/narvii/wallet/Product;)Lcom/android/billingclient/api/l;

    move-result-object v15

    if-eqz v15, :cond_1c

    .line 65
    invoke-virtual {v15}, Lcom/android/billingclient/api/l;->d()Ljava/util/List;

    move-result-object v16

    if-nez v16, :cond_19

    goto :goto_15

    .line 66
    :cond_19
    invoke-virtual {v15}, Lcom/android/billingclient/api/l;->d()Ljava/util/List;

    move-result-object v15

    .line 67
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v16

    if-lez v16, :cond_1b

    .line 68
    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/billingclient/api/l$d;

    .line 69
    invoke-virtual {v15}, Lcom/android/billingclient/api/l$d;->b()Lcom/android/billingclient/api/l$c;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/billingclient/api/l$c;->a()Ljava/util/List;

    move-result-object v15

    .line 70
    invoke-direct {v0, v15}, Lcom/narvii/wallet/MembershipSubscribeFragment;->logPricingPhaseList(Ljava/util/List;)V

    .line 71
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v16

    if-lez v16, :cond_1a

    .line 72
    invoke-direct {v0, v15}, Lcom/narvii/wallet/MembershipSubscribeFragment;->getPricingPhase(Ljava/util/List;)Lcom/android/billingclient/api/l$b;

    move-result-object v15

    .line 73
    invoke-virtual {v15}, Lcom/android/billingclient/api/l$b;->c()Ljava/lang/String;

    move-result-object v15

    .line 74
    invoke-virtual {v8, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    invoke-virtual {v12, v3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_16

    .line 76
    :cond_1a
    invoke-direct {v0, v12, v8}, Lcom/narvii/wallet/MembershipSubscribeFragment;->setPriceUnavailable(Landroid/view/View;Landroid/widget/TextView;)V

    goto :goto_16

    .line 77
    :cond_1b
    invoke-direct {v0, v12, v8}, Lcom/narvii/wallet/MembershipSubscribeFragment;->setPriceUnavailable(Landroid/view/View;Landroid/widget/TextView;)V

    goto :goto_16

    .line 78
    :cond_1c
    :goto_15
    invoke-direct {v0, v12, v8}, Lcom/narvii/wallet/MembershipSubscribeFragment;->setPriceUnavailable(Landroid/view/View;Landroid/widget/TextView;)V

    :goto_16
    if-eqz v11, :cond_1d

    move v15, v14

    goto :goto_17

    :cond_1d
    const v15, -0x7d7d7e

    .line 79
    :goto_17
    invoke-virtual {v8, v15}, Landroid/widget/TextView;->setTextColor(I)V

    const v8, 0x7f0a0c67

    .line 80
    invoke-virtual {v12, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 81
    iget v15, v10, Lcom/narvii/wallet/Product;->savePercent:I

    if-eqz v15, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v15

    new-array v9, v3, [Ljava/lang/Object;

    iget v13, v10, Lcom/narvii/wallet/Product;->savePercent:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v9, v6

    const v13, 0x7f12103e

    invoke-virtual {v15, v13, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_18

    :cond_1e
    const/4 v9, 0x0

    :goto_18
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v11, :cond_1f

    move v13, v14

    goto :goto_19

    :cond_1f
    const v13, -0x7d7d7e

    .line 82
    :goto_19
    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setTextColor(I)V

    const v8, 0x7f0a01a7

    .line 83
    invoke-virtual {v12, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    if-ne v7, v3, :cond_20

    const-string v9, "Most Popular"

    goto :goto_1a

    :cond_20
    const/4 v9, 0x2

    if-ne v7, v9, :cond_21

    const-string v9, "Best Value"

    goto :goto_1a

    :cond_21
    const/4 v9, 0x0

    :goto_1a
    if-eqz v11, :cond_22

    if-eqz v9, :cond_22

    move v13, v6

    goto :goto_1b

    :cond_22
    const/4 v13, 0x4

    .line 84
    :goto_1b
    invoke-virtual {v8, v13}, Landroid/view/View;->setVisibility(I)V

    .line 85
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    invoke-virtual {v12, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 87
    invoke-virtual {v12, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v11, :cond_23

    .line 88
    move-object v8, v5

    check-cast v8, Lcom/narvii/widget/OrderedLinearLayout;

    invoke-virtual {v8, v7}, Lcom/narvii/widget/OrderedLinearLayout;->setTopChildIndex(I)V

    :cond_23
    add-int/lit8 v7, v7, 0x1

    const/4 v8, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    goto/16 :goto_b

    .line 89
    :cond_24
    :goto_1c
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-le v1, v4, :cond_25

    .line 90
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    goto :goto_1c

    :cond_25
    return-void
.end method

.method private updateUiOnMainThread()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    new-instance v1, Lcom/narvii/wallet/y;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/narvii/wallet/y;-><init>(Lcom/narvii/wallet/MembershipSubscribeFragment;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 19
    :cond_0
    return-void
.end method

.method public static synthetic v(Lcom/narvii/wallet/MembershipSubscribeFragment;Lcom/narvii/model/NVObject;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->lambda$setRedeemCoupon$0(Lcom/narvii/model/NVObject;)V

    return-void
.end method

.method public static synthetic w(Lcom/narvii/util/http/ApiService;Lcom/narvii/util/http/ApiRequest;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/wallet/MembershipSubscribeFragment;->lambda$purchaseSubscribe$11(Lcom/narvii/util/http/ApiService;Lcom/narvii/util/http/ApiRequest;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic x(Lcom/narvii/util/dialog/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->lambda$showPurchaseErrorToUser$7(Lcom/narvii/util/dialog/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic y(Lcom/narvii/wallet/MembershipSubscribeFragment;Lcom/android/billingclient/api/h;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->lambda$observeSubUpdate$2(Lcom/android/billingclient/api/h;)V

    return-void
.end method

.method public static synthetic z(Lcom/narvii/wallet/MembershipSubscribeFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->lambda$showPurchaseErrorToUser$6(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string/jumbo v0, "subscribe_container"

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    sparse-switch v0, :sswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    instance-of v0, v0, Lcom/narvii/wallet/Product;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-boolean v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeem:Z

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    check-cast p1, Lcom/narvii/wallet/Product;

    .line 26
    .line 27
    iput-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->selectedRedeemProduct:Lcom/narvii/wallet/Product;

    .line 28
    goto :goto_0

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    check-cast p1, Lcom/narvii/wallet/Product;

    .line 35
    .line 36
    iput-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->selectedSubProduct:Lcom/narvii/wallet/Product;

    .line 37
    .line 38
    .line 39
    :goto_0
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->updateUI()V

    .line 40
    :cond_1
    return-void

    .line 41
    .line 42
    .line 43
    :sswitch_0
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->switchToRedeem()V

    .line 44
    .line 45
    const-string p1, "statistics"

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 52
    .line 53
    const-string v0, "Redeem With Coins"

    .line 54
    .line 55
    .line 56
    invoke-interface {p1, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    const-string v0, "Redeem With Coins Total"

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 63
    return-void

    .line 64
    .line 65
    :sswitch_1
    iget-boolean p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeem:Z

    .line 66
    const/4 v0, 0x0

    .line 67
    .line 68
    if-eqz p1, :cond_2

    .line 69
    .line 70
    iput-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeemProductError:Ljava/lang/String;

    .line 71
    .line 72
    iput-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeemProductList:Ljava/util/List;

    .line 73
    .line 74
    iput-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->selectedRedeemProduct:Lcom/narvii/wallet/Product;

    .line 75
    .line 76
    .line 77
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->sendRedeemProductRequest()V

    .line 78
    goto :goto_1

    .line 79
    .line 80
    :cond_2
    iput-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->subProductError:Ljava/lang/String;

    .line 81
    .line 82
    iput-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->subProductList:Ljava/util/List;

    .line 83
    .line 84
    iput-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->selectedSubProduct:Lcom/narvii/wallet/Product;

    .line 85
    .line 86
    .line 87
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->sendSubProductRequest()V

    .line 88
    .line 89
    .line 90
    :goto_1
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->updateUI()V

    .line 91
    :sswitch_2
    return-void

    .line 92
    .line 93
    :sswitch_3
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->selectedSubProduct:Lcom/narvii/wallet/Product;

    .line 94
    .line 95
    if-eqz p1, :cond_3

    .line 96
    .line 97
    .line 98
    invoke-direct {p0, p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->purchaseSubscribe(Lcom/narvii/wallet/Product;)V

    .line 99
    :cond_3
    return-void

    .line 100
    .line 101
    :sswitch_4
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeemCouponComponent:Lcom/narvii/wallet/RedeemCouponComponent;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/narvii/wallet/RedeemCouponComponent;->destroy()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 108
    move-result-object p1

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    .line 112
    move-result-object v0

    .line 113
    const/4 v1, 0x1

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentManager;->l1(Ljava/lang/String;I)V

    .line 117
    return-void

    .line 118
    :sswitch_5
    const/4 p1, 0x0

    .line 119
    .line 120
    iput-boolean p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeem:Z

    .line 121
    .line 122
    .line 123
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->updateUI()V

    .line 124
    return-void

    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    :sswitch_data_0
    .sparse-switch
        0x7f0a0191 -> :sswitch_5
        0x7f0a0ab1 -> :sswitch_4
        0x7f0a0ba1 -> :sswitch_3
        0x7f0a0ba4 -> :sswitch_2
        0x7f0a0c38 -> :sswitch_1
        0x7f0a0e16 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeem:Z

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->getMembershipService()Lcom/narvii/wallet/MembershipService;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->wasMembership:Z

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->freeTrial()Z

    .line 24
    move-result v0

    .line 25
    .line 26
    iput-boolean v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->freeTrial:Z

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->restoreValuesFromInstanceState(Landroid/os/Bundle;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->getTransactionID()V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->observeSetupFinished()V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->observeSubUpdate()V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->observePurchaseUpdate()V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->registerForBroadcast()V

    .line 47
    .line 48
    .line 49
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->getPricingVersion()J

    .line 50
    move-result-wide v0

    .line 51
    .line 52
    iput-wide v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->aminoPlusPricingVersion:J

    .line 53
    .line 54
    .line 55
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->sendFirebaseEvent()V

    .line 56
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->inflater:Landroid/view/LayoutInflater;

    .line 3
    .line 4
    .line 5
    const p3, 0x7f0d059a

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->stopListenBroadcast()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 7
    return-void
.end method

.method public onRedeemRequested(Lcom/narvii/model/IBaseProduct;Lcom/narvii/wallet/Coupon;)V
    .locals 1
    .param p1    # Lcom/narvii/model/IBaseProduct;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/wallet/Coupon;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/wallet/Product;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/wallet/Product;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1, p2}, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeemSubscribe(Lcom/narvii/wallet/Product;Lcom/narvii/wallet/Coupon;)V

    .line 10
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->savePurchaseVariables(Landroid/os/Bundle;)V

    .line 7
    return-void
.end method

.method public onStart()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onStart()V

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeem:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->sendRedeemProductRequest()V

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->sendSubProductRequest()V

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->updateUI()V

    .line 18
    .line 19
    const-string v0, "api"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    const-string v2, "/membership"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    const-string v2, "force"

    .line 42
    .line 43
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    new-instance v2, Lcom/narvii/wallet/MembershipSubscribeFragment$2;

    .line 54
    .line 55
    const-class v3, Lcom/narvii/wallet/MembershipResponse;

    .line 56
    .line 57
    .line 58
    invoke-direct {v2, p0, v3}, Lcom/narvii/wallet/MembershipSubscribeFragment$2;-><init>(Lcom/narvii/wallet/MembershipSubscribeFragment;Ljava/lang/Class;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 62
    .line 63
    .line 64
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 65
    move-result-object v1

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 69
    move-result-object v1

    .line 70
    .line 71
    const-string v2, "/membership/latest-payment-context"

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 75
    move-result-object v1

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 79
    move-result-object v1

    .line 80
    .line 81
    new-instance v2, Lcom/narvii/wallet/MembershipSubscribeFragment$3;

    .line 82
    .line 83
    const-class v3, Lcom/narvii/model/api/ApiResponse;

    .line 84
    .line 85
    .line 86
    invoke-direct {v2, p0, v3}, Lcom/narvii/wallet/MembershipSubscribeFragment$3;-><init>(Lcom/narvii/wallet/MembershipSubscribeFragment;Ljava/lang/Class;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 90
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x102000d

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    iput-object p2, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->progress:Landroid/view/View;

    .line 13
    .line 14
    .line 15
    const p2, 0x7f0a0c4c

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object p2

    .line 20
    .line 21
    iput-object p2, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->root:Landroid/view/View;

    .line 22
    .line 23
    .line 24
    const p2, 0x7f0a0c02

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    move-result-object p2

    .line 29
    .line 30
    check-cast p2, Lcom/narvii/wallet/RedeemCouponComponent;

    .line 31
    .line 32
    iput-object p2, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeemCouponComponent:Lcom/narvii/wallet/RedeemCouponComponent;

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->setRedeemCoupon()V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0, p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->setClickLister(Landroid/view/View;)V

    .line 39
    return-void
.end method
