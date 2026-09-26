.class Lcom/narvii/wallet/PaidOutDetailFragment$Adapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/wallet/PaidOutDetailFragment$Adapter;->this$0:Lcom/narvii/wallet/PaidOutDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method

.method private getPaymentAccountText(Lcom/narvii/wallet/PaidOutLog;)Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    .line 6
    :cond_0
    iget v0, p1, Lcom/narvii/wallet/PaidOutLog;->paymentMethod:I

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-eq v0, v1, :cond_2

    .line 10
    const/4 v1, 0x2

    .line 11
    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    iget-object p1, p1, Lcom/narvii/wallet/PaidOutLog;->paymentAccount:Ljava/lang/String;

    .line 15
    return-object p1

    .line 16
    .line 17
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    const-string v1, "Paypal("

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/narvii/wallet/PaidOutLog;->paymentAccount:Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string p1, ")"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    return-object p1

    .line 41
    .line 42
    :cond_2
    iget-object v0, p0, Lcom/narvii/wallet/PaidOutDetailFragment$Adapter;->this$0:Lcom/narvii/wallet/PaidOutDetailFragment;

    .line 43
    .line 44
    new-array v1, v1, [Ljava/lang/Object;

    .line 45
    const/4 v2, 0x0

    .line 46
    .line 47
    iget-object p1, p1, Lcom/narvii/wallet/PaidOutLog;->paymentAccount:Ljava/lang/String;

    .line 48
    .line 49
    aput-object p1, v1, v2

    .line 50
    .line 51
    .line 52
    const p1, 0x7f120e54

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 57
    return-object p1
.end method


# virtual methods
.method public errorMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/wallet/PaidOutDetailFragment$Adapter;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

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

    .line 1
    .line 2
    .line 3
    const p1, 0x7f0d0617

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    const p2, 0x7f0a033b

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    check-cast p2, Landroid/widget/TextView;

    .line 17
    .line 18
    new-instance p3, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    const-string v0, "-"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/wallet/PaidOutDetailFragment$Adapter;->paidOutLog:Lcom/narvii/wallet/PaidOutLog;

    .line 29
    .line 30
    iget-wide v0, v0, Lcom/narvii/wallet/PaidOutLog;->coins:D

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    .line 34
    move-result-wide v0

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v1}, Lcom/narvii/wallet/IabUtils;->formatCoins(D)Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    .line 41
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p3

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    const p2, 0x7f0a0f01

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    move-result-object p2

    .line 56
    .line 57
    check-cast p2, Landroid/widget/TextView;

    .line 58
    .line 59
    iget-object p3, p0, Lcom/narvii/wallet/PaidOutDetailFragment$Adapter;->this$0:Lcom/narvii/wallet/PaidOutDetailFragment;

    .line 60
    .line 61
    iget-object p3, p3, Lcom/narvii/wallet/PaidOutDetailFragment;->dateFormat:Ljava/text/DateFormat;

    .line 62
    .line 63
    iget-object v0, p0, Lcom/narvii/wallet/PaidOutDetailFragment$Adapter;->paidOutLog:Lcom/narvii/wallet/PaidOutLog;

    .line 64
    .line 65
    iget-object v0, v0, Lcom/narvii/wallet/PaidOutLog;->createdTime:Ljava/util/Date;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p3, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 69
    move-result-object p3

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    .line 74
    .line 75
    const p2, 0x7f0a0981

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 79
    move-result-object p2

    .line 80
    .line 81
    check-cast p2, Landroid/widget/TextView;

    .line 82
    .line 83
    iget-object p3, p0, Lcom/narvii/wallet/PaidOutDetailFragment$Adapter;->paidOutLog:Lcom/narvii/wallet/PaidOutLog;

    .line 84
    .line 85
    iget-object v0, p3, Lcom/narvii/wallet/PaidOutLog;->currencyCode:Ljava/lang/String;

    .line 86
    .line 87
    iget-wide v1, p3, Lcom/narvii/wallet/PaidOutLog;->amount:D

    .line 88
    .line 89
    .line 90
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 91
    move-result-object p3

    .line 92
    .line 93
    .line 94
    invoke-static {v0, p3}, Lcom/narvii/wallet/IabUtils;->getCurrencyFormat(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/String;

    .line 95
    move-result-object p3

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    .line 100
    .line 101
    const p2, 0x7f0a0ac2

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 105
    move-result-object p2

    .line 106
    .line 107
    check-cast p2, Landroid/widget/TextView;

    .line 108
    .line 109
    iget-object p3, p0, Lcom/narvii/wallet/PaidOutDetailFragment$Adapter;->paidOutLog:Lcom/narvii/wallet/PaidOutLog;

    .line 110
    .line 111
    .line 112
    invoke-direct {p0, p3}, Lcom/narvii/wallet/PaidOutDetailFragment$Adapter;->getPaymentAccountText(Lcom/narvii/wallet/PaidOutLog;)Ljava/lang/String;

    .line 113
    move-result-object p3

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    .line 118
    .line 119
    const p2, 0x7f0a0eff

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 123
    move-result-object p2

    .line 124
    .line 125
    check-cast p2, Landroid/widget/TextView;

    .line 126
    .line 127
    iget-object p3, p0, Lcom/narvii/wallet/PaidOutDetailFragment$Adapter;->paidOutLog:Lcom/narvii/wallet/PaidOutLog;

    .line 128
    .line 129
    iget-object p3, p3, Lcom/narvii/wallet/PaidOutLog;->transactionId:Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    .line 134
    .line 135
    const p2, 0x7f0a0f00

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 139
    move-result-object p2

    .line 140
    .line 141
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    return-object p1
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isListShown()Z
    .locals 1

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

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/wallet/PaidOutDetailFragment$Adapter;->sendRequest()V

    .line 7
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 1
    .line 2
    if-eqz p5, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    const v1, 0x7f0a0f00

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    iget-object p2, p0, Lcom/narvii/wallet/PaidOutDetailFragment$Adapter;->paidOutLog:Lcom/narvii/wallet/PaidOutLog;

    .line 18
    .line 19
    iget-object p2, p2, Lcom/narvii/wallet/PaidOutLog;->transactionId:Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    const p3, 0x7f120346

    .line 23
    .line 24
    .line 25
    invoke-static {p1, p2, p3}, Lcom/narvii/util/Utils;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;I)V

    .line 26
    const/4 p1, 0x1

    .line 27
    return p1

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 31
    move-result p1

    .line 32
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

    .line 1
    const/4 p1, 0x0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/narvii/wallet/PaidOutDetailFragment$Adapter;->paidOutLog:Lcom/narvii/wallet/PaidOutLog;

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/wallet/PaidOutDetailFragment$Adapter;->error:Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/wallet/PaidOutDetailFragment$Adapter;->sendRequest()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 12
    return-void
.end method

.method sendRequest()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    const-string v2, "/wallet/paid-out-log/"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/narvii/wallet/PaidOutDetailFragment$Adapter;->this$0:Lcom/narvii/wallet/PaidOutDetailFragment;

    .line 21
    .line 22
    iget-object v2, v2, Lcom/narvii/wallet/PaidOutDetailFragment;->paidOutId:Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    const-string v1, "api"

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 46
    .line 47
    new-instance v2, Lcom/narvii/wallet/PaidOutDetailFragment$Adapter$1;

    .line 48
    .line 49
    const-class v3, Lcom/narvii/wallet/PaidOutLogResponse;

    .line 50
    .line 51
    .line 52
    invoke-direct {v2, p0, v3}, Lcom/narvii/wallet/PaidOutDetailFragment$Adapter$1;-><init>(Lcom/narvii/wallet/PaidOutDetailFragment$Adapter;Ljava/lang/Class;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 56
    return-void
.end method
