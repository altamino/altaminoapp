.class Landroidx/drawerlayout/widget/DrawerLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/accessibility/AccessibilityViewCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/drawerlayout/widget/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/drawerlayout/widget/DrawerLayout;


# direct methods
.method constructor <init>(Landroidx/drawerlayout/widget/DrawerLayout;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout$1;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;)Z
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout$1;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->C(Landroid/view/View;)Z

    .line 6
    move-result p2

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    iget-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout$1;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->r(Landroid/view/View;)I

    .line 14
    move-result p2

    .line 15
    const/4 v0, 0x2

    .line 16
    .line 17
    if-eq p2, v0, :cond_0

    .line 18
    .line 19
    iget-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout$1;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->f(Landroid/view/View;)V

    .line 23
    const/4 p1, 0x1

    .line 24
    return p1

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    return p1
.end method
