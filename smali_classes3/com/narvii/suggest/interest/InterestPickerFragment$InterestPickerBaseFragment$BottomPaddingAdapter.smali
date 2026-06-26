.class public Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment$BottomPaddingAdapter;
.super Lcom/narvii/list/StaticViewAdapter;
.source "InterestPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "BottomPaddingAdapter"
.end annotation


# instance fields
.field private mainAdapter:Lcom/narvii/list/NVAdapter;

.field final synthetic this$0:Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;


# direct methods
.method protected constructor <init>(Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;Lcom/narvii/list/NVAdapter;)V
    .locals 1

    .line 352
    iput-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment$BottomPaddingAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;

    .line 353
    invoke-direct {p0}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    .line 354
    iput-object p2, p0, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment$BottomPaddingAdapter;->mainAdapter:Lcom/narvii/list/NVAdapter;

    .line 355
    new-instance p2, Landroid/view/View;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 356
    invoke-virtual {p0}, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment$BottomPaddingAdapter;->getMinimumHeight()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setMinimumHeight(I)V

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/view/View;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    .line 357
    invoke-virtual {p0, p1}, Lcom/narvii/list/StaticViewAdapter;->addViews([Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment$BottomPaddingAdapter;->mainAdapter:Lcom/narvii/list/NVAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/narvii/list/StaticViewAdapter;->getCount()I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method protected getMinimumHeight()I
    .locals 2

    .line 361
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment$BottomPaddingAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method
