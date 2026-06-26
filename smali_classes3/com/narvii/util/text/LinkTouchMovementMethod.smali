.class public Lcom/narvii/util/text/LinkTouchMovementMethod;
.super Landroid/text/method/LinkMovementMethod;
.source "LinkTouchMovementMethod.java"


# static fields
.field private static instance:Lcom/narvii/util/text/LinkTouchMovementMethod;

.field private static instance2:Lcom/narvii/util/text/LinkTouchMovementMethod;


# instance fields
.field private keepSelectionAtBeginning:Z

.field private mPressedSpan:Lcom/narvii/util/text/TouchableSpan;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/narvii/util/text/LinkTouchMovementMethod;->keepSelectionAtBeginning:Z

    return-void
.end method

.method public static getInstance()Lcom/narvii/util/text/LinkTouchMovementMethod;
    .locals 1

    .line 16
    sget-object v0, Lcom/narvii/util/text/LinkTouchMovementMethod;->instance:Lcom/narvii/util/text/LinkTouchMovementMethod;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/narvii/util/text/LinkTouchMovementMethod;

    invoke-direct {v0}, Lcom/narvii/util/text/LinkTouchMovementMethod;-><init>()V

    sput-object v0, Lcom/narvii/util/text/LinkTouchMovementMethod;->instance:Lcom/narvii/util/text/LinkTouchMovementMethod;

    .line 19
    :cond_0
    sget-object v0, Lcom/narvii/util/text/LinkTouchMovementMethod;->instance:Lcom/narvii/util/text/LinkTouchMovementMethod;

    return-object v0
.end method

.method public static getInstanceIgnoreScroll()Lcom/narvii/util/text/LinkTouchMovementMethod;
    .locals 2

    .line 23
    sget-object v0, Lcom/narvii/util/text/LinkTouchMovementMethod;->instance2:Lcom/narvii/util/text/LinkTouchMovementMethod;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/narvii/util/text/LinkTouchMovementMethod;

    invoke-direct {v0}, Lcom/narvii/util/text/LinkTouchMovementMethod;-><init>()V

    sput-object v0, Lcom/narvii/util/text/LinkTouchMovementMethod;->instance2:Lcom/narvii/util/text/LinkTouchMovementMethod;

    .line 25
    sget-object v0, Lcom/narvii/util/text/LinkTouchMovementMethod;->instance2:Lcom/narvii/util/text/LinkTouchMovementMethod;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/narvii/util/text/LinkTouchMovementMethod;->keepSelectionAtBeginning:Z

    .line 27
    :cond_0
    sget-object v0, Lcom/narvii/util/text/LinkTouchMovementMethod;->instance2:Lcom/narvii/util/text/LinkTouchMovementMethod;

    return-object v0
.end method

.method private getPressedSpan(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Lcom/narvii/util/text/TouchableSpan;
    .locals 2

    .line 79
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 80
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    float-to-int p3, p3

    .line 82
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .line 83
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v1

    sub-int/2addr p3, v1

    .line 85
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v1

    add-int/2addr v0, v1

    .line 86
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v1

    add-int/2addr p3, v1

    .line 88
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    .line 89
    invoke-virtual {p1, p3}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result p3

    int-to-float v0, v0

    .line 90
    invoke-virtual {p1, p3, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result p1

    .line 91
    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    move-result p3

    const/16 v0, 0xa

    if-lt p1, p3, :cond_0

    const/16 p3, 0xa

    goto :goto_0

    :cond_0
    invoke-interface {p2, p1}, Landroid/text/Spannable;->charAt(I)C

    move-result p3

    :goto_0
    const/4 v1, 0x0

    if-eq p3, v0, :cond_2

    const/16 v0, 0xd

    if-ne p3, v0, :cond_1

    goto :goto_1

    .line 95
    :cond_1
    const-class p3, Lcom/narvii/util/text/TouchableSpan;

    .line 96
    invoke-interface {p2, p1, p1, p3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/narvii/util/text/TouchableSpan;

    .line 98
    array-length p2, p1

    if-lez p2, :cond_2

    const/4 p2, 0x0

    .line 99
    aget-object v1, p1, p2

    :cond_2
    :goto_1
    return-object v1
.end method


# virtual methods
.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 42
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/util/text/LinkTouchMovementMethod;->getPressedSpan(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Lcom/narvii/util/text/TouchableSpan;

    move-result-object p3

    iput-object p3, p0, Lcom/narvii/util/text/LinkTouchMovementMethod;->mPressedSpan:Lcom/narvii/util/text/TouchableSpan;

    .line 44
    iget-object p3, p0, Lcom/narvii/util/text/LinkTouchMovementMethod;->mPressedSpan:Lcom/narvii/util/text/TouchableSpan;

    if-eqz p3, :cond_4

    .line 45
    invoke-virtual {p3, v1}, Lcom/narvii/util/text/TouchableSpan;->setPressed(Z)V

    .line 46
    iget-boolean p3, p0, Lcom/narvii/util/text/LinkTouchMovementMethod;->keepSelectionAtBeginning:Z

    if-eqz p3, :cond_0

    .line 47
    invoke-static {p2, v2, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_0

    .line 49
    :cond_0
    iget-object p3, p0, Lcom/narvii/util/text/LinkTouchMovementMethod;->mPressedSpan:Lcom/narvii/util/text/TouchableSpan;

    .line 50
    invoke-interface {p2, p3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result p3

    iget-object v0, p0, Lcom/narvii/util/text/LinkTouchMovementMethod;->mPressedSpan:Lcom/narvii/util/text/TouchableSpan;

    .line 51
    invoke-interface {p2, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 49
    invoke-static {p2, p3, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 53
    :goto_0
    instance-of p2, p1, Lcom/narvii/util/text/TextViewFixTouchConsume;

    if-eqz p2, :cond_4

    .line 54
    check-cast p1, Lcom/narvii/util/text/TextViewFixTouchConsume;

    iput-boolean v1, p1, Lcom/narvii/util/text/TextViewFixTouchConsume;->hit:Z

    goto :goto_1

    .line 57
    :cond_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v0, v3, :cond_2

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/util/text/LinkTouchMovementMethod;->getPressedSpan(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Lcom/narvii/util/text/TouchableSpan;

    move-result-object p1

    .line 60
    iget-object p3, p0, Lcom/narvii/util/text/LinkTouchMovementMethod;->mPressedSpan:Lcom/narvii/util/text/TouchableSpan;

    if-eqz p3, :cond_4

    if-eq p1, p3, :cond_4

    .line 61
    invoke-virtual {p3, v2}, Lcom/narvii/util/text/TouchableSpan;->setPressed(Z)V

    .line 62
    iput-object v4, p0, Lcom/narvii/util/text/LinkTouchMovementMethod;->mPressedSpan:Lcom/narvii/util/text/TouchableSpan;

    .line 63
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    goto :goto_1

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/narvii/util/text/LinkTouchMovementMethod;->mPressedSpan:Lcom/narvii/util/text/TouchableSpan;

    if-eqz v0, :cond_3

    .line 67
    invoke-virtual {v0, v2}, Lcom/narvii/util/text/TouchableSpan;->setPressed(Z)V

    .line 68
    invoke-super {p0, p1, p2, p3}, Landroid/text/method/LinkMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    .line 70
    :cond_3
    iput-object v4, p0, Lcom/narvii/util/text/LinkTouchMovementMethod;->mPressedSpan:Lcom/narvii/util/text/TouchableSpan;

    .line 71
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    :cond_4
    :goto_1
    return v1
.end method
