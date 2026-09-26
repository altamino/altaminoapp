.class public Landroidx/databinding/DataBindingUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sDefaultComponent:Landroidx/databinding/DataBindingComponent;

.field private static sMapper:Landroidx/databinding/DataBinderMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroidx/databinding/DataBinderMapperImpl;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/databinding/DataBinderMapperImpl;-><init>()V

    .line 6
    .line 7
    sput-object v0, Landroidx/databinding/DataBindingUtil;->sMapper:Landroidx/databinding/DataBinderMapper;

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    sput-object v0, Landroidx/databinding/DataBindingUtil;->sDefaultComponent:Landroidx/databinding/DataBindingComponent;

    .line 11
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method static a(Landroidx/databinding/DataBindingComponent;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/databinding/ViewDataBinding;",
            ">(",
            "Landroidx/databinding/DataBindingComponent;",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Landroidx/databinding/DataBindingUtil;->sMapper:Landroidx/databinding/DataBinderMapper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0, p1, p2}, Landroidx/databinding/DataBinderMapper;->getDataBinder(Landroidx/databinding/DataBindingComponent;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method static b(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/databinding/ViewDataBinding;",
            ">(",
            "Landroidx/databinding/DataBindingComponent;",
            "[",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Landroidx/databinding/DataBindingUtil;->sMapper:Landroidx/databinding/DataBinderMapper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0, p1, p2}, Landroidx/databinding/DataBinderMapper;->getDataBinder(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private static c(Landroidx/databinding/DataBindingComponent;Landroid/view/ViewGroup;II)Landroidx/databinding/ViewDataBinding;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/databinding/ViewDataBinding;",
            ">(",
            "Landroidx/databinding/DataBindingComponent;",
            "Landroid/view/ViewGroup;",
            "II)TT;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    .line 6
    sub-int v1, v0, p2

    .line 7
    const/4 v2, 0x1

    .line 8
    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    sub-int/2addr v0, v2

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-static {p0, p1, p3}, Landroidx/databinding/DataBindingUtil;->a(Landroidx/databinding/DataBindingComponent;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    .line 21
    :cond_0
    new-array v0, v1, [Landroid/view/View;

    .line 22
    const/4 v2, 0x0

    .line 23
    .line 24
    :goto_0
    if-ge v2, v1, :cond_1

    .line 25
    .line 26
    add-int v3, v2, p2

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 30
    move-result-object v3

    .line 31
    .line 32
    aput-object v3, v0, v2

    .line 33
    .line 34
    add-int/lit8 v2, v2, 0x1

    .line 35
    goto :goto_0

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-static {p0, v0, p3}, Landroidx/databinding/DataBindingUtil;->b(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method

.method public static d()Landroidx/databinding/DataBindingComponent;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    sget-object v0, Landroidx/databinding/DataBindingUtil;->sDefaultComponent:Landroidx/databinding/DataBindingComponent;

    return-object v0
.end method

.method public static e(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroidx/databinding/DataBindingComponent;)Landroidx/databinding/ViewDataBinding;
    .locals 2
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/databinding/DataBindingComponent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/databinding/ViewDataBinding;",
            ">(",
            "Landroid/view/LayoutInflater;",
            "I",
            "Landroid/view/ViewGroup;",
            "Z",
            "Landroidx/databinding/DataBindingComponent;",
            ")TT;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    const/4 v1, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v1, v0

    .line 9
    .line 10
    :goto_0
    if-eqz v1, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 14
    move-result v0

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 18
    move-result-object p0

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    .line 23
    invoke-static {p4, p2, v0, p1}, Landroidx/databinding/DataBindingUtil;->c(Landroidx/databinding/DataBindingComponent;Landroid/view/ViewGroup;II)Landroidx/databinding/ViewDataBinding;

    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    .line 27
    .line 28
    :cond_2
    invoke-static {p4, p0, p1}, Landroidx/databinding/DataBindingUtil;->a(Landroidx/databinding/DataBindingComponent;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method
