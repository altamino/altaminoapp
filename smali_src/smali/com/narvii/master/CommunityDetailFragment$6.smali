.class Lcom/narvii/master/CommunityDetailFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/CommunityDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/CommunityDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/CommunityDetailFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$6;->this$0:Lcom/narvii/master/CommunityDetailFragment;

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
    const/high16 p3, 0x3f800000    # 1.0f

    .line 3
    const/4 p4, 0x1

    .line 4
    .line 5
    if-ne p2, p4, :cond_0

    .line 6
    const/4 p2, 0x0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 14
    move-result p2

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 18
    move-result p4

    .line 19
    add-int/2addr p2, p4

    .line 20
    int-to-float p2, p2

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 24
    move-result p1

    .line 25
    int-to-float p1, p1

    .line 26
    div-float/2addr p2, p1

    .line 27
    sub-float/2addr p3, p2

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_0
    if-ge p2, p4, :cond_1

    .line 31
    const/4 p3, 0x0

    .line 32
    .line 33
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$6;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Lcom/narvii/master/CommunityDetailFragment;->t(Lcom/narvii/master/CommunityDetailFragment;)Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$6;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 42
    .line 43
    .line 44
    invoke-static {p1}, Lcom/narvii/master/CommunityDetailFragment;->t(Lcom/narvii/master/CommunityDetailFragment;)Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p3}, Landroid/view/View;->setAlpha(F)V

    .line 49
    .line 50
    :cond_2
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$6;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 51
    .line 52
    .line 53
    invoke-static {p1, p3}, Lcom/narvii/master/CommunityDetailFragment;->R(Lcom/narvii/master/CommunityDetailFragment;F)V

    .line 54
    .line 55
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$6;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 56
    .line 57
    .line 58
    invoke-static {p1}, Lcom/narvii/master/CommunityDetailFragment;->v(Lcom/narvii/master/CommunityDetailFragment;)Landroid/view/View;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    if-eqz p1, :cond_3

    .line 62
    .line 63
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$6;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 64
    .line 65
    .line 66
    invoke-static {p1}, Lcom/narvii/master/CommunityDetailFragment;->v(Lcom/narvii/master/CommunityDetailFragment;)Landroid/view/View;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, p3}, Landroid/view/View;->setAlpha(F)V

    .line 71
    .line 72
    :cond_3
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$6;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 73
    .line 74
    .line 75
    invoke-static {p1}, Lcom/narvii/master/CommunityDetailFragment;->T(Lcom/narvii/master/CommunityDetailFragment;)V

    .line 76
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
