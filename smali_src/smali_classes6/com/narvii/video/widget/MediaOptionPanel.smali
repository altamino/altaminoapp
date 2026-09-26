.class public final Lcom/narvii/video/widget/MediaOptionPanel;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/video/widget/MediaOptionPanel$Companion;,
        Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;
    }
.end annotation


# static fields
.field public static final ACTION_TYPE_AUDIO_TRACK_EDIT:I = 0x3

.field public static final ACTION_TYPE_AUDIO_TRIM:I = 0x2

.field public static final ACTION_TYPE_VIDEO_SPEED:I = 0x5

.field public static final ACTION_TYPE_VIDEO_SPLIT:I = 0x4

.field public static final ACTION_TYPE_VIDEO_TRIM:I = 0x1

.field public static final Companion:Lcom/narvii/video/widget/MediaOptionPanel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private actionType:I

.field private final attributes:Landroid/util/AttributeSet;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final binding:Lcom/narvii/mediaeditor/databinding/ComponentOptionPanelBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private optionSelectedListener:Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/video/widget/MediaOptionPanel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/video/widget/MediaOptionPanel$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/video/widget/MediaOptionPanel;->Companion:Lcom/narvii/video/widget/MediaOptionPanel$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "attributes"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    .line 15
    iput-object p2, p0, Lcom/narvii/video/widget/MediaOptionPanel;->attributes:Landroid/util/AttributeSet;

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-static {p1, p0}, Lcom/narvii/mediaeditor/databinding/ComponentOptionPanelBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/narvii/mediaeditor/databinding/ComponentOptionPanelBinding;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    const-string p2, "inflate(...)"

    .line 26
    .line 27
    .line 28
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    iput-object p1, p0, Lcom/narvii/video/widget/MediaOptionPanel;->binding:Lcom/narvii/mediaeditor/databinding/ComponentOptionPanelBinding;

    .line 31
    return-void
.end method

.method public static synthetic a(Lcom/narvii/video/widget/MediaOptionPanel;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/video/widget/MediaOptionPanel;->onFinishInflate$lambda$2(Lcom/narvii/video/widget/MediaOptionPanel;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/narvii/video/widget/MediaOptionPanel;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/video/widget/MediaOptionPanel;->onFinishInflate$lambda$1(Lcom/narvii/video/widget/MediaOptionPanel;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/narvii/video/widget/MediaOptionPanel;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/video/widget/MediaOptionPanel;->onFinishInflate$lambda$0(Lcom/narvii/video/widget/MediaOptionPanel;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic initComponent$default(Lcom/narvii/video/widget/MediaOptionPanel;ILjava/lang/String;Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;ILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p4, p4, 0x2

    .line 3
    .line 4
    if-eqz p4, :cond_0

    .line 5
    .line 6
    const-string p2, ""

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/video/widget/MediaOptionPanel;->initComponent(ILjava/lang/String;Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;)V

    .line 10
    return-void
.end method

.method private static final onFinishInflate$lambda$0(Lcom/narvii/video/widget/MediaOptionPanel;Landroid/view/View;)V
    .locals 0

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
    iget-object p1, p0, Lcom/narvii/video/widget/MediaOptionPanel;->optionSelectedListener:Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget p0, p0, Lcom/narvii/video/widget/MediaOptionPanel;->actionType:I

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, p0}, Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;->onOptionDone(I)V

    .line 16
    :cond_0
    return-void
.end method

.method private static final onFinishInflate$lambda$1(Lcom/narvii/video/widget/MediaOptionPanel;Landroid/view/View;)V
    .locals 0

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
    iget-object p1, p0, Lcom/narvii/video/widget/MediaOptionPanel;->optionSelectedListener:Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget p0, p0, Lcom/narvii/video/widget/MediaOptionPanel;->actionType:I

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, p0}, Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;->onOptionCancel(I)V

    .line 16
    :cond_0
    return-void
.end method

.method private static final onFinishInflate$lambda$2(Lcom/narvii/video/widget/MediaOptionPanel;Landroid/view/View;)V
    .locals 0

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
    iget-object p0, p0, Lcom/narvii/video/widget/MediaOptionPanel;->optionSelectedListener:Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-interface {p0}, Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;->onAddMusicSelected()V

    .line 14
    :cond_0
    return-void
.end method


# virtual methods
.method public final getAttributes()Landroid/util/AttributeSet;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/video/widget/MediaOptionPanel;->attributes:Landroid/util/AttributeSet;

    return-object v0
.end method

.method public final initComponent(ILjava/lang/String;Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;)V
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "title"

    .line 4
    .line 5
    .line 6
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    const-string v0, "listener"

    .line 9
    .line 10
    .line 11
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    iput p1, p0, Lcom/narvii/video/widget/MediaOptionPanel;->actionType:I

    .line 14
    .line 15
    iput-object p3, p0, Lcom/narvii/video/widget/MediaOptionPanel;->optionSelectedListener:Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;

    .line 16
    const/4 p3, 0x3

    .line 17
    const/4 v0, 0x1

    .line 18
    .line 19
    const/16 v1, 0x8

    .line 20
    const/4 v2, 0x0

    .line 21
    .line 22
    if-ne p1, p3, :cond_0

    .line 23
    .line 24
    iget-object p2, p0, Lcom/narvii/video/widget/MediaOptionPanel;->binding:Lcom/narvii/mediaeditor/databinding/ComponentOptionPanelBinding;

    .line 25
    .line 26
    iget-object p2, p2, Lcom/narvii/mediaeditor/databinding/ComponentOptionPanelBinding;->optionHintText:Landroid/widget/TextView;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    iget-object p2, p0, Lcom/narvii/video/widget/MediaOptionPanel;->binding:Lcom/narvii/mediaeditor/databinding/ComponentOptionPanelBinding;

    .line 32
    .line 33
    iget-object p2, p2, Lcom/narvii/mediaeditor/databinding/ComponentOptionPanelBinding;->optionAddMusic:Landroid/widget/ImageView;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 37
    .line 38
    iget-object p2, p0, Lcom/narvii/video/widget/MediaOptionPanel;->binding:Lcom/narvii/mediaeditor/databinding/ComponentOptionPanelBinding;

    .line 39
    .line 40
    iget-object p2, p2, Lcom/narvii/mediaeditor/databinding/ComponentOptionPanelBinding;->optionAddMusic:Landroid/widget/ImageView;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 44
    .line 45
    iget-object p2, p0, Lcom/narvii/video/widget/MediaOptionPanel;->binding:Lcom/narvii/mediaeditor/databinding/ComponentOptionPanelBinding;

    .line 46
    .line 47
    iget-object p2, p2, Lcom/narvii/mediaeditor/databinding/ComponentOptionPanelBinding;->optionAddMusic:Landroid/widget/ImageView;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 51
    goto :goto_0

    .line 52
    .line 53
    :cond_0
    iget-object p3, p0, Lcom/narvii/video/widget/MediaOptionPanel;->binding:Lcom/narvii/mediaeditor/databinding/ComponentOptionPanelBinding;

    .line 54
    .line 55
    iget-object p3, p3, Lcom/narvii/mediaeditor/databinding/ComponentOptionPanelBinding;->optionHintText:Landroid/widget/TextView;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .line 60
    iget-object p3, p0, Lcom/narvii/video/widget/MediaOptionPanel;->binding:Lcom/narvii/mediaeditor/databinding/ComponentOptionPanelBinding;

    .line 61
    .line 62
    iget-object p3, p3, Lcom/narvii/mediaeditor/databinding/ComponentOptionPanelBinding;->optionAddMusic:Landroid/widget/ImageView;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    .line 67
    iget-object p3, p0, Lcom/narvii/video/widget/MediaOptionPanel;->binding:Lcom/narvii/mediaeditor/databinding/ComponentOptionPanelBinding;

    .line 68
    .line 69
    iget-object p3, p3, Lcom/narvii/mediaeditor/databinding/ComponentOptionPanelBinding;->optionHintText:Landroid/widget/TextView;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    .line 74
    :goto_0
    iget-object p2, p0, Lcom/narvii/video/widget/MediaOptionPanel;->binding:Lcom/narvii/mediaeditor/databinding/ComponentOptionPanelBinding;

    .line 75
    .line 76
    iget-object p2, p2, Lcom/narvii/mediaeditor/databinding/ComponentOptionPanelBinding;->optionCancel:Landroid/widget/ImageView;

    .line 77
    const/4 p3, 0x2

    .line 78
    .line 79
    if-ne p1, p3, :cond_1

    .line 80
    move v0, p3

    .line 81
    .line 82
    .line 83
    :cond_1
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 84
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/video/widget/MediaOptionPanel;->binding:Lcom/narvii/mediaeditor/databinding/ComponentOptionPanelBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/ComponentOptionPanelBinding;->optionDone:Landroid/widget/ImageView;

    .line 8
    .line 9
    new-instance v1, Lcom/narvii/video/widget/i;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/narvii/video/widget/i;-><init>(Lcom/narvii/video/widget/MediaOptionPanel;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/video/widget/MediaOptionPanel;->binding:Lcom/narvii/mediaeditor/databinding/ComponentOptionPanelBinding;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/ComponentOptionPanelBinding;->optionCancel:Landroid/widget/ImageView;

    .line 20
    .line 21
    new-instance v1, Lcom/narvii/video/widget/j;

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, p0}, Lcom/narvii/video/widget/j;-><init>(Lcom/narvii/video/widget/MediaOptionPanel;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/video/widget/MediaOptionPanel;->binding:Lcom/narvii/mediaeditor/databinding/ComponentOptionPanelBinding;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/ComponentOptionPanelBinding;->optionAddMusic:Landroid/widget/ImageView;

    .line 32
    .line 33
    new-instance v1, Lcom/narvii/video/widget/k;

    .line 34
    .line 35
    .line 36
    invoke-direct {v1, p0}, Lcom/narvii/video/widget/k;-><init>(Lcom/narvii/video/widget/MediaOptionPanel;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    return-void
.end method

.method public final updateAddMusicOptionStatus(Z)V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/video/widget/MediaOptionPanel;->actionType:I

    .line 3
    const/4 v1, 0x2

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    const/4 v2, 0x3

    .line 7
    .line 8
    if-ne v0, v2, :cond_2

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/widget/MediaOptionPanel;->binding:Lcom/narvii/mediaeditor/databinding/ComponentOptionPanelBinding;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/ComponentOptionPanelBinding;->optionAddMusic:Landroid/widget/ImageView;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/video/widget/MediaOptionPanel;->binding:Lcom/narvii/mediaeditor/databinding/ComponentOptionPanelBinding;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/ComponentOptionPanelBinding;->optionAddMusic:Landroid/widget/ImageView;

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v1, 0x1

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 27
    :cond_2
    return-void
.end method
