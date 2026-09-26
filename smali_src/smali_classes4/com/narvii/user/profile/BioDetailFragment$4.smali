.class Lcom/narvii/user/profile/BioDetailFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/profile/BioDetailFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/profile/BioDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/user/profile/BioDetailFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/user/profile/BioDetailFragment$4;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

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
    iget-object p4, p0, Lcom/narvii/user/profile/BioDetailFragment$4;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    .line 8
    .line 9
    .line 10
    invoke-static {p4}, Lcom/narvii/user/profile/BioDetailFragment;->v(Lcom/narvii/user/profile/BioDetailFragment;)Z

    .line 11
    move-result p4

    .line 12
    .line 13
    if-eqz p4, :cond_2

    .line 14
    .line 15
    iget-object p4, p0, Lcom/narvii/user/profile/BioDetailFragment$4;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    .line 16
    .line 17
    .line 18
    invoke-static {p4}, Lcom/narvii/user/profile/BioDetailFragment;->access$200(Lcom/narvii/user/profile/BioDetailFragment;)Z

    .line 19
    move-result p4

    .line 20
    .line 21
    if-nez p4, :cond_2

    .line 22
    .line 23
    iget-object p4, p0, Lcom/narvii/user/profile/BioDetailFragment$4;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p4}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 27
    move-result p4

    .line 28
    .line 29
    if-eqz p4, :cond_0

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_0
    const/high16 p4, 0x3f800000    # 1.0f

    .line 33
    .line 34
    if-nez p2, :cond_1

    .line 35
    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 40
    move-result p2

    .line 41
    .line 42
    if-eqz p2, :cond_1

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 46
    move-result p2

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 50
    move-result v0

    .line 51
    add-int/2addr p2, v0

    .line 52
    int-to-float p2, p2

    .line 53
    mul-float/2addr p2, p4

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 57
    move-result p1

    .line 58
    int-to-float p1, p1

    .line 59
    div-float/2addr p2, p1

    .line 60
    sub-float/2addr p4, p2

    .line 61
    .line 62
    iget-object p1, p0, Lcom/narvii/user/profile/BioDetailFragment$4;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    .line 63
    .line 64
    .line 65
    invoke-static {p1}, Lcom/narvii/user/profile/BioDetailFragment;->t(Lcom/narvii/user/profile/BioDetailFragment;)Landroid/view/View;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 70
    .line 71
    iget-object p1, p0, Lcom/narvii/user/profile/BioDetailFragment$4;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    .line 72
    .line 73
    .line 74
    invoke-static {p1}, Lcom/narvii/user/profile/BioDetailFragment;->t(Lcom/narvii/user/profile/BioDetailFragment;)Landroid/view/View;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, p4}, Landroid/view/View;->setAlpha(F)V

    .line 79
    goto :goto_1

    .line 80
    .line 81
    :cond_1
    iget-object p1, p0, Lcom/narvii/user/profile/BioDetailFragment$4;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    .line 82
    .line 83
    .line 84
    invoke-static {p1}, Lcom/narvii/user/profile/BioDetailFragment;->t(Lcom/narvii/user/profile/BioDetailFragment;)Landroid/view/View;

    .line 85
    move-result-object p1

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 89
    .line 90
    iget-object p1, p0, Lcom/narvii/user/profile/BioDetailFragment$4;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    .line 91
    .line 92
    .line 93
    invoke-static {p1}, Lcom/narvii/user/profile/BioDetailFragment;->t(Lcom/narvii/user/profile/BioDetailFragment;)Landroid/view/View;

    .line 94
    move-result-object p1

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, p4}, Landroid/view/View;->setAlpha(F)V

    .line 98
    goto :goto_1

    .line 99
    .line 100
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/narvii/user/profile/BioDetailFragment$4;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    .line 101
    .line 102
    .line 103
    invoke-static {p1}, Lcom/narvii/user/profile/BioDetailFragment;->t(Lcom/narvii/user/profile/BioDetailFragment;)Landroid/view/View;

    .line 104
    move-result-object p1

    .line 105
    .line 106
    const/16 p2, 0x8

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 110
    :goto_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
