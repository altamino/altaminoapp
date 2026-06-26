.class Lcom/narvii/checkin/lottery/LotteryDialog$12;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "LotteryDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/checkin/lottery/LotteryDialog;->sendLotteryRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/checkin/lottery/LotteryResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

.field final synthetic val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/narvii/checkin/lottery/LotteryDialog;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V
    .locals 0

    .line 655
    iput-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$12;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    iput-object p3, p0, Lcom/narvii/checkin/lottery/LotteryDialog$12;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "I",
            "Ljava/util/List<",
            "Lcom/narvii/util/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/narvii/model/api/ApiResponse;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 687
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 688
    iget-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$12;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    iget-object p1, p1, Lcom/narvii/checkin/lottery/LotteryDialog;->cardList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 689
    iget-object p3, p0, Lcom/narvii/checkin/lottery/LotteryDialog$12;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    iget-object p3, p3, Lcom/narvii/checkin/lottery/LotteryDialog;->cardClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 691
    :cond_0
    iget-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$12;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 692
    iget-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$12;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 693
    sget-boolean p1, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-eqz p1, :cond_6

    .line 694
    iget-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$12;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    iget-object p1, p1, Lcom/narvii/checkin/lottery/LotteryDialog;->cardList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    .line 695
    invoke-virtual {p3, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 697
    :cond_1
    iget-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$12;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    new-instance p3, Lcom/narvii/checkin/lottery/LotteryResponse;

    invoke-direct {p3}, Lcom/narvii/checkin/lottery/LotteryResponse;-><init>()V

    iput-object p3, p1, Lcom/narvii/checkin/lottery/LotteryDialog;->lotteryResponse:Lcom/narvii/checkin/lottery/LotteryResponse;

    .line 698
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    const/4 p3, 0x3

    .line 699
    invoke-virtual {p1, p3}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    .line 700
    iget-object p3, p0, Lcom/narvii/checkin/lottery/LotteryDialog$12;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    iget-object p3, p3, Lcom/narvii/checkin/lottery/LotteryDialog;->lotteryResponse:Lcom/narvii/checkin/lottery/LotteryResponse;

    new-instance p5, Lcom/narvii/checkin/lottery/LotteryLog;

    invoke-direct {p5}, Lcom/narvii/checkin/lottery/LotteryLog;-><init>()V

    iput-object p5, p3, Lcom/narvii/checkin/lottery/LotteryResponse;->lotteryLog:Lcom/narvii/checkin/lottery/LotteryLog;

    .line 701
    iget-object p3, p0, Lcom/narvii/checkin/lottery/LotteryDialog$12;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    iget-object p3, p3, Lcom/narvii/checkin/lottery/LotteryDialog;->lotteryResponse:Lcom/narvii/checkin/lottery/LotteryResponse;

    iget-object p3, p3, Lcom/narvii/checkin/lottery/LotteryResponse;->lotteryLog:Lcom/narvii/checkin/lottery/LotteryLog;

    iput p1, p3, Lcom/narvii/checkin/lottery/LotteryLog;->awardType:I

    const/4 p5, 0x1

    if-eqz p1, :cond_4

    if-eq p1, p5, :cond_3

    const/4 p3, 0x2

    if-eq p1, p3, :cond_2

    goto :goto_2

    .line 709
    :cond_2
    new-instance p1, Lcom/narvii/model/Sticker;

    invoke-direct {p1}, Lcom/narvii/model/Sticker;-><init>()V

    const-string p3, "https://external-preview.redd.it/vM6hGnWv8oiEMBbaiepYuvaqmGueqgDtaVlDrTIlhY0.png?auto=webp&s=fe9c580612ee0193a44c370c214533c070c58ffe"

    .line 710
    iput-object p3, p1, Lcom/narvii/model/Sticker;->icon:Ljava/lang/String;

    const-string p3, "Dont run away"

    .line 711
    iput-object p3, p1, Lcom/narvii/model/Sticker;->name:Ljava/lang/String;

    .line 712
    iget-object p3, p0, Lcom/narvii/checkin/lottery/LotteryDialog$12;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    iget-object p3, p3, Lcom/narvii/checkin/lottery/LotteryDialog;->lotteryResponse:Lcom/narvii/checkin/lottery/LotteryResponse;

    iget-object p3, p3, Lcom/narvii/checkin/lottery/LotteryResponse;->lotteryLog:Lcom/narvii/checkin/lottery/LotteryLog;

    sget-object p6, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {p6, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    iput-object p1, p3, Lcom/narvii/checkin/lottery/LotteryLog;->refObject:Lcom/fasterxml/jackson/databind/JsonNode;

    .line 713
    iget-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$12;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    iget-object p1, p1, Lcom/narvii/checkin/lottery/LotteryDialog;->lotteryResponse:Lcom/narvii/checkin/lottery/LotteryResponse;

    iget-object p1, p1, Lcom/narvii/checkin/lottery/LotteryResponse;->lotteryLog:Lcom/narvii/checkin/lottery/LotteryLog;

    const/16 p3, 0x71

    iput p3, p1, Lcom/narvii/checkin/lottery/LotteryLog;->objectType:I

    goto :goto_2

    .line 706
    :cond_3
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    const/16 p6, 0x1000

    invoke-virtual {p1, p6}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    iput p1, p3, Lcom/narvii/checkin/lottery/LotteryLog;->awardValue:I

    .line 716
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$12;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    iget-object p1, p1, Lcom/narvii/checkin/lottery/LotteryDialog;->lotteryResponse:Lcom/narvii/checkin/lottery/LotteryResponse;

    new-instance p3, Lcom/narvii/wallet/Wallet;

    invoke-direct {p3}, Lcom/narvii/wallet/Wallet;-><init>()V

    iput-object p3, p1, Lcom/narvii/checkin/lottery/LotteryResponse;->wallet:Lcom/narvii/wallet/Wallet;

    .line 717
    iget-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$12;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    iget-object p1, p1, Lcom/narvii/checkin/lottery/LotteryDialog;->nvContext:Lcom/narvii/app/NVContext;

    const-string p3, "account"

    invoke-interface {p1, p3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 718
    iget-object p3, p0, Lcom/narvii/checkin/lottery/LotteryDialog$12;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    iget-object p3, p3, Lcom/narvii/checkin/lottery/LotteryDialog;->lotteryResponse:Lcom/narvii/checkin/lottery/LotteryResponse;

    iget-object p3, p3, Lcom/narvii/checkin/lottery/LotteryResponse;->wallet:Lcom/narvii/wallet/Wallet;

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->optinAdsLevel()I

    move-result p1

    if-lez p1, :cond_5

    const/4 p2, 0x1

    :cond_5
    iput-boolean p2, p3, Lcom/narvii/wallet/Wallet;->adsEnabled:Z

    .line 719
    iget-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$12;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    iget-object p1, p1, Lcom/narvii/checkin/lottery/LotteryDialog;->lotteryResponse:Lcom/narvii/checkin/lottery/LotteryResponse;

    iget-object p1, p1, Lcom/narvii/checkin/lottery/LotteryResponse;->wallet:Lcom/narvii/wallet/Wallet;

    new-instance p2, Lcom/narvii/wallet/AdsVideoStats;

    invoke-direct {p2}, Lcom/narvii/wallet/AdsVideoStats;-><init>()V

    iput-object p2, p1, Lcom/narvii/wallet/Wallet;->adsVideoStats:Lcom/narvii/wallet/AdsVideoStats;

    .line 720
    iget-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$12;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    iget-object p2, p1, Lcom/narvii/checkin/lottery/LotteryDialog;->lotteryResponse:Lcom/narvii/checkin/lottery/LotteryResponse;

    iget-object p2, p2, Lcom/narvii/checkin/lottery/LotteryResponse;->wallet:Lcom/narvii/wallet/Wallet;

    iget-object p2, p2, Lcom/narvii/wallet/Wallet;->adsVideoStats:Lcom/narvii/wallet/AdsVideoStats;

    iput-boolean p5, p2, Lcom/narvii/wallet/AdsVideoStats;->canWatchVideo:Z

    const/4 p3, 0x4

    .line 721
    iput p3, p2, Lcom/narvii/wallet/AdsVideoStats;->canEarnedCoins:I

    .line 726
    iget-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$12;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    invoke-static {p1}, Lcom/narvii/checkin/lottery/LotteryDialog;->access$600(Lcom/narvii/checkin/lottery/LotteryDialog;)V

    :cond_6
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/checkin/lottery/LotteryResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 658
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 659
    iget-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$12;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 660
    iget-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$12;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    iput-object p2, p1, Lcom/narvii/checkin/lottery/LotteryDialog;->lotteryResponse:Lcom/narvii/checkin/lottery/LotteryResponse;

    .line 661
    invoke-static {p1, p2}, Lcom/narvii/checkin/lottery/LotteryDialog;->access$400(Lcom/narvii/checkin/lottery/LotteryDialog;Lcom/narvii/checkin/lottery/LotteryResponse;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 662
    iget-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$12;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    iget-object p2, p1, Lcom/narvii/checkin/lottery/LotteryDialog;->lotteryResponse:Lcom/narvii/checkin/lottery/LotteryResponse;

    iget-object p2, p2, Lcom/narvii/checkin/lottery/LotteryResponse;->lotteryLog:Lcom/narvii/checkin/lottery/LotteryLog;

    iget v0, p2, Lcom/narvii/checkin/lottery/LotteryLog;->awardType:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget p2, p2, Lcom/narvii/checkin/lottery/LotteryLog;->objectType:I

    const/16 v0, 0x71

    if-ne p2, v0, :cond_0

    .line 663
    iget-object p1, p1, Lcom/narvii/checkin/lottery/LotteryDialog;->nvContext:Lcom/narvii/app/NVContext;

    const-string p2, "sticker"

    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/monetization/sticker/StickerService;

    .line 664
    invoke-virtual {p1, v1}, Lcom/narvii/monetization/sticker/StickerService;->refreshStickerCollectionInfo(Z)V

    .line 671
    :cond_0
    iget-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$12;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    invoke-static {p1}, Lcom/narvii/checkin/lottery/LotteryDialog;->access$600(Lcom/narvii/checkin/lottery/LotteryDialog;)V

    goto :goto_0

    .line 681
    :cond_1
    iget-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$12;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0f1103

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    :goto_0
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 655
    check-cast p2, Lcom/narvii/checkin/lottery/LotteryResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/checkin/lottery/LotteryDialog$12;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/checkin/lottery/LotteryResponse;)V

    return-void
.end method
