.class public Lcom/narvii/widget/histogram/HistogramItemConfig$ItemRectConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/histogram/HistogramItemConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemRectConfig"
.end annotation


# instance fields
.field public paintColors:[I

.field public rectToDraw:[Landroid/graphics/Rect;

.field public typeCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Lcom/narvii/widget/histogram/HistogramItemConfig$ItemRectConfig;->typeCount:I

    .line 6
    .line 7
    new-array v0, p1, [Landroid/graphics/Rect;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/narvii/widget/histogram/HistogramItemConfig$ItemRectConfig;->rectToDraw:[Landroid/graphics/Rect;

    .line 10
    .line 11
    new-array p1, p1, [I

    .line 12
    .line 13
    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramItemConfig$ItemRectConfig;->paintColors:[I

    .line 14
    return-void
.end method
