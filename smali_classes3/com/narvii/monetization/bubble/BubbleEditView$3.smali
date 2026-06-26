.class Lcom/narvii/monetization/bubble/BubbleEditView$3;
.super Ljava/lang/Object;
.source "BubbleEditView.java"

# interfaces
.implements Lcom/android/volley/toolbox/ImageLoader$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/bubble/BubbleEditView;->updateEditorView(Lcom/narvii/model/BubbleInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/bubble/BubbleEditView;

.field final synthetic val$bubbleInfo:Lcom/narvii/model/BubbleInfo;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/bubble/BubbleEditView;Lcom/narvii/model/BubbleInfo;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditView$3;->this$0:Lcom/narvii/monetization/bubble/BubbleEditView;

    iput-object p2, p0, Lcom/narvii/monetization/bubble/BubbleEditView$3;->val$bubbleInfo:Lcom/narvii/model/BubbleInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 0

    return-void
.end method

.method public onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .locals 3

    .line 160
    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 165
    :cond_0
    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleEditView$3;->this$0:Lcom/narvii/monetization/bubble/BubbleEditView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    invoke-static {p2, v0}, Lcom/narvii/monetization/bubble/BubbleEditView;->access$102(Lcom/narvii/monetization/bubble/BubbleEditView;I)I

    .line 166
    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleEditView$3;->this$0:Lcom/narvii/monetization/bubble/BubbleEditView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    invoke-static {p2, v0}, Lcom/narvii/monetization/bubble/BubbleEditView;->access$202(Lcom/narvii/monetization/bubble/BubbleEditView;I)I

    .line 168
    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleEditView$3;->this$0:Lcom/narvii/monetization/bubble/BubbleEditView;

    iget-object p2, p2, Lcom/narvii/monetization/bubble/BubbleEditView;->bubbleBg:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 169
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditView$3;->this$0:Lcom/narvii/monetization/bubble/BubbleEditView;

    invoke-static {v0}, Lcom/narvii/monetization/bubble/BubbleEditView;->access$100(Lcom/narvii/monetization/bubble/BubbleEditView;)I

    move-result v0

    iput v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 170
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditView$3;->this$0:Lcom/narvii/monetization/bubble/BubbleEditView;

    invoke-static {v0}, Lcom/narvii/monetization/bubble/BubbleEditView;->access$200(Lcom/narvii/monetization/bubble/BubbleEditView;)I

    move-result v0

    iput v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 172
    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleEditView$3;->this$0:Lcom/narvii/monetization/bubble/BubbleEditView;

    .line 173
    invoke-static {p2}, Lcom/narvii/monetization/bubble/BubbleEditView;->access$100(Lcom/narvii/monetization/bubble/BubbleEditView;)I

    move-result p2

    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditView$3;->this$0:Lcom/narvii/monetization/bubble/BubbleEditView;

    .line 174
    invoke-static {v0}, Lcom/narvii/monetization/bubble/BubbleEditView;->access$200(Lcom/narvii/monetization/bubble/BubbleEditView;)I

    move-result v0

    const/4 v1, 0x0

    .line 172
    invoke-static {p1, p2, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 175
    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleEditView$3;->this$0:Lcom/narvii/monetization/bubble/BubbleEditView;

    iget-object p2, p2, Lcom/narvii/monetization/bubble/BubbleEditView;->bubbleBg:Lcom/narvii/widget/NVImageView;

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleEditView$3;->this$0:Lcom/narvii/monetization/bubble/BubbleEditView;

    invoke-virtual {v1, p1}, Lcom/narvii/monetization/bubble/BubbleEditView;->getFlipBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_1
    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, v0}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 177
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditView$3;->this$0:Lcom/narvii/monetization/bubble/BubbleEditView;

    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleEditView$3;->val$bubbleInfo:Lcom/narvii/model/BubbleInfo;

    iget-object p2, p2, Lcom/narvii/model/BubbleInfo;->allowedSlots:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/narvii/monetization/bubble/BubbleEditView;->configAllowSlots(Ljava/util/List;)V

    .line 178
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditView$3;->this$0:Lcom/narvii/monetization/bubble/BubbleEditView;

    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleEditView$3;->val$bubbleInfo:Lcom/narvii/model/BubbleInfo;

    invoke-virtual {p1, p2}, Lcom/narvii/monetization/bubble/BubbleEditView;->loseFocus(Lcom/narvii/model/BubbleInfo;)V

    return-void
.end method
