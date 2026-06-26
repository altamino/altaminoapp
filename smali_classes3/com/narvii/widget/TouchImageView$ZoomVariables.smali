.class Lcom/narvii/widget/TouchImageView$ZoomVariables;
.super Ljava/lang/Object;
.source "TouchImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomVariables"
.end annotation


# instance fields
.field public focusX:F

.field public focusY:F

.field public scale:F

.field public scaleType:Landroid/widget/ImageView$ScaleType;

.field final synthetic this$0:Lcom/narvii/widget/TouchImageView;


# direct methods
.method public constructor <init>(Lcom/narvii/widget/TouchImageView;FFFLandroid/widget/ImageView$ScaleType;)V
    .locals 0

    .line 1283
    iput-object p1, p0, Lcom/narvii/widget/TouchImageView$ZoomVariables;->this$0:Lcom/narvii/widget/TouchImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1284
    iput p2, p0, Lcom/narvii/widget/TouchImageView$ZoomVariables;->scale:F

    .line 1285
    iput p3, p0, Lcom/narvii/widget/TouchImageView$ZoomVariables;->focusX:F

    .line 1286
    iput p4, p0, Lcom/narvii/widget/TouchImageView$ZoomVariables;->focusY:F

    .line 1287
    iput-object p5, p0, Lcom/narvii/widget/TouchImageView$ZoomVariables;->scaleType:Landroid/widget/ImageView$ScaleType;

    return-void
.end method
