.class public final Landroidx/appcompat/widget/LinearLayoutCompat$InspectionCompanion;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion;"
    }
.end annotation


# instance fields
.field private mBaselineAlignedChildIndexId:I

.field private mBaselineAlignedId:I

.field private mDividerId:I

.field private mDividerPaddingId:I

.field private mGravityId:I

.field private mMeasureWithLargestChildId:I

.field private mOrientationId:I

.field private mPropertiesMapped:Z

.field private mShowDividersId:I

.field private mWeightSumId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-boolean v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat$InspectionCompanion;->mPropertiesMapped:Z

    .line 7
    return-void
.end method


# virtual methods
.method public a(Landroidx/appcompat/widget/LinearLayoutCompat;Landroid/view/inspector/PropertyReader;)V
    .locals 2
    .param p1    # Landroidx/appcompat/widget/LinearLayoutCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/inspector/PropertyReader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat$InspectionCompanion;->mPropertiesMapped:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat$InspectionCompanion;->mBaselineAlignedId:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->u()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    .line 13
    invoke-static {p2, v0, v1}, Landroidx/appcompat/widget/c0;->a(Landroid/view/inspector/PropertyReader;IZ)V

    .line 14
    .line 15
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat$InspectionCompanion;->mBaselineAlignedChildIndexId:I

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getBaselineAlignedChildIndex()I

    .line 19
    move-result v1

    .line 20
    .line 21
    .line 22
    invoke-static {p2, v0, v1}, Landroidx/appcompat/widget/d;->a(Landroid/view/inspector/PropertyReader;II)V

    .line 23
    .line 24
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat$InspectionCompanion;->mGravityId:I

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getGravity()I

    .line 28
    move-result v1

    .line 29
    .line 30
    .line 31
    invoke-static {p2, v0, v1}, Landroidx/appcompat/widget/d0;->a(Landroid/view/inspector/PropertyReader;II)V

    .line 32
    .line 33
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat$InspectionCompanion;->mOrientationId:I

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getOrientation()I

    .line 37
    move-result v1

    .line 38
    .line 39
    .line 40
    invoke-static {p2, v0, v1}, Landroidx/appcompat/widget/e;->a(Landroid/view/inspector/PropertyReader;II)V

    .line 41
    .line 42
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat$InspectionCompanion;->mWeightSumId:I

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getWeightSum()F

    .line 46
    move-result v1

    .line 47
    .line 48
    .line 49
    invoke-static {p2, v0, v1}, Landroidx/appcompat/widget/e0;->a(Landroid/view/inspector/PropertyReader;IF)V

    .line 50
    .line 51
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat$InspectionCompanion;->mDividerId:I

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getDividerDrawable()Landroid/graphics/drawable/Drawable;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    .line 58
    invoke-static {p2, v0, v1}, Landroidx/appcompat/widget/a;->a(Landroid/view/inspector/PropertyReader;ILjava/lang/Object;)V

    .line 59
    .line 60
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat$InspectionCompanion;->mDividerPaddingId:I

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getDividerPadding()I

    .line 64
    move-result v1

    .line 65
    .line 66
    .line 67
    invoke-static {p2, v0, v1}, Landroidx/appcompat/widget/d;->a(Landroid/view/inspector/PropertyReader;II)V

    .line 68
    .line 69
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat$InspectionCompanion;->mMeasureWithLargestChildId:I

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->v()Z

    .line 73
    move-result v1

    .line 74
    .line 75
    .line 76
    invoke-static {p2, v0, v1}, Landroidx/appcompat/widget/c0;->a(Landroid/view/inspector/PropertyReader;IZ)V

    .line 77
    .line 78
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat$InspectionCompanion;->mShowDividersId:I

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getShowDividers()I

    .line 82
    move-result p1

    .line 83
    .line 84
    .line 85
    invoke-static {p2, v0, p1}, Landroidx/appcompat/widget/f0;->a(Landroid/view/inspector/PropertyReader;II)V

    .line 86
    return-void

    .line 87
    .line 88
    .line 89
    :cond_0
    invoke-static {}, Landroidx/appcompat/widget/c;->a()Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;

    .line 90
    move-result-object p1

    .line 91
    throw p1
.end method

.method public mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .locals 3
    .param p1    # Landroid/view/inspector/PropertyMapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "baselineAligned"

    .line 3
    .line 4
    .line 5
    const v1, 0x1010126

    .line 6
    .line 7
    .line 8
    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/y;->a(Landroid/view/inspector/PropertyMapper;Ljava/lang/String;I)I

    .line 9
    move-result v0

    .line 10
    .line 11
    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat$InspectionCompanion;->mBaselineAlignedId:I

    .line 12
    .line 13
    const-string v0, "baselineAlignedChildIndex"

    .line 14
    .line 15
    .line 16
    const v1, 0x1010127

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/f;->a(Landroid/view/inspector/PropertyMapper;Ljava/lang/String;I)I

    .line 20
    move-result v0

    .line 21
    .line 22
    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat$InspectionCompanion;->mBaselineAlignedChildIndexId:I

    .line 23
    .line 24
    const-string v0, "gravity"

    .line 25
    .line 26
    .line 27
    const v1, 0x10100af

    .line 28
    .line 29
    .line 30
    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/z;->a(Landroid/view/inspector/PropertyMapper;Ljava/lang/String;I)I

    .line 31
    move-result v0

    .line 32
    .line 33
    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat$InspectionCompanion;->mGravityId:I

    .line 34
    .line 35
    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat$InspectionCompanion$1;

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, p0}, Landroidx/appcompat/widget/LinearLayoutCompat$InspectionCompanion$1;-><init>(Landroidx/appcompat/widget/LinearLayoutCompat$InspectionCompanion;)V

    .line 39
    .line 40
    const-string v1, "orientation"

    .line 41
    .line 42
    .line 43
    const v2, 0x10100c4

    .line 44
    .line 45
    .line 46
    invoke-static {p1, v1, v2, v0}, Landroidx/appcompat/widget/g;->a(Landroid/view/inspector/PropertyMapper;Ljava/lang/String;ILjava/util/function/IntFunction;)I

    .line 47
    move-result v0

    .line 48
    .line 49
    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat$InspectionCompanion;->mOrientationId:I

    .line 50
    .line 51
    const-string v0, "weightSum"

    .line 52
    .line 53
    .line 54
    const v1, 0x1010128

    .line 55
    .line 56
    .line 57
    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/a0;->a(Landroid/view/inspector/PropertyMapper;Ljava/lang/String;I)I

    .line 58
    move-result v0

    .line 59
    .line 60
    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat$InspectionCompanion;->mWeightSumId:I

    .line 61
    .line 62
    const-string v0, "divider"

    .line 63
    .line 64
    sget v1, Landroidx/appcompat/R$attr;->divider:I

    .line 65
    .line 66
    .line 67
    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/b;->a(Landroid/view/inspector/PropertyMapper;Ljava/lang/String;I)I

    .line 68
    move-result v0

    .line 69
    .line 70
    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat$InspectionCompanion;->mDividerId:I

    .line 71
    .line 72
    const-string v0, "dividerPadding"

    .line 73
    .line 74
    sget v1, Landroidx/appcompat/R$attr;->dividerPadding:I

    .line 75
    .line 76
    .line 77
    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/f;->a(Landroid/view/inspector/PropertyMapper;Ljava/lang/String;I)I

    .line 78
    move-result v0

    .line 79
    .line 80
    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat$InspectionCompanion;->mDividerPaddingId:I

    .line 81
    .line 82
    const-string v0, "measureWithLargestChild"

    .line 83
    .line 84
    sget v1, Landroidx/appcompat/R$attr;->measureWithLargestChild:I

    .line 85
    .line 86
    .line 87
    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/y;->a(Landroid/view/inspector/PropertyMapper;Ljava/lang/String;I)I

    .line 88
    move-result v0

    .line 89
    .line 90
    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat$InspectionCompanion;->mMeasureWithLargestChildId:I

    .line 91
    .line 92
    sget v0, Landroidx/appcompat/R$attr;->showDividers:I

    .line 93
    .line 94
    new-instance v1, Landroidx/appcompat/widget/LinearLayoutCompat$InspectionCompanion$2;

    .line 95
    .line 96
    .line 97
    invoke-direct {v1, p0}, Landroidx/appcompat/widget/LinearLayoutCompat$InspectionCompanion$2;-><init>(Landroidx/appcompat/widget/LinearLayoutCompat$InspectionCompanion;)V

    .line 98
    .line 99
    const-string v2, "showDividers"

    .line 100
    .line 101
    .line 102
    invoke-static {p1, v2, v0, v1}, Landroidx/appcompat/widget/b0;->a(Landroid/view/inspector/PropertyMapper;Ljava/lang/String;ILjava/util/function/IntFunction;)I

    .line 103
    move-result p1

    .line 104
    .line 105
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat$InspectionCompanion;->mShowDividersId:I

    .line 106
    const/4 p1, 0x1

    .line 107
    .line 108
    iput-boolean p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat$InspectionCompanion;->mPropertiesMapped:Z

    .line 109
    return-void
.end method

.method public bridge synthetic readProperties(Ljava/lang/Object;Landroid/view/inspector/PropertyReader;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/inspector/PropertyReader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    check-cast p1, Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat$InspectionCompanion;->a(Landroidx/appcompat/widget/LinearLayoutCompat;Landroid/view/inspector/PropertyReader;)V

    .line 6
    return-void
.end method
