.class Lcom/narvii/widget/TouchImageView$ZoomVariables;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/TouchImageView$ZoomVariables;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    iput p2, p0, Lcom/narvii/widget/TouchImageView$ZoomVariables;->scale:F

    .line 8
    .line 9
    iput p3, p0, Lcom/narvii/widget/TouchImageView$ZoomVariables;->focusX:F

    .line 10
    .line 11
    iput p4, p0, Lcom/narvii/widget/TouchImageView$ZoomVariables;->focusY:F

    .line 12
    .line 13
    iput-object p5, p0, Lcom/narvii/widget/TouchImageView$ZoomVariables;->scaleType:Landroid/widget/ImageView$ScaleType;

    .line 14
    return-void
.end method
