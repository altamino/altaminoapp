.class Lcom/narvii/util/NavigaionUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/NavigaionUtils;->setOnNavigationChangedListener(Landroid/app/Activity;Lcom/narvii/util/NavigaionUtils$OnNavigationChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$height:I

.field final synthetic val$onNavigationStateListener:Lcom/narvii/util/NavigaionUtils$OnNavigationChangedListener;


# direct methods
.method constructor <init>(Landroid/app/Activity;ILcom/narvii/util/NavigaionUtils$OnNavigationChangedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/NavigaionUtils$1;->val$activity:Landroid/app/Activity;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/util/NavigaionUtils$1;->val$height:I

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/util/NavigaionUtils$1;->val$onNavigationStateListener:Lcom/narvii/util/NavigaionUtils$OnNavigationChangedListener;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/util/NavigaionUtils$1;->val$activity:Landroid/app/Activity;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    .line 14
    move-result p1

    .line 15
    const/4 v0, 0x0

    .line 16
    .line 17
    if-eqz p2, :cond_3

    .line 18
    const/4 v1, 0x1

    .line 19
    .line 20
    if-ne p1, v1, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    .line 24
    move-result p1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v2, 0x3

    .line 27
    .line 28
    if-ne p1, v2, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    .line 32
    move-result p1

    .line 33
    goto :goto_0

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    .line 37
    move-result p1

    .line 38
    .line 39
    :goto_0
    iget v2, p0, Lcom/narvii/util/NavigaionUtils$1;->val$height:I

    .line 40
    .line 41
    if-ne p1, v2, :cond_2

    .line 42
    move v0, v1

    .line 43
    :cond_2
    move v3, v0

    .line 44
    move v0, p1

    .line 45
    move p1, v3

    .line 46
    goto :goto_1

    .line 47
    :cond_3
    move p1, v0

    .line 48
    .line 49
    :goto_1
    iget-object v1, p0, Lcom/narvii/util/NavigaionUtils$1;->val$onNavigationStateListener:Lcom/narvii/util/NavigaionUtils$OnNavigationChangedListener;

    .line 50
    .line 51
    if-eqz v1, :cond_4

    .line 52
    .line 53
    iget v2, p0, Lcom/narvii/util/NavigaionUtils$1;->val$height:I

    .line 54
    .line 55
    if-gt v0, v2, :cond_4

    .line 56
    .line 57
    .line 58
    invoke-interface {v1, p1, v0}, Lcom/narvii/util/NavigaionUtils$OnNavigationChangedListener;->onNavigationState(ZI)V

    .line 59
    :cond_4
    return-object p2
.end method
