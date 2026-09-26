.class public Lcom/narvii/util/Tooltip$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/util/Tooltip;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lcom/narvii/util/Tooltip;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/util/Tooltip$Builder;->tooltip:Lcom/narvii/util/Tooltip;

    .line 11
    return-void
.end method


# virtual methods
.method public anchorView(Landroid/view/View;)Lcom/narvii/util/Tooltip$Builder;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/Tooltip$Builder;->tooltip:Lcom/narvii/util/Tooltip;

    .line 3
    .line 4
    iput-object p1, v0, Lcom/narvii/util/Tooltip;->anchorView:Landroid/view/View;

    .line 5
    return-object p0
.end method

.method public autoHide()Lcom/narvii/util/Tooltip$Builder;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/Tooltip$Builder;->tooltip:Lcom/narvii/util/Tooltip;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    iput-boolean v1, v0, Lcom/narvii/util/Tooltip;->autoHide:Z

    .line 6
    return-object p0
.end method

.method public autoHideDuration(I)Lcom/narvii/util/Tooltip$Builder;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/Tooltip$Builder;->tooltip:Lcom/narvii/util/Tooltip;

    .line 3
    .line 4
    iput p1, v0, Lcom/narvii/util/Tooltip;->autoHideDuration:I

    .line 5
    return-object p0
.end method

.method public background(I)Lcom/narvii/util/Tooltip$Builder;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/Tooltip$Builder;->tooltip:Lcom/narvii/util/Tooltip;

    .line 3
    .line 4
    iput p1, v0, Lcom/narvii/util/Tooltip;->backgroundColor:I

    .line 5
    return-object p0
.end method

.method public build()Lcom/narvii/util/Tooltip;
    .locals 1

    iget-object v0, p0, Lcom/narvii/util/Tooltip$Builder;->tooltip:Lcom/narvii/util/Tooltip;

    return-object v0
.end method

.method public customTooltipBubbleLayout(I)Lcom/narvii/util/Tooltip$Builder;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/Tooltip$Builder;->tooltip:Lcom/narvii/util/Tooltip;

    .line 3
    .line 4
    iput p1, v0, Lcom/narvii/util/Tooltip;->customTooltipBubbleLayout:I

    .line 5
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/Tooltip$Builder;->tooltip:Lcom/narvii/util/Tooltip;

    .line 3
    .line 4
    iput-object p1, v0, Lcom/narvii/util/Tooltip;->onCustomViewListener:Lcom/narvii/util/Callback;

    .line 5
    return-object p0
.end method

.method public endFinger()Lcom/narvii/util/Tooltip$Builder;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/Tooltip$Builder;->tooltip:Lcom/narvii/util/Tooltip;

    .line 3
    const/4 v1, 0x2

    .line 4
    .line 5
    iput v1, v0, Lcom/narvii/util/Tooltip;->finger:I

    .line 6
    return-object p0
.end method

.method public indicatorUp(Z)Lcom/narvii/util/Tooltip$Builder;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/Tooltip$Builder;->tooltip:Lcom/narvii/util/Tooltip;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    iput-object p1, v0, Lcom/narvii/util/Tooltip;->indicatorUp:Ljava/lang/Boolean;

    .line 9
    return-object p0
.end method

.method public isRightAlign(Z)Lcom/narvii/util/Tooltip$Builder;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/Tooltip$Builder;->tooltip:Lcom/narvii/util/Tooltip;

    .line 3
    .line 4
    iput-boolean p1, v0, Lcom/narvii/util/Tooltip;->isRightAlign:Z

    .line 5
    return-object p0
.end method

.method public isVibrate(Z)Lcom/narvii/util/Tooltip$Builder;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/Tooltip$Builder;->tooltip:Lcom/narvii/util/Tooltip;

    .line 3
    .line 4
    iput-boolean p1, v0, Lcom/narvii/util/Tooltip;->isVibrate:Z

    .line 5
    return-object p0
.end method

.method public linkClickWithAnchorView()Lcom/narvii/util/Tooltip$Builder;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/Tooltip$Builder;->tooltip:Lcom/narvii/util/Tooltip;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    iput-boolean v1, v0, Lcom/narvii/util/Tooltip;->linkClickWithAnchorView:Z

    .line 6
    return-object p0
.end method

.method public maxWidth(I)Lcom/narvii/util/Tooltip$Builder;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/Tooltip$Builder;->tooltip:Lcom/narvii/util/Tooltip;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    iput-object p1, v0, Lcom/narvii/util/Tooltip;->maxWidth:Ljava/lang/Integer;

    .line 9
    return-object p0
.end method

.method public onClickListener(Landroid/view/View$OnClickListener;)Lcom/narvii/util/Tooltip$Builder;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/Tooltip$Builder;->tooltip:Lcom/narvii/util/Tooltip;

    .line 3
    .line 4
    iput-object p1, v0, Lcom/narvii/util/Tooltip;->onClickListener:Landroid/view/View$OnClickListener;

    .line 5
    return-object p0
.end method

.method public rootView(Landroid/view/View;)Lcom/narvii/util/Tooltip$Builder;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/Tooltip$Builder;->tooltip:Lcom/narvii/util/Tooltip;

    .line 3
    .line 4
    iput-object p1, v0, Lcom/narvii/util/Tooltip;->rootView:Landroid/view/View;

    .line 5
    return-object p0
.end method

.method public showOnlyOnce(Z)Lcom/narvii/util/Tooltip$Builder;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/Tooltip$Builder;->tooltip:Lcom/narvii/util/Tooltip;

    .line 3
    .line 4
    iput-boolean p1, v0, Lcom/narvii/util/Tooltip;->showOnlyOnce:Z

    .line 5
    return-object p0
.end method

.method public startFinger()Lcom/narvii/util/Tooltip$Builder;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/Tooltip$Builder;->tooltip:Lcom/narvii/util/Tooltip;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    iput v1, v0, Lcom/narvii/util/Tooltip;->finger:I

    .line 6
    return-object p0
.end method

.method public text(Ljava/lang/String;)Lcom/narvii/util/Tooltip$Builder;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/Tooltip$Builder;->tooltip:Lcom/narvii/util/Tooltip;

    .line 3
    .line 4
    iput-object p1, v0, Lcom/narvii/util/Tooltip;->text:Ljava/lang/String;

    .line 5
    return-object p0
.end method

.method public textColor(I)Lcom/narvii/util/Tooltip$Builder;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/Tooltip$Builder;->tooltip:Lcom/narvii/util/Tooltip;

    .line 3
    .line 4
    iput p1, v0, Lcom/narvii/util/Tooltip;->textColor:I

    .line 5
    return-object p0
.end method

.method public textId(I)Lcom/narvii/util/Tooltip$Builder;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/Tooltip$Builder;->tooltip:Lcom/narvii/util/Tooltip;

    .line 3
    .line 4
    iput p1, v0, Lcom/narvii/util/Tooltip;->textId:I

    .line 5
    return-object p0
.end method

.method public textSize(F)Lcom/narvii/util/Tooltip$Builder;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/Tooltip$Builder;->tooltip:Lcom/narvii/util/Tooltip;

    .line 3
    .line 4
    iput p1, v0, Lcom/narvii/util/Tooltip;->textSize:F

    .line 5
    return-object p0
.end method
