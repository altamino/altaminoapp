.class public Lcom/narvii/widget/AdapterView$AdapterContextMenuInfo;
.super Ljava/lang/Object;
.source "AdapterView.java"

# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/AdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdapterContextMenuInfo"
.end annotation


# instance fields
.field public id:J

.field public position:I

.field public targetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;IJ)V
    .locals 0

    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    iput-object p1, p0, Lcom/narvii/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    .line 415
    iput p2, p0, Lcom/narvii/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 416
    iput-wide p3, p0, Lcom/narvii/widget/AdapterView$AdapterContextMenuInfo;->id:J

    return-void
.end method
