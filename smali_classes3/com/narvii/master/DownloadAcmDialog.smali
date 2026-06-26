.class public Lcom/narvii/master/DownloadAcmDialog;
.super Lcom/narvii/util/dialog/RealtimeBlurDialog;
.source "DownloadAcmDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/narvii/util/dialog/RealtimeBlurDialog;-><init>(Landroid/content/Context;I)V

    .line 22
    invoke-virtual {p0}, Lcom/narvii/util/dialog/RealtimeBlurDialog;->getRealtimeBlurView()Lcom/github/mmin18/widget/RealtimeBlurView;

    move-result-object p1

    const/high16 p2, 0x66000000

    invoke-virtual {p1, p2}, Lcom/github/mmin18/widget/RealtimeBlurView;->setOverlayColor(I)V

    .line 23
    invoke-virtual {p0}, Lcom/narvii/util/dialog/RealtimeBlurDialog;->getRealtimeBlurView()Lcom/github/mmin18/widget/RealtimeBlurView;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x41f00000    # 30.0f

    invoke-static {p2, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/github/mmin18/widget/RealtimeBlurView;->setBlurRadius(F)V

    const p1, 0x7f0b018d

    .line 24
    invoke-virtual {p0, p1}, Lcom/narvii/util/dialog/RealtimeBlurDialog;->setContentView(I)V

    const p1, 0x7f09018b

    .line 25
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1}, Lcom/narvii/util/ViewUtils;->setMontserratExtraBoldTypeface(Landroid/widget/TextView;)V

    const p1, 0x7f090102

    .line 26
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/narvii/master/DownloadAcmDialog$1;

    invoke-direct {p2, p0}, Lcom/narvii/master/DownloadAcmDialog$1;-><init>(Lcom/narvii/master/DownloadAcmDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090170

    .line 32
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/narvii/master/DownloadAcmDialog$2;

    invoke-direct {p2, p0}, Lcom/narvii/master/DownloadAcmDialog$2;-><init>(Lcom/narvii/master/DownloadAcmDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
