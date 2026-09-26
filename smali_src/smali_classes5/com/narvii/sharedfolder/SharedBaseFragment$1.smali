.class Lcom/narvii/sharedfolder/SharedBaseFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/sharedfolder/SharedBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/sharedfolder/SharedBaseFragment;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedBaseFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedBaseFragment$1;->this$0:Lcom/narvii/sharedfolder/SharedBaseFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .line 1
    const/4 p3, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 5
    move-result-object p1

    .line 6
    .line 7
    iget-object p4, p0, Lcom/narvii/sharedfolder/SharedBaseFragment$1;->this$0:Lcom/narvii/sharedfolder/SharedBaseFragment;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p4}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 11
    move-result p4

    .line 12
    .line 13
    if-nez p4, :cond_2

    .line 14
    .line 15
    iget-object p4, p0, Lcom/narvii/sharedfolder/SharedBaseFragment$1;->this$0:Lcom/narvii/sharedfolder/SharedBaseFragment;

    .line 16
    .line 17
    const-string v0, "fromTab"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p4, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 21
    move-result p4

    .line 22
    .line 23
    if-eqz p4, :cond_0

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_0
    const/high16 p4, 0x3f800000    # 1.0f

    .line 27
    .line 28
    if-nez p2, :cond_1

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 34
    move-result p2

    .line 35
    .line 36
    if-eqz p2, :cond_1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 40
    move-result p2

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 44
    move-result v0

    .line 45
    add-int/2addr p2, v0

    .line 46
    int-to-float p2, p2

    .line 47
    mul-float/2addr p2, p4

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 51
    move-result p1

    .line 52
    int-to-float p1, p1

    .line 53
    div-float/2addr p2, p1

    .line 54
    sub-float/2addr p4, p2

    .line 55
    .line 56
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedBaseFragment$1;->this$0:Lcom/narvii/sharedfolder/SharedBaseFragment;

    .line 57
    .line 58
    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedBaseFragment;->actionBarOverlay:Landroid/view/View;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 62
    .line 63
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedBaseFragment$1;->this$0:Lcom/narvii/sharedfolder/SharedBaseFragment;

    .line 64
    .line 65
    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedBaseFragment;->actionBarOverlay:Landroid/view/View;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p4}, Landroid/view/View;->setAlpha(F)V

    .line 69
    goto :goto_1

    .line 70
    .line 71
    :cond_1
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedBaseFragment$1;->this$0:Lcom/narvii/sharedfolder/SharedBaseFragment;

    .line 72
    .line 73
    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedBaseFragment;->actionBarOverlay:Landroid/view/View;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 77
    .line 78
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedBaseFragment$1;->this$0:Lcom/narvii/sharedfolder/SharedBaseFragment;

    .line 79
    .line 80
    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedBaseFragment;->actionBarOverlay:Landroid/view/View;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, p4}, Landroid/view/View;->setAlpha(F)V

    .line 84
    goto :goto_1

    .line 85
    .line 86
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedBaseFragment$1;->this$0:Lcom/narvii/sharedfolder/SharedBaseFragment;

    .line 87
    .line 88
    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedBaseFragment;->actionBarOverlay:Landroid/view/View;

    .line 89
    .line 90
    const/16 p2, 0x8

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 94
    :goto_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
