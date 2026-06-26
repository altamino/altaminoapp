.class Lcom/narvii/nested/NVCollapsingFrameLayout$OffsetUpdateListener;
.super Ljava/lang/Object;
.source "NVCollapsingFrameLayout.java"

# interfaces
.implements Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/nested/NVCollapsingFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OffsetUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/nested/NVCollapsingFrameLayout;


# direct methods
.method constructor <init>(Lcom/narvii/nested/NVCollapsingFrameLayout;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/narvii/nested/NVCollapsingFrameLayout$OffsetUpdateListener;->this$0:Lcom/narvii/nested/NVCollapsingFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Landroid/support/design/widget/AppBarLayout;I)V
    .locals 3

    .line 63
    iget-object p1, p0, Lcom/narvii/nested/NVCollapsingFrameLayout$OffsetUpdateListener;->this$0:Lcom/narvii/nested/NVCollapsingFrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/narvii/nested/NVCollapsingFrameLayout$OffsetUpdateListener;->this$0:Lcom/narvii/nested/NVCollapsingFrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 65
    invoke-static {v1}, Lcom/narvii/nested/NVCollapsingFrameLayout;->getViewOffsetHelper(Landroid/view/View;)Lcom/narvii/nested/utils/ViewOffsetHelper;

    move-result-object v1

    neg-int v2, p2

    int-to-float v2, v2

    .line 67
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 66
    invoke-virtual {v1, v2}, Lcom/narvii/nested/utils/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
