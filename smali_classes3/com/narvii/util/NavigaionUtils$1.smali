.class final Lcom/narvii/util/NavigaionUtils$1;
.super Ljava/lang/Object;
.source "NavigaionUtils.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/NavigaionUtils;->setOnNavigationChangedListener(Landroid/app/Activity;Lcom/narvii/util/NavigaionUtils$OnNavigationChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$height:I

.field final synthetic val$onNavigationStateListener:Lcom/narvii/util/NavigaionUtils$OnNavigationChangedListener;


# direct methods
.method constructor <init>(Landroid/app/Activity;ILcom/narvii/util/NavigaionUtils$OnNavigationChangedListener;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/narvii/util/NavigaionUtils$1;->val$activity:Landroid/app/Activity;

    iput p2, p0, Lcom/narvii/util/NavigaionUtils$1;->val$height:I

    iput-object p3, p0, Lcom/narvii/util/NavigaionUtils$1;->val$onNavigationStateListener:Lcom/narvii/util/NavigaionUtils$OnNavigationChangedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    .line 75
    iget-object p1, p0, Lcom/narvii/util/NavigaionUtils$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 79
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    .line 81
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result p1

    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result p1

    .line 86
    :goto_0
    iget v2, p0, Lcom/narvii/util/NavigaionUtils$1;->val$height:I

    if-ne p1, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 88
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/narvii/util/NavigaionUtils$1;->val$onNavigationStateListener:Lcom/narvii/util/NavigaionUtils$OnNavigationChangedListener;

    if-eqz v1, :cond_4

    iget v2, p0, Lcom/narvii/util/NavigaionUtils$1;->val$height:I

    if-gt p1, v2, :cond_4

    .line 89
    invoke-interface {v1, v0, p1}, Lcom/narvii/util/NavigaionUtils$OnNavigationChangedListener;->onNavigationState(ZI)V

    :cond_4
    return-object p2
.end method
