.class Landroidx/databinding/adapters/ObservableListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDropDownResourceId:I

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mListChangedCallback:Landroidx/databinding/ObservableList$OnListChangedCallback;

.field private final mResourceId:I

.field private final mTextViewResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "TT;>;III)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/databinding/adapters/ObservableListAdapter;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    iput p3, p0, Landroidx/databinding/adapters/ObservableListAdapter;->mResourceId:I

    .line 8
    .line 9
    iput p4, p0, Landroidx/databinding/adapters/ObservableListAdapter;->mDropDownResourceId:I

    .line 10
    .line 11
    iput p5, p0, Landroidx/databinding/adapters/ObservableListAdapter;->mTextViewResourceId:I

    .line 12
    .line 13
    if-nez p3, :cond_0

    .line 14
    const/4 p1, 0x0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    const-string p3, "layout_inflater"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    check-cast p1, Landroid/view/LayoutInflater;

    .line 24
    .line 25
    :goto_0
    iput-object p1, p0, Landroidx/databinding/adapters/ObservableListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p2}, Landroidx/databinding/adapters/ObservableListAdapter;->b(Ljava/util/List;)V

    .line 29
    return-void
.end method


# virtual methods
.method public a(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    if-nez p3, :cond_1

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    new-instance p3, Landroid/widget/TextView;

    .line 7
    .line 8
    iget-object p1, p0, Landroidx/databinding/adapters/ObservableListAdapter;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    invoke-direct {p3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    iget-object p3, p0, Landroidx/databinding/adapters/ObservableListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 15
    const/4 v0, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p3, p1, p4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 19
    move-result-object p3

    .line 20
    .line 21
    :cond_1
    :goto_0
    iget p1, p0, Landroidx/databinding/adapters/ObservableListAdapter;->mTextViewResourceId:I

    .line 22
    .line 23
    if-nez p1, :cond_2

    .line 24
    move-object p1, p3

    .line 25
    goto :goto_1

    .line 26
    .line 27
    .line 28
    :cond_2
    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    :goto_1
    check-cast p1, Landroid/widget/TextView;

    .line 32
    .line 33
    iget-object p4, p0, Landroidx/databinding/adapters/ObservableListAdapter;->mList:Ljava/util/List;

    .line 34
    .line 35
    .line 36
    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    move-result-object p2

    .line 38
    .line 39
    instance-of p4, p2, Ljava/lang/CharSequence;

    .line 40
    .line 41
    if-eqz p4, :cond_3

    .line 42
    .line 43
    check-cast p2, Ljava/lang/CharSequence;

    .line 44
    goto :goto_2

    .line 45
    .line 46
    .line 47
    :cond_3
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    move-result-object p2

    .line 49
    .line 50
    .line 51
    :goto_2
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    return-object p3
.end method

.method public b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/databinding/adapters/ObservableListAdapter;->mList:Ljava/util/List;

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    instance-of v1, v0, Landroidx/databinding/ObservableList;

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    check-cast v0, Landroidx/databinding/ObservableList;

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/databinding/adapters/ObservableListAdapter;->mListChangedCallback:Landroidx/databinding/ObservableList$OnListChangedCallback;

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v1}, Landroidx/databinding/ObservableList;->l(Landroidx/databinding/ObservableList$OnListChangedCallback;)V

    .line 17
    .line 18
    :cond_1
    iput-object p1, p0, Landroidx/databinding/adapters/ObservableListAdapter;->mList:Ljava/util/List;

    .line 19
    .line 20
    instance-of p1, p1, Landroidx/databinding/ObservableList;

    .line 21
    .line 22
    if-eqz p1, :cond_3

    .line 23
    .line 24
    iget-object p1, p0, Landroidx/databinding/adapters/ObservableListAdapter;->mListChangedCallback:Landroidx/databinding/ObservableList$OnListChangedCallback;

    .line 25
    .line 26
    if-nez p1, :cond_2

    .line 27
    .line 28
    new-instance p1, Landroidx/databinding/adapters/ObservableListAdapter$1;

    .line 29
    .line 30
    .line 31
    invoke-direct {p1, p0}, Landroidx/databinding/adapters/ObservableListAdapter$1;-><init>(Landroidx/databinding/adapters/ObservableListAdapter;)V

    .line 32
    .line 33
    iput-object p1, p0, Landroidx/databinding/adapters/ObservableListAdapter;->mListChangedCallback:Landroidx/databinding/ObservableList$OnListChangedCallback;

    .line 34
    .line 35
    :cond_2
    iget-object p1, p0, Landroidx/databinding/adapters/ObservableListAdapter;->mList:Ljava/util/List;

    .line 36
    .line 37
    check-cast p1, Landroidx/databinding/ObservableList;

    .line 38
    .line 39
    iget-object v0, p0, Landroidx/databinding/adapters/ObservableListAdapter;->mListChangedCallback:Landroidx/databinding/ObservableList$OnListChangedCallback;

    .line 40
    .line 41
    .line 42
    invoke-interface {p1, v0}, Landroidx/databinding/ObservableList;->k(Landroidx/databinding/ObservableList$OnListChangedCallback;)V

    .line 43
    .line 44
    .line 45
    :cond_3
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 46
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/databinding/adapters/ObservableListAdapter;->mList:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Landroidx/databinding/adapters/ObservableListAdapter;->mDropDownResourceId:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/databinding/adapters/ObservableListAdapter;->a(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/databinding/adapters/ObservableListAdapter;->mList:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Landroidx/databinding/adapters/ObservableListAdapter;->mResourceId:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/databinding/adapters/ObservableListAdapter;->a(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
