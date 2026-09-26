.class Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/transition/TransitionLayout$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field lastProgress:F

.field final synthetic this$1:Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;

.field final synthetic val$cell:Landroid/view/View;

.field final synthetic val$startWindowY:I


# direct methods
.method constructor <init>(Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;ILandroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter$1;->this$1:Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter$1;->val$startWindowY:I

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter$1;->val$cell:Landroid/view/View;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onTransitionProgress(IIF)V
    .locals 5

    .line 1
    .line 2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    .line 4
    if-le p2, p1, :cond_1

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter$1;->this$1:Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;->this$0:Lcom/narvii/modulization/template/TemplatePickerFragment;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iget-object v2, p0, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter$1;->this$1:Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;

    .line 17
    .line 18
    iget-object v2, v2, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;->this$0:Lcom/narvii/modulization/template/TemplatePickerFragment;

    .line 19
    .line 20
    iget-object v2, v2, Lcom/narvii/modulization/template/TemplatePickerFragment;->footerView:Landroid/view/View;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    iget-object v3, p0, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter$1;->this$1:Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 30
    move-result-object v3

    .line 31
    .line 32
    const/high16 v4, 0x447a0000    # 1000.0f

    .line 33
    .line 34
    .line 35
    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 36
    move-result v3

    .line 37
    float-to-int v3, v3

    .line 38
    .line 39
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 40
    .line 41
    iget-object v3, p0, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter$1;->this$1:Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;

    .line 42
    .line 43
    iget-object v3, v3, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;->this$0:Lcom/narvii/modulization/template/TemplatePickerFragment;

    .line 44
    .line 45
    iget-object v3, v3, Lcom/narvii/modulization/template/TemplatePickerFragment;->footerView:Landroid/view/View;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    const/4 v2, 0x2

    .line 50
    .line 51
    new-array v2, v2, [I

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 55
    .line 56
    iget v3, p0, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter$1;->val$startWindowY:I

    .line 57
    const/4 v4, 0x1

    .line 58
    .line 59
    aget v2, v2, v4

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 63
    move-result v4

    .line 64
    add-int/2addr v2, v4

    .line 65
    .line 66
    iget-object v4, p0, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter$1;->this$1:Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;

    .line 67
    .line 68
    iget-object v4, v4, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;->this$0:Lcom/narvii/modulization/template/TemplatePickerFragment;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4}, Lcom/narvii/modulization/template/TemplatePickerFragment;->getFooterHeight()I

    .line 72
    move-result v4

    .line 73
    sub-int/2addr v2, v4

    .line 74
    sub-int/2addr v2, p2

    .line 75
    sub-int/2addr v3, v2

    .line 76
    const/4 v2, 0x0

    .line 77
    .line 78
    .line 79
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 80
    move-result v3

    .line 81
    .line 82
    iget v4, p0, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter$1;->lastProgress:F

    .line 83
    .line 84
    sub-float v4, p3, v4

    .line 85
    int-to-float v3, v3

    .line 86
    mul-float/2addr v4, v3

    .line 87
    float-to-int v3, v4

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v3, v2}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 91
    .line 92
    cmpl-float v1, p3, v0

    .line 93
    .line 94
    if-nez v1, :cond_0

    .line 95
    .line 96
    iget-object v1, p0, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter$1;->this$1:Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;

    .line 97
    .line 98
    iget-object v1, v1, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;->this$0:Lcom/narvii/modulization/template/TemplatePickerFragment;

    .line 99
    .line 100
    iget-object v1, v1, Lcom/narvii/modulization/template/TemplatePickerFragment;->footerView:Landroid/view/View;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 104
    move-result-object v1

    .line 105
    .line 106
    iget-object v2, p0, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter$1;->this$1:Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;

    .line 107
    .line 108
    iget-object v2, v2, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;->this$0:Lcom/narvii/modulization/template/TemplatePickerFragment;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2}, Lcom/narvii/modulization/template/TemplatePickerFragment;->getFooterHeight()I

    .line 112
    move-result v2

    .line 113
    .line 114
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 115
    .line 116
    iget-object v2, p0, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter$1;->this$1:Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;

    .line 117
    .line 118
    iget-object v2, v2, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;->this$0:Lcom/narvii/modulization/template/TemplatePickerFragment;

    .line 119
    .line 120
    iget-object v2, v2, Lcom/narvii/modulization/template/TemplatePickerFragment;->footerView:Landroid/view/View;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    .line 125
    :cond_0
    iput p3, p0, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter$1;->lastProgress:F

    .line 126
    .line 127
    .line 128
    :cond_1
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 129
    move-result v1

    .line 130
    .line 131
    if-eqz v1, :cond_2

    .line 132
    .line 133
    const/16 v1, -0x5a

    .line 134
    goto :goto_0

    .line 135
    .line 136
    :cond_2
    const/16 v1, 0x5a

    .line 137
    .line 138
    :goto_0
    iget-object v2, p0, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter$1;->val$cell:Landroid/view/View;

    .line 139
    .line 140
    sget v3, Lcom/narvii/lib/R$id;->chevron:I

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 144
    move-result-object v2

    .line 145
    .line 146
    if-le p2, p1, :cond_3

    .line 147
    int-to-float p1, v1

    .line 148
    mul-float/2addr p3, p1

    .line 149
    goto :goto_1

    .line 150
    :cond_3
    int-to-float p1, v1

    .line 151
    sub-float/2addr v0, p3

    .line 152
    .line 153
    mul-float p3, p1, v0

    .line 154
    .line 155
    .line 156
    :goto_1
    invoke-virtual {v2, p3}, Landroid/view/View;->setRotation(F)V

    .line 157
    return-void
.end method
