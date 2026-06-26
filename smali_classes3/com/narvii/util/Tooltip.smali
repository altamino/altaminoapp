.class public Lcom/narvii/util/Tooltip;
.super Ljava/lang/Object;
.source "Tooltip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/util/Tooltip$Builder;
    }
.end annotation


# static fields
.field public static final FINGER_END:I = 0x2

.field public static final FINGER_START:I = 0x1


# instance fields
.field public anchorView:Landroid/view/View;

.field public autoHide:Z

.field public autoHideDuration:I

.field public backgroundColor:I

.field public customTooltipBubbleLayout:I

.field public finger:I

.field public indicatorUp:Ljava/lang/Boolean;

.field public isRightAlign:Z

.field public isVibrate:Z

.field linkClickWithAnchorView:Z

.field public maxWidth:Ljava/lang/Integer;

.field onClickListener:Landroid/view/View$OnClickListener;

.field onCustomViewListener:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public rootView:Landroid/view/View;

.field public showOnlyOnce:Z

.field public text:Ljava/lang/String;

.field public textId:I

.field public textSize:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1388

    .line 17
    iput v0, p0, Lcom/narvii/util/Tooltip;->autoHideDuration:I

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/narvii/util/Tooltip;->showOnlyOnce:Z

    const/4 v1, -0x1

    .line 22
    iput v1, p0, Lcom/narvii/util/Tooltip;->backgroundColor:I

    .line 23
    iput-boolean v0, p0, Lcom/narvii/util/Tooltip;->isVibrate:Z

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/narvii/util/Tooltip;->maxWidth:Ljava/lang/Integer;

    return-void
.end method

.method public static builder()Lcom/narvii/util/Tooltip$Builder;
    .locals 1

    .line 31
    new-instance v0, Lcom/narvii/util/Tooltip$Builder;

    invoke-direct {v0}, Lcom/narvii/util/Tooltip$Builder;-><init>()V

    return-object v0
.end method
