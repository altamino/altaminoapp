.class public final Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;
.super Ljava/lang/Object;
.source "FlowLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "LayoutInfo"
.end annotation


# instance fields
.field alignMode:I

.field firstVisibleViewTop:I

.field haveReseted:Z

.field justCalculate:Z

.field layoutAnchor:I

.field layoutByScroll:Z

.field layoutFrom:I

.field pendingScrollDistance:I

.field startLayoutPos:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 331
    iput-boolean v0, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->haveReseted:Z

    .line 335
    iput-boolean v0, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->layoutByScroll:Z

    .line 337
    iput-boolean v0, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->justCalculate:Z

    return-void
.end method
