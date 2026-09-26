.class public Lcom/narvii/monetization/utils/ExpiredItemHintDialog;
.super Lcom/narvii/util/dialog/AlertDialog;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected context:Lcom/narvii/app/NVContext;

.field protected membershipService:Lcom/narvii/wallet/MembershipService;

.field private final storeHelper:Lcom/narvii/monetization/store/StoreHelper;

.field private storeItem:Lcom/narvii/model/IStoreItem;

.field private final storeItemHelper:Lcom/narvii/monetization/utils/StoreItemHelper;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/IStoreItem;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    iput-object p1, p0, Lcom/narvii/monetization/utils/ExpiredItemHintDialog;->context:Lcom/narvii/app/NVContext;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/narvii/monetization/utils/ExpiredItemHintDialog;->storeItem:Lcom/narvii/model/IStoreItem;

    .line 12
    .line 13
    const-string v0, "membership"

    .line 14
    .line 15
    .line 16
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    check-cast v0, Lcom/narvii/wallet/MembershipService;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/narvii/monetization/utils/ExpiredItemHintDialog;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 22
    .line 23
    new-instance v0, Lcom/narvii/monetization/utils/StoreItemHelper;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, p1}, Lcom/narvii/monetization/utils/StoreItemHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 27
    .line 28
    iput-object v0, p0, Lcom/narvii/monetization/utils/ExpiredItemHintDialog;->storeItemHelper:Lcom/narvii/monetization/utils/StoreItemHelper;

    .line 29
    .line 30
    new-instance p1, Lcom/narvii/monetization/store/StoreHelper;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    invoke-direct {p1, v1}, Lcom/narvii/monetization/store/StoreHelper;-><init>(Landroid/content/Context;)V

    .line 38
    .line 39
    iput-object p1, p0, Lcom/narvii/monetization/utils/ExpiredItemHintDialog;->storeHelper:Lcom/narvii/monetization/store/StoreHelper;

    .line 40
    .line 41
    .line 42
    const p1, 0x7f0d01b8

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    .line 46
    .line 47
    .line 48
    const p1, 0x7f0a076b

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    check-cast p1, Lcom/narvii/widget/NVImageView;

    .line 55
    .line 56
    .line 57
    invoke-interface {p2}, Lcom/narvii/model/IStoreItem;->getStoreIcon()Ljava/lang/String;

    .line 58
    move-result-object v1

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    const p1, 0x7f0a076a

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    check-cast p1, Lcom/narvii/monetization/utils/StoreItemNameView;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p2}, Lcom/narvii/monetization/utils/StoreItemNameView;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    .line 74
    .line 75
    .line 76
    const p1, 0x7f0a0321

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 80
    move-result-object p1

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    .line 85
    .line 86
    const p1, 0x7f0a0764

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 90
    move-result-object p1

    .line 91
    .line 92
    check-cast p1, Landroid/widget/TextView;

    .line 93
    .line 94
    .line 95
    invoke-interface {p2}, Lcom/narvii/model/IStoreItem;->getOwnershipInfo()Lcom/narvii/model/OwnershipInfo;

    .line 96
    move-result-object v1

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1}, Lcom/narvii/monetization/utils/StoreItemHelper;->getExpiredTimeString(Lcom/narvii/model/OwnershipInfo;)Ljava/lang/String;

    .line 100
    move-result-object v0

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    .line 105
    .line 106
    const p1, 0x7f0a077a

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 110
    move-result-object v0

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    .line 115
    .line 116
    invoke-interface {p2}, Lcom/narvii/model/IStoreItem;->availableInAnyStore()Z

    .line 117
    move-result p2

    .line 118
    .line 119
    if-nez p2, :cond_0

    .line 120
    .line 121
    .line 122
    const p2, 0x7f0a0f23

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 126
    move-result-object p2

    .line 127
    const/4 v0, 0x0

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 134
    move-result-object p1

    .line 135
    .line 136
    const/16 p2, 0x8

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 140
    :cond_0
    return-void
.end method


# virtual methods
.method protected jumpToStore()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/utils/ExpiredItemHintDialog;->storeHelper:Lcom/narvii/monetization/store/StoreHelper;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/monetization/utils/ExpiredItemHintDialog;->storeItem:Lcom/narvii/model/IStoreItem;

    .line 5
    .line 6
    .line 7
    invoke-static {v1}, Lcom/narvii/monetization/store/data/StoreItem;->wrapStoreItem(Lcom/narvii/model/IStoreItem;)Lcom/narvii/monetization/store/data/StoreItem;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/narvii/monetization/store/StoreHelper;->openStoreItemDetail(Lcom/narvii/monetization/store/data/StoreItem;)V

    .line 12
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    const v0, 0x7f0a0321

    .line 8
    .line 9
    if-eq p1, v0, :cond_1

    .line 10
    .line 11
    .line 12
    const v0, 0x7f0a077a

    .line 13
    .line 14
    if-eq p1, v0, :cond_0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/monetization/utils/ExpiredItemHintDialog;->jumpToStore()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 22
    goto :goto_0

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 26
    :goto_0
    return-void
.end method
