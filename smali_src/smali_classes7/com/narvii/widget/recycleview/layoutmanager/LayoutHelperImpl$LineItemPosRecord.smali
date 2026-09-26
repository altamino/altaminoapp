.class final Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl$LineItemPosRecord;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/Rect;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl$LineItemPosRecord;->rect:Landroid/graphics/Rect;

    .line 11
    return-void
.end method


# virtual methods
.method setFirstItemInLine(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl$LineItemPosRecord;->isFirstItemInLine:Z

    return-void
.end method
