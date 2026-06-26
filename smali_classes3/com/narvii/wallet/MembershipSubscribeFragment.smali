.class public Lcom/narvii/wallet/MembershipSubscribeFragment;
.super Lcom/narvii/app/NVFragment;
.source "MembershipSubscribeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/wallet/util/IabHelper$OnIabSetupFinishedListener;
.implements Lcom/narvii/wallet/util/IabHelper$QueryInventoryFinishedListener;
.implements Lcom/narvii/wallet/util/IabHelper$OnIabPurchaseFinishedListener;
.implements Lcom/narvii/wallet/RedeemCouponComponent$IRedeemCouponCallback;


# static fields
.field public static final ACTION_PURCHASED_SUB_CHANGED:Ljava/lang/String; = "com.narvii.action.PURCHASED_SUB_CHANGED"

.field static final REQUEST_IAB_SUBSCRIBE:I = 0xe823

.field private static final TITLE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field checkMembershipAndPaymentResultCode:I

.field checkMembershipAndPaymentResultMessage:Ljava/lang/String;

.field checkMembershipAndPaymentResultReason:Ljava/lang/String;

.field freeTrial:Z

.field iabHelper:Lcom/narvii/wallet/util/IabHelper;

.field iabPendingDlg:Lcom/narvii/util/dialog/ProgressDialog;

.field iabPendingProduct:Lcom/narvii/wallet/Product;

.field iabSetupted:Z

.field inflater:Landroid/view/LayoutInflater;

.field inventory:Lcom/narvii/wallet/util/Inventory;

.field isDone:Z

.field lbm:Landroid/support/v4/content/LocalBroadcastManager;

.field membership:Lcom/narvii/wallet/MembershipStatus;

.field membershipService:Lcom/narvii/wallet/MembershipService;

.field paymentContext:Lcom/fasterxml/jackson/databind/node/ObjectNode;

.field paymentError:Ljava/lang/String;

.field progress:Landroid/view/View;

.field purchasingProduct:Lcom/narvii/wallet/Product;

.field private receiver:Landroid/content/BroadcastReceiver;

.field redeem:Z

.field redeemCouponComponent:Lcom/narvii/wallet/RedeemCouponComponent;

.field redeemProductError:Ljava/lang/String;

.field redeemProductList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/wallet/Product;",
            ">;"
        }
    .end annotation
.end field

.field redeemTransactionId:Ljava/lang/String;

.field root:Landroid/view/View;

.field selectedRedeemProduct:Lcom/narvii/wallet/Product;

.field selectedSubProduct:Lcom/narvii/wallet/Product;

.field subProductError:Ljava/lang/String;

.field subProductList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/wallet/Product;",
            ">;"
        }
    .end annotation
.end field

.field wasMembership:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\\d+"

    .line 689
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->TITLE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 136
    new-instance v0, Lcom/narvii/wallet/MembershipSubscribeFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/wallet/MembershipSubscribeFragment$1;-><init>(Lcom/narvii/wallet/MembershipSubscribeFragment;)V

    iput-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private setVisibleAnim(Landroid/view/View;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 827
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->setVisibleAnim(Landroid/view/View;ZZ)V

    return-void
.end method

.method private setVisibleAnim(Landroid/view/View;ZZ)V
    .locals 1

    .line 831
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    const/16 p2, 0x8

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    .line 832
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 833
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f01002b

    invoke-static {p2, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 834
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p3

    if-eqz p3, :cond_2

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    .line 835
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 836
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f010029

    invoke-static {p2, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    :goto_1
    return-void
.end method

.method static trimOrderId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    return-object p0

    :cond_0
    const-string v0, ".."

    .line 402
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    return-object p0

    :cond_1
    const/4 v1, 0x0

    .line 406
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method checkMembershipAndPayment()Ljava/lang/Boolean;
    .locals 9

    const/4 v0, 0x0

    .line 287
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->checkMembershipAndPaymentResultCode:I

    const/4 v2, 0x0

    .line 288
    iput-object v2, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->checkMembershipAndPaymentResultReason:Ljava/lang/String;

    .line 289
    iput-object v2, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->checkMembershipAndPaymentResultMessage:Ljava/lang/String;

    .line 290
    iget-boolean v3, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->isDone:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    .line 293
    :cond_0
    iget-object v3, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    if-nez v3, :cond_1

    return-object v2

    .line 295
    :cond_1
    iget-boolean v4, v3, Lcom/narvii/wallet/MembershipStatus;->isAutoRenew:Z

    if-eqz v4, :cond_2

    .line 296
    invoke-virtual {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->done()V

    return-object v1

    .line 298
    :cond_2
    iget v4, v3, Lcom/narvii/wallet/MembershipStatus;->membershipStatus:I

    const/4 v5, 0x1

    if-nez v4, :cond_3

    .line 299
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_3
    const-string v6, ")"

    const v7, 0x7f0f0b5b

    const v8, 0x7f0f0274

    if-ne v4, v5, :cond_f

    .line 301
    iget v3, v3, Lcom/narvii/wallet/MembershipStatus;->paymentType:I

    if-ne v3, v5, :cond_4

    .line 302
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_4
    const/4 v4, 0x5

    if-ne v3, v4, :cond_d

    .line 304
    iget-object v3, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->paymentContext:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez v3, :cond_6

    .line 305
    iget-object v3, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->paymentError:Ljava/lang/String;

    if-nez v3, :cond_5

    return-object v2

    .line 308
    :cond_5
    new-instance v3, Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 309
    iget-object v4, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->paymentError:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 310
    invoke-virtual {v3, v8, v0, v2}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 311
    invoke-virtual {v3}, Lcom/narvii/app/NVDialog;->show()V

    .line 312
    invoke-virtual {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->done()V

    return-object v1

    :cond_6
    new-array v4, v5, [Ljava/lang/String;

    const-string v6, "packageName"

    aput-object v6, v4, v0

    .line 316
    invoke-static {v3, v4}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 317
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 318
    new-instance v4, Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    if-eqz v3, :cond_7

    const-string v6, ".master"

    .line 319
    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 320
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0f0b5d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->checkMembershipAndPaymentResultMessage:Ljava/lang/String;

    const-string v5, "RENEW_IN_MASTER"

    .line 321
    iput-object v5, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->checkMembershipAndPaymentResultReason:Ljava/lang/String;

    const/16 v5, 0x33

    .line 322
    iput v5, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->checkMembershipAndPaymentResultCode:I

    goto :goto_0

    .line 324
    :cond_7
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0f0b5e

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v0

    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->checkMembershipAndPaymentResultMessage:Ljava/lang/String;

    const-string v5, "RENEW_IN_STANDALONE"

    .line 325
    iput-object v5, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->checkMembershipAndPaymentResultReason:Ljava/lang/String;

    const/16 v5, 0x34

    .line 326
    iput v5, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->checkMembershipAndPaymentResultCode:I

    .line 328
    :goto_0
    iget-object v5, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->checkMembershipAndPaymentResultMessage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const v5, 0x104000a

    const/4 v6, 0x4

    .line 329
    new-instance v7, Lcom/narvii/wallet/MembershipSubscribeFragment$6;

    invoke-direct {v7, p0, v3}, Lcom/narvii/wallet/MembershipSubscribeFragment$6;-><init>(Lcom/narvii/wallet/MembershipSubscribeFragment;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6, v7}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 338
    invoke-virtual {v4, v8, v0, v2}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 339
    invoke-virtual {v4}, Lcom/narvii/app/NVDialog;->show()V

    .line 340
    invoke-virtual {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->done()V

    return-object v1

    .line 343
    :cond_8
    iget-object v3, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->inventory:Lcom/narvii/wallet/util/Inventory;

    if-nez v3, :cond_9

    return-object v2

    .line 346
    :cond_9
    iget-object v3, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->paymentContext:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    new-array v4, v5, [Ljava/lang/String;

    const-string v6, "orderId"

    aput-object v6, v4, v0

    invoke-static {v3, v4}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/narvii/wallet/MembershipSubscribeFragment;->trimOrderId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 348
    iget-object v4, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->inventory:Lcom/narvii/wallet/util/Inventory;

    invoke-virtual {v4}, Lcom/narvii/wallet/util/Inventory;->getAllPurchases()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 349
    iget-object v4, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->inventory:Lcom/narvii/wallet/util/Inventory;

    invoke-virtual {v4}, Lcom/narvii/wallet/util/Inventory;->getAllPurchases()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/narvii/wallet/util/Purchase;

    .line 350
    invoke-virtual {v6}, Lcom/narvii/wallet/util/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/narvii/wallet/MembershipSubscribeFragment;->trimOrderId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    goto :goto_1

    :cond_b
    move-object v6, v2

    :goto_1
    if-nez v6, :cond_c

    .line 357
    new-instance v3, Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 358
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0f0b5f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->checkMembershipAndPaymentResultMessage:Ljava/lang/String;

    const-string v4, "RENEW_IN_ANOTHER_GOOGLE_PLAY_ACCOUNT"

    .line 359
    iput-object v4, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->checkMembershipAndPaymentResultReason:Ljava/lang/String;

    const/16 v4, 0x35

    .line 360
    iput v4, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->checkMembershipAndPaymentResultCode:I

    .line 361
    iget-object v4, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->checkMembershipAndPaymentResultMessage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 362
    invoke-virtual {v3, v8, v0, v2}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 363
    invoke-virtual {v3}, Lcom/narvii/app/NVDialog;->show()V

    .line 364
    invoke-virtual {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->done()V

    return-object v1

    .line 367
    :cond_c
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_d
    const/4 v4, 0x3

    if-ne v3, v4, :cond_e

    .line 371
    new-instance v3, Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 372
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0f0b5c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->checkMembershipAndPaymentResultMessage:Ljava/lang/String;

    const-string v4, "RENEW_IN_APPSTORE"

    .line 373
    iput-object v4, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->checkMembershipAndPaymentResultReason:Ljava/lang/String;

    const/16 v4, 0x36

    .line 374
    iput v4, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->checkMembershipAndPaymentResultCode:I

    .line 375
    iget-object v4, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->checkMembershipAndPaymentResultMessage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 376
    invoke-virtual {v3, v8, v0, v2}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 377
    invoke-virtual {v3}, Lcom/narvii/app/NVDialog;->show()V

    .line 378
    invoke-virtual {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->done()V

    return-object v1

    .line 381
    :cond_e
    new-instance v3, Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 382
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (PT_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    iget v5, v5, Lcom/narvii/wallet/MembershipStatus;->paymentType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 383
    invoke-virtual {v3, v8, v0, v2}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 384
    invoke-virtual {v3}, Lcom/narvii/app/NVDialog;->show()V

    .line 385
    invoke-virtual {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->done()V

    return-object v1

    .line 389
    :cond_f
    new-instance v3, Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 390
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (MS_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    iget v5, v5, Lcom/narvii/wallet/MembershipStatus;->membershipStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 391
    invoke-virtual {v3, v8, v0, v2}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 392
    invoke-virtual {v3}, Lcom/narvii/app/NVDialog;->show()V

    .line 393
    invoke-virtual {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->done()V

    return-object v1
.end method

.method cofetti()V
    .locals 3

    .line 267
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/app/FragmentWrapperActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/FragmentWrapperActivity;

    invoke-virtual {v0}, Lcom/narvii/app/FragmentWrapperActivity;->getRootFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/FragmentWrapperActivity;

    invoke-virtual {v0}, Lcom/narvii/app/FragmentWrapperActivity;->getRootFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    const-wide/16 v1, 0x190

    .line 269
    invoke-virtual {v0, v1, v2}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->showCofetti(J)V

    .line 270
    sget-object v1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/narvii/wallet/MembershipSubscribeFragment$5;

    invoke-direct {v2, p0, v0}, Lcom/narvii/wallet/MembershipSubscribeFragment$5;-><init>(Lcom/narvii/wallet/MembershipSubscribeFragment;Lcom/narvii/wallet/MembershipMainRecyclerFragment;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x1

    .line 276
    invoke-virtual {v0, v1}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->flipCard(Z)V

    :cond_0
    return-void
.end method

.method done()V
    .locals 3

    .line 259
    iget-boolean v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->isDone:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeemCouponComponent:Lcom/narvii/wallet/RedeemCouponComponent;

    invoke-virtual {v0}, Lcom/narvii/wallet/RedeemCouponComponent;->destroy()V

    .line 261
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v2, "subscribe"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 263
    :cond_0
    iput-boolean v1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->isDone:Z

    return-void
.end method

.method getInventory(Lcom/narvii/wallet/Product;)Lcom/narvii/wallet/util/SkuDetails;
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 1116
    iget-object v1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->inventory:Lcom/narvii/wallet/util/Inventory;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/narvii/wallet/Product;->skuList:[Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const-string v1, "account"

    .line 1119
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/AccountService;

    .line 1120
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 1121
    iget-object p1, p1, Lcom/narvii/wallet/Product;->skuList:[Ljava/lang/String;

    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, p1, v4

    .line 1122
    iget-object v6, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->inventory:Lcom/narvii/wallet/util/Inventory;

    invoke-virtual {v6, v5}, Lcom/narvii/wallet/util/Inventory;->getPurchase(Ljava/lang/String;)Lcom/narvii/wallet/util/Purchase;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 1124
    invoke-virtual {v6}, Lcom/narvii/wallet/util/Purchase;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/narvii/util/JacksonUtils;->createObjectNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const-string v8, "uid"

    aput-object v8, v7, v3

    .line 1125
    invoke-static {v6, v7}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1126
    invoke-static {v1, v6}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    .line 1130
    :cond_1
    iget-object v6, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->inventory:Lcom/narvii/wallet/util/Inventory;

    invoke-virtual {v6, v5}, Lcom/narvii/wallet/util/Inventory;->getSkuDetails(Ljava/lang/String;)Lcom/narvii/wallet/util/SkuDetails;

    move-result-object v5

    if-eqz v5, :cond_2

    return-object v5

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-object v0
.end method

.method getMyPurchase(Lcom/narvii/wallet/Product;)Lcom/narvii/wallet/util/Purchase;
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1139
    iget-object v1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->inventory:Lcom/narvii/wallet/util/Inventory;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/narvii/wallet/Product;->skuList:[Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "account"

    .line 1142
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/AccountService;

    .line 1143
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 1144
    iget-object p1, p1, Lcom/narvii/wallet/Product;->skuList:[Ljava/lang/String;

    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, p1, v4

    .line 1145
    iget-object v6, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->inventory:Lcom/narvii/wallet/util/Inventory;

    invoke-virtual {v6, v5}, Lcom/narvii/wallet/util/Inventory;->getPurchase(Ljava/lang/String;)Lcom/narvii/wallet/util/Purchase;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1147
    invoke-virtual {v5}, Lcom/narvii/wallet/util/Purchase;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/narvii/util/JacksonUtils;->createObjectNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const-string v8, "uid"

    aput-object v8, v7, v3

    .line 1148
    invoke-static {v6, v7}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1149
    invoke-static {v1, v6}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    return-object v5

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "MembershipSubscription"

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const v0, 0xe823

    if-ne p1, v0, :cond_1

    .line 681
    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->iabHelper:Lcom/narvii/wallet/util/IabHelper;

    if-eqz v0, :cond_0

    .line 682
    invoke-virtual {v0, p1, p2, p3}, Lcom/narvii/wallet/util/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    :cond_0
    return-void

    .line 686
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 842
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "statistics"

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 885
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/wallet/Product;

    if-eqz v0, :cond_4

    .line 886
    iget-boolean v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeem:Z

    if-eqz v0, :cond_3

    .line 887
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/wallet/Product;

    iput-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->selectedRedeemProduct:Lcom/narvii/wallet/Product;

    goto/16 :goto_1

    .line 866
    :sswitch_0
    invoke-virtual {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->switchToRedeem()V

    return-void

    .line 848
    :sswitch_1
    iget-boolean p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeem:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 849
    iput-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeemProductError:Ljava/lang/String;

    .line 850
    iput-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeemProductList:Ljava/util/List;

    .line 851
    iput-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->selectedRedeemProduct:Lcom/narvii/wallet/Product;

    .line 852
    invoke-virtual {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->sendRedeemProductRequest()V

    goto :goto_0

    .line 854
    :cond_0
    iput-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->subProductError:Ljava/lang/String;

    .line 855
    iput-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->subProductList:Ljava/util/List;

    .line 856
    iput-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->selectedSubProduct:Lcom/narvii/wallet/Product;

    .line 857
    invoke-virtual {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->sendSubProductRequest()V

    .line 859
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->update()V

    return-void

    .line 871
    :sswitch_2
    sget p1, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v0, 0x65

    if-ne p1, v0, :cond_1

    .line 872
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "membership"

    invoke-static {p1, v0}, Lcom/narvii/wallet/GuidePurchaseToMasterDialog;->show(Landroid/content/Context;Ljava/lang/String;)Lcom/narvii/wallet/GuidePurchaseToMasterDialog;

    .line 873
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeemCouponComponent:Lcom/narvii/wallet/RedeemCouponComponent;

    invoke-virtual {p1}, Lcom/narvii/wallet/RedeemCouponComponent;->destroy()V

    .line 874
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    :cond_1
    return-void

    .line 880
    :sswitch_3
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->selectedSubProduct:Lcom/narvii/wallet/Product;

    if-eqz p1, :cond_2

    .line 881
    invoke-virtual {p0, p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->purchaseSubscribe(Lcom/narvii/wallet/Product;)V

    :cond_2
    return-void

    .line 844
    :sswitch_4
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeemCouponComponent:Lcom/narvii/wallet/RedeemCouponComponent;

    invoke-virtual {p1}, Lcom/narvii/wallet/RedeemCouponComponent;->destroy()V

    .line 845
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    return-void

    :sswitch_5
    const/4 p1, 0x0

    .line 862
    iput-boolean p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeem:Z

    .line 863
    invoke-virtual {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->update()V

    return-void

    .line 889
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/wallet/Product;

    iput-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->selectedSubProduct:Lcom/narvii/wallet/Product;

    .line 891
    :goto_1
    invoke-virtual {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->update()V

    :cond_4
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f090102 -> :sswitch_5
        0x7f09080a -> :sswitch_4
        0x7f0908e2 -> :sswitch_3
        0x7f0908e5 -> :sswitch_2
        0x7f09097a -> :sswitch_1
        0x7f090b30 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 116
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 117
    sget v0, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeem:Z

    .line 118
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/FragmentWrapperActivity;

    const v1, 0xe823

    invoke-virtual {v0, v1, p0}, Lcom/narvii/app/NVActivity;->registerActivityRequestCallback(ILandroid/support/v4/app/Fragment;)V

    .line 119
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/wallet/IabUtils;->createIabHelper(Landroid/content/Context;)Lcom/narvii/wallet/util/IabHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->iabHelper:Lcom/narvii/wallet/util/IabHelper;

    .line 120
    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->iabHelper:Lcom/narvii/wallet/util/IabHelper;

    invoke-virtual {v0, p0}, Lcom/narvii/wallet/util/IabHelper;->startSetup(Lcom/narvii/wallet/util/IabHelper$OnIabSetupFinishedListener;)V

    const-string v0, "membership"

    .line 121
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/wallet/MembershipService;

    iput-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 122
    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->wasMembership:Z

    .line 123
    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->freeTrial()Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->freeTrial:Z

    if-eqz p1, :cond_1

    const-string v0, "purchasingProduct"

    .line 126
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/wallet/Product;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/wallet/Product;

    iput-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->purchasingProduct:Lcom/narvii/wallet/Product;

    const-string v0, "redeemTransactionId"

    .line 127
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeemTransactionId:Ljava/lang/String;

    .line 129
    :cond_1
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeemTransactionId:Ljava/lang/String;

    if-nez p1, :cond_2

    .line 130
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeemTransactionId:Ljava/lang/String;

    .line 132
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    .line 133
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.narvii.action.WALLET_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 156
    iput-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->inflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0b0519

    const/4 v0, 0x0

    .line 157
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->iabHelper:Lcom/narvii/wallet/util/IabHelper;

    if-eqz v0, :cond_0

    .line 240
    :try_start_0
    invoke-virtual {v0}, Lcom/narvii/wallet/util/IabHelper;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 243
    iput-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->iabHelper:Lcom/narvii/wallet/util/IabHelper;

    const/4 v0, 0x0

    .line 244
    iput-boolean v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->iabSetupted:Z

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    if-eqz v0, :cond_1

    .line 247
    iget-object v1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 249
    :cond_1
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    return-void
.end method

.method public onIabPurchaseFinished(Lcom/narvii/wallet/util/IabResult;Lcom/narvii/wallet/util/Purchase;)V
    .locals 17

    move-object/from16 v0, p0

    .line 592
    invoke-virtual/range {p1 .. p1}, Lcom/narvii/wallet/util/IabResult;->isSuccess()Z

    move-result v1

    const-string v5, "months"

    const/4 v6, 0x2

    const-string v7, "IAP"

    const/4 v8, 0x1

    const-string v9, "type"

    const/16 v10, 0xa

    const-string v11, "logging"

    const/4 v13, 0x5

    const-string v14, "sku"

    const/4 v15, 0x0

    if-eqz v1, :cond_0

    .line 593
    new-instance v1, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 594
    invoke-virtual {v1, v15}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 595
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 596
    invoke-virtual/range {p2 .. p2}, Lcom/narvii/wallet/util/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->createObjectNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v2

    .line 597
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v3

    const-string v4, "/membership/product/subscribe"

    .line 598
    invoke-virtual {v3, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v3

    .line 599
    invoke-virtual/range {p2 .. p2}, Lcom/narvii/wallet/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v14, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v3

    .line 600
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v12, "packageName"

    invoke-virtual {v3, v12, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v3

    .line 601
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v12, "paymentType"

    invoke-virtual {v3, v12, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v3

    const-string v4, "paymentContext"

    .line 602
    invoke-virtual {v3, v4, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    .line 603
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v2

    const-string v3, "api"

    .line 604
    invoke-virtual {v0, v3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/util/http/ApiService;

    .line 605
    new-instance v4, Lcom/narvii/wallet/MembershipSubscribeFragment$9;

    const-class v12, Lcom/narvii/wallet/MembershipResponse;

    invoke-direct {v4, v0, v12, v1, v3}, Lcom/narvii/wallet/MembershipSubscribeFragment$9;-><init>(Lcom/narvii/wallet/MembershipSubscribeFragment;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/util/http/ApiService;)V

    invoke-virtual {v3, v2, v4}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    goto/16 :goto_2

    .line 661
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/narvii/wallet/util/IabResult;->getResponse()I

    move-result v1

    const/16 v2, -0x3ed

    if-eq v1, v2, :cond_3

    .line 662
    new-instance v1, Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 663
    invoke-static/range {p1 .. p1}, Lcom/narvii/wallet/IabUtils;->getErrorMessage(Lcom/narvii/wallet/util/IabResult;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const v2, 0x7f0f0274

    const/4 v3, 0x0

    .line 664
    invoke-virtual {v1, v2, v15, v3}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 665
    invoke-virtual {v1}, Lcom/narvii/app/NVDialog;->show()V

    .line 667
    invoke-virtual {v0, v11}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/logging/LoggingService;

    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v9, v2, v15

    aput-object v7, v2, v8

    aput-object v5, v2, v6

    .line 668
    iget-object v4, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->purchasingProduct:Lcom/narvii/wallet/Product;

    if-nez v4, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    iget v4, v4, Lcom/narvii/wallet/Product;->numberOfMonths:I

    .line 670
    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v2, v5

    const/4 v4, 0x4

    aput-object v14, v2, v4

    iget-object v4, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->purchasingProduct:Lcom/narvii/wallet/Product;

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, v4, Lcom/narvii/wallet/Product;->skuList:[Ljava/lang/String;

    aget-object v3, v3, v15

    :goto_1
    aput-object v3, v2, v13

    const-string v3, "reason"

    const/4 v4, 0x6

    aput-object v3, v2, v4

    .line 672
    invoke-virtual/range {p1 .. p1}, Lcom/narvii/wallet/util/IabResult;->getResponse()I

    move-result v3

    invoke-static {v3}, Lcom/narvii/wallet/IabUtils;->getReason(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x7

    aput-object v3, v2, v4

    const/16 v3, 0x8

    const-string v4, "code"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    .line 673
    invoke-virtual/range {p1 .. p1}, Lcom/narvii/wallet/util/IabResult;->getResponse()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "message"

    aput-object v3, v2, v10

    const/16 v3, 0xb

    .line 674
    invoke-virtual/range {p1 .. p1}, Lcom/narvii/wallet/util/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "MembershipPurchaseError"

    .line 668
    invoke-interface {v1, v3, v2}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public onIabSetupFinished(Lcom/narvii/wallet/util/IabResult;)V
    .locals 6

    .line 512
    invoke-virtual {p1}, Lcom/narvii/wallet/util/IabResult;->isSuccess()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 513
    iput-boolean v1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->iabSetupted:Z

    .line 514
    invoke-virtual {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->queryIabInv()V

    goto/16 :goto_0

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->iabPendingProduct:Lcom/narvii/wallet/Product;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 516
    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->iabPendingDlg:Lcom/narvii/util/dialog/ProgressDialog;

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 517
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 518
    iput-object v3, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->iabPendingDlg:Lcom/narvii/util/dialog/ProgressDialog;

    :cond_1
    const-string v0, "logging"

    .line 520
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/logging/LoggingService;

    const/16 v4, 0xc

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "type"

    aput-object v5, v4, v2

    const-string v5, "IAP"

    aput-object v5, v4, v1

    const/4 v1, 0x2

    const-string v5, "months"

    aput-object v5, v4, v1

    const/4 v1, 0x3

    .line 521
    iget-object v5, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->iabPendingProduct:Lcom/narvii/wallet/Product;

    iget v5, v5, Lcom/narvii/wallet/Product;->numberOfMonths:I

    .line 523
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x4

    const-string v5, "sku"

    aput-object v5, v4, v1

    const/4 v1, 0x5

    iget-object v5, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->iabPendingProduct:Lcom/narvii/wallet/Product;

    iget-object v5, v5, Lcom/narvii/wallet/Product;->skuList:[Ljava/lang/String;

    aget-object v5, v5, v2

    aput-object v5, v4, v1

    const/4 v1, 0x6

    const-string v5, "reason"

    aput-object v5, v4, v1

    const/4 v1, 0x7

    .line 525
    invoke-virtual {p1}, Lcom/narvii/wallet/util/IabResult;->getResponse()I

    move-result v5

    invoke-static {v5}, Lcom/narvii/wallet/IabUtils;->getReason(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/16 v1, 0x8

    const-string v5, "code"

    aput-object v5, v4, v1

    const/16 v1, 0x9

    .line 526
    invoke-virtual {p1}, Lcom/narvii/wallet/util/IabResult;->getResponse()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/16 v1, 0xa

    const-string v5, "message"

    aput-object v5, v4, v1

    const/16 v1, 0xb

    .line 527
    invoke-virtual {p1}, Lcom/narvii/wallet/util/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v1, "MembershipPurchaseError"

    .line 521
    invoke-interface {v0, v1, v4}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 528
    iput-object v3, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->iabPendingProduct:Lcom/narvii/wallet/Product;

    .line 530
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 531
    invoke-static {p1}, Lcom/narvii/wallet/IabUtils;->getErrorMessage(Lcom/narvii/wallet/util/IabResult;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const p1, 0x7f0f0274

    .line 532
    invoke-virtual {v0, p1, v2, v3}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 533
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_0

    .line 535
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/narvii/wallet/IabUtils;->getErrorMessage(Lcom/narvii/wallet/util/IabResult;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    :goto_0
    return-void
.end method

.method public onQueryInventoryFinished(Lcom/narvii/wallet/util/IabResult;Lcom/narvii/wallet/util/Inventory;)V
    .locals 10

    .line 541
    invoke-virtual {p1}, Lcom/narvii/wallet/util/IabResult;->isSuccess()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 542
    iput-object p2, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->inventory:Lcom/narvii/wallet/util/Inventory;

    .line 543
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->subProductList:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 544
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/wallet/Product;

    .line 545
    iget-object v3, v0, Lcom/narvii/wallet/Product;->skuList:[Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 546
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    .line 547
    invoke-virtual {p2, v6}, Lcom/narvii/wallet/util/Inventory;->hasPurchase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 548
    invoke-virtual {p2, v6}, Lcom/narvii/wallet/util/Inventory;->getPurchase(Ljava/lang/String;)Lcom/narvii/wallet/util/Purchase;

    move-result-object v7

    .line 549
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "my purchase "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/narvii/wallet/Product;->title:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]: "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "narvii_iab"

    invoke-static {v7, v6}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 555
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->checkMembershipAndPayment()Ljava/lang/Boolean;

    move-result-object p1

    .line 556
    invoke-virtual {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->update()V

    .line 557
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p1, p2, :cond_7

    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->iabPendingProduct:Lcom/narvii/wallet/Product;

    if-eqz p1, :cond_7

    .line 558
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->iabPendingDlg:Lcom/narvii/util/dialog/ProgressDialog;

    if-eqz p1, :cond_3

    .line 559
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 560
    iput-object v1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->iabPendingDlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 562
    :cond_3
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->iabPendingProduct:Lcom/narvii/wallet/Product;

    .line 563
    iput-object v1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->iabPendingProduct:Lcom/narvii/wallet/Product;

    .line 564
    invoke-virtual {p0, p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->purchaseSubscribe(Lcom/narvii/wallet/Product;)V

    goto/16 :goto_1

    .line 566
    :cond_4
    iget-object p2, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->iabPendingProduct:Lcom/narvii/wallet/Product;

    if-eqz p2, :cond_6

    .line 567
    iget-object p2, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->iabPendingDlg:Lcom/narvii/util/dialog/ProgressDialog;

    if-eqz p2, :cond_5

    .line 568
    invoke-virtual {p2}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 569
    iput-object v1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->iabPendingDlg:Lcom/narvii/util/dialog/ProgressDialog;

    :cond_5
    const-string p2, "logging"

    .line 571
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/util/logging/LoggingService;

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "type"

    aput-object v3, v0, v2

    const/4 v3, 0x1

    const-string v4, "IAP"

    aput-object v4, v0, v3

    const/4 v3, 0x2

    const-string v4, "months"

    aput-object v4, v0, v3

    const/4 v3, 0x3

    .line 572
    iget-object v4, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->iabPendingProduct:Lcom/narvii/wallet/Product;

    iget v4, v4, Lcom/narvii/wallet/Product;->numberOfMonths:I

    .line 574
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x4

    const-string v4, "sku"

    aput-object v4, v0, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->iabPendingProduct:Lcom/narvii/wallet/Product;

    iget-object v4, v4, Lcom/narvii/wallet/Product;->skuList:[Ljava/lang/String;

    aget-object v4, v4, v2

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "reason"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    .line 576
    invoke-virtual {p1}, Lcom/narvii/wallet/util/IabResult;->getResponse()I

    move-result v4

    invoke-static {v4}, Lcom/narvii/wallet/IabUtils;->getReason(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string v4, "code"

    aput-object v4, v0, v3

    const/16 v3, 0x9

    .line 577
    invoke-virtual {p1}, Lcom/narvii/wallet/util/IabResult;->getResponse()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0xa

    const-string v4, "message"

    aput-object v4, v0, v3

    const/16 v3, 0xb

    .line 578
    invoke-virtual {p1}, Lcom/narvii/wallet/util/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const-string v3, "MembershipPurchaseError"

    .line 572
    invoke-interface {p2, v3, v0}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 579
    iput-object v1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->iabPendingProduct:Lcom/narvii/wallet/Product;

    .line 581
    new-instance p2, Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 582
    invoke-static {p1}, Lcom/narvii/wallet/IabUtils;->getErrorMessage(Lcom/narvii/wallet/util/IabResult;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const p1, 0x7f0f0274

    .line 583
    invoke-virtual {p2, p1, v2, v1}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 584
    invoke-virtual {p2}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_1

    .line 586
    :cond_6
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p1}, Lcom/narvii/wallet/IabUtils;->getErrorMessage(Lcom/narvii/wallet/util/IabResult;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    :cond_7
    :goto_1
    return-void
.end method

.method public onRedeemRequested(Lcom/narvii/model/IBaseProduct;Lcom/narvii/wallet/Coupon;)V
    .locals 1

    .line 1159
    instance-of v0, p1, Lcom/narvii/wallet/Product;

    if-eqz v0, :cond_0

    .line 1160
    check-cast p1, Lcom/narvii/wallet/Product;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeemSubscribe(Lcom/narvii/wallet/Product;Lcom/narvii/wallet/Coupon;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 147
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 148
    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->purchasingProduct:Lcom/narvii/wallet/Product;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "purchasingProduct"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeemTransactionId:Ljava/lang/String;

    const-string v1, "redeemTransactionId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 184
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onStart()V

    .line 185
    iget-boolean v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeem:Z

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->sendRedeemProductRequest()V

    goto :goto_0

    .line 188
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->sendSubProductRequest()V

    .line 190
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->update()V

    const-string v0, "api"

    .line 192
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 194
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "/membership"

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "force"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    .line 195
    new-instance v2, Lcom/narvii/wallet/MembershipSubscribeFragment$3;

    const-class v3, Lcom/narvii/wallet/MembershipResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/wallet/MembershipSubscribeFragment$3;-><init>(Lcom/narvii/wallet/MembershipSubscribeFragment;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 214
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "/membership/latest-payment-context"

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    .line 215
    new-instance v2, Lcom/narvii/wallet/MembershipSubscribeFragment$4;

    const-class v3, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/wallet/MembershipSubscribeFragment$4;-><init>(Lcom/narvii/wallet/MembershipSubscribeFragment;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 162
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x102000d

    .line 163
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->progress:Landroid/view/View;

    const p2, 0x7f09098b

    .line 164
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->root:Landroid/view/View;

    const p2, 0x7f090944

    .line 165
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/wallet/RedeemCouponComponent;

    iput-object p2, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeemCouponComponent:Lcom/narvii/wallet/RedeemCouponComponent;

    .line 166
    iget-object p2, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeemCouponComponent:Lcom/narvii/wallet/RedeemCouponComponent;

    if-eqz p2, :cond_0

    .line 167
    new-instance v0, Lcom/narvii/wallet/MembershipSubscribeFragment$2;

    invoke-direct {v0, p0}, Lcom/narvii/wallet/MembershipSubscribeFragment$2;-><init>(Lcom/narvii/wallet/MembershipSubscribeFragment;)V

    invoke-virtual {p2, v0}, Lcom/narvii/wallet/RedeemCouponComponent;->setGetCoinsPreClickListener(Lcom/narvii/list/ObjectItemClickListener;)V

    :cond_0
    const p2, 0x7f09080a

    .line 174
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09097a

    .line 175
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090102

    .line 176
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0908e2

    .line 177
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090b30

    .line 178
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0908e5

    .line 179
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method pickProduct(Lcom/narvii/wallet/Product;Ljava/util/List;)Lcom/narvii/wallet/Product;
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

    .line 473
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-eqz p1, :cond_2

    .line 476
    iget-object p1, p1, Lcom/narvii/wallet/Product;->skuList:[Ljava/lang/String;

    if-eqz p1, :cond_2

    array-length v0, p1

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 477
    aget-object p1, p1, v0

    .line 478
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/wallet/Product;

    .line 479
    iget-object v3, v2, Lcom/narvii/wallet/Product;->skuList:[Ljava/lang/String;

    if-eqz v3, :cond_1

    array-length v4, v3

    if-lez v4, :cond_1

    aget-object v3, v3, v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    .line 484
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/wallet/Product;

    .line 485
    iget-boolean v1, v0, Lcom/narvii/wallet/Product;->suggested:Z

    if-eqz v1, :cond_3

    return-object v0

    .line 489
    :cond_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/wallet/Product;

    return-object p1
.end method

.method purchaseSubscribe(Lcom/narvii/wallet/Product;)V
    .locals 14

    .line 896
    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->inventory:Lcom/narvii/wallet/util/Inventory;

    if-nez v0, :cond_2

    .line 897
    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->iabPendingDlg:Lcom/narvii/util/dialog/ProgressDialog;

    if-eqz v0, :cond_0

    .line 898
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 900
    :cond_0
    iput-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->iabPendingProduct:Lcom/narvii/wallet/Product;

    .line 901
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->iabPendingDlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 902
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->iabPendingDlg:Lcom/narvii/util/dialog/ProgressDialog;

    new-instance v0, Lcom/narvii/wallet/MembershipSubscribeFragment$10;

    invoke-direct {v0, p0}, Lcom/narvii/wallet/MembershipSubscribeFragment$10;-><init>(Lcom/narvii/wallet/MembershipSubscribeFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 909
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->iabPendingDlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 910
    iget-boolean p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->iabSetupted:Z

    if-eqz p1, :cond_1

    .line 911
    invoke-virtual {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->queryIabInv()V

    goto/16 :goto_0

    .line 913
    :cond_1
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->iabHelper:Lcom/narvii/wallet/util/IabHelper;

    invoke-virtual {p1, p0}, Lcom/narvii/wallet/util/IabHelper;->startSetup(Lcom/narvii/wallet/util/IabHelper$OnIabSetupFinishedListener;)V

    goto/16 :goto_0

    .line 916
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->checkMembershipAndPayment()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x4

    const/4 v3, 0x3

    const-string v4, "months"

    const/4 v5, 0x2

    const-string v6, "type"

    const/4 v7, 0x6

    const-string v8, "logging"

    const/4 v9, 0x5

    const-string v10, "sku"

    const-string v11, "IAP"

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eq v0, v1, :cond_4

    .line 917
    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->checkMembershipAndPaymentResultReason:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 918
    invoke-virtual {p0, v8}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/logging/LoggingService;

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v6, v1, v13

    aput-object v11, v1, v12

    aput-object v4, v1, v5

    .line 919
    iget v4, p1, Lcom/narvii/wallet/Product;->numberOfMonths:I

    .line 921
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    aput-object v10, v1, v2

    iget-object p1, p1, Lcom/narvii/wallet/Product;->skuList:[Ljava/lang/String;

    aget-object p1, p1, v13

    aput-object p1, v1, v9

    const-string p1, "reason"

    aput-object p1, v1, v7

    const/4 p1, 0x7

    iget-object v2, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->checkMembershipAndPaymentResultReason:Ljava/lang/String;

    aput-object v2, v1, p1

    const/16 p1, 0x8

    const-string v2, "code"

    aput-object v2, v1, p1

    const/16 p1, 0x9

    iget v2, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->checkMembershipAndPaymentResultCode:I

    .line 924
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p1

    const/16 p1, 0xa

    const-string v2, "message"

    aput-object v2, v1, p1

    const/16 p1, 0xb

    iget-object v2, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->checkMembershipAndPaymentResultMessage:Ljava/lang/String;

    aput-object v2, v1, p1

    const-string p1, "MembershipPurchaseError"

    .line 919
    invoke-interface {v0, p1, v1}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void

    .line 929
    :cond_4
    invoke-virtual {p0, p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->getInventory(Lcom/narvii/wallet/Product;)Lcom/narvii/wallet/util/SkuDetails;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 931
    invoke-virtual {p0, v8}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/logging/LoggingService;

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v6, v7, v13

    aput-object v11, v7, v12

    aput-object v4, v7, v5

    .line 932
    iget v4, p1, Lcom/narvii/wallet/Product;->numberOfMonths:I

    .line 934
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v3

    aput-object v10, v7, v2

    .line 935
    invoke-virtual {v0}, Lcom/narvii/wallet/util/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v9

    const-string v2, "MembershipPurchaseStarting"

    .line 932
    invoke-interface {v1, v2, v7}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 947
    new-instance v1, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 948
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    const-string v3, "/membership/product/pre-subscribe"

    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    .line 949
    invoke-virtual {v0}, Lcom/narvii/wallet/util/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v10, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    .line 950
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "packageName"

    invoke-virtual {v2, v4, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    .line 951
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "paymentType"

    invoke-virtual {v2, v4, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    .line 952
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v8

    const-string v2, "api"

    .line 953
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/narvii/util/http/ApiService;

    .line 954
    new-instance v10, Lcom/narvii/wallet/MembershipSubscribeFragment$11;

    const-class v4, Lcom/narvii/model/api/ApiResponse;

    move-object v2, v10

    move-object v3, p0

    move-object v5, v1

    move-object v6, v0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/narvii/wallet/MembershipSubscribeFragment$11;-><init>(Lcom/narvii/wallet/MembershipSubscribeFragment;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/wallet/util/SkuDetails;Lcom/narvii/wallet/Product;)V

    invoke-virtual {v9, v8, v10}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 1008
    new-instance p1, Lcom/narvii/wallet/MembershipSubscribeFragment$12;

    invoke-direct {p1, p0, v9, v8}, Lcom/narvii/wallet/MembershipSubscribeFragment$12;-><init>(Lcom/narvii/wallet/MembershipSubscribeFragment;Lcom/narvii/util/http/ApiService;Lcom/narvii/util/http/ApiRequest;)V

    invoke-virtual {v1, p1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1014
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    :cond_5
    :goto_0
    return-void
.end method

.method queryIabInv()V
    .locals 6

    .line 493
    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->subProductList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->inventory:Lcom/narvii/wallet/util/Inventory;

    if-nez v0, :cond_2

    .line 494
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 495
    iget-object v1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->subProductList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/wallet/Product;

    .line 496
    iget-object v2, v2, Lcom/narvii/wallet/Product;->skuList:[Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 497
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 498
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 503
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->iabHelper:Lcom/narvii/wallet/util/IabHelper;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2, v0, p0}, Lcom/narvii/wallet/util/IabHelper;->queryInventoryAsync(ZLjava/util/List;Ljava/util/List;Lcom/narvii/wallet/util/IabHelper$QueryInventoryFinishedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "fail to query inventory"

    .line 505
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method redeemSubscribe(Lcom/narvii/wallet/Product;Lcom/narvii/wallet/Coupon;)V
    .locals 12

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 1022
    iget-object v1, p2, Lcom/narvii/wallet/Coupon;->coupon:Lcom/narvii/wallet/CouponDetail;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/narvii/wallet/CouponDetail;->couponValue:Ljava/lang/Integer;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 1023
    :goto_1
    invoke-virtual {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->checkMembershipAndPayment()Ljava/lang/Boolean;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v4, 0x3

    const-string v5, "months"

    const/4 v6, 0x2

    const-string v7, "type"

    const/4 v8, 0x4

    const-string v9, "logging"

    const-string v10, "Coin"

    const/4 v11, 0x1

    if-eq v2, v3, :cond_2

    .line 1024
    invoke-virtual {p0, v9}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/util/logging/LoggingService;

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v7, v1, v0

    aput-object v10, v1, v11

    aput-object v5, v1, v6

    .line 1025
    iget p1, p1, Lcom/narvii/wallet/Product;->numberOfMonths:I

    .line 1027
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v4

    const-string p1, "reason"

    aput-object p1, v1, v8

    const/4 p1, 0x5

    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->checkMembershipAndPaymentResultReason:Ljava/lang/String;

    aput-object v0, v1, p1

    const/4 p1, 0x6

    const-string v0, "code"

    aput-object v0, v1, p1

    const/4 p1, 0x7

    iget v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->checkMembershipAndPaymentResultCode:I

    .line 1029
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, p1

    const/16 p1, 0x8

    const-string v0, "message"

    aput-object v0, v1, p1

    const/16 p1, 0x9

    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->checkMembershipAndPaymentResultMessage:Ljava/lang/String;

    aput-object v0, v1, p1

    const-string p1, "MembershipPurchaseError"

    .line 1025
    invoke-interface {p2, p1, v1}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1034
    :cond_2
    sget-object v2, Lcom/narvii/logging/ActSemantic;->purchase:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, v2}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v2

    const-string v3, "PurchaseButton"

    invoke-virtual {v2, v3}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 1036
    invoke-virtual {p0, v9}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/logging/LoggingService;

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v7, v3, v0

    aput-object v10, v3, v11

    aput-object v5, v3, v6

    .line 1037
    iget v5, p1, Lcom/narvii/wallet/Product;->numberOfMonths:I

    .line 1039
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "MembershipPurchaseStarting"

    .line 1037
    invoke-interface {v2, v4, v3}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1050
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v2

    .line 1051
    iget-object v3, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeemTransactionId:Ljava/lang/String;

    const-string v4, "transactionId"

    invoke-virtual {v2, v4, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v3, "isAutoRenew"

    .line 1052
    invoke-virtual {v2, v3, v11}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz p2, :cond_3

    .line 1054
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v3

    .line 1055
    iget-object p2, p2, Lcom/narvii/wallet/Coupon;->couponMappingId:Ljava/lang/String;

    invoke-virtual {v3, p2}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    const-string p2, "couponMappingIdList"

    .line 1056
    invoke-virtual {v2, p2, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 1058
    :cond_3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    const-string v3, "/membership/product/subscribe"

    .line 1059
    invoke-virtual {p2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    iget-object v3, p1, Lcom/narvii/wallet/Product;->skuList:[Ljava/lang/String;

    aget-object v0, v3, v0

    const-string v3, "sku"

    .line 1060
    invoke-virtual {p2, v3, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    .line 1061
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "packageName"

    invoke-virtual {p2, v3, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    .line 1062
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "paymentType"

    invoke-virtual {p2, v3, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    const-string v0, "paymentContext"

    .line 1063
    invoke-virtual {p2, v0, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    .line 1064
    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p2

    const-string v0, "api"

    .line 1065
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 1066
    new-instance v2, Lcom/narvii/wallet/MembershipSubscribeFragment$13;

    const-class v3, Lcom/narvii/wallet/MembershipResponse;

    invoke-direct {v2, p0, v3, p1, v1}, Lcom/narvii/wallet/MembershipSubscribeFragment$13;-><init>(Lcom/narvii/wallet/MembershipSubscribeFragment;Ljava/lang/Class;Lcom/narvii/wallet/Product;I)V

    invoke-virtual {v0, p2, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method sendRedeemProductRequest()V
    .locals 4

    const-string v0, "api"

    .line 448
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 449
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "/membership/product/v2"

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 450
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "paymentType"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 451
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "packageName"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 452
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    .line 453
    new-instance v2, Lcom/narvii/wallet/MembershipSubscribeFragment$8;

    const-class v3, Lcom/narvii/wallet/ProductListResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/wallet/MembershipSubscribeFragment$8;-><init>(Lcom/narvii/wallet/MembershipSubscribeFragment;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method sendSubProductRequest()V
    .locals 4

    const-string v0, "api"

    .line 419
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 420
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "/membership/product/v2"

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const/4 v2, 0x5

    .line 421
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "paymentType"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 422
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "packageName"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 423
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    .line 424
    new-instance v2, Lcom/narvii/wallet/MembershipSubscribeFragment$7;

    const-class v3, Lcom/narvii/wallet/ProductListResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/wallet/MembershipSubscribeFragment$7;-><init>(Lcom/narvii/wallet/MembershipSubscribeFragment;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method switchToRedeem()V
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeemProductList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 412
    invoke-virtual {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->sendRedeemProductRequest()V

    :cond_0
    const/4 v0, 0x1

    .line 414
    iput-boolean v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeem:Z

    .line 415
    invoke-virtual {p0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->update()V

    return-void
.end method

.method update()V
    .locals 16

    move-object/from16 v0, p0

    .line 692
    iget-object v1, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->paymentContext:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->paymentError:Ljava/lang/String;

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 693
    :goto_0
    iget-object v4, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->root:Landroid/view/View;

    invoke-direct {v0, v4, v1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->setVisibleAnim(Landroid/view/View;Z)V

    .line 694
    iget-object v4, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->progress:Landroid/view/View;

    xor-int/2addr v1, v2

    invoke-direct {v0, v4, v1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->setVisibleAnim(Landroid/view/View;Z)V

    .line 696
    iget-boolean v1, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeem:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeemProductList:Ljava/util/List;

    goto :goto_1

    :cond_2
    iget-object v1, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->subProductList:Ljava/util/List;

    .line 697
    :goto_1
    iget-boolean v4, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeem:Z

    if-eqz v4, :cond_3

    iget-object v4, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->selectedRedeemProduct:Lcom/narvii/wallet/Product;

    goto :goto_2

    :cond_3
    iget-object v4, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->selectedSubProduct:Lcom/narvii/wallet/Product;

    .line 698
    :goto_2
    iget-boolean v5, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeem:Z

    if-eqz v5, :cond_4

    iget-object v5, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeemProductError:Ljava/lang/String;

    goto :goto_3

    :cond_4
    iget-object v5, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->subProductError:Ljava/lang/String;

    .line 700
    :goto_3
    iget-object v6, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    if-eqz v6, :cond_5

    iget v6, v6, Lcom/narvii/wallet/MembershipStatus;->membershipStatus:I

    if-nez v6, :cond_5

    :goto_4
    const/4 v6, 0x1

    goto :goto_5

    .line 702
    :cond_5
    iget-object v6, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    if-eqz v6, :cond_6

    iget v7, v6, Lcom/narvii/wallet/MembershipStatus;->membershipStatus:I

    if-ne v7, v2, :cond_6

    iget v6, v6, Lcom/narvii/wallet/MembershipStatus;->paymentType:I

    if-ne v6, v2, :cond_6

    goto :goto_4

    :cond_6
    const/4 v6, 0x0

    .line 707
    :goto_5
    iget-object v7, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->root:Landroid/view/View;

    const v8, 0x7f0908cb

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-nez v1, :cond_7

    if-nez v5, :cond_7

    const/4 v8, 0x1

    goto :goto_6

    :cond_7
    const/4 v8, 0x0

    :goto_6
    invoke-direct {v0, v7, v8}, Lcom/narvii/wallet/MembershipSubscribeFragment;->setVisibleAnim(Landroid/view/View;Z)V

    .line 708
    iget-object v7, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->root:Landroid/view/View;

    const v8, 0x7f0903fb

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const/4 v8, 0x0

    if-nez v1, :cond_8

    move-object v9, v5

    goto :goto_7

    :cond_8
    move-object v9, v8

    :goto_7
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 709
    iget-object v7, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->root:Landroid/view/View;

    const v9, 0x7f09097a

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-nez v1, :cond_9

    if-eqz v5, :cond_9

    const/4 v9, 0x1

    goto :goto_8

    :cond_9
    const/4 v9, 0x0

    :goto_8
    invoke-direct {v0, v7, v9}, Lcom/narvii/wallet/MembershipSubscribeFragment;->setVisibleAnim(Landroid/view/View;Z)V

    .line 710
    iget-object v7, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->root:Landroid/view/View;

    const v9, 0x7f0908e2

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget-boolean v10, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeem:Z

    if-nez v10, :cond_a

    if-nez v5, :cond_a

    const/4 v10, 0x1

    goto :goto_9

    :cond_a
    const/4 v10, 0x0

    :goto_9
    invoke-direct {v0, v7, v10}, Lcom/narvii/wallet/MembershipSubscribeFragment;->setVisibleAnim(Landroid/view/View;Z)V

    .line 711
    iget-object v7, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->root:Landroid/view/View;

    const v10, 0x7f0908e7

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget-boolean v11, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeem:Z

    if-nez v11, :cond_b

    if-nez v5, :cond_b

    const/4 v11, 0x1

    goto :goto_a

    :cond_b
    const/4 v11, 0x0

    :goto_a
    invoke-direct {v0, v7, v11}, Lcom/narvii/wallet/MembershipSubscribeFragment;->setVisibleAnim(Landroid/view/View;Z)V

    .line 712
    iget-object v7, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeemCouponComponent:Lcom/narvii/wallet/RedeemCouponComponent;

    iget-boolean v11, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeem:Z

    if-eqz v11, :cond_c

    if-nez v5, :cond_c

    const/4 v5, 0x1

    goto :goto_b

    :cond_c
    const/4 v5, 0x0

    :goto_b
    invoke-direct {v0, v7, v5, v2}, Lcom/narvii/wallet/MembershipSubscribeFragment;->setVisibleAnim(Landroid/view/View;ZZ)V

    .line 713
    iget-object v5, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->root:Landroid/view/View;

    const v7, 0x7f090b30

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v6, :cond_d

    iget-boolean v6, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeem:Z

    if-nez v6, :cond_d

    const/4 v6, 0x1

    goto :goto_c

    :cond_d
    const/4 v6, 0x0

    :goto_c
    invoke-direct {v0, v5, v6}, Lcom/narvii/wallet/MembershipSubscribeFragment;->setVisibleAnim(Landroid/view/View;Z)V

    .line 714
    iget-object v5, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->root:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {v6}, Lcom/narvii/wallet/MembershipService;->freeTrial()Z

    move-result v6

    if-eqz v6, :cond_e

    const v6, 0x7f0f0b7c

    goto :goto_d

    :cond_e
    const v6, 0x7f0f0b7b

    :goto_d
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 716
    iget-object v5, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->root:Landroid/view/View;

    const v6, 0x7f090102

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 717
    iget-object v6, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->root:Landroid/view/View;

    const v7, 0x7f0908e5

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 718
    sget v7, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v10, 0x65

    const/4 v11, 0x4

    if-ne v7, v10, :cond_f

    .line 719
    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 720
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_e

    .line 722
    :cond_f
    iget-boolean v7, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeem:Z

    invoke-direct {v0, v5, v7}, Lcom/narvii/wallet/MembershipSubscribeFragment;->setVisibleAnim(Landroid/view/View;Z)V

    const/16 v5, 0x8

    .line 723
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 726
    :goto_e
    iget-object v5, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->root:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/narvii/widget/ThumbImageView;

    .line 727
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0805d8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v5, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 728
    invoke-virtual {v5, v8}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    if-nez v1, :cond_10

    const/4 v5, 0x0

    goto :goto_f

    .line 730
    :cond_10
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    .line 731
    :goto_f
    iget-object v6, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->root:Landroid/view/View;

    const v7, 0x7f090b10

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 732
    invoke-virtual {v6}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 733
    iget-boolean v7, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeem:Z

    const/high16 v9, 0x40000000    # 2.0f

    if-eqz v7, :cond_12

    .line 734
    iget-object v1, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->selectedRedeemProduct:Lcom/narvii/wallet/Product;

    if-eqz v1, :cond_28

    .line 735
    iget-object v1, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0b0517

    invoke-virtual {v1, v4, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 736
    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v4, 0x7f090946

    .line 737
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 738
    iget-object v7, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->selectedRedeemProduct:Lcom/narvii/wallet/Product;

    iget-object v7, v7, Lcom/narvii/wallet/Product;->title:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f090945

    .line 739
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 740
    iget-object v7, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->selectedRedeemProduct:Lcom/narvii/wallet/Product;

    iget v7, v7, Lcom/narvii/wallet/Product;->price:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f090c10

    .line 741
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/UserAvatarLayout;

    .line 742
    invoke-virtual {v1, v9, v3}, Lcom/narvii/widget/UserAvatarLayout;->setAvatarStroke(FZ)V

    .line 743
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f070056

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const-string v7, "#90F5A623"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1, v4, v7, v3}, Lcom/narvii/widget/UserAvatarLayout;->setAvatarShadow(IIZ)V

    const-string v3, "account"

    .line 744
    invoke-virtual {v0, v3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/account/AccountService;

    .line 745
    invoke-virtual {v3}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 747
    invoke-virtual {v1, v3, v2, v2}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;ZZ)V

    .line 750
    :cond_11
    iget-object v1, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeemCouponComponent:Lcom/narvii/wallet/RedeemCouponComponent;

    iget-object v3, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->selectedRedeemProduct:Lcom/narvii/wallet/Product;

    invoke-virtual {v1, v3, v2, v0}, Lcom/narvii/wallet/RedeemCouponComponent;->bindProduct(Lcom/narvii/model/IBaseProduct;ZLcom/narvii/wallet/RedeemCouponComponent$IRedeemCouponCallback;)V

    goto/16 :goto_1f

    :cond_12
    const/4 v7, 0x0

    :goto_10
    if-ge v7, v5, :cond_28

    .line 754
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/narvii/wallet/Product;

    if-ne v10, v4, :cond_13

    const/4 v12, 0x1

    goto :goto_11

    :cond_13
    const/4 v12, 0x0

    .line 756
    :goto_11
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    if-ge v7, v13, :cond_14

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    goto :goto_12

    :cond_14
    move-object v13, v8

    :goto_12
    if-nez v13, :cond_16

    .line 758
    iget-object v13, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->inflater:Landroid/view/LayoutInflater;

    const v14, 0x7f0b0518

    invoke-virtual {v13, v14, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    if-nez v7, :cond_15

    .line 760
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v14, v3}, Landroid/support/v4/view/MarginLayoutParamsCompat;->setMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 762
    :cond_15
    invoke-virtual {v6, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_16
    const v14, 0x7f090103

    .line 765
    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/narvii/widget/ThumbImageView;

    .line 766
    iget-object v15, v14, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v15, :cond_17

    .line 767
    new-instance v15, Landroid/graphics/drawable/ColorDrawable;

    const/4 v11, -0x1

    invoke-direct {v15, v11}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v15, v14, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 769
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v11

    if-eqz v12, :cond_18

    invoke-static {v11, v9}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v11

    goto :goto_13

    :cond_18
    const/high16 v15, 0x3f800000    # 1.0f

    invoke-static {v11, v15}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v11

    :goto_13
    iput v11, v14, Lcom/narvii/widget/NVImageView;->strokeWidth:F

    const v11, -0xa59dd

    if-eqz v12, :cond_19

    const v15, -0xa59dd

    goto :goto_14

    :cond_19
    const v15, -0x19191a

    .line 770
    :goto_14
    iput v15, v14, Lcom/narvii/widget/NVImageView;->strokeColor:I

    if-eqz v12, :cond_1a

    goto :goto_15

    :cond_1a
    const/4 v11, 0x0

    .line 771
    :goto_15
    invoke-virtual {v14, v11}, Lcom/narvii/widget/ThumbImageView;->setShadowColor(I)V

    .line 772
    sget-object v11, Lcom/narvii/wallet/MembershipSubscribeFragment;->TITLE_PATTERN:Ljava/util/regex/Pattern;

    iget-object v14, v10, Lcom/narvii/wallet/Product;->title:Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 774
    iget-object v14, v10, Lcom/narvii/wallet/Product;->title:Ljava/lang/String;

    .line 775
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-eqz v15, :cond_1b

    .line 776
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v14

    .line 777
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v10, Lcom/narvii/wallet/Product;->title:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    invoke-virtual {v9, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/narvii/wallet/Product;->title:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->end()I

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_16

    :cond_1b
    move-object v2, v14

    move-object v14, v8

    :goto_16
    const v9, 0x7f090b5b

    .line 779
    invoke-virtual {v13, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 780
    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v14, -0x7d7d7e

    if-eqz v12, :cond_1c

    const/16 v15, -0x4ece

    goto :goto_17

    :cond_1c
    const v15, -0x7d7d7e

    .line 781
    :goto_17
    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setTextColor(I)V

    const v9, 0x7f090b5d

    .line 782
    invoke-virtual {v13, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 783
    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v12, :cond_1d

    const/16 v2, -0x4ece

    goto :goto_18

    :cond_1d
    const v2, -0x7d7d7e

    .line 784
    :goto_18
    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v2, 0x7f090bc1

    .line 786
    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v12, :cond_1e

    const/4 v9, 0x4

    goto :goto_19

    :cond_1e
    const/4 v9, 0x0

    :goto_19
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0908c6

    .line 788
    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 790
    iget-object v9, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->inventory:Lcom/narvii/wallet/util/Inventory;

    if-nez v9, :cond_1f

    .line 791
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1a

    .line 793
    :cond_1f
    invoke-virtual {v0, v10}, Lcom/narvii/wallet/MembershipSubscribeFragment;->getInventory(Lcom/narvii/wallet/Product;)Lcom/narvii/wallet/util/SkuDetails;

    move-result-object v9

    if-nez v9, :cond_20

    const v9, 0x7f0f0e1d

    .line 795
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(I)V

    .line 796
    invoke-virtual {v13, v3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1a

    .line 798
    :cond_20
    invoke-virtual {v9}, Lcom/narvii/wallet/util/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v9, 0x1

    .line 799
    invoke-virtual {v13, v9}, Landroid/view/View;->setEnabled(Z)V

    :goto_1a
    if-eqz v12, :cond_21

    const/16 v9, -0x4ece

    goto :goto_1b

    :cond_21
    const v9, -0x7d7d7e

    .line 802
    :goto_1b
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const v2, 0x7f0909a0

    .line 804
    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 805
    iget v9, v10, Lcom/narvii/wallet/Product;->savePercent:I

    if-eqz v9, :cond_22

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v9

    const v15, 0x7f0f0f2c

    const/4 v8, 0x1

    new-array v11, v8, [Ljava/lang/Object;

    iget v8, v10, Lcom/narvii/wallet/Product;->savePercent:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v11, v3

    invoke-virtual {v9, v15, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1c

    :cond_22
    const/4 v8, 0x0

    :goto_1c
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v12, :cond_23

    const/16 v14, -0x4ece

    .line 806
    :cond_23
    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setTextColor(I)V

    const v2, 0x7f090115

    .line 808
    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v8, 0x1

    if-ne v7, v8, :cond_24

    const-string v8, "Most Popular"

    goto :goto_1d

    :cond_24
    const/4 v8, 0x2

    if-ne v7, v8, :cond_25

    const-string v8, "Best Value"

    goto :goto_1d

    :cond_25
    const/4 v8, 0x0

    :goto_1d
    if-eqz v12, :cond_26

    if-eqz v8, :cond_26

    const/4 v9, 0x0

    goto :goto_1e

    :cond_26
    const/4 v9, 0x4

    .line 810
    :goto_1e
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 811
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 813
    invoke-virtual {v13, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 814
    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v12, :cond_27

    .line 817
    move-object v2, v6

    check-cast v2, Lcom/narvii/widget/OrderedLinearLayout;

    invoke-virtual {v2, v7}, Lcom/narvii/widget/OrderedLinearLayout;->setTopChildIndex(I)V

    :cond_27
    add-int/lit8 v7, v7, 0x1

    const/4 v2, 0x1

    const/4 v8, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v11, 0x4

    goto/16 :goto_10

    .line 821
    :cond_28
    :goto_1f
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-le v1, v5, :cond_29

    .line 822
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    goto :goto_1f

    :cond_29
    return-void
.end method

.method updateMembership(Lcom/narvii/wallet/MembershipResponse;)V
    .locals 1

    .line 281
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/app/FragmentWrapperActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/FragmentWrapperActivity;

    invoke-virtual {v0}, Lcom/narvii/app/FragmentWrapperActivity;->getRootFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/FragmentWrapperActivity;

    invoke-virtual {v0}, Lcom/narvii/app/FragmentWrapperActivity;->getRootFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    invoke-virtual {v0, p1}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->updateMembership(Lcom/narvii/wallet/MembershipResponse;)V

    :cond_0
    return-void
.end method
