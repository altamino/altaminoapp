.class Lcom/narvii/monetization/bubble/BubbleEditView$3;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditView$3;->this$0:Lcom/narvii/monetization/bubble/BubbleEditView;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/monetization/bubble/BubbleEditView$3;->val$bubbleInfo:Lcom/narvii/model/BubbleInfo;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 0

    return-void
.end method

.method public onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleEditView$3;->this$0:Lcom/narvii/monetization/bubble/BubbleEditView;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 17
    move-result v1

    .line 18
    int-to-float v1, v1

    .line 19
    .line 20
    const/high16 v2, 0x40000000    # 2.0f

    .line 21
    div-float/2addr v1, v2

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 25
    move-result v0

    .line 26
    float-to-int v0, v0

    .line 27
    .line 28
    .line 29
    invoke-static {p2, v0}, Lcom/narvii/monetization/bubble/BubbleEditView;->e(Lcom/narvii/monetization/bubble/BubbleEditView;I)V

    .line 30
    .line 31
    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleEditView$3;->this$0:Lcom/narvii/monetization/bubble/BubbleEditView;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 39
    move-result v1

    .line 40
    int-to-float v1, v1

    .line 41
    div-float/2addr v1, v2

    .line 42
    .line 43
    .line 44
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 45
    move-result v0

    .line 46
    float-to-int v0, v0

    .line 47
    .line 48
    .line 49
    invoke-static {p2, v0}, Lcom/narvii/monetization/bubble/BubbleEditView;->d(Lcom/narvii/monetization/bubble/BubbleEditView;I)V

    .line 50
    .line 51
    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleEditView$3;->this$0:Lcom/narvii/monetization/bubble/BubbleEditView;

    .line 52
    .line 53
    iget-object p2, p2, Lcom/narvii/monetization/bubble/BubbleEditView;->bubbleBg:Lcom/narvii/widget/NVImageView;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 57
    move-result-object p2

    .line 58
    .line 59
    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 60
    .line 61
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditView$3;->this$0:Lcom/narvii/monetization/bubble/BubbleEditView;

    .line 62
    .line 63
    .line 64
    invoke-static {v0}, Lcom/narvii/monetization/bubble/BubbleEditView;->b(Lcom/narvii/monetization/bubble/BubbleEditView;)I

    .line 65
    move-result v0

    .line 66
    .line 67
    iput v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 68
    .line 69
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditView$3;->this$0:Lcom/narvii/monetization/bubble/BubbleEditView;

    .line 70
    .line 71
    .line 72
    invoke-static {v0}, Lcom/narvii/monetization/bubble/BubbleEditView;->a(Lcom/narvii/monetization/bubble/BubbleEditView;)I

    .line 73
    move-result v0

    .line 74
    .line 75
    iput v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 76
    .line 77
    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleEditView$3;->this$0:Lcom/narvii/monetization/bubble/BubbleEditView;

    .line 78
    .line 79
    .line 80
    invoke-static {p2}, Lcom/narvii/monetization/bubble/BubbleEditView;->b(Lcom/narvii/monetization/bubble/BubbleEditView;)I

    .line 81
    move-result p2

    .line 82
    .line 83
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditView$3;->this$0:Lcom/narvii/monetization/bubble/BubbleEditView;

    .line 84
    .line 85
    .line 86
    invoke-static {v0}, Lcom/narvii/monetization/bubble/BubbleEditView;->a(Lcom/narvii/monetization/bubble/BubbleEditView;)I

    .line 87
    move-result v0

    .line 88
    const/4 v1, 0x0

    .line 89
    .line 90
    .line 91
    invoke-static {p1, p2, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 92
    move-result-object p1

    .line 93
    .line 94
    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleEditView$3;->this$0:Lcom/narvii/monetization/bubble/BubbleEditView;

    .line 95
    .line 96
    iget-object p2, p2, Lcom/narvii/monetization/bubble/BubbleEditView;->bubbleBg:Lcom/narvii/widget/NVImageView;

    .line 97
    .line 98
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 99
    .line 100
    .line 101
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 102
    move-result v1

    .line 103
    .line 104
    if-eqz v1, :cond_1

    .line 105
    .line 106
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleEditView$3;->this$0:Lcom/narvii/monetization/bubble/BubbleEditView;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, p1}, Lcom/narvii/monetization/bubble/BubbleEditView;->getFlipBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 110
    move-result-object p1

    .line 111
    .line 112
    .line 113
    :cond_1
    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2, v0}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    .line 118
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditView$3;->this$0:Lcom/narvii/monetization/bubble/BubbleEditView;

    .line 119
    .line 120
    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleEditView$3;->val$bubbleInfo:Lcom/narvii/model/BubbleInfo;

    .line 121
    .line 122
    iget-object p2, p2, Lcom/narvii/model/BubbleInfo;->allowedSlots:Ljava/util/List;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, p2}, Lcom/narvii/monetization/bubble/BubbleEditView;->configAllowSlots(Ljava/util/List;)V

    .line 126
    .line 127
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditView$3;->this$0:Lcom/narvii/monetization/bubble/BubbleEditView;

    .line 128
    .line 129
    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleEditView$3;->val$bubbleInfo:Lcom/narvii/model/BubbleInfo;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, p2}, Lcom/narvii/monetization/bubble/BubbleEditView;->loseFocus(Lcom/narvii/model/BubbleInfo;)V

    .line 133
    return-void
.end method
