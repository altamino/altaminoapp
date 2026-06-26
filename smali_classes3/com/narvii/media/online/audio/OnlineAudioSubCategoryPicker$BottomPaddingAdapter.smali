.class public Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$BottomPaddingAdapter;
.super Lcom/narvii/list/StaticViewAdapter;
.source "OnlineAudioSubCategoryPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "BottomPaddingAdapter"
.end annotation


# instance fields
.field private mainAdapter:Lcom/narvii/list/NVAdapter;

.field final synthetic this$0:Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;


# direct methods
.method protected constructor <init>(Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;Lcom/narvii/list/NVAdapter;)V
    .locals 1

    .line 293
    iput-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$BottomPaddingAdapter;->this$0:Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;

    .line 294
    invoke-direct {p0}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    .line 295
    iput-object p2, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$BottomPaddingAdapter;->mainAdapter:Lcom/narvii/list/NVAdapter;

    .line 296
    new-instance p2, Landroid/view/View;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 297
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setMinimumHeight(I)V

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/view/View;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    .line 298
    invoke-virtual {p0, p1}, Lcom/narvii/list/StaticViewAdapter;->addViews([Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$BottomPaddingAdapter;->mainAdapter:Lcom/narvii/list/NVAdapter;

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
