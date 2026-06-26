.class public Lcom/narvii/achievements/StreakRepairDialog;
.super Lcom/narvii/app/NVDialog;
.source "StreakRepairDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/achievements/StreakRepairDialog$StreakRepairListener;
    }
.end annotation


# static fields
.field private static final CHOICE_1:I = 0x1

.field private static final CHOICE_2:I = 0x2

.field private static final REPAIR_METHOD_COIN:I = 0x1

.field private static final REPAIR_METHOD_MEMBERSHIP:I = 0x2


# instance fields
.field anyFixed:Z

.field apiService:Lcom/narvii/util/http/ApiService;

.field private btnClose:Landroid/view/View;

.field private btnFixRepair:Landroid/view/View;

.field checkInHistory:Lcom/narvii/model/CheckInHistory;

.field private choice1Container:Landroid/view/View;

.field private choice2Container:Landroid/view/View;

.field private chxChoice1:Landroid/widget/CheckBox;

.field private chxChoice2:Landroid/widget/CheckBox;

.field private content:Landroid/view/View;

.field private ctx:Lcom/narvii/app/NVContext;

.field private curChoice:I

.field private earnFreeCoins:Landroid/widget/TextView;

.field private fixContainer1:Landroid/view/View;

.field private fixContainerFixing:Landroid/view/View;

.field private isFixing:Z

.field private isStrikeRepairFinished:Z

.field localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

.field membershipService:Lcom/narvii/wallet/MembershipService;

.field private ongoingContainer:Landroid/view/View;

.field receiver:Landroid/content/BroadcastReceiver;

.field private repairDoneContainer:Landroid/view/View;

.field repairStreakRequest:Lcom/narvii/util/http/ApiRequest;

.field private root:Landroid/view/View;

.field private semiProgressDrawable:Lcom/narvii/widget/SemiProgressDrawable;

.field private showingFixAnimation:Z

.field public source:Ljava/lang/String;

.field streakRepairLayout:Lcom/narvii/checkin/CheckInStreakRepairLayout;

.field streakRepairListener:Lcom/narvii/achievements/StreakRepairDialog$StreakRepairListener;

.field tvChoiceHint2:Landroid/widget/TextView;

.field private tvLearnMore:Landroid/widget/TextView;

.field walletChangeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/CheckInHistory;)V
    .locals 3

    const v0, 0x7f1000ce

    .line 116
    invoke-direct {p0, p1, v0}, Lcom/narvii/app/NVDialog;-><init>(Lcom/narvii/app/NVContext;I)V

    const/4 v0, 0x1

    .line 86
    iput v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->curChoice:I

    .line 92
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    .line 178
    new-instance v0, Lcom/narvii/achievements/StreakRepairDialog$2;

    invoke-direct {v0, p0}, Lcom/narvii/achievements/StreakRepairDialog$2;-><init>(Lcom/narvii/achievements/StreakRepairDialog;)V

    iput-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->receiver:Landroid/content/BroadcastReceiver;

    .line 187
    new-instance v0, Lcom/narvii/achievements/StreakRepairDialog$3;

    invoke-direct {v0, p0}, Lcom/narvii/achievements/StreakRepairDialog$3;-><init>(Lcom/narvii/achievements/StreakRepairDialog;)V

    iput-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->walletChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 117
    iput-object p1, p0, Lcom/narvii/achievements/StreakRepairDialog;->ctx:Lcom/narvii/app/NVContext;

    .line 118
    iput-object p2, p0, Lcom/narvii/achievements/StreakRepairDialog;->checkInHistory:Lcom/narvii/model/CheckInHistory;

    const v0, 0x7f0b01bc

    .line 119
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v0, "membership"

    .line 120
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/wallet/MembershipService;

    iput-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->membershipService:Lcom/narvii/wallet/MembershipService;

    const-string v0, "api"

    .line 121
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    iput-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->apiService:Lcom/narvii/util/http/ApiService;

    const v0, 0x7f09098b

    .line 123
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0902d0

    .line 124
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090237

    .line 126
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/narvii/achievements/StreakRepairDialog;->choice1Container:Landroid/view/View;

    const v2, 0x7f09023a

    .line 127
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/narvii/achievements/StreakRepairDialog;->choice2Container:Landroid/view/View;

    .line 128
    iget-object v2, p0, Lcom/narvii/achievements/StreakRepairDialog;->choice1Container:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v2, p0, Lcom/narvii/achievements/StreakRepairDialog;->choice2Container:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090238

    .line 130
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/narvii/achievements/StreakRepairDialog;->chxChoice1:Landroid/widget/CheckBox;

    const v2, 0x7f09023b

    .line 131
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/narvii/achievements/StreakRepairDialog;->chxChoice2:Landroid/widget/CheckBox;

    const v2, 0x7f09023c

    .line 132
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/narvii/achievements/StreakRepairDialog;->tvChoiceHint2:Landroid/widget/TextView;

    const v2, 0x7f09064e

    .line 133
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/narvii/achievements/StreakRepairDialog;->tvLearnMore:Landroid/widget/TextView;

    const v2, 0x7f090474

    .line 134
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/narvii/achievements/StreakRepairDialog;->btnFixRepair:Landroid/view/View;

    const v2, 0x7f0903b7

    .line 135
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/narvii/achievements/StreakRepairDialog;->earnFreeCoins:Landroid/widget/TextView;

    .line 136
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->root:Landroid/view/View;

    .line 137
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->content:Landroid/view/View;

    .line 138
    iget-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->btnFixRepair:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09025e

    .line 139
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->btnClose:Landroid/view/View;

    .line 140
    iget-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->btnClose:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0907ad

    .line 142
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->ongoingContainer:Landroid/view/View;

    const v0, 0x7f090957

    .line 143
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->repairDoneContainer:Landroid/view/View;

    const v0, 0x7f090221

    .line 145
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/checkin/CheckInStreakRepairLayout;

    iput-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->streakRepairLayout:Lcom/narvii/checkin/CheckInStreakRepairLayout;

    .line 146
    new-instance v0, Lcom/narvii/checkin/CheckInHelper;

    invoke-direct {v0, p1}, Lcom/narvii/checkin/CheckInHelper;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {v0, p2}, Lcom/narvii/checkin/CheckInHelper;->getStreakRepairCellList(Lcom/narvii/model/CheckInHistory;)Ljava/util/List;

    move-result-object p1

    .line 147
    iget-object p2, p0, Lcom/narvii/achievements/StreakRepairDialog;->streakRepairLayout:Lcom/narvii/checkin/CheckInStreakRepairLayout;

    invoke-virtual {p2, p1}, Lcom/narvii/checkin/CheckInStreakRepairLayout;->updateCells(Ljava/util/List;)V

    .line 149
    new-instance p1, Lcom/narvii/widget/SemiProgressDrawable;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v0

    const/4 v1, -0x1

    invoke-direct {p1, p2, v1, v0}, Lcom/narvii/widget/SemiProgressDrawable;-><init>(Landroid/content/Context;II)V

    iput-object p1, p0, Lcom/narvii/achievements/StreakRepairDialog;->semiProgressDrawable:Lcom/narvii/widget/SemiProgressDrawable;

    const p1, 0x7f090472

    .line 151
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/achievements/StreakRepairDialog;->fixContainer1:Landroid/view/View;

    const p1, 0x7f090473

    .line 152
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/achievements/StreakRepairDialog;->fixContainerFixing:Landroid/view/View;

    const p1, 0x7f090476

    .line 153
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/narvii/achievements/StreakRepairDialog;->semiProgressDrawable:Lcom/narvii/widget/SemiProgressDrawable;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 157
    new-instance p1, Lcom/narvii/achievements/StreakRepairDialog$1;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f06007e

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-direct {p1, p0, p2}, Lcom/narvii/achievements/StreakRepairDialog$1;-><init>(Lcom/narvii/achievements/StreakRepairDialog;I)V

    .line 165
    new-instance p2, Landroid/text/SpannableString;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0acc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 166
    invoke-virtual {p2}, Landroid/text/SpannableString;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x21

    invoke-virtual {p2, p1, v1, v0, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 167
    iget-object p1, p0, Lcom/narvii/achievements/StreakRepairDialog;->tvLearnMore:Landroid/widget/TextView;

    invoke-static {}, Lcom/narvii/util/text/LinkTouchMovementMethod;->getInstance()Lcom/narvii/util/text/LinkTouchMovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 168
    iget-object p1, p0, Lcom/narvii/achievements/StreakRepairDialog;->tvLearnMore:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    invoke-direct {p0}, Lcom/narvii/achievements/StreakRepairDialog;->updateViewsWhenCheckBoxChange()V

    .line 171
    invoke-direct {p0}, Lcom/narvii/achievements/StreakRepairDialog;->updateContainers()V

    .line 172
    invoke-direct {p0}, Lcom/narvii/achievements/StreakRepairDialog;->updateEarnFreeCoinsContent()V

    .line 173
    iget-object p1, p0, Lcom/narvii/achievements/StreakRepairDialog;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object p2, p0, Lcom/narvii/achievements/StreakRepairDialog;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.narvii.action.MEMBERSHIP_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 174
    iget-object p1, p0, Lcom/narvii/achievements/StreakRepairDialog;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object p2, p0, Lcom/narvii/achievements/StreakRepairDialog;->walletChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.narvii.action.WALLET_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/achievements/StreakRepairDialog;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/narvii/achievements/StreakRepairDialog;->updateViewsWhenCheckBoxChange()V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/achievements/StreakRepairDialog;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/narvii/achievements/StreakRepairDialog;->updateEarnFreeCoinsContent()V

    return-void
.end method

.method static synthetic access$202(Lcom/narvii/achievements/StreakRepairDialog;Z)Z
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/narvii/achievements/StreakRepairDialog;->isFixing:Z

    return p1
.end method

.method static synthetic access$302(Lcom/narvii/achievements/StreakRepairDialog;Z)Z
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/narvii/achievements/StreakRepairDialog;->showingFixAnimation:Z

    return p1
.end method

.method static synthetic access$400(Lcom/narvii/achievements/StreakRepairDialog;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/narvii/achievements/StreakRepairDialog;->ctx:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method static synthetic access$500(Lcom/narvii/achievements/StreakRepairDialog;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/narvii/achievements/StreakRepairDialog;->updateContainers()V

    return-void
.end method

.method static synthetic access$600(Lcom/narvii/achievements/StreakRepairDialog;)I
    .locals 0

    .line 62
    iget p0, p0, Lcom/narvii/achievements/StreakRepairDialog;->curChoice:I

    return p0
.end method

.method static synthetic access$700(Lcom/narvii/achievements/StreakRepairDialog;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/narvii/achievements/StreakRepairDialog;->showCoinNotEnoughDialog()V

    return-void
.end method

.method private fixStreak()V
    .locals 5

    .line 322
    iget-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->repairStreakRequest:Lcom/narvii/util/http/ApiRequest;

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->showingFixAnimation:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 327
    :cond_0
    sget-object v0, Lcom/narvii/logging/ActSemantic;->purchase:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "PurchaseButton"

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    iget v1, p0, Lcom/narvii/achievements/StreakRepairDialog;->curChoice:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v1, "free"

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "useCoins"

    :goto_0
    const-string v3, "purchaseType"

    invoke-virtual {v0, v3, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 329
    iput-boolean v2, p0, Lcom/narvii/achievements/StreakRepairDialog;->isFixing:Z

    .line 330
    invoke-direct {p0}, Lcom/narvii/achievements/StreakRepairDialog;->updateViewsWhenCheckBoxChange()V

    .line 331
    invoke-static {}, Lcom/narvii/util/Utils;->getTimeZoneInMin()I

    move-result v0

    .line 332
    iget v1, p0, Lcom/narvii/achievements/StreakRepairDialog;->curChoice:I

    if-ne v1, v2, :cond_2

    const/4 v2, 0x2

    .line 333
    :cond_2
    new-instance v1, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    const-string v3, "/check-in/repair"

    .line 334
    invoke-virtual {v1, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 335
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v3

    const-string v4, "timezone"

    .line 336
    invoke-virtual {v3, v4, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v0, "repairMethod"

    .line 337
    invoke-virtual {v3, v0, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 338
    invoke-virtual {v1, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->body(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 339
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->repairStreakRequest:Lcom/narvii/util/http/ApiRequest;

    .line 340
    iget-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->apiService:Lcom/narvii/util/http/ApiService;

    iget-object v1, p0, Lcom/narvii/achievements/StreakRepairDialog;->repairStreakRequest:Lcom/narvii/util/http/ApiRequest;

    new-instance v2, Lcom/narvii/achievements/StreakRepairDialog$4;

    const-class v3, Lcom/narvii/checkin/CheckInHistoryResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/achievements/StreakRepairDialog$4;-><init>(Lcom/narvii/achievements/StreakRepairDialog;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private showCoinNotEnoughDialog()V
    .locals 2

    .line 278
    iget-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->ctx:Lcom/narvii/app/NVContext;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/narvii/wallet/PurchaseCoinFragment;->show(Lcom/narvii/app/NVContext;Z)V

    return-void
.end method

.method private skipDetachNextPause()V
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->ctx:Lcom/narvii/app/NVContext;

    if-nez v0, :cond_0

    return-void

    .line 285
    :cond_0
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 286
    instance-of v1, v0, Lcom/narvii/app/DrawerActivity;

    if-eqz v1, :cond_1

    .line 287
    check-cast v0, Lcom/narvii/app/DrawerActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/narvii/app/DrawerActivity;->setSkipDetachNextPause(Z)V

    :cond_1
    return-void
.end method

.method private updateContainers()V
    .locals 4

    .line 307
    invoke-direct {p0}, Lcom/narvii/achievements/StreakRepairDialog;->updatePrice()V

    .line 308
    new-instance v0, Lcom/narvii/checkin/CheckInHelper;

    iget-object v1, p0, Lcom/narvii/achievements/StreakRepairDialog;->ctx:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v1}, Lcom/narvii/checkin/CheckInHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 309
    iget-object v1, p0, Lcom/narvii/achievements/StreakRepairDialog;->checkInHistory:Lcom/narvii/model/CheckInHistory;

    invoke-virtual {v0, v1}, Lcom/narvii/checkin/CheckInHelper;->shouldShowStrikeLost(Lcom/narvii/model/CheckInHistory;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->isStrikeRepairFinished:Z

    .line 310
    iget-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->repairDoneContainer:Landroid/view/View;

    iget-boolean v1, p0, Lcom/narvii/achievements/StreakRepairDialog;->isStrikeRepairFinished:Z

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->ongoingContainer:Landroid/view/View;

    iget-boolean v1, p0, Lcom/narvii/achievements/StreakRepairDialog;->isStrikeRepairFinished:Z

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x4

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateEarnFreeCoinsContent()V
    .locals 6

    .line 292
    iget-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    sget-object v3, Lcom/narvii/util/text/TextUtils;->numberFormat:Ljava/text/NumberFormat;

    iget-object v4, p0, Lcom/narvii/achievements/StreakRepairDialog;->membershipService:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {v4}, Lcom/narvii/wallet/MembershipService;->walletBalance()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f0f0b68

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 293
    iget-object v2, p0, Lcom/narvii/achievements/StreakRepairDialog;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f10c1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 294
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 296
    new-instance v3, Lcom/narvii/util/text/NVText;

    invoke-direct {v3, v0}, Lcom/narvii/util/text/NVText;-><init>(Ljava/lang/CharSequence;)V

    .line 297
    new-instance v0, Lcom/narvii/achievements/-$$Lambda$StreakRepairDialog$5DfuB_PQ1wQM7t-9vDyPjodRVLk;

    invoke-direct {v0, p0}, Lcom/narvii/achievements/-$$Lambda$StreakRepairDialog$5DfuB_PQ1wQM7t-9vDyPjodRVLk;-><init>(Lcom/narvii/achievements/StreakRepairDialog;)V

    invoke-virtual {v3, v2, v0}, Lcom/narvii/util/text/NVText;->markText(Ljava/lang/String;Lcom/narvii/util/text/OnTagClickListener;)I

    .line 301
    iget-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->earnFreeCoins:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 302
    iget-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->earnFreeCoins:Landroid/widget/TextView;

    invoke-static {}, Lcom/narvii/util/text/LinkTouchMovementMethod;->getInstance()Lcom/narvii/util/text/LinkTouchMovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 303
    iget-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->earnFreeCoins:Landroid/widget/TextView;

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method private updatePrice()V
    .locals 3

    .line 315
    iget-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->tvChoiceHint2:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/narvii/achievements/StreakRepairDialog;->checkInHistory:Lcom/narvii/model/CheckInHistory;

    if-nez v1, :cond_0

    goto :goto_0

    .line 318
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/achievements/StreakRepairDialog;->checkInHistory:Lcom/narvii/model/CheckInHistory;

    iget v2, v2, Lcom/narvii/model/CheckInHistory;->streakRepairCoinCost:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateViewsWhenCheckBoxChange()V
    .locals 5

    .line 262
    iget-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->chxChoice1:Landroid/widget/CheckBox;

    iget v1, p0, Lcom/narvii/achievements/StreakRepairDialog;->curChoice:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 263
    iget-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->chxChoice2:Landroid/widget/CheckBox;

    iget v1, p0, Lcom/narvii/achievements/StreakRepairDialog;->curChoice:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 265
    iget-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->choice1Container:Landroid/view/View;

    iget-boolean v1, p0, Lcom/narvii/achievements/StreakRepairDialog;->isFixing:Z

    xor-int/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 266
    iget-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->choice2Container:Landroid/view/View;

    iget-boolean v1, p0, Lcom/narvii/achievements/StreakRepairDialog;->isFixing:Z

    xor-int/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 268
    iget-boolean v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->isFixing:Z

    if-eqz v0, :cond_2

    .line 269
    iget-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->semiProgressDrawable:Lcom/narvii/widget/SemiProgressDrawable;

    invoke-virtual {v0}, Lcom/narvii/widget/SemiProgressDrawable;->start()V

    goto :goto_2

    .line 271
    :cond_2
    iget-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->semiProgressDrawable:Lcom/narvii/widget/SemiProgressDrawable;

    invoke-virtual {v0}, Lcom/narvii/widget/SemiProgressDrawable;->stop()V

    .line 273
    :goto_2
    iget-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->fixContainerFixing:Landroid/view/View;

    iget-boolean v1, p0, Lcom/narvii/achievements/StreakRepairDialog;->isFixing:Z

    const/4 v3, 0x4

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    const/4 v1, 0x4

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->fixContainer1:Landroid/view/View;

    iget-boolean v1, p0, Lcom/narvii/achievements/StreakRepairDialog;->isFixing:Z

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    const/4 v2, 0x4

    :goto_4
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 4

    .line 217
    iget-boolean v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->anyFixed:Z

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 219
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.narvii.action.ACTION_STREAK_REPAIR_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 220
    iget-object v2, p0, Lcom/narvii/achievements/StreakRepairDialog;->ctx:Lcom/narvii/app/NVContext;

    const-string v3, "config"

    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/config/ConfigService;

    .line 221
    invoke-virtual {v2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v2

    const-string v3, "cid"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 222
    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 224
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010040

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 225
    iget-object v1, p0, Lcom/narvii/achievements/StreakRepairDialog;->content:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 226
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    return-void
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "FixCheckInStreak"

    return-object v0
.end method

.method public synthetic lambda$updateEarnFreeCoinsContent$0$StreakRepairDialog(Landroid/view/View;Lcom/narvii/util/text/NVText;ILjava/lang/String;)V
    .locals 0

    .line 298
    sget-object p1, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string p2, "GetCoinsButton"

    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 299
    iget-object p1, p0, Lcom/narvii/achievements/StreakRepairDialog;->ctx:Lcom/narvii/app/NVContext;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/narvii/wallet/PurchaseCoinFragment;->show(Lcom/narvii/app/NVContext;Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 231
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 242
    :sswitch_0
    iget p1, p0, Lcom/narvii/achievements/StreakRepairDialog;->curChoice:I

    if-ne p1, v0, :cond_1

    .line 243
    iget-object p1, p0, Lcom/narvii/achievements/StreakRepairDialog;->membershipService:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 244
    invoke-direct {p0}, Lcom/narvii/achievements/StreakRepairDialog;->fixStreak()V

    goto :goto_0

    .line 246
    :cond_0
    new-instance p1, Lcom/narvii/membership/MembershipHelper;

    iget-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->ctx:Lcom/narvii/app/NVContext;

    invoke-direct {p1, v0}, Lcom/narvii/membership/MembershipHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 247
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0aa2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/narvii/membership/MembershipHelper;->showJoinAminoPlusDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 250
    :cond_1
    invoke-direct {p0}, Lcom/narvii/achievements/StreakRepairDialog;->fixStreak()V

    goto :goto_0

    .line 255
    :sswitch_1
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    goto :goto_0

    :sswitch_2
    const/4 p1, 0x2

    .line 238
    iput p1, p0, Lcom/narvii/achievements/StreakRepairDialog;->curChoice:I

    .line 239
    invoke-direct {p0}, Lcom/narvii/achievements/StreakRepairDialog;->updateViewsWhenCheckBoxChange()V

    goto :goto_0

    .line 234
    :sswitch_3
    iput v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->curChoice:I

    .line 235
    invoke-direct {p0}, Lcom/narvii/achievements/StreakRepairDialog;->updateViewsWhenCheckBoxChange()V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090237 -> :sswitch_3
        0x7f090239 -> :sswitch_3
        0x7f09023a -> :sswitch_2
        0x7f09025e -> :sswitch_1
        0x7f090474 -> :sswitch_0
        0x7f09098b -> :sswitch_1
    .end sparse-switch
.end method

.method protected onStop()V
    .locals 2

    .line 210
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 211
    iget-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/narvii/achievements/StreakRepairDialog;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 212
    iget-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/narvii/achievements/StreakRepairDialog;->walletChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public setStreakRepairListener(Lcom/narvii/achievements/StreakRepairDialog$StreakRepairListener;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/narvii/achievements/StreakRepairDialog;->streakRepairListener:Lcom/narvii/achievements/StreakRepairDialog$StreakRepairListener;

    return-void
.end method

.method public show()V
    .locals 2

    .line 200
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->show()V

    .line 201
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01003b

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 202
    iget-object v1, p0, Lcom/narvii/achievements/StreakRepairDialog;->content:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
