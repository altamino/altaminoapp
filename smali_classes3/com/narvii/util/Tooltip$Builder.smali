.class public Lcom/narvii/util/Tooltip$Builder;
.super Ljava/lang/Object;
.source "Tooltip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/Tooltip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field tooltip:Lcom/narvii/util/Tooltip;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/narvii/util/Tooltip;

    invoke-direct {v0}, Lcom/narvii/util/Tooltip;-><init>()V

    iput-object v0, p0, Lcom/narvii/util/Tooltip$Builder;->tooltip:Lcom/narvii/util/Tooltip;

    return-void
.end method


# virtual methods
.method public anchorView(Landroid/view/View;)Lcom/narvii/util/Tooltip$Builder;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/narvii/util/Tooltip$Builder;->tooltip:Lcom/narvii/util/Tooltip;

    iput-object p1, v0, Lcom/narvii/util/Tooltip;->anchorView:Landroid/view/View;

    return-object p0
.end method

.method public autoHide()Lcom/narvii/util/Tooltip$Builder;
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/narvii/util/Tooltip$Builder;->tooltip:Lcom/narvii/util/Tooltip;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/narvii/util/Tooltip;->autoHide:Z

    return-object p0
.end method

.method public autoHideDuration(I)Lcom/narvii/util/Tooltip$Builder;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/narvii/util/Tooltip$Builder;->tooltip:Lcom/narvii/util/Tooltip;

    iput p1, v0, Lcom/narvii/util/Tooltip;->autoHideDuration:I

    return-object p0
.end method

.method public background(I)Lcom/narvii/util/Tooltip$Builder;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/narvii/util/Tooltip$Builder;->tooltip:Lcom/narvii/util/Tooltip;

    iput p1, v0, Lcom/narvii/util/Tooltip;->backgroundColor:I

    return-object p0
.end method

.method public build()Lcom/narvii/util/Tooltip;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/narvii/util/Tooltip$Builder;->tooltip:Lcom/narvii/util/Tooltip;

    return-object v0
.end method

.method public customTooltipBubbleLayout(I)Lcom/narvii/util/Tooltip$Builder;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/narvii/util/Tooltip$Builder;->tooltip:Lcom/narvii/util/Tooltip;

    iput p1, v0, Lcom/narvii/util/Tooltip;->customTooltipBubbleLayout:I

    return-object p0
.end method

.method public doCustomTooltipBubble(Lcom/narvii/util/Callback;)Lcom/narvii/util/Tooltip$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Landroid/view/View;",
            ">;)",
            "Lcom/narvii/util/Tooltip$Builder;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/narvii/util/Tooltip$Builder;->tooltip:Lcom/narvii/util/Tooltip;

    iput-object p1, v0, Lcom/narvii/util/Tooltip;->onCustomViewListener:Lcom/narvii/util/Callback;

    return-object p0
.end method

.method public endFinger()Lcom/narvii/util/Tooltip$Builder;
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/narvii/util/Tooltip$Builder;->tooltip:Lcom/narvii/util/Tooltip;

    const/4 v1, 0x2

    iput v1, v0, Lcom/narvii/util/Tooltip;->finger:I

    return-object p0
.end method

.method public indicatorUp(Z)Lcom/narvii/util/Tooltip$Builder;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/narvii/util/Tooltip$Builder;->tooltip:Lcom/narvii/util/Tooltip;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/narvii/util/Tooltip;->indicatorUp:Ljava/lang/Boolean;

    return-object p0
.end method

.method public isRightAlign(Z)Lcom/narvii/util/Tooltip$Builder;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/narvii/util/Tooltip$Builder;->tooltip:Lcom/narvii/util/Tooltip;

    iput-boolean p1, v0, Lcom/narvii/util/Tooltip;->isRightAlign:Z

    return-object p0
.end method

.method public isVibrate(Z)Lcom/narvii/util/Tooltip$Builder;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/narvii/util/Tooltip$Builder;->tooltip:Lcom/narvii/util/Tooltip;

    iput-boolean p1, v0, Lcom/narvii/util/Tooltip;->isVibrate:Z

    return-object p0
.end method

.method public linkClickWithAnchorView()Lcom/narvii/util/Tooltip$Builder;
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/narvii/util/Tooltip$Builder;->tooltip:Lcom/narvii/util/Tooltip;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/narvii/util/Tooltip;->linkClickWithAnchorView:Z

    return-object p0
.end method

.method public maxWidth(I)Lcom/narvii/util/Tooltip$Builder;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/narvii/util/Tooltip$Builder;->tooltip:Lcom/narvii/util/Tooltip;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lcom/narvii/util/Tooltip;->maxWidth:Ljava/lang/Integer;

    return-object p0
.end method

.method public onClickListener(Landroid/view/View$OnClickListener;)Lcom/narvii/util/Tooltip$Builder;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/narvii/util/Tooltip$Builder;->tooltip:Lcom/narvii/util/Tooltip;

    iput-object p1, v0, Lcom/narvii/util/Tooltip;->onClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public rootView(Landroid/view/View;)Lcom/narvii/util/Tooltip$Builder;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/narvii/util/Tooltip$Builder;->tooltip:Lcom/narvii/util/Tooltip;

    iput-object p1, v0, Lcom/narvii/util/Tooltip;->rootView:Landroid/view/View;

    return-object p0
.end method

.method public showOnlyOnce(Z)Lcom/narvii/util/Tooltip$Builder;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/narvii/util/Tooltip$Builder;->tooltip:Lcom/narvii/util/Tooltip;

    iput-boolean p1, v0, Lcom/narvii/util/Tooltip;->showOnlyOnce:Z

    return-object p0
.end method

.method public startFinger()Lcom/narvii/util/Tooltip$Builder;
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/narvii/util/Tooltip$Builder;->tooltip:Lcom/narvii/util/Tooltip;

    const/4 v1, 0x1

    iput v1, v0, Lcom/narvii/util/Tooltip;->finger:I

    return-object p0
.end method

.method public text(Ljava/lang/String;)Lcom/narvii/util/Tooltip$Builder;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/narvii/util/Tooltip$Builder;->tooltip:Lcom/narvii/util/Tooltip;

    iput-object p1, v0, Lcom/narvii/util/Tooltip;->text:Ljava/lang/String;

    return-object p0
.end method

.method public textId(I)Lcom/narvii/util/Tooltip$Builder;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/narvii/util/Tooltip$Builder;->tooltip:Lcom/narvii/util/Tooltip;

    iput p1, v0, Lcom/narvii/util/Tooltip;->textId:I

    return-object p0
.end method

.method public textSize(F)Lcom/narvii/util/Tooltip$Builder;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/narvii/util/Tooltip$Builder;->tooltip:Lcom/narvii/util/Tooltip;

    iput p1, v0, Lcom/narvii/util/Tooltip;->textSize:F

    return-object p0
.end method
