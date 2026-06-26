.class public Lcom/narvii/monetization/sticker/widget/StickerDetailDialog;
.super Lcom/narvii/util/dialog/AlertDialog;
.source "StickerDetailDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field btnFlag:Landroid/view/View;

.field context:Lcom/narvii/app/NVContext;

.field sticker:Lcom/narvii/model/Sticker;

.field stickerImageView:Lcom/narvii/monetization/sticker/widget/StickerImageView;

.field tvStickerName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 25
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object p1, p0, Lcom/narvii/monetization/sticker/widget/StickerDetailDialog;->context:Lcom/narvii/app/NVContext;

    const p1, 0x7f0b01b9

    .line 27
    invoke-virtual {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    const p1, 0x7f090ab2

    .line 28
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/monetization/sticker/widget/StickerImageView;

    iput-object p1, p0, Lcom/narvii/monetization/sticker/widget/StickerDetailDialog;->stickerImageView:Lcom/narvii/monetization/sticker/widget/StickerImageView;

    const p1, 0x7f090aa7

    .line 29
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/monetization/sticker/widget/StickerDetailDialog;->tvStickerName:Landroid/widget/TextView;

    const p1, 0x7f090478

    .line 30
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/sticker/widget/StickerDetailDialog;->btnFlag:Landroid/view/View;

    .line 31
    iget-object p1, p0, Lcom/narvii/monetization/sticker/widget/StickerDetailDialog;->btnFlag:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09098b

    .line 32
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 34
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090478

    if-eq p1, v0, :cond_1

    const v0, 0x7f09098b

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    goto :goto_0

    .line 61
    :cond_1
    new-instance p1, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    iget-object v0, p0, Lcom/narvii/monetization/sticker/widget/StickerDetailDialog;->context:Lcom/narvii/app/NVContext;

    invoke-direct {p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object v0, p0, Lcom/narvii/monetization/sticker/widget/StickerDetailDialog;->sticker:Lcom/narvii/model/Sticker;

    .line 62
    invoke-virtual {p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->build()Lcom/narvii/flag/report/FlagReportOptionDialog;

    move-result-object p1

    .line 63
    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->show()V

    .line 64
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    :goto_0
    return-void
.end method

.method public setSticker(Lcom/narvii/model/Sticker;Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 42
    :cond_0
    iput-object p1, p0, Lcom/narvii/monetization/sticker/widget/StickerDetailDialog;->sticker:Lcom/narvii/model/Sticker;

    .line 43
    iget-object v0, p0, Lcom/narvii/monetization/sticker/widget/StickerDetailDialog;->btnFlag:Landroid/view/View;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    const/16 p2, 0x8

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 44
    :goto_0
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 46
    :cond_2
    iget-object p2, p0, Lcom/narvii/monetization/sticker/widget/StickerDetailDialog;->stickerImageView:Lcom/narvii/monetization/sticker/widget/StickerImageView;

    if-eqz p2, :cond_3

    .line 47
    invoke-virtual {p2, p1}, Lcom/narvii/monetization/sticker/widget/StickerImageView;->setSticker(Lcom/narvii/model/Sticker;)V

    .line 49
    :cond_3
    iget-object p2, p0, Lcom/narvii/monetization/sticker/widget/StickerDetailDialog;->tvStickerName:Landroid/widget/TextView;

    if-eqz p2, :cond_4

    .line 50
    iget-object p1, p1, Lcom/narvii/model/Sticker;->name:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method
