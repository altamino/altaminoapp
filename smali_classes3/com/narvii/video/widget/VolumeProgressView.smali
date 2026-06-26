.class public final Lcom/narvii/video/widget/VolumeProgressView;
.super Landroid/widget/RelativeLayout;
.source "VolumeProgressView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/video/widget/VolumeProgressView$OnVolumeChangedListener;
    }
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private volumeListener:Lcom/narvii/video/widget/VolumeProgressView$OnVolumeChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/narvii/mediaeditor/R$layout;->component_volume_progress_bar:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/narvii/mediaeditor/R$layout;->component_volume_progress_bar:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method

.method public static final synthetic access$getVolumeListener$p(Lcom/narvii/video/widget/VolumeProgressView;)Lcom/narvii/video/widget/VolumeProgressView$OnVolumeChangedListener;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/narvii/video/widget/VolumeProgressView;->volumeListener:Lcom/narvii/video/widget/VolumeProgressView$OnVolumeChangedListener;

    return-object p0
.end method

.method public static final synthetic access$setVolumeListener$p(Lcom/narvii/video/widget/VolumeProgressView;Lcom/narvii/video/widget/VolumeProgressView$OnVolumeChangedListener;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/narvii/video/widget/VolumeProgressView;->volumeListener:Lcom/narvii/video/widget/VolumeProgressView$OnVolumeChangedListener;

    return-void
.end method

.method public static final synthetic access$updateVolumeIcon(Lcom/narvii/video/widget/VolumeProgressView;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/narvii/video/widget/VolumeProgressView;->updateVolumeIcon(I)V

    return-void
.end method

.method public static synthetic init$default(Lcom/narvii/video/widget/VolumeProgressView;ILcom/narvii/video/widget/VolumeProgressView$OnVolumeChangedListener;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 29
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/video/widget/VolumeProgressView;->init(ILcom/narvii/video/widget/VolumeProgressView$OnVolumeChangedListener;Z)V

    return-void
.end method

.method private final updateVolumeIcon(I)V
    .locals 2

    if-gtz p1, :cond_0

    .line 59
    sget p1, Lcom/narvii/mediaeditor/R$id;->icon_volume:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/widget/VolumeProgressView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_1

    :cond_0
    const/16 v0, 0x31

    const/4 v1, 0x1

    if-le v1, p1, :cond_1

    goto :goto_0

    :cond_1
    if-lt v0, p1, :cond_2

    .line 60
    sget p1, Lcom/narvii/mediaeditor/R$id;->icon_volume:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/widget/VolumeProgressView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_1

    .line 61
    :cond_2
    :goto_0
    sget p1, Lcom/narvii/mediaeditor/R$id;->icon_volume:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/widget/VolumeProgressView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/video/widget/VolumeProgressView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/video/widget/VolumeProgressView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/widget/VolumeProgressView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/video/widget/VolumeProgressView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/video/widget/VolumeProgressView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final init(ILcom/narvii/video/widget/VolumeProgressView$OnVolumeChangedListener;Z)V
    .locals 3

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/narvii/mediaeditor/R$drawable;->button_volume_bg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz p3, :cond_0

    .line 32
    sget p3, Lcom/narvii/mediaeditor/R$id;->volume_progress_text:I

    invoke-virtual {p0, p3}, Lcom/narvii/video/widget/VolumeProgressView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const-string v1, "#88FFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const-string p3, "#FFFFFF"

    .line 33
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-static {v0, p3}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_0

    .line 35
    :cond_0
    sget p3, Lcom/narvii/mediaeditor/R$id;->volume_progress_text:I

    invoke-virtual {p0, p3}, Lcom/narvii/video/widget/VolumeProgressView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const-string v1, "#4A4A4A"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 36
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-static {v0, p3}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 38
    :goto_0
    sget p3, Lcom/narvii/mediaeditor/R$id;->icon_volume:I

    invoke-virtual {p0, p3}, Lcom/narvii/video/widget/VolumeProgressView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 39
    invoke-direct {p0, p1}, Lcom/narvii/video/widget/VolumeProgressView;->updateVolumeIcon(I)V

    .line 40
    iput-object p2, p0, Lcom/narvii/video/widget/VolumeProgressView;->volumeListener:Lcom/narvii/video/widget/VolumeProgressView$OnVolumeChangedListener;

    .line 41
    sget p2, Lcom/narvii/mediaeditor/R$id;->volume_bar:I

    invoke-virtual {p0, p2}, Lcom/narvii/video/widget/VolumeProgressView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    const-string p3, "volume_bar"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 42
    sget p2, Lcom/narvii/mediaeditor/R$id;->volume_progress_text:I

    invoke-virtual {p0, p2}, Lcom/narvii/video/widget/VolumeProgressView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const-string p3, "volume_progress_text"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x25

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    sget p1, Lcom/narvii/mediaeditor/R$id;->volume_bar:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/widget/VolumeProgressView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    new-instance p2, Lcom/narvii/video/widget/VolumeProgressView$init$1;

    invoke-direct {p2, p0}, Lcom/narvii/video/widget/VolumeProgressView$init$1;-><init>(Lcom/narvii/video/widget/VolumeProgressView;)V

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 54
    sget-object p1, Lcom/narvii/video/widget/VolumeProgressView$init$2;->INSTANCE:Lcom/narvii/video/widget/VolumeProgressView$init$2;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final removeOnVolumeChangedListener()V
    .locals 1

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/narvii/video/widget/VolumeProgressView;->volumeListener:Lcom/narvii/video/widget/VolumeProgressView$OnVolumeChangedListener;

    return-void
.end method
