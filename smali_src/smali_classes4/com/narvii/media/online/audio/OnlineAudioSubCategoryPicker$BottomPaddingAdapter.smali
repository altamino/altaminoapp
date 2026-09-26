.class public Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$BottomPaddingAdapter;
.super Lcom/narvii/list/StaticViewAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$BottomPaddingAdapter;->this$0:Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$BottomPaddingAdapter;->mainAdapter:Lcom/narvii/list/NVAdapter;

    .line 8
    .line 9
    new-instance p2, Landroid/view/View;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-direct {p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    const/high16 v0, 0x42c80000    # 100.0f

    .line 23
    .line 24
    .line 25
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 26
    move-result p1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, p1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 30
    const/4 p1, 0x1

    .line 31
    .line 32
    new-array p1, p1, [Landroid/view/View;

    .line 33
    const/4 v0, 0x0

    .line 34
    .line 35
    aput-object p2, p1, v0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lcom/narvii/list/StaticViewAdapter;->addViews([Landroid/view/View;)V

    .line 39
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$BottomPaddingAdapter;->mainAdapter:Lcom/narvii/list/NVAdapter;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/StaticViewAdapter;->getCount()I

    .line 15
    move-result v0

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 18
    :goto_1
    return v0
.end method
