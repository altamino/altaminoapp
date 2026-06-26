.class Lcom/narvii/invite/InviteMembersFragment$Adapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "InviteMembersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/invite/InviteMembersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation


# instance fields
.field public cell:Landroid/view/View;

.field public error:Ljava/lang/String;

.field response:Lcom/narvii/invite/NewInvitationResponse;

.field final synthetic this$0:Lcom/narvii/invite/InviteMembersFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/invite/InviteMembersFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->this$0:Lcom/narvii/invite/InviteMembersFragment;

    .line 157
    invoke-direct {p0, p2}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/invite/InviteMembersFragment$Adapter;Landroid/widget/TextView;Lcom/narvii/invite/Invitation;)V
    .locals 0

    .line 150
    invoke-direct {p0, p1, p2}, Lcom/narvii/invite/InviteMembersFragment$Adapter;->updateCountDownText(Landroid/widget/TextView;Lcom/narvii/invite/Invitation;)V

    return-void
.end method

.method static synthetic access$300(Lcom/narvii/invite/InviteMembersFragment$Adapter;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Lcom/narvii/invite/InviteMembersFragment$Adapter;->regenerate()V

    return-void
.end method

.method private getRemainingTime()J
    .locals 4

    .line 245
    iget-object v0, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->response:Lcom/narvii/invite/NewInvitationResponse;

    iget-object v0, v0, Lcom/narvii/invite/NewInvitationResponse;->communityInvitation:Lcom/narvii/invite/Invitation;

    iget-object v0, v0, Lcom/narvii/invite/Invitation;->createdTime:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->response:Lcom/narvii/invite/NewInvitationResponse;

    iget-object v2, v2, Lcom/narvii/invite/NewInvitationResponse;->communityInvitation:Lcom/narvii/invite/Invitation;

    iget v2, v2, Lcom/narvii/invite/Invitation;->duration:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private isExpired()Z
    .locals 5

    .line 250
    iget-object v0, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->response:Lcom/narvii/invite/NewInvitationResponse;

    iget-object v0, v0, Lcom/narvii/invite/NewInvitationResponse;->communityInvitation:Lcom/narvii/invite/Invitation;

    iget v0, v0, Lcom/narvii/invite/Invitation;->duration:I

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/narvii/invite/InviteMembersFragment$Adapter;->getRemainingTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private regenerate()V
    .locals 4

    .line 336
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 337
    sget v1, Lcom/narvii/lib/R$string;->regenerate_link_title:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 338
    iget-object v1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->this$0:Lcom/narvii/invite/InviteMembersFragment;

    iget-object v1, v1, Lcom/narvii/invite/InviteMembersFragment;->linkedHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 339
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    .line 340
    invoke-virtual {v0, v2, v3}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(Ljava/lang/String;Z)V

    goto :goto_0

    .line 342
    :cond_0
    new-instance v1, Lcom/narvii/invite/InviteMembersFragment$Adapter$3;

    invoke-direct {v1, p0}, Lcom/narvii/invite/InviteMembersFragment$Adapter$3;-><init>(Lcom/narvii/invite/InviteMembersFragment$Adapter;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 376
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    return-void
.end method

.method private showDialogIfExpired()Z
    .locals 4

    .line 270
    invoke-direct {p0}, Lcom/narvii/invite/InviteMembersFragment$Adapter;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    new-instance v1, Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 273
    iget-object v2, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->this$0:Lcom/narvii/invite/InviteMembersFragment;

    sget v3, Lcom/narvii/lib/R$string;->link_expired:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 274
    sget v2, Lcom/narvii/lib/R$string;->generate:I

    new-instance v3, Lcom/narvii/invite/InviteMembersFragment$Adapter$2;

    invoke-direct {v3, p0}, Lcom/narvii/invite/InviteMembersFragment$Adapter$2;-><init>(Lcom/narvii/invite/InviteMembersFragment$Adapter;)V

    invoke-virtual {v1, v2, v3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 280
    invoke-virtual {v1}, Lcom/narvii/app/NVDialog;->show()V

    :cond_0
    return v0
.end method

.method private updateCountDownText(Landroid/widget/TextView;Lcom/narvii/invite/Invitation;)V
    .locals 5

    const p2, -0x646465

    .line 254
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 255
    iget-object p2, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->response:Lcom/narvii/invite/NewInvitationResponse;

    iget-object p2, p2, Lcom/narvii/invite/NewInvitationResponse;->communityInvitation:Lcom/narvii/invite/Invitation;

    iget p2, p2, Lcom/narvii/invite/Invitation;->duration:I

    const-string v0, " "

    if-lez p2, :cond_1

    .line 256
    invoke-direct {p0}, Lcom/narvii/invite/InviteMembersFragment$Adapter;->getRemainingTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-gtz p2, :cond_0

    .line 258
    sget p2, Lcom/narvii/lib/R$string;->expired:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    const/high16 p2, -0x10000

    .line 259
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 261
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->this$0:Lcom/narvii/invite/InviteMembersFragment;

    sget v4, Lcom/narvii/lib/R$string;->expires_in:I

    invoke-virtual {v3, v4}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->this$0:Lcom/narvii/invite/InviteMembersFragment;

    iget-object v0, v0, Lcom/narvii/invite/InviteMembersFragment;->dateTimeFormatter:Lcom/narvii/util/DateTimeFormatter;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Lcom/narvii/util/DateTimeFormatter;->formatExpireCountDown(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 265
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->this$0:Lcom/narvii/invite/InviteMembersFragment;

    sget v2, Lcom/narvii/lib/R$string;->expires_in:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->this$0:Lcom/narvii/invite/InviteMembersFragment;

    sget v1, Lcom/narvii/lib/R$string;->never:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public errorMessage()Ljava/lang/String;
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 3

    .line 162
    sget v0, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/4 v1, 0x0

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_1

    .line 163
    iget-object v0, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->this$0:Lcom/narvii/invite/InviteMembersFragment;

    iget-object v0, v0, Lcom/narvii/invite/InviteMembersFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->getInvitePermissionType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->this$0:Lcom/narvii/invite/InviteMembersFragment;

    invoke-static {v0}, Lcom/narvii/invite/InviteMembersFragment;->access$000(Lcom/narvii/invite/InviteMembersFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->error:Ljava/lang/String;

    if-eqz v0, :cond_2

    return v1

    .line 172
    :cond_2
    invoke-super {p0}, Lcom/narvii/list/AdriftAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 177
    iget-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->cell:Landroid/view/View;

    if-nez p1, :cond_0

    .line 178
    sget p1, Lcom/narvii/lib/R$layout;->layout_invite_members:I

    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->cell:Landroid/view/View;

    .line 180
    :cond_0
    iget-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->response:Lcom/narvii/invite/NewInvitationResponse;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/narvii/invite/NewInvitationResponse;->communityInvitation:Lcom/narvii/invite/Invitation;

    if-eqz p1, :cond_5

    .line 182
    iget-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->cell:Landroid/view/View;

    sget p2, Lcom/narvii/lib/R$id;->code:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 183
    iget-object p2, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->response:Lcom/narvii/invite/NewInvitationResponse;

    iget-object p2, p2, Lcom/narvii/invite/NewInvitationResponse;->communityInvitation:Lcom/narvii/invite/Invitation;

    iget-object p2, p2, Lcom/narvii/invite/Invitation;->inviteCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->cell:Landroid/view/View;

    sget p2, Lcom/narvii/lib/R$id;->link:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 186
    iget-object p2, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->response:Lcom/narvii/invite/NewInvitationResponse;

    iget-object p2, p2, Lcom/narvii/invite/NewInvitationResponse;->communityInvitation:Lcom/narvii/invite/Invitation;

    iget-object p2, p2, Lcom/narvii/invite/Invitation;->link:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->cell:Landroid/view/View;

    sget p2, Lcom/narvii/lib/R$id;->share:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 189
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->cell:Landroid/view/View;

    sget p2, Lcom/narvii/lib/R$id;->text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object p2, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->this$0:Lcom/narvii/invite/InviteMembersFragment;

    invoke-static {p2}, Lcom/narvii/invite/InviteMembersFragment;->access$100(Lcom/narvii/invite/InviteMembersFragment;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 193
    iget-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->cell:Landroid/view/View;

    sget p2, Lcom/narvii/lib/R$id;->contact:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->cell:Landroid/view/View;

    sget p2, Lcom/narvii/lib/R$id;->invite_history:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 196
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    invoke-static {p1}, Lcom/narvii/util/ViewUtils;->underlineTextView(Landroid/widget/TextView;)V

    .line 199
    iget-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->cell:Landroid/view/View;

    sget p2, Lcom/narvii/lib/R$id;->valid_links:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 200
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    invoke-static {p1}, Lcom/narvii/util/ViewUtils;->underlineTextView(Landroid/widget/TextView;)V

    .line 204
    iget-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->cell:Landroid/view/View;

    sget p2, Lcom/narvii/lib/R$id;->count_down:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/widget/TextView;

    .line 205
    iget-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->cell:Landroid/view/View;

    sget p2, Lcom/narvii/lib/R$id;->regenerate:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 206
    invoke-static {p1}, Lcom/narvii/util/ViewUtils;->underlineTextView(Landroid/widget/TextView;)V

    .line 207
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->cell:Landroid/view/View;

    sget p2, Lcom/narvii/lib/R$id;->link_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    iget-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->this$0:Lcom/narvii/invite/InviteMembersFragment;

    iget-object p1, p1, Lcom/narvii/invite/InviteMembersFragment;->countDownTimer:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_1

    .line 212
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    :cond_1
    const p1, -0x646465

    .line 214
    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 215
    iget-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->response:Lcom/narvii/invite/NewInvitationResponse;

    iget-object p1, p1, Lcom/narvii/invite/NewInvitationResponse;->communityInvitation:Lcom/narvii/invite/Invitation;

    iget p2, p1, Lcom/narvii/invite/Invitation;->duration:I

    if-eqz p2, :cond_2

    .line 216
    invoke-direct {p0}, Lcom/narvii/invite/InviteMembersFragment$Adapter;->getRemainingTime()J

    move-result-wide v2

    .line 217
    iget-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->this$0:Lcom/narvii/invite/InviteMembersFragment;

    new-instance p2, Lcom/narvii/invite/InviteMembersFragment$Adapter$1;

    const-wide/16 v4, 0x1f4

    move-object v0, p2

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/narvii/invite/InviteMembersFragment$Adapter$1;-><init>(Lcom/narvii/invite/InviteMembersFragment$Adapter;JJLandroid/widget/TextView;)V

    iput-object p2, p1, Lcom/narvii/invite/InviteMembersFragment;->countDownTimer:Landroid/os/CountDownTimer;

    .line 228
    iget-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->this$0:Lcom/narvii/invite/InviteMembersFragment;

    iget-object p1, p1, Lcom/narvii/invite/InviteMembersFragment;->countDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_0

    .line 230
    :cond_2
    invoke-direct {p0, v6, p1}, Lcom/narvii/invite/InviteMembersFragment$Adapter;->updateCountDownText(Landroid/widget/TextView;Lcom/narvii/invite/Invitation;)V

    .line 233
    :goto_0
    sget p1, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 p2, 0xc8

    const/4 p3, 0x0

    if-eq p1, p2, :cond_4

    .line 234
    iget-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->this$0:Lcom/narvii/invite/InviteMembersFragment;

    invoke-static {p1}, Lcom/narvii/invite/InviteMembersFragment;->access$000(Lcom/narvii/invite/InviteMembersFragment;)Z

    move-result p1

    .line 235
    iget-object p2, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->cell:Landroid/view/View;

    sget v0, Lcom/narvii/lib/R$id;->leader_controller:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/16 p3, 0x8

    :goto_1
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 237
    :cond_4
    iget-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->cell:Landroid/view/View;

    sget p2, Lcom/narvii/lib/R$id;->leader_controller:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 240
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->cell:Landroid/view/View;

    return-object p1
.end method

.method public isListShown()Z
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->response:Lcom/narvii/invite/NewInvitationResponse;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->error:Ljava/lang/String;

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

    .line 381
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 383
    invoke-virtual {p0}, Lcom/narvii/invite/InviteMembersFragment$Adapter;->sendRequest()V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 8

    if-eqz p5, :cond_7

    const-string v0, "community"

    .line 289
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/CommunityService;

    .line 290
    iget-object v1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->this$0:Lcom/narvii/invite/InviteMembersFragment;

    const-string v2, "__communityId"

    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v0

    .line 291
    iget-object v1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->this$0:Lcom/narvii/invite/InviteMembersFragment;

    iget-object v1, v1, Lcom/narvii/invite/InviteMembersFragment;->inviteFriendHelper:Lcom/narvii/invite/InviteFriendHelper;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->response:Lcom/narvii/invite/NewInvitationResponse;

    iget-object v4, v4, Lcom/narvii/invite/NewInvitationResponse;->communityInvitation:Lcom/narvii/invite/Invitation;

    invoke-virtual {v1, v3, v0, v4}, Lcom/narvii/invite/InviteFriendHelper;->getSharePayload(Landroid/content/Context;Lcom/narvii/model/Community;Lcom/narvii/invite/Invitation;)Lcom/narvii/share/SharePayload;

    move-result-object v1

    .line 292
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v3

    .line 293
    sget v4, Lcom/narvii/lib/R$id;->share:I

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    .line 294
    invoke-direct {p0}, Lcom/narvii/invite/InviteMembersFragment$Adapter;->showDialogIfExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    return v5

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-static {v0, v1}, Lcom/narvii/share/ShareDialog;->getShareDialogFromCommunity(Lcom/narvii/app/NVContext;Lcom/narvii/share/SharePayload;)Lcom/narvii/share/ShareDialog;

    move-result-object v0

    const-string v1, "Share Invite URL"

    invoke-virtual {v0, v1}, Lcom/narvii/share/ShareDialog;->setSource(Ljava/lang/String;)Lcom/narvii/share/ShareDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/share/ShareDialog;->show()V

    goto/16 :goto_0

    .line 299
    :cond_1
    sget v4, Lcom/narvii/lib/R$id;->contact:I

    const-string v6, "ndc://fragment/"

    const-string v7, "android.intent.action.VIEW"

    if-ne v3, v4, :cond_3

    .line 300
    invoke-direct {p0}, Lcom/narvii/invite/InviteMembersFragment$Adapter;->showDialogIfExpired()Z

    move-result v0

    if-eqz v0, :cond_2

    return v5

    .line 303
    :cond_2
    new-instance v0, Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v4, Lcom/narvii/invite/InviteContactFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v7, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 304
    iget-object v3, v1, Lcom/narvii/share/SharePayload;->subject:Ljava/lang/String;

    const-string v4, "subject"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    iget-object v1, v1, Lcom/narvii/share/SharePayload;->text:Ljava/lang/String;

    const-string v3, "text"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    iget-object v1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->this$0:Lcom/narvii/invite/InviteMembersFragment;

    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 307
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 309
    :cond_3
    sget v1, Lcom/narvii/lib/R$id;->invite_history:I

    if-ne v3, v1, :cond_4

    .line 310
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Lcom/narvii/invite/InviteHistoryFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 311
    iget-object v1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->this$0:Lcom/narvii/invite/InviteMembersFragment;

    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 312
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 314
    :cond_4
    sget v1, Lcom/narvii/lib/R$id;->valid_links:I

    if-ne v3, v1, :cond_5

    .line 315
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Lcom/narvii/invite/ValidLinkFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 316
    iget-object v1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->this$0:Lcom/narvii/invite/InviteMembersFragment;

    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 317
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 318
    :cond_5
    sget v1, Lcom/narvii/lib/R$id;->regenerate:I

    if-ne v3, v1, :cond_6

    .line 319
    invoke-direct {p0}, Lcom/narvii/invite/InviteMembersFragment$Adapter;->regenerate()V

    goto :goto_0

    .line 321
    :cond_6
    sget v1, Lcom/narvii/lib/R$id;->link_layout:I

    if-ne v3, v1, :cond_7

    .line 323
    new-instance v1, Lcom/narvii/share/SharePayload;

    invoke-direct {v1}, Lcom/narvii/share/SharePayload;-><init>()V

    .line 324
    iput-object v0, v1, Lcom/narvii/share/SharePayload;->object:Lcom/narvii/model/NVObject;

    .line 325
    iget-object v0, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->response:Lcom/narvii/invite/NewInvitationResponse;

    iget-object v0, v0, Lcom/narvii/invite/NewInvitationResponse;->communityInvitation:Lcom/narvii/invite/Invitation;

    iget-object v0, v0, Lcom/narvii/invite/Invitation;->link:Ljava/lang/String;

    iput-object v0, v1, Lcom/narvii/share/SharePayload;->url:Ljava/lang/String;

    .line 326
    new-instance v0, Lcom/narvii/share/ShareViewHelper;

    invoke-direct {v0, p0}, Lcom/narvii/share/ShareViewHelper;-><init>(Lcom/narvii/app/NVContext;)V

    const-string v2, "Current Invite Code Copied"

    .line 327
    iput-object v2, v0, Lcom/narvii/share/ShareViewHelper;->source:Ljava/lang/String;

    .line 328
    new-instance v2, Lcom/narvii/share/elements/ClipboardElement;

    invoke-direct {v2, p0}, Lcom/narvii/share/elements/ClipboardElement;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/share/ShareViewHelper;->share(Lcom/narvii/share/SharePayload;Lcom/narvii/share/elements/BaseElement;Lcom/narvii/util/Callback;)V

    .line 332
    :cond_7
    :goto_0
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

    .line 398
    iput-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->response:Lcom/narvii/invite/NewInvitationResponse;

    .line 399
    iput-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->error:Ljava/lang/String;

    .line 400
    invoke-virtual {p0}, Lcom/narvii/invite/InviteMembersFragment$Adapter;->sendRequest()V

    .line 401
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method sendRequest()V
    .locals 4

    const-string v0, "api"

    .line 405
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 406
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->this$0:Lcom/narvii/invite/InviteMembersFragment;

    const-string v3, "__communityId"

    invoke-virtual {v2, v3}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->scopeCommunityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "community/invitation"

    .line 407
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const v2, 0x3f480

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "duration"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    .line 408
    new-instance v2, Lcom/narvii/invite/InviteMembersFragment$Adapter$4;

    const-class v3, Lcom/narvii/invite/NewInvitationResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/invite/InviteMembersFragment$Adapter$4;-><init>(Lcom/narvii/invite/InviteMembersFragment$Adapter;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method
