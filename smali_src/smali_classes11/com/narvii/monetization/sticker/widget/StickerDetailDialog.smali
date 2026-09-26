.class public Lcom/narvii/monetization/sticker/widget/StickerDetailDialog;
.super Lcom/narvii/util/dialog/AlertDialog;
.source "SourceFile"

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
    iput-object p1, p0, Lcom/narvii/monetization/sticker/widget/StickerDetailDialog;->context:Lcom/narvii/app/NVContext;

    .line 10
    .line 11
    .line 12
    const p1, 0x7f0d01da

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    .line 16
    .line 17
    .line 18
    const p1, 0x7f0a0dac

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    check-cast p1, Lcom/narvii/monetization/sticker/widget/StickerImageView;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/narvii/monetization/sticker/widget/StickerDetailDialog;->stickerImageView:Lcom/narvii/monetization/sticker/widget/StickerImageView;

    .line 27
    .line 28
    .line 29
    const p1, 0x7f0a0da1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    check-cast p1, Landroid/widget/TextView;

    .line 36
    .line 37
    iput-object p1, p0, Lcom/narvii/monetization/sticker/widget/StickerDetailDialog;->tvStickerName:Landroid/widget/TextView;

    .line 38
    .line 39
    .line 40
    const p1, 0x7f0a05b8

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    iput-object p1, p0, Lcom/narvii/monetization/sticker/widget/StickerDetailDialog;->btnFlag:Landroid/view/View;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    .line 51
    .line 52
    const p1, 0x7f0a0c4c

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    if-eqz p1, :cond_0

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    :cond_0
    return-void
.end method


# virtual methods
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
    const v0, 0x7f0a05b8

    .line 8
    .line 9
    if-eq p1, v0, :cond_1

    .line 10
    .line 11
    .line 12
    const v0, 0x7f0a0c4c

    .line 13
    .line 14
    if-eq p1, v0, :cond_0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_1
    new-instance p1, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/monetization/sticker/widget/StickerDetailDialog;->context:Lcom/narvii/app/NVContext;

    .line 24
    .line 25
    .line 26
    invoke-direct {p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/monetization/sticker/widget/StickerDetailDialog;->sticker:Lcom/narvii/model/Sticker;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->build()Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->show()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 43
    :goto_0
    return-void
.end method

.method public setSticker(Lcom/narvii/model/Sticker;Z)V
    .locals 1

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iput-object p1, p0, Lcom/narvii/monetization/sticker/widget/StickerDetailDialog;->sticker:Lcom/narvii/model/Sticker;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/monetization/sticker/widget/StickerDetailDialog;->btnFlag:Landroid/view/View;

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    const/16 p2, 0x8

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 p2, 0x0

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    :cond_2
    iget-object p2, p0, Lcom/narvii/monetization/sticker/widget/StickerDetailDialog;->stickerImageView:Lcom/narvii/monetization/sticker/widget/StickerImageView;

    .line 21
    .line 22
    if-eqz p2, :cond_3

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, p1}, Lcom/narvii/monetization/sticker/widget/StickerImageView;->setSticker(Lcom/narvii/model/Sticker;)V

    .line 26
    .line 27
    :cond_3
    iget-object p2, p0, Lcom/narvii/monetization/sticker/widget/StickerDetailDialog;->tvStickerName:Landroid/widget/TextView;

    .line 28
    .line 29
    if-eqz p2, :cond_4

    .line 30
    .line 31
    iget-object p1, p1, Lcom/narvii/model/Sticker;->name:Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    :cond_4
    return-void
.end method
