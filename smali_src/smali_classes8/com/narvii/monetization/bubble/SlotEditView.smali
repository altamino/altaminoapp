.class public Lcom/narvii/monetization/bubble/SlotEditView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

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
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/monetization/bubble/SlotEditView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, 0x7f0d06e2

    .line 3
    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 5
    invoke-direct {p0}, Lcom/narvii/monetization/bubble/SlotEditView;->configView()V

    return-void
.end method

.method private configView()V
    .locals 1

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a0d29

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/monetization/bubble/SlotEditView;->imgSlot:Lcom/narvii/widget/NVImageView;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a0d28

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/monetization/bubble/SlotEditView;->btnDelete:Landroid/view/View;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    return-void
.end method

.method private updateViews()V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/monetization/bubble/SlotEditView;->curStatus:I

    .line 3
    .line 4
    sget v1, Lcom/narvii/monetization/bubble/SlotEditView;->STATUS_READY:I

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    .line 9
    const v0, 0x7f080985

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    sget v1, Lcom/narvii/monetization/bubble/SlotEditView;->STATUS_FOCUSED:I

    .line 13
    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    .line 16
    .line 17
    const v0, 0x7f080983

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_1
    sget v1, Lcom/narvii/monetization/bubble/SlotEditView;->STATUS_READY_NOT_FOCUS:I

    .line 21
    .line 22
    if-ne v0, v1, :cond_2

    .line 23
    .line 24
    .line 25
    const v0, 0x7f080986

    .line 26
    goto :goto_0

    .line 27
    .line 28
    .line 29
    :cond_2
    const v0, 0x7f080984

    .line 30
    .line 31
    :goto_0
    iget-object v1, p0, Lcom/narvii/monetization/bubble/SlotEditView;->imgSlot:Lcom/narvii/widget/NVImageView;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    .line 38
    invoke-static {v2, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43
    .line 44
    iget-object v0, p0, Lcom/narvii/monetization/bubble/SlotEditView;->btnDelete:Landroid/view/View;

    .line 45
    .line 46
    iget v1, p0, Lcom/narvii/monetization/bubble/SlotEditView;->curStatus:I

    .line 47
    .line 48
    sget v2, Lcom/narvii/monetization/bubble/SlotEditView;->STATUS_READY:I

    .line 49
    .line 50
    if-ne v1, v2, :cond_3

    .line 51
    const/4 v1, 0x0

    .line 52
    goto :goto_1

    .line 53
    .line 54
    :cond_3
    const/16 v1, 0x8

    .line 55
    .line 56
    .line 57
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 58
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
    packed-switch p1, :pswitch_data_0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    :pswitch_0
    iget-object p1, p0, Lcom/narvii/monetization/bubble/SlotEditView;->listener:Lcom/narvii/monetization/bubble/SlotEditView$SlotEditListener;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, p0}, Lcom/narvii/monetization/bubble/SlotEditView$SlotEditListener;->onSlotSelected(Landroid/view/View;)V

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :pswitch_1
    iget-object p1, p0, Lcom/narvii/monetization/bubble/SlotEditView;->imgSlot:Lcom/narvii/widget/NVImageView;

    .line 19
    const/4 v0, 0x0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 23
    .line 24
    iget-object p1, p0, Lcom/narvii/monetization/bubble/SlotEditView;->listener:Lcom/narvii/monetization/bubble/SlotEditView$SlotEditListener;

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-interface {p1, p0}, Lcom/narvii/monetization/bubble/SlotEditView$SlotEditListener;->onDeleteClicked(Landroid/view/View;)V

    .line 30
    :cond_0
    :goto_0
    return-void

    .line 31
    .line 32
    :pswitch_data_0
    .packed-switch 0x7f0a0d28
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/monetization/bubble/SlotEditView;->configView()V

    .line 7
    return-void
.end method

.method public setListener(Lcom/narvii/monetization/bubble/SlotEditView$SlotEditListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/monetization/bubble/SlotEditView;->listener:Lcom/narvii/monetization/bubble/SlotEditView$SlotEditListener;

    return-void
.end method

.method public updateStatus(ZLjava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    sget p1, Lcom/narvii/monetization/bubble/SlotEditView;->STATUS_READY:I

    .line 7
    .line 8
    iput p1, p0, Lcom/narvii/monetization/bubble/SlotEditView;->curStatus:I

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    if-eqz p2, :cond_1

    .line 12
    .line 13
    sget p1, Lcom/narvii/monetization/bubble/SlotEditView;->STATUS_READY_NOT_FOCUS:I

    .line 14
    .line 15
    iput p1, p0, Lcom/narvii/monetization/bubble/SlotEditView;->curStatus:I

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_1
    if-eqz p1, :cond_2

    .line 19
    .line 20
    sget p1, Lcom/narvii/monetization/bubble/SlotEditView;->STATUS_FOCUSED:I

    .line 21
    .line 22
    iput p1, p0, Lcom/narvii/monetization/bubble/SlotEditView;->curStatus:I

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_2
    sget p1, Lcom/narvii/monetization/bubble/SlotEditView;->STATUS_IDLE:I

    .line 26
    .line 27
    iput p1, p0, Lcom/narvii/monetization/bubble/SlotEditView;->curStatus:I

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-direct {p0}, Lcom/narvii/monetization/bubble/SlotEditView;->updateViews()V

    .line 31
    return-void
.end method
