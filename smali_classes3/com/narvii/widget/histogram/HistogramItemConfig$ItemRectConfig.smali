.class public Lcom/narvii/widget/histogram/HistogramItemConfig$ItemRectConfig;
.super Ljava/lang/Object;
.source "HistogramItemConfig.java"


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

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput p1, p0, Lcom/narvii/widget/histogram/HistogramItemConfig$ItemRectConfig;->typeCount:I

    .line 110
    new-array v0, p1, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/narvii/widget/histogram/HistogramItemConfig$ItemRectConfig;->rectToDraw:[Landroid/graphics/Rect;

    .line 111
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramItemConfig$ItemRectConfig;->paintColors:[I

    return-void
.end method
