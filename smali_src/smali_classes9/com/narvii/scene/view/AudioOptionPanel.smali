.class public final Lcom/narvii/scene/view/AudioOptionPanel;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/scene/view/AudioOptionPanel$OnOptionClickListener;
    }
.end annotation


# instance fields
.field private final binding:Lcom/narvii/mediaeditor/databinding/AudioOptionPanelBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private onOptionClickListener:Lcom/narvii/scene/view/AudioOptionPanel$OnOptionClickListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/narvii/mediaeditor/databinding/AudioOptionPanelBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/narvii/mediaeditor/databinding/AudioOptionPanelBinding;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/scene/view/AudioOptionPanel;->binding:Lcom/narvii/mediaeditor/databinding/AudioOptionPanelBinding;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "attributeSet"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/narvii/mediaeditor/databinding/AudioOptionPanelBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/narvii/mediaeditor/databinding/AudioOptionPanelBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/scene/view/AudioOptionPanel;->binding:Lcom/narvii/mediaeditor/databinding/AudioOptionPanelBinding;

    return-void
.end method

.method public static synthetic a(Lcom/narvii/scene/view/AudioOptionPanel;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/scene/view/AudioOptionPanel;->onFinishInflate$lambda$1(Lcom/narvii/scene/view/AudioOptionPanel;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/narvii/scene/view/AudioOptionPanel;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/scene/view/AudioOptionPanel;->onFinishInflate$lambda$0(Lcom/narvii/scene/view/AudioOptionPanel;Landroid/view/View;)V

    return-void
.end method

.method private static final onFinishInflate$lambda$0(Lcom/narvii/scene/view/AudioOptionPanel;Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const-string/jumbo p1, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/scene/view/AudioOptionPanel;->onOptionClickListener:Lcom/narvii/scene/view/AudioOptionPanel$OnOptionClickListener;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lcom/narvii/scene/view/AudioOptionPanel;->binding:Lcom/narvii/mediaeditor/databinding/AudioOptionPanelBinding;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/narvii/mediaeditor/databinding/AudioOptionPanelBinding;->optionDone:Landroid/widget/ImageView;

    .line 15
    .line 16
    const-string v0, "optionDone"

    .line 17
    .line 18
    .line 19
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p1, p0}, Lcom/narvii/scene/view/AudioOptionPanel$OnOptionClickListener;->onOptionSubmit(Landroid/view/View;)V

    .line 23
    :cond_0
    return-void
.end method

.method private static final onFinishInflate$lambda$1(Lcom/narvii/scene/view/AudioOptionPanel;Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const-string/jumbo p1, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/scene/view/AudioOptionPanel;->onOptionClickListener:Lcom/narvii/scene/view/AudioOptionPanel$OnOptionClickListener;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lcom/narvii/scene/view/AudioOptionPanel;->binding:Lcom/narvii/mediaeditor/databinding/AudioOptionPanelBinding;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/narvii/mediaeditor/databinding/AudioOptionPanelBinding;->optionCancel:Landroid/widget/ImageView;

    .line 15
    .line 16
    const-string v0, "optionCancel"

    .line 17
    .line 18
    .line 19
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p1, p0}, Lcom/narvii/scene/view/AudioOptionPanel$OnOptionClickListener;->onOptionDelete(Landroid/view/View;)V

    .line 23
    :cond_0
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/scene/view/AudioOptionPanel;->binding:Lcom/narvii/mediaeditor/databinding/AudioOptionPanelBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/AudioOptionPanelBinding;->optionDone:Landroid/widget/ImageView;

    .line 8
    .line 9
    new-instance v1, Lcom/narvii/scene/view/a;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/narvii/scene/view/a;-><init>(Lcom/narvii/scene/view/AudioOptionPanel;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/scene/view/AudioOptionPanel;->binding:Lcom/narvii/mediaeditor/databinding/AudioOptionPanelBinding;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/AudioOptionPanelBinding;->optionCancel:Landroid/widget/ImageView;

    .line 20
    .line 21
    new-instance v1, Lcom/narvii/scene/view/b;

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, p0}, Lcom/narvii/scene/view/b;-><init>(Lcom/narvii/scene/view/AudioOptionPanel;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    return-void
.end method

.method public final setData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/scene/view/AudioOptionPanel;->binding:Lcom/narvii/mediaeditor/databinding/AudioOptionPanelBinding;

    .line 9
    .line 10
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/AudioOptionPanelBinding;->optionTitle:Landroid/widget/TextView;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v2, " - "

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p2

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    new-instance p2, Landroid/text/style/StyleSpan;

    .line 42
    const/4 v1, 0x1

    .line 43
    .line 44
    .line 45
    invoke-direct {p2, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 52
    move-result p1

    .line 53
    const/4 v1, 0x0

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p2, v1, p1, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 57
    .line 58
    iget-object p1, p0, Lcom/narvii/scene/view/AudioOptionPanel;->binding:Lcom/narvii/mediaeditor/databinding/AudioOptionPanelBinding;

    .line 59
    .line 60
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/AudioOptionPanelBinding;->optionTitle:Landroid/widget/TextView;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    :goto_0
    return-void
.end method

.method public final setOnOptionClickListener(Lcom/narvii/scene/view/AudioOptionPanel$OnOptionClickListener;)V
    .locals 1
    .param p1    # Lcom/narvii/scene/view/AudioOptionPanel$OnOptionClickListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "onOptionClickListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/scene/view/AudioOptionPanel;->onOptionClickListener:Lcom/narvii/scene/view/AudioOptionPanel$OnOptionClickListener;

    return-void
.end method
