.class public final Landroidx/appcompat/widget/SwitchCompat$InspectionCompanion;
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
.field private mPropertiesMapped:Z

.field private mShowTextId:I

.field private mSplitTrackId:I

.field private mSwitchMinWidthId:I

.field private mSwitchPaddingId:I

.field private mTextOffId:I

.field private mTextOnId:I

.field private mThumbId:I

.field private mThumbTextPaddingId:I

.field private mThumbTintId:I

.field private mThumbTintModeId:I

.field private mTrackId:I

.field private mTrackTintId:I

.field private mTrackTintModeId:I


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
    iput-boolean v0, p0, Landroidx/appcompat/widget/SwitchCompat$InspectionCompanion;->mPropertiesMapped:Z

    .line 7
    return-void
.end method


# virtual methods
.method public a(Landroidx/appcompat/widget/SwitchCompat;Landroid/view/inspector/PropertyReader;)V
    .locals 2
    .param p1    # Landroidx/appcompat/widget/SwitchCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/inspector/PropertyReader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/appcompat/widget/SwitchCompat$InspectionCompanion;->mPropertiesMapped:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat$InspectionCompanion;->mTextOffId:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/appcompat/widget/SwitchCompat;->getTextOff()Ljava/lang/CharSequence;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-static {p2, v0, v1}, Landroidx/appcompat/widget/a;->a(Landroid/view/inspector/PropertyReader;ILjava/lang/Object;)V

    .line 14
    .line 15
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat$InspectionCompanion;->mTextOnId:I

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/appcompat/widget/SwitchCompat;->getTextOn()Ljava/lang/CharSequence;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-static {p2, v0, v1}, Landroidx/appcompat/widget/a;->a(Landroid/view/inspector/PropertyReader;ILjava/lang/Object;)V

    .line 23
    .line 24
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat$InspectionCompanion;->mThumbId:I

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroidx/appcompat/widget/SwitchCompat;->getThumbDrawable()Landroid/graphics/drawable/Drawable;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    .line 31
    invoke-static {p2, v0, v1}, Landroidx/appcompat/widget/a;->a(Landroid/view/inspector/PropertyReader;ILjava/lang/Object;)V

    .line 32
    .line 33
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat$InspectionCompanion;->mShowTextId:I

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroidx/appcompat/widget/SwitchCompat;->getShowText()Z

    .line 37
    move-result v1

    .line 38
    .line 39
    .line 40
    invoke-static {p2, v0, v1}, Landroidx/appcompat/widget/c0;->a(Landroid/view/inspector/PropertyReader;IZ)V

    .line 41
    .line 42
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat$InspectionCompanion;->mSplitTrackId:I

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Landroidx/appcompat/widget/SwitchCompat;->getSplitTrack()Z

    .line 46
    move-result v1

    .line 47
    .line 48
    .line 49
    invoke-static {p2, v0, v1}, Landroidx/appcompat/widget/c0;->a(Landroid/view/inspector/PropertyReader;IZ)V

    .line 50
    .line 51
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat$InspectionCompanion;->mSwitchMinWidthId:I

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Landroidx/appcompat/widget/SwitchCompat;->getSwitchMinWidth()I

    .line 55
    move-result v1

    .line 56
    .line 57
    .line 58
    invoke-static {p2, v0, v1}, Landroidx/appcompat/widget/d;->a(Landroid/view/inspector/PropertyReader;II)V

    .line 59
    .line 60
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat$InspectionCompanion;->mSwitchPaddingId:I

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Landroidx/appcompat/widget/SwitchCompat;->getSwitchPadding()I

    .line 64
    move-result v1

    .line 65
    .line 66
    .line 67
    invoke-static {p2, v0, v1}, Landroidx/appcompat/widget/d;->a(Landroid/view/inspector/PropertyReader;II)V

    .line 68
    .line 69
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat$InspectionCompanion;->mThumbTextPaddingId:I

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Landroidx/appcompat/widget/SwitchCompat;->getThumbTextPadding()I

    .line 73
    move-result v1

    .line 74
    .line 75
    .line 76
    invoke-static {p2, v0, v1}, Landroidx/appcompat/widget/d;->a(Landroid/view/inspector/PropertyReader;II)V

    .line 77
    .line 78
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat$InspectionCompanion;->mThumbTintId:I

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Landroidx/appcompat/widget/SwitchCompat;->getThumbTintList()Landroid/content/res/ColorStateList;

    .line 82
    move-result-object v1

    .line 83
    .line 84
    .line 85
    invoke-static {p2, v0, v1}, Landroidx/appcompat/widget/a;->a(Landroid/view/inspector/PropertyReader;ILjava/lang/Object;)V

    .line 86
    .line 87
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat$InspectionCompanion;->mThumbTintModeId:I

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Landroidx/appcompat/widget/SwitchCompat;->getThumbTintMode()Landroid/graphics/PorterDuff$Mode;

    .line 91
    move-result-object v1

    .line 92
    .line 93
    .line 94
    invoke-static {p2, v0, v1}, Landroidx/appcompat/widget/a;->a(Landroid/view/inspector/PropertyReader;ILjava/lang/Object;)V

    .line 95
    .line 96
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat$InspectionCompanion;->mTrackId:I

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Landroidx/appcompat/widget/SwitchCompat;->getTrackDrawable()Landroid/graphics/drawable/Drawable;

    .line 100
    move-result-object v1

    .line 101
    .line 102
    .line 103
    invoke-static {p2, v0, v1}, Landroidx/appcompat/widget/a;->a(Landroid/view/inspector/PropertyReader;ILjava/lang/Object;)V

    .line 104
    .line 105
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat$InspectionCompanion;->mTrackTintId:I

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Landroidx/appcompat/widget/SwitchCompat;->getTrackTintList()Landroid/content/res/ColorStateList;

    .line 109
    move-result-object v1

    .line 110
    .line 111
    .line 112
    invoke-static {p2, v0, v1}, Landroidx/appcompat/widget/a;->a(Landroid/view/inspector/PropertyReader;ILjava/lang/Object;)V

    .line 113
    .line 114
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat$InspectionCompanion;->mTrackTintModeId:I

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1}, Landroidx/appcompat/widget/SwitchCompat;->getTrackTintMode()Landroid/graphics/PorterDuff$Mode;

    .line 118
    move-result-object p1

    .line 119
    .line 120
    .line 121
    invoke-static {p2, v0, p1}, Landroidx/appcompat/widget/a;->a(Landroid/view/inspector/PropertyReader;ILjava/lang/Object;)V

    .line 122
    return-void

    .line 123
    .line 124
    .line 125
    :cond_0
    invoke-static {}, Landroidx/appcompat/widget/c;->a()Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;

    .line 126
    move-result-object p1

    .line 127
    throw p1
.end method

.method public mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .locals 2
    .param p1    # Landroid/view/inspector/PropertyMapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "textOff"

    .line 3
    .line 4
    .line 5
    const v1, 0x1010125

    .line 6
    .line 7
    .line 8
    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/b;->a(Landroid/view/inspector/PropertyMapper;Ljava/lang/String;I)I

    .line 9
    move-result v0

    .line 10
    .line 11
    iput v0, p0, Landroidx/appcompat/widget/SwitchCompat$InspectionCompanion;->mTextOffId:I

    .line 12
    .line 13
    const-string v0, "textOn"

    .line 14
    .line 15
    .line 16
    const v1, 0x1010124

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/b;->a(Landroid/view/inspector/PropertyMapper;Ljava/lang/String;I)I

    .line 20
    move-result v0

    .line 21
    .line 22
    iput v0, p0, Landroidx/appcompat/widget/SwitchCompat$InspectionCompanion;->mTextOnId:I

    .line 23
    .line 24
    const-string v0, "thumb"

    .line 25
    .line 26
    .line 27
    const v1, 0x1010142

    .line 28
    .line 29
    .line 30
    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/b;->a(Landroid/view/inspector/PropertyMapper;Ljava/lang/String;I)I

    .line 31
    move-result v0

    .line 32
    .line 33
    iput v0, p0, Landroidx/appcompat/widget/SwitchCompat$InspectionCompanion;->mThumbId:I

    .line 34
    .line 35
    const-string v0, "showText"

    .line 36
    .line 37
    sget v1, Landroidx/appcompat/R$attr;->showText:I

    .line 38
    .line 39
    .line 40
    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/y;->a(Landroid/view/inspector/PropertyMapper;Ljava/lang/String;I)I

    .line 41
    move-result v0

    .line 42
    .line 43
    iput v0, p0, Landroidx/appcompat/widget/SwitchCompat$InspectionCompanion;->mShowTextId:I

    .line 44
    .line 45
    const-string v0, "splitTrack"

    .line 46
    .line 47
    sget v1, Landroidx/appcompat/R$attr;->splitTrack:I

    .line 48
    .line 49
    .line 50
    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/y;->a(Landroid/view/inspector/PropertyMapper;Ljava/lang/String;I)I

    .line 51
    move-result v0

    .line 52
    .line 53
    iput v0, p0, Landroidx/appcompat/widget/SwitchCompat$InspectionCompanion;->mSplitTrackId:I

    .line 54
    .line 55
    const-string v0, "switchMinWidth"

    .line 56
    .line 57
    sget v1, Landroidx/appcompat/R$attr;->switchMinWidth:I

    .line 58
    .line 59
    .line 60
    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/f;->a(Landroid/view/inspector/PropertyMapper;Ljava/lang/String;I)I

    .line 61
    move-result v0

    .line 62
    .line 63
    iput v0, p0, Landroidx/appcompat/widget/SwitchCompat$InspectionCompanion;->mSwitchMinWidthId:I

    .line 64
    .line 65
    const-string v0, "switchPadding"

    .line 66
    .line 67
    sget v1, Landroidx/appcompat/R$attr;->switchPadding:I

    .line 68
    .line 69
    .line 70
    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/f;->a(Landroid/view/inspector/PropertyMapper;Ljava/lang/String;I)I

    .line 71
    move-result v0

    .line 72
    .line 73
    iput v0, p0, Landroidx/appcompat/widget/SwitchCompat$InspectionCompanion;->mSwitchPaddingId:I

    .line 74
    .line 75
    const-string v0, "thumbTextPadding"

    .line 76
    .line 77
    sget v1, Landroidx/appcompat/R$attr;->thumbTextPadding:I

    .line 78
    .line 79
    .line 80
    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/f;->a(Landroid/view/inspector/PropertyMapper;Ljava/lang/String;I)I

    .line 81
    move-result v0

    .line 82
    .line 83
    iput v0, p0, Landroidx/appcompat/widget/SwitchCompat$InspectionCompanion;->mThumbTextPaddingId:I

    .line 84
    .line 85
    const-string v0, "thumbTint"

    .line 86
    .line 87
    sget v1, Landroidx/appcompat/R$attr;->thumbTint:I

    .line 88
    .line 89
    .line 90
    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/b;->a(Landroid/view/inspector/PropertyMapper;Ljava/lang/String;I)I

    .line 91
    move-result v0

    .line 92
    .line 93
    iput v0, p0, Landroidx/appcompat/widget/SwitchCompat$InspectionCompanion;->mThumbTintId:I

    .line 94
    .line 95
    const-string v0, "thumbTintMode"

    .line 96
    .line 97
    sget v1, Landroidx/appcompat/R$attr;->thumbTintMode:I

    .line 98
    .line 99
    .line 100
    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/b;->a(Landroid/view/inspector/PropertyMapper;Ljava/lang/String;I)I

    .line 101
    move-result v0

    .line 102
    .line 103
    iput v0, p0, Landroidx/appcompat/widget/SwitchCompat$InspectionCompanion;->mThumbTintModeId:I

    .line 104
    .line 105
    const-string v0, "track"

    .line 106
    .line 107
    sget v1, Landroidx/appcompat/R$attr;->track:I

    .line 108
    .line 109
    .line 110
    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/b;->a(Landroid/view/inspector/PropertyMapper;Ljava/lang/String;I)I

    .line 111
    move-result v0

    .line 112
    .line 113
    iput v0, p0, Landroidx/appcompat/widget/SwitchCompat$InspectionCompanion;->mTrackId:I

    .line 114
    .line 115
    const-string v0, "trackTint"

    .line 116
    .line 117
    sget v1, Landroidx/appcompat/R$attr;->trackTint:I

    .line 118
    .line 119
    .line 120
    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/b;->a(Landroid/view/inspector/PropertyMapper;Ljava/lang/String;I)I

    .line 121
    move-result v0

    .line 122
    .line 123
    iput v0, p0, Landroidx/appcompat/widget/SwitchCompat$InspectionCompanion;->mTrackTintId:I

    .line 124
    .line 125
    const-string v0, "trackTintMode"

    .line 126
    .line 127
    sget v1, Landroidx/appcompat/R$attr;->trackTintMode:I

    .line 128
    .line 129
    .line 130
    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/b;->a(Landroid/view/inspector/PropertyMapper;Ljava/lang/String;I)I

    .line 131
    move-result p1

    .line 132
    .line 133
    iput p1, p0, Landroidx/appcompat/widget/SwitchCompat$InspectionCompanion;->mTrackTintModeId:I

    .line 134
    const/4 p1, 0x1

    .line 135
    .line 136
    iput-boolean p1, p0, Landroidx/appcompat/widget/SwitchCompat$InspectionCompanion;->mPropertiesMapped:Z

    .line 137
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
    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/SwitchCompat$InspectionCompanion;->a(Landroidx/appcompat/widget/SwitchCompat;Landroid/view/inspector/PropertyReader;)V

    .line 6
    return-void
.end method
