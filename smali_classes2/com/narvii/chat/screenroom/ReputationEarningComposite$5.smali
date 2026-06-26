.class Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;
.super Ljava/lang/Object;
.source "ReputationEarningComposite.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/screenroom/ReputationEarningComposite;->initComponent(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 209
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$000(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 212
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$1100(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {v0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$1200(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 213
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$100(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Lcom/narvii/widget/ThumbImageView;

    move-result-object p1

    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {v0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$100(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Lcom/narvii/widget/ThumbImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 214
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$100(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Lcom/narvii/widget/ThumbImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {v0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$100(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Lcom/narvii/widget/ThumbImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 215
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$200(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {v0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$200(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    int-to-float v1, v0

    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setPivotX(F)V

    .line 216
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$200(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {v0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$200(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setPivotY(F)V

    .line 217
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$1000(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$500(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)F

    move-result p1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v2

    if-gez p1, :cond_3

    goto/16 :goto_2

    .line 235
    :cond_3
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$100(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Lcom/narvii/widget/ThumbImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 236
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$1100(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/os/Handler;

    move-result-object p1

    iget-object v3, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {v3}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$1400(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 237
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$1800(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Lcom/narvii/util/http/ApiService;

    move-result-object p1

    iget-object v3, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {v3}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$1600(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Lcom/narvii/util/http/ApiRequest;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 238
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$1800(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Lcom/narvii/util/http/ApiService;

    move-result-object p1

    iget-object v3, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {v3}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$2700(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Lcom/narvii/util/http/ApiRequest;

    move-result-object v3

    new-instance v4, Lcom/narvii/util/http/ApiResponseListener;

    const-class v5, Lcom/narvii/model/api/ReputationPostResponse;

    invoke-direct {v4, v5}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p1, v3, v4}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 240
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$1000(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)I

    move-result p1

    int-to-float p1, p1

    const v3, 0x3e4ccccd    # 0.2f

    mul-float p1, p1, v3

    add-float/2addr p1, v2

    .line 241
    iget-object v2, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {v2}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$2200(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v3, v1, [F

    aput p1, v3, v0

    const v4, 0x3f4ccccd    # 0.8f

    mul-float v4, v4, p1

    const/4 v5, 0x1

    aput v4, v3, v5

    const/4 v6, 0x2

    aput p1, v3, v6

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 242
    iget-object v2, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {v2}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$2300(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v1, v1, [F

    aput p1, v1, v0

    aput v4, v1, v5

    aput p1, v1, v6

    invoke-virtual {v2, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 243
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$2200(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 244
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$2300(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 245
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$2800(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-array v0, v6, [F

    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 246
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$2800(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 247
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$2900(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 248
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$200(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 218
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$2200(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-array v2, v1, [F

    fill-array-data v2, :array_1

    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 219
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$2300(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-array v2, v1, [F

    fill-array-data v2, :array_2

    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 220
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$2400(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-array v2, v1, [F

    fill-array-data v2, :array_3

    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 221
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$2500(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-array v2, v1, [F

    fill-array-data v2, :array_4

    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 222
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$1000(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)I

    move-result p1

    if-lez p1, :cond_5

    .line 223
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$2200(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-array v2, v1, [F

    fill-array-data v2, :array_5

    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 224
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$2300(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-array v2, v1, [F

    fill-array-data v2, :array_6

    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 225
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$2400(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-array v2, v1, [F

    fill-array-data v2, :array_7

    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 226
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$2500(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-array v1, v1, [F

    fill-array-data v1, :array_8

    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 227
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$1100(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/os/Handler;

    move-result-object p1

    iget-object v1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {v1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$1200(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xce4

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 228
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$2600(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {v1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$2600(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Lcom/narvii/app/NVContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0eea

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 230
    :cond_5
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$2200(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 231
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$2300(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 232
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$2400(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 233
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$2500(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :goto_3
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3c23d70a    # 0.01f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x3f99999a    # 1.2f
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
    .end array-data

    :array_6
    .array-data 4
        0x3f99999a    # 1.2f
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
    .end array-data

    :array_7
    .array-data 4
        0x3f99999a    # 1.2f
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
    .end array-data

    :array_8
    .array-data 4
        0x3f99999a    # 1.2f
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
    .end array-data
.end method
