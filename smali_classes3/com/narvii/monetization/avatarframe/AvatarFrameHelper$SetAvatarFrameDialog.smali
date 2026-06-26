.class public Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog;
.super Lcom/narvii/util/dialog/AlertDialog;
.source "AvatarFrameHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetAvatarFrameDialog"
.end annotation


# instance fields
.field private final aminoMembershipBadge:Landroid/view/View;

.field private avatarFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

.field private final btnClose:Landroid/view/View;

.field private final btnSetForAll:Landroid/view/View;

.field private final btnSetForOne:Landroid/view/View;

.field private final imgPreview:Lcom/narvii/widget/NVImageView;

.field private isGlobal:Z

.field private final itemName:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;


# direct methods
.method public constructor <init>(Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;)V
    .locals 1

    const/4 v0, 0x0

    .line 232
    invoke-direct {p0, p1, v0}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog;-><init>(Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;Z)V
    .locals 1

    .line 235
    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;

    .line 236
    invoke-static {p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->access$100(Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;)Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    const p1, 0x7f0b01b3

    .line 237
    invoke-virtual {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    const p1, 0x7f09025e

    .line 240
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog;->btnClose:Landroid/view/View;

    .line 241
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog;->btnClose:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090a16

    .line 244
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog;->btnSetForOne:Landroid/view/View;

    .line 245
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog;->btnSetForOne:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog;->btnSetForOne:Landroid/view/View;

    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 247
    check-cast p1, Landroid/widget/TextView;

    const p2, 0x7f0f0f8d

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    const p1, 0x7f090a15

    .line 250
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog;->btnSetForAll:Landroid/view/View;

    .line 251
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog;->btnSetForAll:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0905eb

    .line 253
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVImageView;

    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog;->imgPreview:Lcom/narvii/widget/NVImageView;

    const p1, 0x7f0905ea

    .line 254
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog;->itemName:Landroid/widget/TextView;

    const p1, 0x7f0900a2

    .line 256
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog;->aminoMembershipBadge:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 278
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    .line 281
    :sswitch_0
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog;->avatarFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    if-eqz v0, :cond_1

    .line 282
    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v2, 0x7f090a15

    if-ne p1, v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance v2, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog$1;

    invoke-direct {v2, p0}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog$1;-><init>(Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog;)V

    invoke-virtual {v1, v0, p1, v2}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->sendChangeAvatarSettingRequest(Lcom/narvii/monetization/avatarframe/AvatarFrame;ZLcom/narvii/util/Callback;)V

    goto :goto_1

    .line 305
    :sswitch_1
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    :cond_1
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09025e -> :sswitch_1
        0x7f090a15 -> :sswitch_0
        0x7f090a16 -> :sswitch_0
    .end sparse-switch
.end method

.method public show(Lcom/narvii/monetization/avatarframe/AvatarFrame;)V
    .locals 2

    .line 261
    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog;->avatarFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    if-nez p1, :cond_0

    return-void

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog;->imgPreview:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1}, Lcom/narvii/monetization/avatarframe/AvatarFrame;->getStoreIcon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 266
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog;->itemName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/narvii/monetization/avatarframe/AvatarFrame;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog;->aminoMembershipBadge:Landroid/view/View;

    invoke-virtual {p1}, Lcom/narvii/model/StoreItemBaseObject;->getRestrictionInfo()Lcom/narvii/model/RestrictionInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/narvii/model/StoreItemBaseObject;->getRestrictionInfo()Lcom/narvii/model/RestrictionInfo;

    move-result-object p1

    iget p1, p1, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 269
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method

.method public updateView()V
    .locals 0

    return-void
.end method
