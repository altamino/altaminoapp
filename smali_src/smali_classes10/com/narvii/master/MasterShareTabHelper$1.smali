.class Lcom/narvii/master/MasterShareTabHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/MasterShareTabHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/MasterShareTabHelper;


# direct methods
.method constructor <init>(Lcom/narvii/master/MasterShareTabHelper;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/MasterShareTabHelper$1;->this$0:Lcom/narvii/master/MasterShareTabHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 1
    .line 2
    iget-object p3, p0, Lcom/narvii/master/MasterShareTabHelper$1;->this$0:Lcom/narvii/master/MasterShareTabHelper;

    .line 3
    .line 4
    iget-object p3, p3, Lcom/narvii/master/MasterShareTabHelper;->listFragment:Lcom/narvii/list/NVListFragment;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Lcom/narvii/app/NVFragment;->isActive()Z

    .line 8
    move-result p3

    .line 9
    .line 10
    if-eqz p3, :cond_6

    .line 11
    .line 12
    iget-object p3, p0, Lcom/narvii/master/MasterShareTabHelper$1;->this$0:Lcom/narvii/master/MasterShareTabHelper;

    .line 13
    .line 14
    iget-object p3, p3, Lcom/narvii/master/MasterShareTabHelper;->listFragment:Lcom/narvii/list/NVListFragment;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p3}, Lcom/narvii/app/NVFragment;->getUserVisibleHint()Z

    .line 18
    move-result p3

    .line 19
    .line 20
    if-nez p3, :cond_0

    .line 21
    goto :goto_1

    .line 22
    .line 23
    :cond_0
    iget-object p3, p0, Lcom/narvii/master/MasterShareTabHelper$1;->this$0:Lcom/narvii/master/MasterShareTabHelper;

    .line 24
    .line 25
    iget-object p3, p3, Lcom/narvii/master/MasterShareTabHelper;->listFragment:Lcom/narvii/list/NVListFragment;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 29
    move-result-object p3

    .line 30
    .line 31
    instance-of p4, p3, Lcom/narvii/master/MasterTabFragment;

    .line 32
    .line 33
    if-eqz p4, :cond_1

    .line 34
    .line 35
    check-cast p3, Lcom/narvii/master/MasterTabFragment;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p3}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    .line 39
    move-result-object p3

    .line 40
    .line 41
    iget-object p4, p0, Lcom/narvii/master/MasterShareTabHelper$1;->this$0:Lcom/narvii/master/MasterShareTabHelper;

    .line 42
    .line 43
    iget-object p4, p4, Lcom/narvii/master/MasterShareTabHelper;->listFragment:Lcom/narvii/list/NVListFragment;

    .line 44
    .line 45
    if-eq p3, p4, :cond_1

    .line 46
    return-void

    .line 47
    .line 48
    :cond_1
    iget-object p3, p0, Lcom/narvii/master/MasterShareTabHelper$1;->this$0:Lcom/narvii/master/MasterShareTabHelper;

    .line 49
    .line 50
    .line 51
    invoke-static {p3}, Lcom/narvii/master/MasterShareTabHelper;->a(Lcom/narvii/master/MasterShareTabHelper;)Landroid/view/View;

    .line 52
    move-result-object p3

    .line 53
    .line 54
    if-nez p3, :cond_2

    .line 55
    return-void

    .line 56
    :cond_2
    const/4 p4, 0x0

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    if-nez p1, :cond_3

    .line 63
    goto :goto_0

    .line 64
    .line 65
    .line 66
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 67
    move-result p4

    .line 68
    .line 69
    :goto_0
    iget-object p1, p0, Lcom/narvii/master/MasterShareTabHelper$1;->this$0:Lcom/narvii/master/MasterShareTabHelper;

    .line 70
    .line 71
    .line 72
    invoke-static {p1}, Lcom/narvii/master/MasterShareTabHelper;->b(Lcom/narvii/master/MasterShareTabHelper;)Z

    .line 73
    move-result p1

    .line 74
    .line 75
    if-eqz p1, :cond_5

    .line 76
    .line 77
    if-nez p2, :cond_4

    .line 78
    int-to-float p1, p4

    .line 79
    .line 80
    .line 81
    invoke-virtual {p3, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 82
    goto :goto_1

    .line 83
    .line 84
    :cond_4
    iget-object p1, p0, Lcom/narvii/master/MasterShareTabHelper$1;->this$0:Lcom/narvii/master/MasterShareTabHelper;

    .line 85
    .line 86
    .line 87
    invoke-static {p1}, Lcom/narvii/master/MasterShareTabHelper;->c(Lcom/narvii/master/MasterShareTabHelper;)I

    .line 88
    move-result p1

    .line 89
    .line 90
    mul-int/lit8 p1, p1, -0x1

    .line 91
    int-to-float p1, p1

    .line 92
    .line 93
    .line 94
    invoke-virtual {p3, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 95
    goto :goto_1

    .line 96
    .line 97
    :cond_5
    iget-object p1, p0, Lcom/narvii/master/MasterShareTabHelper$1;->this$0:Lcom/narvii/master/MasterShareTabHelper;

    .line 98
    .line 99
    .line 100
    invoke-static {p1}, Lcom/narvii/master/MasterShareTabHelper;->d(Lcom/narvii/master/MasterShareTabHelper;)V

    .line 101
    :cond_6
    :goto_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
