.class public final Lcom/narvii/scene/view/AudioOptionPanel;
.super Landroid/widget/RelativeLayout;
.source "AudioOptionPanel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/scene/view/AudioOptionPanel$OnOptionClickListener;
    }
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private onOptionClickListener:Lcom/narvii/scene/view/AudioOptionPanel$OnOptionClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 22
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/narvii/mediaeditor/R$layout;->audio_option_panel:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "attributeSet"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/narvii/mediaeditor/R$layout;->audio_option_panel:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method

.method public static final synthetic access$getOnOptionClickListener$p(Lcom/narvii/scene/view/AudioOptionPanel;)Lcom/narvii/scene/view/AudioOptionPanel$OnOptionClickListener;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/narvii/scene/view/AudioOptionPanel;->onOptionClickListener:Lcom/narvii/scene/view/AudioOptionPanel$OnOptionClickListener;

    return-object p0
.end method

.method public static final synthetic access$setOnOptionClickListener$p(Lcom/narvii/scene/view/AudioOptionPanel;Lcom/narvii/scene/view/AudioOptionPanel$OnOptionClickListener;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/narvii/scene/view/AudioOptionPanel;->onOptionClickListener:Lcom/narvii/scene/view/AudioOptionPanel$OnOptionClickListener;

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/scene/view/AudioOptionPanel;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/scene/view/AudioOptionPanel;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/scene/view/AudioOptionPanel;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/view/AudioOptionPanel;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/scene/view/AudioOptionPanel;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 32
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 33
    sget v0, Lcom/narvii/mediaeditor/R$id;->option_done:I

    invoke-virtual {p0, v0}, Lcom/narvii/scene/view/AudioOptionPanel;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/narvii/scene/view/AudioOptionPanel$onFinishInflate$1;

    invoke-direct {v1, p0}, Lcom/narvii/scene/view/AudioOptionPanel$onFinishInflate$1;-><init>(Lcom/narvii/scene/view/AudioOptionPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    :cond_0
    sget v0, Lcom/narvii/mediaeditor/R$id;->option_cancel:I

    invoke-virtual {p0, v0}, Lcom/narvii/scene/view/AudioOptionPanel;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/narvii/scene/view/AudioOptionPanel$onFinishInflate$2;

    invoke-direct {v1, p0}, Lcom/narvii/scene/view/AudioOptionPanel$onFinishInflate$2;-><init>(Lcom/narvii/scene/view/AudioOptionPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public final setData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 46
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    sget p1, Lcom/narvii/mediaeditor/R$id;->option_title:I

    invoke-virtual {p0, p1}, Lcom/narvii/scene/view/AudioOptionPanel;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 50
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 51
    new-instance p2, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {p2, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1, p1, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 52
    sget p1, Lcom/narvii/mediaeditor/R$id;->option_title:I

    invoke-virtual {p0, p1}, Lcom/narvii/scene/view/AudioOptionPanel;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void

    .line 51
    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final setOnOptionClickListener(Lcom/narvii/scene/view/AudioOptionPanel$OnOptionClickListener;)V
    .locals 1

    const-string v0, "onOptionClickListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iput-object p1, p0, Lcom/narvii/scene/view/AudioOptionPanel;->onOptionClickListener:Lcom/narvii/scene/view/AudioOptionPanel$OnOptionClickListener;

    return-void
.end method
