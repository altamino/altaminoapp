.class public final Lcom/narvii/lib/databinding/AminoTemplatePickerItemExpandBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final createPushButton:Lcom/narvii/widget/PushButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final createText:Lcom/narvii/widget/AutoSizingTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final desc:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final expand:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final featuresLayout:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final icon:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final subTitle:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final title:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/narvii/widget/PushButton;Lcom/narvii/widget/AutoSizingTextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/widget/PushButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/widget/AutoSizingTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/lib/databinding/AminoTemplatePickerItemExpandBinding;->rootView:Landroid/widget/LinearLayout;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/lib/databinding/AminoTemplatePickerItemExpandBinding;->createPushButton:Lcom/narvii/widget/PushButton;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/lib/databinding/AminoTemplatePickerItemExpandBinding;->createText:Lcom/narvii/widget/AutoSizingTextView;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/lib/databinding/AminoTemplatePickerItemExpandBinding;->desc:Landroid/widget/TextView;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/narvii/lib/databinding/AminoTemplatePickerItemExpandBinding;->expand:Landroid/widget/LinearLayout;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/narvii/lib/databinding/AminoTemplatePickerItemExpandBinding;->featuresLayout:Landroid/widget/LinearLayout;

    .line 16
    .line 17
    iput-object p7, p0, Lcom/narvii/lib/databinding/AminoTemplatePickerItemExpandBinding;->icon:Landroid/widget/ImageView;

    .line 18
    .line 19
    iput-object p8, p0, Lcom/narvii/lib/databinding/AminoTemplatePickerItemExpandBinding;->subTitle:Landroid/widget/TextView;

    .line 20
    .line 21
    iput-object p9, p0, Lcom/narvii/lib/databinding/AminoTemplatePickerItemExpandBinding;->title:Landroid/widget/TextView;

    .line 22
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/lib/databinding/AminoTemplatePickerItemExpandBinding;
    .locals 12
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    sget v0, Lcom/narvii/lib/R$id;->create_push_button:I

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 6
    move-result-object v1

    .line 7
    move-object v4, v1

    .line 8
    .line 9
    check-cast v4, Lcom/narvii/widget/PushButton;

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    sget v0, Lcom/narvii/lib/R$id;->create_text:I

    .line 14
    .line 15
    .line 16
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 17
    move-result-object v1

    .line 18
    move-object v5, v1

    .line 19
    .line 20
    check-cast v5, Lcom/narvii/widget/AutoSizingTextView;

    .line 21
    .line 22
    if-eqz v5, :cond_0

    .line 23
    .line 24
    sget v0, Lcom/narvii/lib/R$id;->desc:I

    .line 25
    .line 26
    .line 27
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 28
    move-result-object v1

    .line 29
    move-object v6, v1

    .line 30
    .line 31
    check-cast v6, Landroid/widget/TextView;

    .line 32
    .line 33
    if-eqz v6, :cond_0

    .line 34
    move-object v7, p0

    .line 35
    .line 36
    check-cast v7, Landroid/widget/LinearLayout;

    .line 37
    .line 38
    sget v0, Lcom/narvii/lib/R$id;->features_layout:I

    .line 39
    .line 40
    .line 41
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 42
    move-result-object v1

    .line 43
    move-object v8, v1

    .line 44
    .line 45
    check-cast v8, Landroid/widget/LinearLayout;

    .line 46
    .line 47
    if-eqz v8, :cond_0

    .line 48
    .line 49
    sget v0, Lcom/narvii/lib/R$id;->icon:I

    .line 50
    .line 51
    .line 52
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 53
    move-result-object v1

    .line 54
    move-object v9, v1

    .line 55
    .line 56
    check-cast v9, Landroid/widget/ImageView;

    .line 57
    .line 58
    if-eqz v9, :cond_0

    .line 59
    .line 60
    sget v0, Lcom/narvii/lib/R$id;->subTitle:I

    .line 61
    .line 62
    .line 63
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 64
    move-result-object v1

    .line 65
    move-object v10, v1

    .line 66
    .line 67
    check-cast v10, Landroid/widget/TextView;

    .line 68
    .line 69
    if-eqz v10, :cond_0

    .line 70
    .line 71
    sget v0, Lcom/narvii/lib/R$id;->title:I

    .line 72
    .line 73
    .line 74
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 75
    move-result-object v1

    .line 76
    move-object v11, v1

    .line 77
    .line 78
    check-cast v11, Landroid/widget/TextView;

    .line 79
    .line 80
    if-eqz v11, :cond_0

    .line 81
    .line 82
    new-instance p0, Lcom/narvii/lib/databinding/AminoTemplatePickerItemExpandBinding;

    .line 83
    move-object v2, p0

    .line 84
    move-object v3, v7

    .line 85
    .line 86
    .line 87
    invoke-direct/range {v2 .. v11}, Lcom/narvii/lib/databinding/AminoTemplatePickerItemExpandBinding;-><init>(Landroid/widget/LinearLayout;Lcom/narvii/widget/PushButton;Lcom/narvii/widget/AutoSizingTextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 88
    return-object p0

    .line 89
    .line 90
    .line 91
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 92
    move-result-object p0

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 96
    move-result-object p0

    .line 97
    .line 98
    new-instance v0, Ljava/lang/NullPointerException;

    .line 99
    .line 100
    const-string v1, "Missing required view with ID: "

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    move-result-object p0

    .line 105
    .line 106
    .line 107
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 108
    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/lib/databinding/AminoTemplatePickerItemExpandBinding;
    .locals 2
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/narvii/lib/databinding/AminoTemplatePickerItemExpandBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/lib/databinding/AminoTemplatePickerItemExpandBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/lib/databinding/AminoTemplatePickerItemExpandBinding;
    .locals 2
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget v0, Lcom/narvii/lib/R$layout;->amino_template_picker_item_expand:I

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/lib/databinding/AminoTemplatePickerItemExpandBinding;->bind(Landroid/view/View;)Lcom/narvii/lib/databinding/AminoTemplatePickerItemExpandBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/lib/databinding/AminoTemplatePickerItemExpandBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/lib/databinding/AminoTemplatePickerItemExpandBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
