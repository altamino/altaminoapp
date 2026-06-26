.class Lcom/narvii/wallet/PaidOutDetailFragment$Adapter;
.super Lcom/narvii/list/NVAdapter;
.source "PaidOutDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/wallet/PaidOutDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation


# instance fields
.field error:Ljava/lang/String;

.field paidOutLog:Lcom/narvii/wallet/PaidOutLog;

.field final synthetic this$0:Lcom/narvii/wallet/PaidOutDetailFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/wallet/PaidOutDetailFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/narvii/wallet/PaidOutDetailFragment$Adapter;->this$0:Lcom/narvii/wallet/PaidOutDetailFragment;

    .line 82
    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method

.method private getPaymentAccountText(Lcom/narvii/wallet/PaidOutLog;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 152
    :cond_0
    iget v0, p1, Lcom/narvii/wallet/PaidOutLog;->paymentMethod:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 158
    iget-object p1, p1, Lcom/narvii/wallet/PaidOutLog;->paymentAccount:Ljava/lang/String;

    return-object p1

    .line 156
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Paypal("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/narvii/wallet/PaidOutLog;->paymentAccount:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/narvii/wallet/PaidOutDetailFragment$Adapter;->this$0:Lcom/narvii/wallet/PaidOutDetailFragment;

    const v2, 0x7f0f0d2f

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object p1, p1, Lcom/narvii/wallet/PaidOutLog;->paymentAccount:Ljava/lang/String;

    aput-object p1, v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public errorMessage()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/narvii/wallet/PaidOutDetailFragment$Adapter;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/narvii/wallet/PaidOutDetailFragment$Adapter;->paidOutLog:Lcom/narvii/wallet/PaidOutLog;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const p1, 0x7f0b0572

    .line 133
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090272

    .line 134
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 135
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "-"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/narvii/wallet/PaidOutDetailFragment$Adapter;->paidOutLog:Lcom/narvii/wallet/PaidOutLog;

    iget-wide v0, v0, Lcom/narvii/wallet/PaidOutLog;->coins:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/narvii/wallet/IabUtils;->formatCoins(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f090be6

    .line 136
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 137
    iget-object p3, p0, Lcom/narvii/wallet/PaidOutDetailFragment$Adapter;->this$0:Lcom/narvii/wallet/PaidOutDetailFragment;

    iget-object p3, p3, Lcom/narvii/wallet/PaidOutDetailFragment;->dateFormat:Ljava/text/DateFormat;

    iget-object v0, p0, Lcom/narvii/wallet/PaidOutDetailFragment$Adapter;->paidOutLog:Lcom/narvii/wallet/PaidOutLog;

    iget-object v0, v0, Lcom/narvii/wallet/PaidOutLog;->createdTime:Ljava/util/Date;

    invoke-virtual {p3, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f09071e

    .line 138
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 139
    iget-object p3, p0, Lcom/narvii/wallet/PaidOutDetailFragment$Adapter;->paidOutLog:Lcom/narvii/wallet/PaidOutLog;

    iget-object v0, p3, Lcom/narvii/wallet/PaidOutLog;->currencyCode:Ljava/lang/String;

    iget-wide v1, p3, Lcom/narvii/wallet/PaidOutLog;->amount:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/narvii/wallet/IabUtils;->getCurrencyFormat(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f090819

    .line 140
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 141
    iget-object p3, p0, Lcom/narvii/wallet/PaidOutDetailFragment$Adapter;->paidOutLog:Lcom/narvii/wallet/PaidOutLog;

    invoke-direct {p0, p3}, Lcom/narvii/wallet/PaidOutDetailFragment$Adapter;->getPaymentAccountText(Lcom/narvii/wallet/PaidOutLog;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f090be4

    .line 142
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 143
    iget-object p3, p0, Lcom/narvii/wallet/PaidOutDetailFragment$Adapter;->paidOutLog:Lcom/narvii/wallet/PaidOutLog;

    iget-object p3, p3, Lcom/narvii/wallet/PaidOutLog;->transactionId:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f090be5

    .line 144
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isListShown()Z
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/narvii/wallet/PaidOutDetailFragment$Adapter;->paidOutLog:Lcom/narvii/wallet/PaidOutLog;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/wallet/PaidOutDetailFragment$Adapter;->error:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onAttach()V
    .locals 0

    .line 87
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 88
    invoke-virtual {p0}, Lcom/narvii/wallet/PaidOutDetailFragment$Adapter;->sendRequest()V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    if-eqz p5, :cond_0

    .line 184
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090be5

    if-ne v0, v1, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/wallet/PaidOutDetailFragment$Adapter;->paidOutLog:Lcom/narvii/wallet/PaidOutLog;

    iget-object p2, p2, Lcom/narvii/wallet/PaidOutLog;->transactionId:Ljava/lang/String;

    const p3, 0x7f0f02f2

    invoke-static {p1, p2, p3}, Lcom/narvii/util/Utils;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 p1, 0x1

    return p1

    .line 188
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 p1, 0x0

    .line 104
    iput-object p1, p0, Lcom/narvii/wallet/PaidOutDetailFragment$Adapter;->paidOutLog:Lcom/narvii/wallet/PaidOutLog;

    .line 105
    iput-object p1, p0, Lcom/narvii/wallet/PaidOutDetailFragment$Adapter;->error:Ljava/lang/String;

    .line 106
    invoke-virtual {p0}, Lcom/narvii/wallet/PaidOutDetailFragment$Adapter;->sendRequest()V

    .line 107
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method sendRequest()V
    .locals 4

    .line 164
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/wallet/paid-out-log/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/wallet/PaidOutDetailFragment$Adapter;->this$0:Lcom/narvii/wallet/PaidOutDetailFragment;

    iget-object v2, v2, Lcom/narvii/wallet/PaidOutDetailFragment;->paidOutId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    const-string v1, "api"

    .line 165
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 166
    new-instance v2, Lcom/narvii/wallet/PaidOutDetailFragment$Adapter$1;

    const-class v3, Lcom/narvii/wallet/PaidOutLogResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/wallet/PaidOutDetailFragment$Adapter$1;-><init>(Lcom/narvii/wallet/PaidOutDetailFragment$Adapter;Ljava/lang/Class;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method
