.class public Lcom/narvii/checkin/CheckInPopUp;
.super Landroid/widget/FrameLayout;
.source "CheckInPopUp.java"


# instance fields
.field public checkInPopUpLayout:Landroid/widget/FrameLayout;

.field public checkStorke:Landroid/widget/ImageView;

.field public rpBG:Landroid/widget/ImageView;

.field public rpView:Landroid/widget/TextView;

.field public text:Landroid/widget/TextView;

.field public title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, v0}, Lcom/narvii/checkin/CheckInPopUp;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/checkin/CheckInPopUp;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p2, 0x7f0b00dd

    .line 38
    invoke-static {p1, p2, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f09098f

    .line 39
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/checkin/CheckInPopUp;->rpView:Landroid/widget/TextView;

    const p1, 0x7f090b9a

    .line 40
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/checkin/CheckInPopUp;->title:Landroid/widget/TextView;

    const p1, 0x7f090b5b

    .line 41
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/checkin/CheckInPopUp;->text:Landroid/widget/TextView;

    const p1, 0x7f090990

    .line 42
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/checkin/CheckInPopUp;->rpBG:Landroid/widget/ImageView;

    const p1, 0x7f090991

    .line 43
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/checkin/CheckInPopUp;->checkStorke:Landroid/widget/ImageView;

    const p1, 0x7f09021c

    .line 44
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/narvii/checkin/CheckInPopUp;->checkInPopUpLayout:Landroid/widget/FrameLayout;

    return-void
.end method


# virtual methods
.method public setCenterInScreen(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 49
    iget-object p1, p0, Lcom/narvii/checkin/CheckInPopUp;->checkInPopUpLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x11

    .line 50
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v0, 0x0

    .line 51
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 52
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 53
    iget-object v0, p0, Lcom/narvii/checkin/CheckInPopUp;->checkInPopUpLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
