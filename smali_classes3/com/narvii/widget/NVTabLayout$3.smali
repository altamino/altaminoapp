.class Lcom/narvii/widget/NVTabLayout$3;
.super Ljava/lang/Object;
.source "NVTabLayout.java"

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

    .line 172
    iput-object p1, p0, Lcom/narvii/widget/NVTabLayout$3;->this$0:Lcom/narvii/widget/NVTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 175
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 176
    iget-object v0, p0, Lcom/narvii/widget/NVTabLayout$3;->this$0:Lcom/narvii/widget/NVTabLayout;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/NVTabLayout$3;->this$0:Lcom/narvii/widget/NVTabLayout;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 180
    :goto_0
    iget-object v0, p0, Lcom/narvii/widget/NVTabLayout$3;->this$0:Lcom/narvii/widget/NVTabLayout;

    invoke-static {v0}, Lcom/narvii/widget/NVTabLayout;->access$000(Lcom/narvii/widget/NVTabLayout;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-static {v0, v1}, Lcom/narvii/widget/NVTabLayout;->access$102(Lcom/narvii/widget/NVTabLayout;I)I

    .line 181
    iget-object v0, p0, Lcom/narvii/widget/NVTabLayout$3;->this$0:Lcom/narvii/widget/NVTabLayout;

    invoke-static {v0}, Lcom/narvii/widget/NVTabLayout;->access$100(Lcom/narvii/widget/NVTabLayout;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/narvii/widget/NVTabLayout;->access$300(Lcom/narvii/widget/NVTabLayout;II)V

    return-void
.end method
