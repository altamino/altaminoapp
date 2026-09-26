.class Lcom/narvii/drawer/DrawerHost$ScrollToTop;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/drawer/DrawerHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScrollToTop"
.end annotation


# instance fields
.field drawerHost:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/narvii/drawer/DrawerHost;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/narvii/drawer/DrawerHost;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/drawer/DrawerHost$ScrollToTop;->drawerHost:Ljava/lang/ref/WeakReference;

    .line 11
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$ScrollToTop;->drawerHost:Ljava/lang/ref/WeakReference;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/drawer/DrawerHost;

    .line 9
    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    iget-object v1, v0, Lcom/narvii/drawer/DrawerHost;->scrollToTop:Ljava/lang/Runnable;

    .line 13
    .line 14
    if-ne v1, p0, :cond_3

    .line 15
    .line 16
    .line 17
    const v1, 0x7f0a0491

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    check-cast v1, Landroid/widget/ScrollView;

    .line 24
    const/4 v2, 0x0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lcom/narvii/drawer/DrawerHost;->g(Lcom/narvii/drawer/DrawerHost;)Z

    .line 31
    move-result v1

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    iget-object v1, v0, Lcom/narvii/drawer/DrawerHost;->valueAnimator:Landroid/animation/ObjectAnimator;

    .line 36
    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-static {v0, v2}, Lcom/narvii/drawer/DrawerHost;->k(Lcom/narvii/drawer/DrawerHost;Z)V

    .line 44
    .line 45
    .line 46
    invoke-static {v0}, Lcom/narvii/drawer/DrawerHost;->h(Lcom/narvii/drawer/DrawerHost;)Lcom/narvii/amino/page/PageSecondLevelLayout;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Lcom/narvii/drawer/DrawerHost;->h(Lcom/narvii/drawer/DrawerHost;)Lcom/narvii/amino/page/PageSecondLevelLayout;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    const/16 v2, 0x8

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    :cond_1
    invoke-static {v0}, Lcom/narvii/drawer/DrawerHost;->e(Lcom/narvii/drawer/DrawerHost;)Landroid/widget/TextView;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 66
    move-result-object v2

    .line 67
    .line 68
    .line 69
    const v3, 0x7f120411

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 73
    move-result-object v2

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    .line 78
    .line 79
    invoke-static {v0}, Lcom/narvii/drawer/DrawerHost;->f(Lcom/narvii/drawer/DrawerHost;)Landroid/widget/ImageView;

    .line 80
    move-result-object v1

    .line 81
    const/4 v2, 0x0

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v2}, Landroid/view/View;->setRotation(F)V

    .line 85
    :cond_2
    const/4 v1, 0x0

    .line 86
    .line 87
    iput-object v1, v0, Lcom/narvii/drawer/DrawerHost;->scrollToTop:Ljava/lang/Runnable;

    .line 88
    :cond_3
    return-void
.end method
