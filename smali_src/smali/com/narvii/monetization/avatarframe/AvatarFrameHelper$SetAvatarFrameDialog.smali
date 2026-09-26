.class public Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog;
.super Lcom/narvii/util/dialog/AlertDialog;
.source "SourceFile"

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

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog;-><init>(Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;Z)V
    .locals 1

    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;

    .line 2
    invoke-static {p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->b(Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;)Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    const p1, 0x7f0d01d4

    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    const p1, 0x7f0a0321

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog;->btnClose:Landroid/view/View;

    .line 5
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0cde

    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog;->btnSetForOne:Landroid/view/View;

    .line 7
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 9
    check-cast p1, Landroid/widget/TextView;

    const p2, 0x7f121099

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    const p1, 0x7f0a0cdd

    .line 10
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog;->btnSetForAll:Landroid/view/View;

    .line 11
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a076b

    .line 12
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVImageView;

    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog;->imgPreview:Lcom/narvii/widget/NVImageView;

    const p1, 0x7f0a076a

    .line 13
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog;->itemName:Landroid/widget/TextView;

    const p1, 0x7f0a010a

    .line 14
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog;->aminoMembershipBadge:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    sparse-switch v0, :sswitch_data_0

    .line 8
    goto :goto_1

    .line 9
    .line 10
    :sswitch_0
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog;->avatarFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 18
    move-result p1

    .line 19
    .line 20
    .line 21
    const v2, 0x7f0a0cdd

    .line 22
    .line 23
    if-ne p1, v2, :cond_0

    .line 24
    const/4 p1, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    .line 28
    :goto_0
    new-instance v2, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog$1;

    .line 29
    .line 30
    .line 31
    invoke-direct {v2, p0}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog$1;-><init>(Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v0, p1, v2}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->sendChangeAvatarSettingRequest(Lcom/narvii/monetization/avatarframe/AvatarFrame;ZLcom/narvii/util/Callback;)V

    .line 35
    goto :goto_1

    .line 36
    .line 37
    .line 38
    :sswitch_1
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 39
    :cond_1
    :goto_1
    return-void

    .line 40
    nop

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    :sswitch_data_0
    .sparse-switch
        0x7f0a0321 -> :sswitch_1
        0x7f0a0cdd -> :sswitch_0
        0x7f0a0cde -> :sswitch_0
    .end sparse-switch
.end method

.method public show(Lcom/narvii/monetization/avatarframe/AvatarFrame;)V
    .locals 2

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog;->avatarFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog;->imgPreview:Lcom/narvii/widget/NVImageView;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/narvii/monetization/avatarframe/AvatarFrame;->getStoreIcon()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog;->itemName:Landroid/widget/TextView;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/monetization/avatarframe/AvatarFrame;->getName()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog;->aminoMembershipBadge:Landroid/view/View;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/narvii/model/StoreItemBaseObject;->getRestrictionInfo()Lcom/narvii/model/RestrictionInfo;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/narvii/model/StoreItemBaseObject;->getRestrictionInfo()Lcom/narvii/model/RestrictionInfo;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    iget p1, p1, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    .line 38
    const/4 v1, 0x2

    .line 39
    .line 40
    if-ne p1, v1, :cond_1

    .line 41
    const/4 p1, 0x0

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_1
    const/16 p1, 0x8

    .line 45
    .line 46
    .line 47
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->show()V

    .line 51
    return-void
.end method

.method public updateView()V
    .locals 0

    return-void
.end method
