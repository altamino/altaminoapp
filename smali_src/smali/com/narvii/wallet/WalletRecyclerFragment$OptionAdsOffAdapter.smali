.class Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOffAdapter;
.super Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/wallet/WalletRecyclerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OptionAdsOffAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOffAdapter$OptionAdsOffViewHolder;
    }
.end annotation


# instance fields
.field accountService:Lcom/narvii/account/AccountService;

.field final synthetic this$0:Lcom/narvii/wallet/WalletRecyclerFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/wallet/WalletRecyclerFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOffAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    const-string p1, "account"

    .line 8
    .line 9
    .line 10
    invoke-interface {p2, p1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOffAdapter;->accountService:Lcom/narvii/account/AccountService;

    .line 16
    return-void
.end method

.method public static synthetic g(Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOffAdapter;Lcom/narvii/model/api/AccountResponse;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOffAdapter;->lambda$onBindViewHolder$0(Lcom/narvii/model/api/AccountResponse;)V

    return-void
.end method

.method public static synthetic h(Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOffAdapter;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOffAdapter;->lambda$onBindViewHolder$1(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Lcom/narvii/model/api/AccountResponse;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOffAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/narvii/wallet/WalletRecyclerFragment;->access$000(Lcom/narvii/wallet/WalletRecyclerFragment;)V

    .line 9
    .line 10
    .line 11
    const-string/jumbo p1, "value"

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Lcom/narvii/wallet/optinads/OptinAds;->getAdLevel(Lcom/narvii/app/NVContext;)Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    filled-new-array {p1, v0}, [Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lcom/narvii/util/statistics/FirebaseLogManager;->createParams([Ljava/lang/String;)[Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    const-string v0, "ad toggle"

    .line 26
    .line 27
    .line 28
    invoke-static {p0, v0, p1}, Lcom/narvii/util/statistics/FirebaseLogManager;->logEvent(Lcom/narvii/app/NVContext;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOffAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 3
    .line 4
    sget-object v0, Lcom/narvii/logging/ActSemantic;->turnOn:Lcom/narvii/logging/ActSemantic;

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    const-string v0, "EarnFreeCoinsToggle"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOffAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 20
    .line 21
    if-eqz p2, :cond_0

    .line 22
    const/4 p2, 0x2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p2, 0x0

    .line 25
    .line 26
    :goto_0
    new-instance v0, Lcom/narvii/wallet/u0;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, p0}, Lcom/narvii/wallet/u0;-><init>(Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOffAdapter;)V

    .line 30
    .line 31
    const-string v1, "Wallet"

    .line 32
    .line 33
    .line 34
    invoke-static {p1, p2, v1, v0}, Lcom/narvii/wallet/optinads/OptinAdsUtil;->optinAdsLevel(Lcom/narvii/app/NVContext;ILjava/lang/String;Lcom/narvii/util/Callback;)V

    .line 35
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOffAdapter;->accountService:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->optinAdsLevel()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-lez v0, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x1

    .line 12
    :goto_0
    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    .line 9
    iget-object p2, p0, Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOffAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 10
    .line 11
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 12
    .line 13
    .line 14
    const v1, 0x7f0a06d5

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Lcom/narvii/widget/NVDrawableAnimatedView;

    .line 21
    .line 22
    .line 23
    const v1, 0x7f080843

    .line 24
    .line 25
    .line 26
    const v2, 0x7f080842

    .line 27
    .line 28
    .line 29
    invoke-static {p2, v0, v1, v2}, Lcom/narvii/wallet/WalletRecyclerFragment;->R(Lcom/narvii/wallet/WalletRecyclerFragment;Lcom/narvii/widget/NVDrawableAnimatedView;II)V

    .line 30
    .line 31
    const-string p2, "account"

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    move-result-object p2

    .line 36
    .line 37
    check-cast p2, Lcom/narvii/account/AccountService;

    .line 38
    .line 39
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 40
    .line 41
    .line 42
    const v1, 0x7f0a0a7d

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    check-cast v0, Landroid/widget/CheckBox;

    .line 49
    const/4 v2, 0x0

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 53
    .line 54
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    check-cast v0, Landroid/widget/CheckBox;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->optinAdsLevel()I

    .line 64
    move-result p2

    .line 65
    .line 66
    if-lez p2, :cond_0

    .line 67
    const/4 p2, 0x1

    .line 68
    goto :goto_0

    .line 69
    :cond_0
    const/4 p2, 0x0

    .line 70
    .line 71
    .line 72
    :goto_0
    invoke-virtual {v0, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 73
    .line 74
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    check-cast p1, Landroid/widget/CheckBox;

    .line 81
    .line 82
    new-instance p2, Lcom/narvii/wallet/v0;

    .line 83
    .line 84
    .line 85
    invoke-direct {p2, p0}, Lcom/narvii/wallet/v0;-><init>(Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOffAdapter;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 89
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance p2, Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOffAdapter$OptionAdsOffViewHolder;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    const v1, 0x7f0d07aa

    .line 16
    const/4 v2, 0x0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-direct {p2, p0, p1}, Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOffAdapter$OptionAdsOffViewHolder;-><init>(Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOffAdapter;Landroid/view/View;)V

    .line 24
    return-object p2
.end method
