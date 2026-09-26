.class public Lcom/narvii/master/DownloadAcmDialog;
.super Lcom/narvii/util/dialog/RealtimeBlurDialog;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/util/dialog/RealtimeBlurDialog;-><init>(Landroid/content/Context;I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/util/dialog/RealtimeBlurDialog;->getRealtimeBlurView()Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    const/high16 p2, 0x66000000

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2}, Lcom/github/mmin18/widget/RealtimeBlurView;->setOverlayColor(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/util/dialog/RealtimeBlurDialog;->getRealtimeBlurView()Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 20
    move-result-object p2

    .line 21
    .line 22
    const/high16 v0, 0x41f00000    # 30.0f

    .line 23
    .line 24
    .line 25
    invoke-static {p2, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 26
    move-result p2

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2}, Lcom/github/mmin18/widget/RealtimeBlurView;->setBlurRadius(F)V

    .line 30
    .line 31
    .line 32
    const p1, 0x7f0d01ac

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1}, Lcom/narvii/util/dialog/RealtimeBlurDialog;->setContentView(I)V

    .line 36
    .line 37
    .line 38
    const p1, 0x7f0a023c

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    check-cast p1, Landroid/widget/TextView;

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Lcom/narvii/util/ViewUtils;->setMontserratExtraBoldTypeface(Landroid/widget/TextView;)V

    .line 48
    .line 49
    .line 50
    const p1, 0x7f0a0191

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    new-instance p2, Lcom/narvii/master/DownloadAcmDialog$1;

    .line 57
    .line 58
    .line 59
    invoke-direct {p2, p0}, Lcom/narvii/master/DownloadAcmDialog$1;-><init>(Lcom/narvii/master/DownloadAcmDialog;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    .line 64
    .line 65
    const p1, 0x7f0a021a

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    new-instance p2, Lcom/narvii/master/DownloadAcmDialog$2;

    .line 72
    .line 73
    .line 74
    invoke-direct {p2, p0}, Lcom/narvii/master/DownloadAcmDialog$2;-><init>(Lcom/narvii/master/DownloadAcmDialog;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-void
.end method
