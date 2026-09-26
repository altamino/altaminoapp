.class Lcom/narvii/nested/NVCollapsingFrameLayout$OffsetUpdateListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$h;


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/nested/NVCollapsingFrameLayout$OffsetUpdateListener;->this$0:Lcom/narvii/nested/NVCollapsingFrameLayout;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 3

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/nested/NVCollapsingFrameLayout$OffsetUpdateListener;->this$0:Lcom/narvii/nested/NVCollapsingFrameLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    :goto_0
    if-ge v0, p1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/nested/NVCollapsingFrameLayout$OffsetUpdateListener;->this$0:Lcom/narvii/nested/NVCollapsingFrameLayout;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Lcom/narvii/nested/NVCollapsingFrameLayout;->getViewOffsetHelper(Landroid/view/View;)Lcom/narvii/nested/utils/ViewOffsetHelper;

    .line 19
    move-result-object v1

    .line 20
    neg-int v2, p2

    .line 21
    int-to-float v2, v2

    .line 22
    .line 23
    .line 24
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 25
    move-result v2

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Lcom/narvii/nested/utils/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    .line 29
    .line 30
    add-int/lit8 v0, v0, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method
