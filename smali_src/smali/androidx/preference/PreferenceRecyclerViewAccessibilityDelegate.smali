.class public Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate;
.super Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field final mDefaultItemDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

.field final mItemDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

.field final mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;->a()Landroidx/core/view/AccessibilityDelegateCompat;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iput-object v0, p0, Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate;->mDefaultItemDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

    .line 10
    .line 11
    new-instance v0, Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate$1;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, p0}, Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate$1;-><init>(Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate;)V

    .line 15
    .line 16
    iput-object v0, p0, Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate;->mItemDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

    .line 17
    .line 18
    iput-object p1, p0, Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 19
    return-void
.end method


# virtual methods
.method public a()Landroidx/core/view/AccessibilityDelegateCompat;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate;->mItemDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

    return-object v0
.end method
