.class Lcom/narvii/widget/TouchImageView$Fling;
.super Ljava/lang/Object;
.source "TouchImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Fling"
.end annotation


# instance fields
.field currX:I

.field currY:I

.field scroller:Lcom/narvii/widget/TouchImageView$CompatScroller;

.field final synthetic this$0:Lcom/narvii/widget/TouchImageView;


# direct methods
.method constructor <init>(Lcom/narvii/widget/TouchImageView;II)V
    .locals 11

    .line 1131
    iput-object p1, p0, Lcom/narvii/widget/TouchImageView$Fling;->this$0:Lcom/narvii/widget/TouchImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1132
    sget-object v0, Lcom/narvii/widget/TouchImageView$State;->FLING:Lcom/narvii/widget/TouchImageView$State;

    invoke-static {p1, v0}, Lcom/narvii/widget/TouchImageView;->access$1300(Lcom/narvii/widget/TouchImageView;Lcom/narvii/widget/TouchImageView$State;)V

    .line 1133
    new-instance v0, Lcom/narvii/widget/TouchImageView$CompatScroller;

    invoke-static {p1}, Lcom/narvii/widget/TouchImageView;->access$2700(Lcom/narvii/widget/TouchImageView;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/narvii/widget/TouchImageView$CompatScroller;-><init>(Lcom/narvii/widget/TouchImageView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/narvii/widget/TouchImageView$Fling;->scroller:Lcom/narvii/widget/TouchImageView$CompatScroller;

    .line 1134
    invoke-static {p1}, Lcom/narvii/widget/TouchImageView;->access$1900(Lcom/narvii/widget/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {p1}, Lcom/narvii/widget/TouchImageView;->access$2800(Lcom/narvii/widget/TouchImageView;)[F

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1136
    invoke-static {p1}, Lcom/narvii/widget/TouchImageView;->access$2800(Lcom/narvii/widget/TouchImageView;)[F

    move-result-object v0

    const/4 v1, 0x2

    aget v0, v0, v1

    float-to-int v0, v0

    .line 1137
    invoke-static {p1}, Lcom/narvii/widget/TouchImageView;->access$2800(Lcom/narvii/widget/TouchImageView;)[F

    move-result-object v1

    const/4 v2, 0x5

    aget v1, v1, v2

    float-to-int v10, v1

    .line 1140
    invoke-static {p1}, Lcom/narvii/widget/TouchImageView;->access$1500(Lcom/narvii/widget/TouchImageView;)F

    move-result v1

    invoke-static {p1}, Lcom/narvii/widget/TouchImageView;->access$1400(Lcom/narvii/widget/TouchImageView;)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 1141
    invoke-static {p1}, Lcom/narvii/widget/TouchImageView;->access$1400(Lcom/narvii/widget/TouchImageView;)I

    move-result v1

    invoke-static {p1}, Lcom/narvii/widget/TouchImageView;->access$1500(Lcom/narvii/widget/TouchImageView;)F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    move v6, v1

    const/4 v7, 0x0

    goto :goto_0

    :cond_0
    move v6, v0

    move v7, v6

    .line 1148
    :goto_0
    invoke-static {p1}, Lcom/narvii/widget/TouchImageView;->access$1800(Lcom/narvii/widget/TouchImageView;)F

    move-result v1

    invoke-static {p1}, Lcom/narvii/widget/TouchImageView;->access$1700(Lcom/narvii/widget/TouchImageView;)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 1149
    invoke-static {p1}, Lcom/narvii/widget/TouchImageView;->access$1700(Lcom/narvii/widget/TouchImageView;)I

    move-result v1

    invoke-static {p1}, Lcom/narvii/widget/TouchImageView;->access$1800(Lcom/narvii/widget/TouchImageView;)F

    move-result p1

    float-to-int p1, p1

    sub-int/2addr v1, p1

    move v8, v1

    const/4 v9, 0x0

    goto :goto_1

    :cond_1
    move v8, v10

    move v9, v8

    .line 1156
    :goto_1
    iget-object v1, p0, Lcom/narvii/widget/TouchImageView$Fling;->scroller:Lcom/narvii/widget/TouchImageView$CompatScroller;

    move v2, v0

    move v3, v10

    move v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v9}, Lcom/narvii/widget/TouchImageView$CompatScroller;->fling(IIIIIIII)V

    .line 1158
    iput v0, p0, Lcom/narvii/widget/TouchImageView$Fling;->currX:I

    .line 1159
    iput v10, p0, Lcom/narvii/widget/TouchImageView$Fling;->currY:I

    return-void
.end method


# virtual methods
.method public cancelFling()V
    .locals 2

    .line 1163
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$Fling;->scroller:Lcom/narvii/widget/TouchImageView$CompatScroller;

    if-eqz v0, :cond_0

    .line 1164
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$Fling;->this$0:Lcom/narvii/widget/TouchImageView;

    sget-object v1, Lcom/narvii/widget/TouchImageView$State;->NONE:Lcom/narvii/widget/TouchImageView$State;

    invoke-static {v0, v1}, Lcom/narvii/widget/TouchImageView;->access$1300(Lcom/narvii/widget/TouchImageView;Lcom/narvii/widget/TouchImageView$State;)V

    .line 1165
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$Fling;->scroller:Lcom/narvii/widget/TouchImageView$CompatScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/TouchImageView$CompatScroller;->forceFinished(Z)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 4

    .line 1176
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$Fling;->this$0:Lcom/narvii/widget/TouchImageView;

    invoke-static {v0}, Lcom/narvii/widget/TouchImageView;->access$2200(Lcom/narvii/widget/TouchImageView;)Lcom/narvii/widget/TouchImageView$OnTouchImageViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1177
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$Fling;->this$0:Lcom/narvii/widget/TouchImageView;

    invoke-static {v0}, Lcom/narvii/widget/TouchImageView;->access$2200(Lcom/narvii/widget/TouchImageView;)Lcom/narvii/widget/TouchImageView$OnTouchImageViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/widget/TouchImageView$OnTouchImageViewListener;->onMove()V

    .line 1180
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$Fling;->scroller:Lcom/narvii/widget/TouchImageView$CompatScroller;

    invoke-virtual {v0}, Lcom/narvii/widget/TouchImageView$CompatScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1181
    iput-object v0, p0, Lcom/narvii/widget/TouchImageView$Fling;->scroller:Lcom/narvii/widget/TouchImageView$CompatScroller;

    return-void

    .line 1185
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$Fling;->scroller:Lcom/narvii/widget/TouchImageView$CompatScroller;

    invoke-virtual {v0}, Lcom/narvii/widget/TouchImageView$CompatScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1186
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$Fling;->scroller:Lcom/narvii/widget/TouchImageView$CompatScroller;

    invoke-virtual {v0}, Lcom/narvii/widget/TouchImageView$CompatScroller;->getCurrX()I

    move-result v0

    .line 1187
    iget-object v1, p0, Lcom/narvii/widget/TouchImageView$Fling;->scroller:Lcom/narvii/widget/TouchImageView$CompatScroller;

    invoke-virtual {v1}, Lcom/narvii/widget/TouchImageView$CompatScroller;->getCurrY()I

    move-result v1

    .line 1188
    iget v2, p0, Lcom/narvii/widget/TouchImageView$Fling;->currX:I

    sub-int v2, v0, v2

    .line 1189
    iget v3, p0, Lcom/narvii/widget/TouchImageView$Fling;->currY:I

    sub-int v3, v1, v3

    .line 1190
    iput v0, p0, Lcom/narvii/widget/TouchImageView$Fling;->currX:I

    .line 1191
    iput v1, p0, Lcom/narvii/widget/TouchImageView$Fling;->currY:I

    .line 1192
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$Fling;->this$0:Lcom/narvii/widget/TouchImageView;

    invoke-static {v0}, Lcom/narvii/widget/TouchImageView;->access$1900(Lcom/narvii/widget/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    int-to-float v1, v2

    int-to-float v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1193
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$Fling;->this$0:Lcom/narvii/widget/TouchImageView;

    invoke-static {v0}, Lcom/narvii/widget/TouchImageView;->access$2000(Lcom/narvii/widget/TouchImageView;)V

    .line 1194
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$Fling;->this$0:Lcom/narvii/widget/TouchImageView;

    invoke-static {v0}, Lcom/narvii/widget/TouchImageView;->access$1900(Lcom/narvii/widget/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 1195
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$Fling;->this$0:Lcom/narvii/widget/TouchImageView;

    invoke-static {v0, p0}, Lcom/narvii/widget/TouchImageView;->access$500(Lcom/narvii/widget/TouchImageView;Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method
