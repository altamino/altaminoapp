.class public Lcom/narvii/monetization/store/TippingConfirmDialog;
.super Lcom/narvii/app/NVDialog;
.source "TippingConfirmDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lcom/narvii/widget/PurchaseConfirmButton$SubmitConfirmListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/monetization/store/TippingConfirmDialog$TipSuccessListener;
    }
.end annotation


# static fields
.field private static TIPPING_SELECT_CUSTOM:I = -0x1

.field private static TIPPING_UNSELECTED:I = -0x2


# instance fields
.field communityHelper:Lcom/narvii/community/CommunityHelper;

.field private confirm:Lcom/narvii/widget/PurchaseConfirmButton;

.field private curSelect:I

.field private customTippingIcon:Lcom/narvii/widget/NVImageView;

.field private customTippingOption:Lcom/narvii/model/TippingOption;

.field private customTippingPrice:Landroid/view/View;

.field private customTippingPriceInput:Landroid/widget/EditText;

.field private defaultPriceViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private defaultTippingPrice:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/TippingOption;",
            ">;"
        }
    .end annotation
.end field

.field private inflater:Landroid/view/LayoutInflater;

.field private inputFilter:Landroid/text/InputFilter;

.field private isFetchTipperList:Z

.field private isKeyboardOn:Z

.field private final lbm:Landroid/support/v4/content/LocalBroadcastManager;

.field private maxTippingPrice:I

.field private final membership:Lcom/narvii/wallet/MembershipService;

.field private minTippingPrice:I

.field private nvContext:Lcom/narvii/app/NVContext;

.field private receiver:Landroid/content/BroadcastReceiver;

.field public source:Ljava/lang/String;

.field private tipSuccessListener:Lcom/narvii/monetization/store/TippingConfirmDialog$TipSuccessListener;

.field private tippable:Lcom/narvii/model/Tippable;

.field private tippersCount:I

.field private tippersList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation
.end field

.field private final tippingConfirmTitle:Landroid/widget/TextView;

.field private tippingContentView:Landroid/view/View;

.field private tippingFeedbackView:Lcom/narvii/monetization/store/view/TippingFeedbackView;

.field private tippingHelper:Lcom/narvii/tipping/TippingHelper;

.field private final tippingMembersCount:Landroid/widget/TextView;

.field private final tippingMembersList:Lcom/narvii/livelayer/LiveLayerOnlineBar;

.field private final tippingMembersView:Landroid/view/View;

.field private tippingTransactionId:Ljava/lang/String;

.field private userInfo:Lcom/narvii/model/User;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/Tippable;)V
    .locals 3

    const v0, 0x7f1000ce

    .line 162
    invoke-direct {p0, p1, v0}, Lcom/narvii/app/NVDialog;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->defaultPriceViews:Ljava/util/List;

    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippersList:Ljava/util/List;

    const/4 v0, 0x0

    .line 119
    iput-boolean v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->isFetchTipperList:Z

    const/4 v1, -0x1

    .line 120
    iput v1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippersCount:I

    .line 124
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->defaultTippingPrice:Ljava/util/List;

    const/16 v1, 0x64

    .line 126
    iput v1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->maxTippingPrice:I

    const/4 v1, 0x1

    .line 127
    iput v1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->minTippingPrice:I

    .line 128
    sget v2, Lcom/narvii/monetization/store/TippingConfirmDialog;->TIPPING_UNSELECTED:I

    iput v2, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->curSelect:I

    .line 136
    new-instance v2, Lcom/narvii/monetization/store/TippingConfirmDialog$1;

    invoke-direct {v2, p0}, Lcom/narvii/monetization/store/TippingConfirmDialog$1;-><init>(Lcom/narvii/monetization/store/TippingConfirmDialog;)V

    iput-object v2, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->receiver:Landroid/content/BroadcastReceiver;

    .line 143
    new-instance v2, Lcom/narvii/monetization/store/TippingConfirmDialog$2;

    invoke-direct {v2, p0}, Lcom/narvii/monetization/store/TippingConfirmDialog$2;-><init>(Lcom/narvii/monetization/store/TippingConfirmDialog;)V

    iput-object v2, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->inputFilter:Landroid/text/InputFilter;

    .line 163
    iput-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->nvContext:Lcom/narvii/app/NVContext;

    .line 164
    iput-object p2, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippable:Lcom/narvii/model/Tippable;

    .line 165
    new-instance v2, Lcom/narvii/community/CommunityHelper;

    invoke-direct {v2, p0}, Lcom/narvii/community/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v2, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->communityHelper:Lcom/narvii/community/CommunityHelper;

    .line 167
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v2}, Lcom/narvii/util/statusbar/StatusBarUtils;->addTranslucentFlags(Landroid/view/Window;)V

    const v2, 0x7f0b01be

    .line 169
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->setContentView(I)V

    const-string v2, "membership"

    .line 171
    invoke-interface {p1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/wallet/MembershipService;

    iput-object v2, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->membership:Lcom/narvii/wallet/MembershipService;

    .line 172
    new-instance v2, Lcom/narvii/tipping/TippingHelper;

    invoke-direct {v2, p1}, Lcom/narvii/tipping/TippingHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v2, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippingHelper:Lcom/narvii/tipping/TippingHelper;

    .line 174
    invoke-direct {p0, p2}, Lcom/narvii/monetization/store/TippingConfirmDialog;->setTippableInfo(Lcom/narvii/model/Tippable;)V

    .line 176
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->inflater:Landroid/view/LayoutInflater;

    const p1, 0x7f090255

    .line 178
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09074a

    .line 179
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09009f

    .line 180
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090c43

    .line 181
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0900e3

    .line 182
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090b87

    .line 184
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippingConfirmTitle:Landroid/widget/TextView;

    const p1, 0x7f0904cb

    .line 186
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090b94

    .line 188
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippingMembersView:Landroid/view/View;

    .line 189
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippingMembersView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090b93

    .line 190
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iput-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippingMembersList:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 191
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippingMembersList:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    invoke-virtual {p1, v1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setAvatarStrokeWidth(I)V

    .line 192
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippingMembersList:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    invoke-virtual {p1, v1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setForceHideOnlineTextLayout(Z)V

    const p1, 0x7f090b92

    .line 194
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippingMembersCount:Landroid/widget/TextView;

    const p1, 0x7f090328

    .line 196
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->customTippingPriceInput:Landroid/widget/EditText;

    .line 197
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->customTippingPriceInput:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 198
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->customTippingPriceInput:Landroid/widget/EditText;

    new-array p2, v1, [Landroid/text/InputFilter;

    iget-object v2, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->inputFilter:Landroid/text/InputFilter;

    aput-object v2, p2, v0

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 199
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->customTippingPriceInput:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const p1, 0x7f090327

    .line 201
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->customTippingPrice:Landroid/view/View;

    .line 202
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->customTippingPrice:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->customTippingPrice:Landroid/view/View;

    const p2, 0x7f090b95

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVImageView;

    iput-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->customTippingIcon:Lcom/narvii/widget/NVImageView;

    .line 207
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->customTippingPrice:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 208
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->customTippingPriceInput:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 209
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->customTippingPrice:Landroid/view/View;

    const p2, 0x7f090b8e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0902c6

    .line 211
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/PurchaseConfirmButton;

    iput-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->confirm:Lcom/narvii/widget/PurchaseConfirmButton;

    .line 212
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->confirm:Lcom/narvii/widget/PurchaseConfirmButton;

    const p2, 0x7f0902c8

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f080759

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 213
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->confirm:Lcom/narvii/widget/PurchaseConfirmButton;

    invoke-virtual {p1, p0}, Lcom/narvii/widget/PurchaseConfirmButton;->setSubmitListener(Lcom/narvii/widget/PurchaseConfirmButton$SubmitConfirmListener;)V

    .line 214
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->confirm:Lcom/narvii/widget/PurchaseConfirmButton;

    invoke-virtual {p1, v0}, Lcom/narvii/widget/PurchaseConfirmButton;->setEnabled(Z)V

    const p1, 0x7f090b86

    .line 216
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippingContentView:Landroid/view/View;

    const p1, 0x7f090b8c

    .line 217
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/monetization/store/view/TippingFeedbackView;

    iput-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippingFeedbackView:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    .line 219
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    .line 220
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object p2, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.narvii.action.WALLET_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 221
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->customTippingPriceInput:Landroid/widget/EditText;

    new-instance p2, Lcom/narvii/monetization/store/TippingConfirmDialog$3;

    invoke-direct {p2, p0}, Lcom/narvii/monetization/store/TippingConfirmDialog$3;-><init>(Lcom/narvii/monetization/store/TippingConfirmDialog;)V

    invoke-static {p1, p2}, Lcom/narvii/util/SoftKeyboard;->observeKeyboard(Landroid/view/View;Lcom/narvii/util/Callback;)Lcom/narvii/util/SoftKeyboard$KeyboardObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/monetization/store/TippingConfirmDialog;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/narvii/monetization/store/TippingConfirmDialog;->updateWallet()V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/monetization/store/TippingConfirmDialog;)I
    .locals 0

    .line 83
    iget p0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->maxTippingPrice:I

    return p0
.end method

.method static synthetic access$1000(Lcom/narvii/monetization/store/TippingConfirmDialog;)Landroid/widget/EditText;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->customTippingPriceInput:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/narvii/monetization/store/TippingConfirmDialog;)Landroid/view/View;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippingContentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/narvii/monetization/store/TippingConfirmDialog;)Lcom/narvii/model/User;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->userInfo:Lcom/narvii/model/User;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/narvii/monetization/store/TippingConfirmDialog;)Lcom/narvii/monetization/store/view/TippingFeedbackView;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippingFeedbackView:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/narvii/monetization/store/TippingConfirmDialog;)Lcom/narvii/widget/PurchaseConfirmButton;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->confirm:Lcom/narvii/widget/PurchaseConfirmButton;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/narvii/monetization/store/TippingConfirmDialog;Z)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/narvii/monetization/store/TippingConfirmDialog;->showPurchaseCoinDialog(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/narvii/monetization/store/TippingConfirmDialog;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/narvii/monetization/store/TippingConfirmDialog;->showJoinCommunityDialog()V

    return-void
.end method

.method static synthetic access$1702(Lcom/narvii/monetization/store/TippingConfirmDialog;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippersList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/narvii/monetization/store/TippingConfirmDialog;)I
    .locals 0

    .line 83
    iget p0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippersCount:I

    return p0
.end method

.method static synthetic access$1802(Lcom/narvii/monetization/store/TippingConfirmDialog;I)I
    .locals 0

    .line 83
    iput p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippersCount:I

    return p1
.end method

.method static synthetic access$1900(Lcom/narvii/monetization/store/TippingConfirmDialog;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/narvii/monetization/store/TippingConfirmDialog;->updateTippingMembers()V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/monetization/store/TippingConfirmDialog;)I
    .locals 0

    .line 83
    iget p0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->minTippingPrice:I

    return p0
.end method

.method static synthetic access$302(Lcom/narvii/monetization/store/TippingConfirmDialog;Z)Z
    .locals 0

    .line 83
    iput-boolean p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->isKeyboardOn:Z

    return p1
.end method

.method static synthetic access$401(Lcom/narvii/monetization/store/TippingConfirmDialog;)V
    .locals 0

    .line 83
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    return-void
.end method

.method static synthetic access$501(Lcom/narvii/monetization/store/TippingConfirmDialog;)V
    .locals 0

    .line 83
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    return-void
.end method

.method static synthetic access$600(Lcom/narvii/monetization/store/TippingConfirmDialog;)Lcom/narvii/wallet/MembershipService;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->membership:Lcom/narvii/wallet/MembershipService;

    return-object p0
.end method

.method static synthetic access$700(Lcom/narvii/monetization/store/TippingConfirmDialog;)Lcom/narvii/model/Tippable;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippable:Lcom/narvii/model/Tippable;

    return-object p0
.end method

.method static synthetic access$800(Lcom/narvii/monetization/store/TippingConfirmDialog;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->nvContext:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method static synthetic access$900(Lcom/narvii/monetization/store/TippingConfirmDialog;)Lcom/narvii/monetization/store/TippingConfirmDialog$TipSuccessListener;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tipSuccessListener:Lcom/narvii/monetization/store/TippingConfirmDialog$TipSuccessListener;

    return-object p0
.end method

.method private fetchTipperMembers()V
    .locals 4

    .line 594
    iget-boolean v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->isFetchTipperList:Z

    if-eqz v0, :cond_0

    return-void

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippable:Lcom/narvii/model/Tippable;

    instance-of v1, v0, Lcom/narvii/model/NVObject;

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 601
    iput-boolean v1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->isFetchTipperList:Z

    .line 603
    check-cast v0, Lcom/narvii/model/NVObject;

    .line 605
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 606
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->apiTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/tipping/tipped-users-summary"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 607
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "start"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const/16 v1, 0xf

    .line 608
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "size"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 610
    iget-object v1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippable:Lcom/narvii/model/Tippable;

    instance-of v2, v1, Lcom/narvii/model/CommunityObjectInGlobal;

    if-eqz v2, :cond_2

    .line 611
    check-cast v1, Lcom/narvii/model/CommunityObjectInGlobal;

    invoke-interface {v1}, Lcom/narvii/model/CommunityObjectInGlobal;->getNdcId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 614
    :cond_2
    iget-object v1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->nvContext:Lcom/narvii/app/NVContext;

    const-string v2, "api"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 615
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    new-instance v2, Lcom/narvii/monetization/store/TippingConfirmDialog$6;

    const-class v3, Lcom/narvii/tipping/model/TipLogListResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/monetization/store/TippingConfirmDialog$6;-><init>(Lcom/narvii/monetization/store/TippingConfirmDialog;Ljava/lang/Class;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private getTargetTippingPrice()I
    .locals 1

    .line 688
    iget v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->curSelect:I

    invoke-direct {p0, v0}, Lcom/narvii/monetization/store/TippingConfirmDialog;->getTargetTippingPrice(I)I

    move-result v0

    return v0
.end method

.method private getTargetTippingPrice(I)I
    .locals 1

    .line 693
    sget v0, Lcom/narvii/monetization/store/TippingConfirmDialog;->TIPPING_SELECT_CUSTOM:I

    if-ne p1, v0, :cond_0

    .line 695
    :try_start_0
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->customTippingPriceInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const p1, 0x7fffffff

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_1

    .line 699
    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->defaultTippingPrice:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 700
    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->defaultTippingPrice:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/TippingOption;

    iget p1, p1, Lcom/narvii/model/TippingOption;->value:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private getTippableNdcId()I
    .locals 2

    .line 493
    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippable:Lcom/narvii/model/Tippable;

    instance-of v1, v0, Lcom/narvii/model/CommunityObjectInGlobal;

    if-eqz v1, :cond_0

    .line 494
    check-cast v0, Lcom/narvii/model/CommunityObjectInGlobal;

    invoke-interface {v0}, Lcom/narvii/model/CommunityObjectInGlobal;->getNdcId()I

    move-result v0

    return v0

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "config"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 497
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    return v0
.end method

.method private isGlobalScope()Z
    .locals 2

    .line 648
    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->nvContext:Lcom/narvii/app/NVContext;

    invoke-static {v0}, Lcom/narvii/util/Utils;->isGlobalInteractionScope(Lcom/narvii/app/NVContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippable:Lcom/narvii/model/Tippable;

    instance-of v1, v0, Lcom/narvii/model/Blog;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/narvii/model/Blog;

    iget v0, v0, Lcom/narvii/model/Blog;->type:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setTippableInfo(Lcom/narvii/model/Tippable;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 433
    :cond_0
    invoke-interface {p1}, Lcom/narvii/model/Tippable;->getTipAuthor()Lcom/narvii/model/User;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->userInfo:Lcom/narvii/model/User;

    .line 434
    invoke-interface {p1}, Lcom/narvii/model/Tippable;->getTippingInfo()Lcom/narvii/model/TippingInfo;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    const/4 p1, -0x1

    .line 437
    iput p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippersCount:I

    const/16 p1, 0x64

    .line 438
    iput p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->maxTippingPrice:I

    .line 439
    iput v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->minTippingPrice:I

    return-void

    .line 443
    :cond_1
    iget v1, p1, Lcom/narvii/model/TippingInfo;->tippersCount:I

    iput v1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippersCount:I

    .line 445
    iget v1, p1, Lcom/narvii/model/TippingInfo;->tipMinCoin:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->minTippingPrice:I

    .line 446
    iget v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->minTippingPrice:I

    iget v1, p1, Lcom/narvii/model/TippingInfo;->tipMaxCoin:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->maxTippingPrice:I

    .line 448
    iget-object v0, p1, Lcom/narvii/model/TippingInfo;->tipOptionList:Ljava/util/List;

    if-nez v0, :cond_2

    return-void

    .line 452
    :cond_2
    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->defaultTippingPrice:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 453
    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->defaultTippingPrice:Ljava/util/List;

    iget-object v1, p1, Lcom/narvii/model/TippingInfo;->tipOptionList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 455
    iget-object p1, p1, Lcom/narvii/model/TippingInfo;->tipCustomOption:Lcom/narvii/model/TippingOption;

    iput-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->customTippingOption:Lcom/narvii/model/TippingOption;

    return-void
.end method

.method private showJoinCommunityDialog()V
    .locals 5

    .line 652
    invoke-direct {p0}, Lcom/narvii/monetization/store/TippingConfirmDialog;->getTippableNdcId()I

    move-result v0

    .line 653
    new-instance v1, Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f074b

    .line 654
    invoke-virtual {v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 655
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f0193

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, -0x444445

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/narvii/widget/ACMAlertDialog;->addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 656
    new-instance v2, Lcom/narvii/monetization/store/TippingConfirmDialog$7;

    invoke-direct {v2, p0, v0}, Lcom/narvii/monetization/store/TippingConfirmDialog$7;-><init>(Lcom/narvii/monetization/store/TippingConfirmDialog;I)V

    const v0, 0x7f0f0aaa

    invoke-virtual {v1, v0, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 684
    invoke-virtual {v1}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method

.method private showPurchaseCoinDialog(Z)V
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->nvContext:Lcom/narvii/app/NVContext;

    invoke-static {v0, p1}, Lcom/narvii/wallet/PurchaseCoinFragment;->show(Lcom/narvii/app/NVContext;Z)V

    return-void
.end method

.method private updateDefaultPriceView()V
    .locals 7

    const v0, 0x7f09033b

    .line 289
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 290
    iget-object v1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->defaultPriceViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 291
    :goto_0
    iget-object v3, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->defaultTippingPrice:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 292
    iget-object v3, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->defaultTippingPrice:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/TippingOption;

    .line 293
    iget-object v4, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0b0698

    invoke-virtual {v4, v5, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f090b97

    .line 294
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 295
    iget v6, v3, Lcom/narvii/model/TippingOption;->value:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, 0x7f090b95

    .line 297
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/narvii/widget/NVImageView;

    .line 298
    iget-object v3, v3, Lcom/narvii/model/TippingOption;->icon:Ljava/lang/String;

    invoke-virtual {v5, v3}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 299
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 301
    iget-object v3, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->defaultPriceViews:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 304
    new-instance v3, Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 305
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {v5, v6}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v5

    float-to-int v5, v5

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 306
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 307
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updatePrice(I)V
    .locals 5

    .line 321
    invoke-direct {p0, p1}, Lcom/narvii/monetization/store/TippingConfirmDialog;->getTargetTippingPrice(I)I

    move-result v0

    .line 322
    iget-object v1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->confirm:Lcom/narvii/widget/PurchaseConfirmButton;

    iget v2, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->minTippingPrice:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt v0, v2, :cond_0

    iget v2, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->maxTippingPrice:I

    if-gt v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/narvii/widget/PurchaseConfirmButton;->setEnabled(Z)V

    .line 324
    iget v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->curSelect:I

    if-ne p1, v0, :cond_1

    return-void

    .line 327
    :cond_1
    iput p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->curSelect:I

    const/4 v0, 0x0

    .line 328
    iput-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippingTransactionId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 329
    :goto_1
    iget-object v1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->defaultPriceViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 330
    iget-object v1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->defaultPriceViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-ne v0, p1, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 331
    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 334
    :cond_3
    sget v0, Lcom/narvii/monetization/store/TippingConfirmDialog;->TIPPING_SELECT_CUSTOM:I

    const/16 v1, 0x8

    const v2, 0x7f090b8d

    if-ne p1, v0, :cond_4

    .line 335
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->customTippingPrice:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 336
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->customTippingPrice:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 337
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->customTippingPriceInput:Landroid/widget/EditText;

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_3

    .line 339
    :cond_4
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->customTippingPrice:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 340
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->customTippingPrice:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 341
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->customTippingPriceInput:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method private updateTippingMembers()V
    .locals 7

    .line 269
    iget v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippersCount:I

    const/16 v1, 0x8

    if-gtz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippingMembersView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippingMembersView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippingMembersCount:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippersCount:I

    const v5, 0x7f0f0cdc

    const v6, 0x7f0f0c0b

    invoke-static {v3, v4, v5, v6}, Lcom/narvii/util/text/TextUtils;->getCountText(Landroid/content/Context;III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippersList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippingMembersList:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippingMembersList:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iget-object v1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippersList:Ljava/util/List;

    iget v2, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippersCount:I

    invoke-virtual {v0, v1, v2}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setUserList(Ljava/util/List;I)V

    goto :goto_0

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippingMembersList:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 282
    :goto_0
    iget-boolean v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->isFetchTipperList:Z

    if-nez v0, :cond_2

    .line 283
    invoke-direct {p0}, Lcom/narvii/monetization/store/TippingConfirmDialog;->fetchTipperMembers()V

    :cond_2
    return-void
.end method

.method private updateViews()V
    .locals 7

    .line 250
    invoke-direct {p0}, Lcom/narvii/monetization/store/TippingConfirmDialog;->updateTippingMembers()V

    .line 251
    invoke-direct {p0}, Lcom/narvii/monetization/store/TippingConfirmDialog;->updateDefaultPriceView()V

    .line 252
    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->defaultTippingPrice:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget v0, Lcom/narvii/monetization/store/TippingConfirmDialog;->TIPPING_SELECT_CUSTOM:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/narvii/monetization/store/TippingConfirmDialog;->updatePrice(I)V

    .line 253
    invoke-direct {p0}, Lcom/narvii/monetization/store/TippingConfirmDialog;->updateWallet()V

    .line 255
    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->userInfo:Lcom/narvii/model/User;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const v0, 0x7f09074a

    .line 256
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    .line 257
    iget-object v3, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->userInfo:Lcom/narvii/model/User;

    invoke-virtual {v0, v3}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 258
    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippingConfirmTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0f10bf

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->userInfo:Lcom/narvii/model/User;

    invoke-virtual {v6}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->customTippingIcon:Lcom/narvii/widget/NVImageView;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->customTippingOption:Lcom/narvii/model/TippingOption;

    if-eqz v3, :cond_2

    .line 263
    iget-object v3, v3, Lcom/narvii/model/TippingOption;->icon:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 265
    :cond_2
    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->customTippingPriceInput:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0f10bd

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->minTippingPrice:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    iget v1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->maxTippingPrice:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateWallet()V
    .locals 4

    const v0, 0x7f090c43

    .line 312
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 316
    :cond_0
    sget-object v1, Lcom/narvii/util/text/TextUtils;->numberFormat:Ljava/text/NumberFormat;

    iget-object v2, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->membership:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {v2}, Lcom/narvii/wallet/MembershipService;->walletBalance()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 415
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const p1, 0x7fffffff

    .line 419
    :goto_0
    iget v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->maxTippingPrice:I

    if-gt p1, v0, :cond_1

    iget v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->minTippingPrice:I

    if-ge p1, v0, :cond_0

    goto :goto_1

    .line 422
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->customTippingPriceInput:Landroid/widget/EditText;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_2

    .line 420
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->customTippingPriceInput:Landroid/widget/EditText;

    const/high16 v0, -0x10000

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 424
    :goto_2
    sget p1, Lcom/narvii/monetization/store/TippingConfirmDialog;->TIPPING_SELECT_CUSTOM:I

    invoke-direct {p0, p1}, Lcom/narvii/monetization/store/TippingConfirmDialog;->updatePrice(I)V

    const/4 p1, 0x0

    .line 425
    iput-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippingTransactionId:Ljava/lang/String;

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public dismiss()V
    .locals 2

    .line 467
    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippingContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    invoke-static {p0}, Lcom/narvii/monetization/store/TippingConfirmDialog;->access$401(Lcom/narvii/monetization/store/TippingConfirmDialog;)V

    return-void

    .line 471
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010040

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 472
    new-instance v1, Lcom/narvii/monetization/store/TippingConfirmDialog$4;

    invoke-direct {v1, p0}, Lcom/narvii/monetization/store/TippingConfirmDialog$4;-><init>(Lcom/narvii/monetization/store/TippingConfirmDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 488
    iget-object v1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippingContentView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public doSubmit()V
    .locals 5

    .line 502
    invoke-direct {p0}, Lcom/narvii/monetization/store/TippingConfirmDialog;->getTargetTippingPrice()I

    move-result v0

    .line 503
    sget-object v1, Lcom/narvii/logging/ActSemantic;->purchase:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, v1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    const-string v2, "SendButton"

    invoke-virtual {v1, v2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->userInfo:Lcom/narvii/model/User;

    invoke-virtual {v1, v2}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "amount"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 505
    invoke-direct {p0}, Lcom/narvii/monetization/store/TippingConfirmDialog;->getTippableNdcId()I

    move-result v1

    .line 506
    iget-object v2, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->nvContext:Lcom/narvii/app/NVContext;

    const-string v3, "affiliations"

    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/community/AffiliationsService;

    if-eqz v1, :cond_0

    .line 507
    invoke-virtual {v2, v1}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 508
    invoke-direct {p0}, Lcom/narvii/monetization/store/TippingConfirmDialog;->showJoinCommunityDialog()V

    return-void

    .line 512
    :cond_0
    iget v1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->minTippingPrice:I

    if-ge v0, v1, :cond_1

    return-void

    .line 516
    :cond_1
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 517
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 519
    iget-object v2, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippable:Lcom/narvii/model/Tippable;

    instance-of v3, v2, Lcom/narvii/model/CommunityObjectInGlobal;

    if-eqz v3, :cond_2

    .line 520
    check-cast v2, Lcom/narvii/model/CommunityObjectInGlobal;

    invoke-interface {v2}, Lcom/narvii/model/CommunityObjectInGlobal;->getNdcId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 524
    :cond_2
    iget-object v2, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippable:Lcom/narvii/model/Tippable;

    instance-of v3, v2, Lcom/narvii/model/Item;

    const-string v4, "/tipping"

    if-eqz v3, :cond_3

    .line 525
    invoke-virtual {v1, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 526
    iget-object v2, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippable:Lcom/narvii/model/Tippable;

    instance-of v3, v2, Lcom/narvii/model/NVObject;

    if-eqz v3, :cond_5

    .line 527
    check-cast v2, Lcom/narvii/model/NVObject;

    invoke-virtual {v2}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v2

    const-string v3, "objectId"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 528
    iget-object v2, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippable:Lcom/narvii/model/Tippable;

    check-cast v2, Lcom/narvii/model/NVObject;

    invoke-virtual {v2}, Lcom/narvii/model/NVObject;->objectType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "objectType"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    goto :goto_0

    .line 530
    :cond_3
    instance-of v2, v2, Lcom/narvii/model/NVObject;

    if-eqz v2, :cond_4

    .line 531
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippable:Lcom/narvii/model/Tippable;

    check-cast v3, Lcom/narvii/model/NVObject;

    invoke-virtual {v3}, Lcom/narvii/model/NVObject;->apiTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippable:Lcom/narvii/model/Tippable;

    check-cast v3, Lcom/narvii/model/NVObject;

    invoke-virtual {v3}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    goto :goto_0

    :cond_4
    const-string v2, "unknown tippable"

    .line 533
    invoke-static {v2}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 536
    :cond_5
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "coins"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 537
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v2

    .line 538
    iget-object v3, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippingTransactionId:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 539
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippingTransactionId:Ljava/lang/String;

    .line 541
    :cond_6
    iget-object v3, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippingTransactionId:Ljava/lang/String;

    const-string v4, "transactionId"

    invoke-virtual {v2, v4, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v3, "tippingContext"

    .line 542
    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const/16 v2, 0xe6

    .line 543
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->selfHandleErrorCode(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 545
    iget-object v2, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->confirm:Lcom/narvii/widget/PurchaseConfirmButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/narvii/widget/PurchaseConfirmButton;->updateSendingStatus(Z)V

    .line 546
    iget-object v2, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->nvContext:Lcom/narvii/app/NVContext;

    const-string v3, "api"

    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 547
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    new-instance v3, Lcom/narvii/monetization/store/TippingConfirmDialog$5;

    const-class v4, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {v3, p0, v4, v0}, Lcom/narvii/monetization/store/TippingConfirmDialog$5;-><init>(Lcom/narvii/monetization/store/TippingConfirmDialog;Ljava/lang/Class;I)V

    invoke-virtual {v2, v1, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 246
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "PropsGivingDialog"

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 350
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 352
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 353
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 354
    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->customTippingPriceInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 355
    invoke-direct {p0, p1}, Lcom/narvii/monetization/store/TippingConfirmDialog;->updatePrice(I)V

    .line 356
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->customTippingPriceInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    .line 357
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->customTippingPriceInput:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/widget/EditText;)V

    goto/16 :goto_0

    .line 385
    :sswitch_1
    sget-object p1, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "PropsGiverList"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 386
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippingHelper:Lcom/narvii/tipping/TippingHelper;

    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippable:Lcom/narvii/model/Tippable;

    invoke-virtual {p1, v0, v1}, Lcom/narvii/tipping/TippingHelper;->openTippingList(Lcom/narvii/model/Tippable;Lcom/narvii/model/Community;)V

    goto :goto_0

    .line 365
    :sswitch_2
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->userInfo:Lcom/narvii/model/User;

    if-nez p1, :cond_1

    return-void

    .line 368
    :cond_1
    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->nvContext:Lcom/narvii/app/NVContext;

    invoke-static {v0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    .line 369
    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->userInfo:Lcom/narvii/model/User;

    iget v0, v0, Lcom/narvii/model/User;->ndcId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    const-string v1, "__communityId"

    .line 370
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 373
    :cond_2
    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->communityHelper:Lcom/narvii/community/CommunityHelper;

    iget-object v1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->userInfo:Lcom/narvii/model/User;

    iget v1, v1, Lcom/narvii/model/User;->ndcId:I

    invoke-virtual {v0, v1}, Lcom/narvii/community/CommunityHelper;->checkCommunityJoined(I)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 376
    :cond_3
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 396
    :sswitch_3
    sget-object p1, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "GetCoinsButton"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    const/4 p1, 0x0

    .line 397
    invoke-direct {p0, p1}, Lcom/narvii/monetization/store/TippingConfirmDialog;->showPurchaseCoinDialog(Z)V

    goto :goto_0

    .line 361
    :sswitch_4
    sget p1, Lcom/narvii/monetization/store/TippingConfirmDialog;->TIPPING_SELECT_CUSTOM:I

    invoke-direct {p0, p1}, Lcom/narvii/monetization/store/TippingConfirmDialog;->updatePrice(I)V

    .line 362
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->customTippingPriceInput:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->showSoftKeyboard(Landroid/widget/EditText;)V

    goto :goto_0

    .line 389
    :sswitch_5
    iget-boolean p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->isKeyboardOn:Z

    if-eqz p1, :cond_4

    .line 390
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->customTippingPriceInput:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/widget/EditText;)V

    goto :goto_0

    .line 392
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/monetization/store/TippingConfirmDialog;->dismiss()V

    goto :goto_0

    .line 381
    :sswitch_6
    const-class p1, Lcom/narvii/wallet/WalletRecyclerFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 382
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_5
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09009f -> :sswitch_6
        0x7f0900e3 -> :sswitch_6
        0x7f090255 -> :sswitch_5
        0x7f090327 -> :sswitch_4
        0x7f0904cb -> :sswitch_3
        0x7f09074a -> :sswitch_2
        0x7f090b94 -> :sswitch_1
        0x7f090b96 -> :sswitch_0
        0x7f090c43 -> :sswitch_6
    .end sparse-switch
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 461
    sget p1, Lcom/narvii/monetization/store/TippingConfirmDialog;->TIPPING_SELECT_CUSTOM:I

    invoke-direct {p0, p1}, Lcom/narvii/monetization/store/TippingConfirmDialog;->updatePrice(I)V

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public setTipSuccessListener(Lcom/narvii/monetization/store/TippingConfirmDialog$TipSuccessListener;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tipSuccessListener:Lcom/narvii/monetization/store/TippingConfirmDialog$TipSuccessListener;

    return-void
.end method

.method public show()V
    .locals 2

    .line 235
    invoke-direct {p0}, Lcom/narvii/monetization/store/TippingConfirmDialog;->updateViews()V

    .line 236
    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->membership:Lcom/narvii/wallet/MembershipService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/narvii/wallet/MembershipService;->refreshWallet(Z)V

    .line 237
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->show()V

    .line 238
    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippingContentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 239
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01003b

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 240
    iget-object v1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippingContentView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
