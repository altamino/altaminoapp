.class public final Lcom/narvii/amino/databinding/PostQuizQuestionItemBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final delete:Landroid/widget/Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final error:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final image:Lcom/narvii/widget/ThumbImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final postQuizQuestion:Lcom/narvii/widget/SwipeToDeleteLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final postQuizQuestionClick:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final postQuizQuestionNo:Lcom/narvii/widget/AutoSizingTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/narvii/widget/SwipeToDeleteLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final stub1:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final title:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/narvii/widget/SwipeToDeleteLayout;Landroid/widget/Button;Landroid/widget/TextView;Lcom/narvii/widget/ThumbImageView;Lcom/narvii/widget/SwipeToDeleteLayout;Landroid/widget/RelativeLayout;Lcom/narvii/widget/AutoSizingTextView;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Lcom/narvii/widget/SwipeToDeleteLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/Button;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/narvii/widget/ThumbImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/widget/SwipeToDeleteLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/widget/RelativeLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/narvii/widget/AutoSizingTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/widget/ImageView;
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
    iput-object p1, p0, Lcom/narvii/amino/databinding/PostQuizQuestionItemBinding;->rootView:Lcom/narvii/widget/SwipeToDeleteLayout;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/amino/databinding/PostQuizQuestionItemBinding;->delete:Landroid/widget/Button;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/amino/databinding/PostQuizQuestionItemBinding;->error:Landroid/widget/TextView;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/amino/databinding/PostQuizQuestionItemBinding;->image:Lcom/narvii/widget/ThumbImageView;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/narvii/amino/databinding/PostQuizQuestionItemBinding;->postQuizQuestion:Lcom/narvii/widget/SwipeToDeleteLayout;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/narvii/amino/databinding/PostQuizQuestionItemBinding;->postQuizQuestionClick:Landroid/widget/RelativeLayout;

    .line 16
    .line 17
    iput-object p7, p0, Lcom/narvii/amino/databinding/PostQuizQuestionItemBinding;->postQuizQuestionNo:Lcom/narvii/widget/AutoSizingTextView;

    .line 18
    .line 19
    iput-object p8, p0, Lcom/narvii/amino/databinding/PostQuizQuestionItemBinding;->stub1:Landroid/widget/ImageView;

    .line 20
    .line 21
    iput-object p9, p0, Lcom/narvii/amino/databinding/PostQuizQuestionItemBinding;->title:Landroid/widget/TextView;

    .line 22
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/PostQuizQuestionItemBinding;
    .locals 12
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a0417

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 7
    move-result-object v1

    .line 8
    move-object v4, v1

    .line 9
    .line 10
    check-cast v4, Landroid/widget/Button;

    .line 11
    .line 12
    if-eqz v4, :cond_0

    .line 13
    .line 14
    .line 15
    const v0, 0x7f0a04fd

    .line 16
    .line 17
    .line 18
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 19
    move-result-object v1

    .line 20
    move-object v5, v1

    .line 21
    .line 22
    check-cast v5, Landroid/widget/TextView;

    .line 23
    .line 24
    if-eqz v5, :cond_0

    .line 25
    .line 26
    .line 27
    const v0, 0x7f0a06eb

    .line 28
    .line 29
    .line 30
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 31
    move-result-object v1

    .line 32
    move-object v6, v1

    .line 33
    .line 34
    check-cast v6, Lcom/narvii/widget/ThumbImageView;

    .line 35
    .line 36
    if-eqz v6, :cond_0

    .line 37
    move-object v7, p0

    .line 38
    .line 39
    check-cast v7, Lcom/narvii/widget/SwipeToDeleteLayout;

    .line 40
    .line 41
    .line 42
    const v0, 0x7f0a0b75

    .line 43
    .line 44
    .line 45
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 46
    move-result-object v1

    .line 47
    move-object v8, v1

    .line 48
    .line 49
    check-cast v8, Landroid/widget/RelativeLayout;

    .line 50
    .line 51
    if-eqz v8, :cond_0

    .line 52
    .line 53
    .line 54
    const v0, 0x7f0a0b76

    .line 55
    .line 56
    .line 57
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 58
    move-result-object v1

    .line 59
    move-object v9, v1

    .line 60
    .line 61
    check-cast v9, Lcom/narvii/widget/AutoSizingTextView;

    .line 62
    .line 63
    if-eqz v9, :cond_0

    .line 64
    .line 65
    .line 66
    const v0, 0x7f0a0de5

    .line 67
    .line 68
    .line 69
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 70
    move-result-object v1

    .line 71
    move-object v10, v1

    .line 72
    .line 73
    check-cast v10, Landroid/widget/ImageView;

    .line 74
    .line 75
    if-eqz v10, :cond_0

    .line 76
    .line 77
    .line 78
    const v0, 0x7f0a0e9e

    .line 79
    .line 80
    .line 81
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 82
    move-result-object v1

    .line 83
    move-object v11, v1

    .line 84
    .line 85
    check-cast v11, Landroid/widget/TextView;

    .line 86
    .line 87
    if-eqz v11, :cond_0

    .line 88
    .line 89
    new-instance p0, Lcom/narvii/amino/databinding/PostQuizQuestionItemBinding;

    .line 90
    move-object v2, p0

    .line 91
    move-object v3, v7

    .line 92
    .line 93
    .line 94
    invoke-direct/range {v2 .. v11}, Lcom/narvii/amino/databinding/PostQuizQuestionItemBinding;-><init>(Lcom/narvii/widget/SwipeToDeleteLayout;Landroid/widget/Button;Landroid/widget/TextView;Lcom/narvii/widget/ThumbImageView;Lcom/narvii/widget/SwipeToDeleteLayout;Landroid/widget/RelativeLayout;Lcom/narvii/widget/AutoSizingTextView;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 95
    return-object p0

    .line 96
    .line 97
    .line 98
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 99
    move-result-object p0

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 103
    move-result-object p0

    .line 104
    .line 105
    new-instance v0, Ljava/lang/NullPointerException;

    .line 106
    .line 107
    const-string v1, "Missing required view with ID: "

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    move-result-object p0

    .line 112
    .line 113
    .line 114
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 115
    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/PostQuizQuestionItemBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/amino/databinding/PostQuizQuestionItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/PostQuizQuestionItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/PostQuizQuestionItemBinding;
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

    const v0, 0x7f0d0641

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/amino/databinding/PostQuizQuestionItemBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/PostQuizQuestionItemBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/amino/databinding/PostQuizQuestionItemBinding;->getRoot()Lcom/narvii/widget/SwipeToDeleteLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/narvii/widget/SwipeToDeleteLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/databinding/PostQuizQuestionItemBinding;->rootView:Lcom/narvii/widget/SwipeToDeleteLayout;

    return-object v0
.end method
