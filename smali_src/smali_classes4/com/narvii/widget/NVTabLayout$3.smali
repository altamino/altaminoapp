.class Lcom/narvii/widget/NVTabLayout$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/NVTabLayout;->updateViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/NVTabLayout;


# direct methods
.method constructor <init>(Lcom/narvii/widget/NVTabLayout;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/NVTabLayout$3;->this$0:Lcom/narvii/widget/NVTabLayout;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVTabLayout$3;->this$0:Lcom/narvii/widget/NVTabLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/widget/NVTabLayout$3;->this$0:Lcom/narvii/widget/NVTabLayout;

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/narvii/widget/NVTabLayout;->b(Lcom/narvii/widget/NVTabLayout;)Landroidx/viewpager/widget/ViewPager;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 19
    move-result v1

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Lcom/narvii/widget/NVTabLayout;->c(Lcom/narvii/widget/NVTabLayout;I)V

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/widget/NVTabLayout$3;->this$0:Lcom/narvii/widget/NVTabLayout;

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lcom/narvii/widget/NVTabLayout;->a(Lcom/narvii/widget/NVTabLayout;)I

    .line 28
    move-result v1

    .line 29
    const/4 v2, 0x0

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1, v2}, Lcom/narvii/widget/NVTabLayout;->e(Lcom/narvii/widget/NVTabLayout;II)V

    .line 33
    return-void
.end method
