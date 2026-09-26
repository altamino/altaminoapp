.class public Landroidx/databinding/adapters/AdapterViewBindingAdapter$OnItemSelectedComponentListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/adapters/AdapterViewBindingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnItemSelectedComponentListener"
.end annotation


# instance fields
.field private final mAttrChanged:Landroidx/databinding/InverseBindingListener;

.field private final mNothingSelected:Landroidx/databinding/adapters/AdapterViewBindingAdapter$OnNothingSelected;

.field private final mSelected:Landroidx/databinding/adapters/AdapterViewBindingAdapter$OnItemSelected;


# direct methods
.method public constructor <init>(Landroidx/databinding/adapters/AdapterViewBindingAdapter$OnItemSelected;Landroidx/databinding/adapters/AdapterViewBindingAdapter$OnNothingSelected;Landroidx/databinding/InverseBindingListener;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/databinding/adapters/AdapterViewBindingAdapter$OnItemSelectedComponentListener;->mSelected:Landroidx/databinding/adapters/AdapterViewBindingAdapter$OnItemSelected;

    .line 6
    .line 7
    iput-object p2, p0, Landroidx/databinding/adapters/AdapterViewBindingAdapter$OnItemSelectedComponentListener;->mNothingSelected:Landroidx/databinding/adapters/AdapterViewBindingAdapter$OnNothingSelected;

    .line 8
    .line 9
    iput-object p3, p0, Landroidx/databinding/adapters/AdapterViewBindingAdapter$OnItemSelectedComponentListener;->mAttrChanged:Landroidx/databinding/InverseBindingListener;

    .line 10
    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/databinding/adapters/AdapterViewBindingAdapter$OnItemSelectedComponentListener;->mSelected:Landroidx/databinding/adapters/AdapterViewBindingAdapter$OnItemSelected;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v1, p1

    .line 6
    move-object v2, p2

    .line 7
    move v3, p3

    .line 8
    move-wide v4, p4

    .line 9
    .line 10
    .line 11
    invoke-interface/range {v0 .. v5}, Landroidx/databinding/adapters/AdapterViewBindingAdapter$OnItemSelected;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 12
    .line 13
    :cond_0
    iget-object p1, p0, Landroidx/databinding/adapters/AdapterViewBindingAdapter$OnItemSelectedComponentListener;->mAttrChanged:Landroidx/databinding/InverseBindingListener;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Landroidx/databinding/InverseBindingListener;->a()V

    .line 19
    :cond_1
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/databinding/adapters/AdapterViewBindingAdapter$OnItemSelectedComponentListener;->mNothingSelected:Landroidx/databinding/adapters/AdapterViewBindingAdapter$OnNothingSelected;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1}, Landroidx/databinding/adapters/AdapterViewBindingAdapter$OnNothingSelected;->onNothingSelected(Landroid/widget/AdapterView;)V

    .line 8
    .line 9
    :cond_0
    iget-object p1, p0, Landroidx/databinding/adapters/AdapterViewBindingAdapter$OnItemSelectedComponentListener;->mAttrChanged:Landroidx/databinding/InverseBindingListener;

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-interface {p1}, Landroidx/databinding/InverseBindingListener;->a()V

    .line 15
    :cond_1
    return-void
.end method
