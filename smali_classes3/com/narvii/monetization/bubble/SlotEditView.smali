.class public Lcom/narvii/monetization/bubble/SlotEditView;
.super Landroid/widget/FrameLayout;
.source "SlotEditView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/monetization/bubble/SlotEditView$SlotEditListener;
    }
.end annotation


# static fields
.field public static STATUS_FOCUSED:I = 0x1

.field public static STATUS_IDLE:I = 0x0

.field public static STATUS_READY:I = 0x2

.field public static STATUS_READY_NOT_FOCUS:I = 0x3


# instance fields
.field public btnDelete:Landroid/view/View;

.field private curStatus:I

.field public imgSlot:Lcom/narvii/widget/NVImageView;

.field listener:Lcom/narvii/monetization/bubble/SlotEditView$SlotEditListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/narvii/monetization/bubble/SlotEditView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, 0x7f0b0631

    .line 49
    invoke-static {p1, p2, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 p1, 0x0

    .line 50
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 51
    invoke-direct {p0}, Lcom/narvii/monetization/bubble/SlotEditView;->configView()V

    return-void
.end method

.method private configView()V
    .locals 1

    const v0, 0x7f090a52

    .line 61
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    iput-object v0, p0, Lcom/narvii/monetization/bubble/SlotEditView;->imgSlot:Lcom/narvii/widget/NVImageView;

    .line 62
    iget-object v0, p0, Lcom/narvii/monetization/bubble/SlotEditView;->imgSlot:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090a51

    .line 63
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/monetization/bubble/SlotEditView;->btnDelete:Landroid/view/View;

    .line 64
    iget-object v0, p0, Lcom/narvii/monetization/bubble/SlotEditView;->btnDelete:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private updateViews()V
    .locals 3

    .line 69
    iget v0, p0, Lcom/narvii/monetization/bubble/SlotEditView;->curStatus:I

    sget v1, Lcom/narvii/monetization/bubble/SlotEditView;->STATUS_READY:I

    if-ne v0, v1, :cond_0

    const v0, 0x7f080789

    goto :goto_0

    .line 71
    :cond_0
    sget v1, Lcom/narvii/monetization/bubble/SlotEditView;->STATUS_FOCUSED:I

    if-ne v0, v1, :cond_1

    const v0, 0x7f080787

    goto :goto_0

    .line 73
    :cond_1
    sget v1, Lcom/narvii/monetization/bubble/SlotEditView;->STATUS_READY_NOT_FOCUS:I

    if-ne v0, v1, :cond_2

    const v0, 0x7f08078a

    goto :goto_0

    :cond_2
    const v0, 0x7f080788

    .line 76
    :goto_0
    iget-object v1, p0, Lcom/narvii/monetization/bubble/SlotEditView;->imgSlot:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    iget-object v0, p0, Lcom/narvii/monetization/bubble/SlotEditView;->btnDelete:Landroid/view/View;

    iget v1, p0, Lcom/narvii/monetization/bubble/SlotEditView;->curStatus:I

    sget v2, Lcom/narvii/monetization/bubble/SlotEditView;->STATUS_READY:I

    if-ne v1, v2, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 103
    :pswitch_0
    iget-object p1, p0, Lcom/narvii/monetization/bubble/SlotEditView;->listener:Lcom/narvii/monetization/bubble/SlotEditView$SlotEditListener;

    if-eqz p1, :cond_0

    .line 104
    invoke-interface {p1, p0}, Lcom/narvii/monetization/bubble/SlotEditView$SlotEditListener;->onSlotSelected(Landroid/view/View;)V

    goto :goto_0

    .line 97
    :pswitch_1
    iget-object p1, p0, Lcom/narvii/monetization/bubble/SlotEditView;->imgSlot:Lcom/narvii/widget/NVImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    iget-object p1, p0, Lcom/narvii/monetization/bubble/SlotEditView;->listener:Lcom/narvii/monetization/bubble/SlotEditView$SlotEditListener;

    if-eqz p1, :cond_0

    .line 99
    invoke-interface {p1, p0}, Lcom/narvii/monetization/bubble/SlotEditView$SlotEditListener;->onDeleteClicked(Landroid/view/View;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f090a51
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 56
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 57
    invoke-direct {p0}, Lcom/narvii/monetization/bubble/SlotEditView;->configView()V

    return-void
.end method

.method public setListener(Lcom/narvii/monetization/bubble/SlotEditView$SlotEditListener;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/narvii/monetization/bubble/SlotEditView;->listener:Lcom/narvii/monetization/bubble/SlotEditView$SlotEditListener;

    return-void
.end method

.method public updateStatus(ZLjava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 82
    sget p1, Lcom/narvii/monetization/bubble/SlotEditView;->STATUS_READY:I

    iput p1, p0, Lcom/narvii/monetization/bubble/SlotEditView;->curStatus:I

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 84
    sget p1, Lcom/narvii/monetization/bubble/SlotEditView;->STATUS_READY_NOT_FOCUS:I

    iput p1, p0, Lcom/narvii/monetization/bubble/SlotEditView;->curStatus:I

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 86
    sget p1, Lcom/narvii/monetization/bubble/SlotEditView;->STATUS_FOCUSED:I

    iput p1, p0, Lcom/narvii/monetization/bubble/SlotEditView;->curStatus:I

    goto :goto_0

    .line 88
    :cond_2
    sget p1, Lcom/narvii/monetization/bubble/SlotEditView;->STATUS_IDLE:I

    iput p1, p0, Lcom/narvii/monetization/bubble/SlotEditView;->curStatus:I

    .line 90
    :goto_0
    invoke-direct {p0}, Lcom/narvii/monetization/bubble/SlotEditView;->updateViews()V

    return-void
.end method
