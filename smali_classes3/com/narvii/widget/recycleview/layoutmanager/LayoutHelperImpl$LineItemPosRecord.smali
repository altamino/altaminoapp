.class final Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl$LineItemPosRecord;
.super Ljava/lang/Object;
.source "LayoutHelperImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LineItemPosRecord"
.end annotation


# instance fields
.field isFirstItemInLine:Z

.field rect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl$LineItemPosRecord;->rect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method setFirstItemInLine(Z)V
    .locals 0

    .line 320
    iput-boolean p1, p0, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl$LineItemPosRecord;->isFirstItemInLine:Z

    return-void
.end method
