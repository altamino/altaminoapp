.class public final Lcom/narvii/video/widget/MediaOptionPanel;
.super Landroid/widget/RelativeLayout;
.source "MediaOptionPanel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;,
        Lcom/narvii/video/widget/MediaOptionPanel$Companion;
    }
.end annotation


# static fields
.field public static final ACTION_TYPE_AUDIO_TRACK_EDIT:I = 0x3

.field public static final ACTION_TYPE_AUDIO_TRIM:I = 0x2

.field public static final ACTION_TYPE_VIDEO_SPEED:I = 0x5

.field public static final ACTION_TYPE_VIDEO_SPLIT:I = 0x4

.field public static final ACTION_TYPE_VIDEO_TRIM:I = 0x1

.field public static final Companion:Lcom/narvii/video/widget/MediaOptionPanel$Companion;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private actionType:I

.field private final attributes:Landroid/util/AttributeSet;

.field private optionSelectedListener:Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/video/widget/MediaOptionPanel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/video/widget/MediaOptionPanel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/video/widget/MediaOptionPanel;->Companion:Lcom/narvii/video/widget/MediaOptionPanel$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p2, p0, Lcom/narvii/video/widget/MediaOptionPanel;->attributes:Landroid/util/AttributeSet;

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/narvii/mediaeditor/R$layout;->component_option_panel:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method

.method public static final synthetic access$getActionType$p(Lcom/narvii/video/widget/MediaOptionPanel;)I
    .locals 0

    .line 15
    iget p0, p0, Lcom/narvii/video/widget/MediaOptionPanel;->actionType:I

    return p0
.end method

.method public static final synthetic access$getOptionSelectedListener$p(Lcom/narvii/video/widget/MediaOptionPanel;)Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/narvii/video/widget/MediaOptionPanel;->optionSelectedListener:Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;

    return-object p0
.end method

.method public static final synthetic access$setActionType$p(Lcom/narvii/video/widget/MediaOptionPanel;I)V
    .locals 0

    .line 15
    iput p1, p0, Lcom/narvii/video/widget/MediaOptionPanel;->actionType:I

    return-void
.end method

.method public static final synthetic access$setOptionSelectedListener$p(Lcom/narvii/video/widget/MediaOptionPanel;Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/narvii/video/widget/MediaOptionPanel;->optionSelectedListener:Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;

    return-void
.end method

.method public static synthetic initComponent$default(Lcom/narvii/video/widget/MediaOptionPanel;ILjava/lang/String;Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-string p2, ""

    .line 53
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/video/widget/MediaOptionPanel;->initComponent(ILjava/lang/String;Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/video/widget/MediaOptionPanel;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/video/widget/MediaOptionPanel;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/widget/MediaOptionPanel;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/video/widget/MediaOptionPanel;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/video/widget/MediaOptionPanel;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getAttributes()Landroid/util/AttributeSet;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/narvii/video/widget/MediaOptionPanel;->attributes:Landroid/util/AttributeSet;

    return-object v0
.end method

.method public final initComponent(ILjava/lang/String;Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;)V
    .locals 3

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iput p1, p0, Lcom/narvii/video/widget/MediaOptionPanel;->actionType:I

    .line 55
    iput-object p3, p0, Lcom/narvii/video/widget/MediaOptionPanel;->optionSelectedListener:Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;

    const/4 p3, 0x1

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    .line 57
    sget p2, Lcom/narvii/mediaeditor/R$id;->option_hint_text:I

    invoke-virtual {p0, p2}, Lcom/narvii/video/widget/MediaOptionPanel;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 58
    :cond_0
    sget p2, Lcom/narvii/mediaeditor/R$id;->option_add_music:I

    invoke-virtual {p0, p2}, Lcom/narvii/video/widget/MediaOptionPanel;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 59
    :cond_1
    sget p2, Lcom/narvii/mediaeditor/R$id;->option_add_music:I

    invoke-virtual {p0, p2}, Lcom/narvii/video/widget/MediaOptionPanel;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    if-eqz p2, :cond_2

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 60
    :cond_2
    sget p2, Lcom/narvii/mediaeditor/R$id;->option_add_music:I

    invoke-virtual {p0, p2}, Lcom/narvii/video/widget/MediaOptionPanel;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    if-eqz p2, :cond_6

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_0

    .line 62
    :cond_3
    sget v2, Lcom/narvii/mediaeditor/R$id;->option_hint_text:I

    invoke-virtual {p0, v2}, Lcom/narvii/video/widget/MediaOptionPanel;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_4

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    :cond_4
    sget v1, Lcom/narvii/mediaeditor/R$id;->option_add_music:I

    invoke-virtual {p0, v1}, Lcom/narvii/video/widget/MediaOptionPanel;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 64
    :cond_5
    sget v0, Lcom/narvii/mediaeditor/R$id;->option_hint_text:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/widget/MediaOptionPanel;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    :cond_6
    :goto_0
    sget p2, Lcom/narvii/mediaeditor/R$id;->option_cancel:I

    invoke-virtual {p0, p2}, Lcom/narvii/video/widget/MediaOptionPanel;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    if-eqz p2, :cond_8

    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    const/4 p3, 0x2

    :cond_7
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageLevel(I)V

    :cond_8
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 40
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 41
    sget v0, Lcom/narvii/mediaeditor/R$id;->option_done:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/widget/MediaOptionPanel;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/narvii/video/widget/MediaOptionPanel$onFinishInflate$1;

    invoke-direct {v1, p0}, Lcom/narvii/video/widget/MediaOptionPanel$onFinishInflate$1;-><init>(Lcom/narvii/video/widget/MediaOptionPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    :cond_0
    sget v0, Lcom/narvii/mediaeditor/R$id;->option_cancel:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/widget/MediaOptionPanel;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/narvii/video/widget/MediaOptionPanel$onFinishInflate$2;

    invoke-direct {v1, p0}, Lcom/narvii/video/widget/MediaOptionPanel$onFinishInflate$2;-><init>(Lcom/narvii/video/widget/MediaOptionPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    :cond_1
    sget v0, Lcom/narvii/mediaeditor/R$id;->option_add_music:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/widget/MediaOptionPanel;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/narvii/video/widget/MediaOptionPanel$onFinishInflate$3;

    invoke-direct {v1, p0}, Lcom/narvii/video/widget/MediaOptionPanel$onFinishInflate$3;-><init>(Lcom/narvii/video/widget/MediaOptionPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public final updateAddMusicOptionStatus(Z)V
    .locals 3

    .line 70
    iget v0, p0, Lcom/narvii/video/widget/MediaOptionPanel;->actionType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 71
    :cond_0
    sget v0, Lcom/narvii/mediaeditor/R$id;->option_add_music:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/widget/MediaOptionPanel;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 72
    :cond_1
    sget v0, Lcom/narvii/mediaeditor/R$id;->option_add_music:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/widget/MediaOptionPanel;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    :cond_3
    return-void
.end method
