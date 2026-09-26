.class public final Lcom/google/android/material/badge/BadgeState$State;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/badge/BadgeState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "State"
.end annotation


# static fields
.field private static final BADGE_NUMBER_NONE:I = -0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/material/badge/BadgeState$State;",
            ">;"
        }
    .end annotation
.end field

.field private static final NOT_SET:I = -0x2


# instance fields
.field private additionalHorizontalOffset:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Dimension;
    .end annotation
.end field

.field private additionalVerticalOffset:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Dimension;
    .end annotation
.end field

.field private alpha:I

.field private backgroundColor:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private badgeGravity:Ljava/lang/Integer;

.field private badgeResId:I
    .annotation build Landroidx/annotation/XmlRes;
    .end annotation
.end field

.field private badgeTextColor:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private contentDescriptionExceedsMaxBadgeNumberRes:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field private contentDescriptionNumberless:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private contentDescriptionQuantityStrings:I
    .annotation build Landroidx/annotation/PluralsRes;
    .end annotation
.end field

.field private horizontalOffsetWithText:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Dimension;
    .end annotation
.end field

.field private horizontalOffsetWithoutText:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Dimension;
    .end annotation
.end field

.field private isVisible:Ljava/lang/Boolean;

.field private maxCharacterCount:I

.field private number:I

.field private numberLocale:Ljava/util/Locale;

.field private verticalOffsetWithText:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Dimension;
    .end annotation
.end field

.field private verticalOffsetWithoutText:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Dimension;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/material/badge/BadgeState$State$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/android/material/badge/BadgeState$State$a;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/google/android/material/badge/BadgeState$State;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    iput v0, p0, Lcom/google/android/material/badge/BadgeState$State;->alpha:I

    const/4 v0, -0x2

    iput v0, p0, Lcom/google/android/material/badge/BadgeState$State;->number:I

    iput v0, p0, Lcom/google/android/material/badge/BadgeState$State;->maxCharacterCount:I

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->isVisible:Ljava/lang/Boolean;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    iput v0, p0, Lcom/google/android/material/badge/BadgeState$State;->alpha:I

    const/4 v0, -0x2

    iput v0, p0, Lcom/google/android/material/badge/BadgeState$State;->number:I

    iput v0, p0, Lcom/google/android/material/badge/BadgeState$State;->maxCharacterCount:I

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->isVisible:Ljava/lang/Boolean;

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/badge/BadgeState$State;->badgeResId:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->backgroundColor:Ljava/lang/Integer;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->badgeTextColor:Ljava/lang/Integer;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/badge/BadgeState$State;->alpha:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/badge/BadgeState$State;->number:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/badge/BadgeState$State;->maxCharacterCount:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionNumberless:Ljava/lang/CharSequence;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionQuantityStrings:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->badgeGravity:Ljava/lang/Integer;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithoutText:Ljava/lang/Integer;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithoutText:Ljava/lang/Integer;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithText:Ljava/lang/Integer;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithText:Ljava/lang/Integer;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->additionalHorizontalOffset:Ljava/lang/Integer;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->additionalVerticalOffset:Ljava/lang/Integer;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->isVisible:Ljava/lang/Boolean;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->numberLocale:Ljava/util/Locale;

    return-void
.end method

.method static synthetic A(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionNumberless:Ljava/lang/CharSequence;

    .line 3
    return-object p0
.end method

.method static synthetic B(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionNumberless:Ljava/lang/CharSequence;

    .line 3
    return-object p1
.end method

.method static synthetic C(Lcom/google/android/material/badge/BadgeState$State;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionQuantityStrings:I

    .line 3
    return p0
.end method

.method static synthetic D(Lcom/google/android/material/badge/BadgeState$State;I)I
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionQuantityStrings:I

    .line 3
    return p1
.end method

.method static synthetic E(Lcom/google/android/material/badge/BadgeState$State;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionExceedsMaxBadgeNumberRes:I

    .line 3
    return p0
.end method

.method static synthetic F(Lcom/google/android/material/badge/BadgeState$State;I)I
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionExceedsMaxBadgeNumberRes:I

    .line 3
    return p1
.end method

.method static synthetic G(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState$State;->isVisible:Ljava/lang/Boolean;

    .line 3
    return-object p0
.end method

.method static synthetic H(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->isVisible:Ljava/lang/Boolean;

    .line 3
    return-object p1
.end method

.method static synthetic I(Lcom/google/android/material/badge/BadgeState$State;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/material/badge/BadgeState$State;->maxCharacterCount:I

    .line 3
    return p0
.end method

.method static synthetic J(Lcom/google/android/material/badge/BadgeState$State;I)I
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/google/android/material/badge/BadgeState$State;->maxCharacterCount:I

    .line 3
    return p1
.end method

.method static synthetic K(Lcom/google/android/material/badge/BadgeState$State;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/material/badge/BadgeState$State;->number:I

    .line 3
    return p0
.end method

.method static synthetic M(Lcom/google/android/material/badge/BadgeState$State;I)I
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/google/android/material/badge/BadgeState$State;->number:I

    .line 3
    return p1
.end method

.method static synthetic N(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState$State;->backgroundColor:Ljava/lang/Integer;

    .line 3
    return-object p0
.end method

.method static synthetic P(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->backgroundColor:Ljava/lang/Integer;

    .line 3
    return-object p1
.end method

.method static synthetic R(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState$State;->badgeTextColor:Ljava/lang/Integer;

    .line 3
    return-object p0
.end method

.method static synthetic S(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->badgeTextColor:Ljava/lang/Integer;

    .line 3
    return-object p1
.end method

.method static synthetic a(Lcom/google/android/material/badge/BadgeState$State;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/material/badge/BadgeState$State;->badgeResId:I

    .line 3
    return p0
.end method

.method static synthetic c(Lcom/google/android/material/badge/BadgeState$State;I)I
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/google/android/material/badge/BadgeState$State;->badgeResId:I

    .line 3
    return p1
.end method

.method static synthetic e(Lcom/google/android/material/badge/BadgeState$State;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/material/badge/BadgeState$State;->alpha:I

    .line 3
    return p0
.end method

.method static synthetic g(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState$State;->badgeGravity:Ljava/lang/Integer;

    .line 3
    return-object p0
.end method

.method static synthetic h(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->badgeGravity:Ljava/lang/Integer;

    .line 3
    return-object p1
.end method

.method static synthetic i(Lcom/google/android/material/badge/BadgeState$State;I)I
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/google/android/material/badge/BadgeState$State;->alpha:I

    .line 3
    return p1
.end method

.method static synthetic k(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithoutText:Ljava/lang/Integer;

    .line 3
    return-object p0
.end method

.method static synthetic l(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithoutText:Ljava/lang/Integer;

    .line 3
    return-object p1
.end method

.method static synthetic m(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithoutText:Ljava/lang/Integer;

    .line 3
    return-object p0
.end method

.method static synthetic n(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithoutText:Ljava/lang/Integer;

    .line 3
    return-object p1
.end method

.method static synthetic o(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithText:Ljava/lang/Integer;

    .line 3
    return-object p0
.end method

.method static synthetic p(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithText:Ljava/lang/Integer;

    .line 3
    return-object p1
.end method

.method static synthetic s(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithText:Ljava/lang/Integer;

    .line 3
    return-object p0
.end method

.method static synthetic t(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithText:Ljava/lang/Integer;

    .line 3
    return-object p1
.end method

.method static synthetic u(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState$State;->additionalHorizontalOffset:Ljava/lang/Integer;

    .line 3
    return-object p0
.end method

.method static synthetic v(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->additionalHorizontalOffset:Ljava/lang/Integer;

    .line 3
    return-object p1
.end method

.method static synthetic w(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState$State;->additionalVerticalOffset:Ljava/lang/Integer;

    .line 3
    return-object p0
.end method

.method static synthetic x(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->additionalVerticalOffset:Ljava/lang/Integer;

    .line 3
    return-object p1
.end method

.method static synthetic y(Lcom/google/android/material/badge/BadgeState$State;)Ljava/util/Locale;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState$State;->numberLocale:Ljava/util/Locale;

    .line 3
    return-object p0
.end method

.method static synthetic z(Lcom/google/android/material/badge/BadgeState$State;Ljava/util/Locale;)Ljava/util/Locale;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->numberLocale:Ljava/util/Locale;

    .line 3
    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget p2, p0, Lcom/google/android/material/badge/BadgeState$State;->badgeResId:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    .line 7
    iget-object p2, p0, Lcom/google/android/material/badge/BadgeState$State;->backgroundColor:Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 11
    .line 12
    iget-object p2, p0, Lcom/google/android/material/badge/BadgeState$State;->badgeTextColor:Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 16
    .line 17
    iget p2, p0, Lcom/google/android/material/badge/BadgeState$State;->alpha:I

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    .line 22
    iget p2, p0, Lcom/google/android/material/badge/BadgeState$State;->number:I

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 26
    .line 27
    iget p2, p0, Lcom/google/android/material/badge/BadgeState$State;->maxCharacterCount:I

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    .line 32
    iget-object p2, p0, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionNumberless:Ljava/lang/CharSequence;

    .line 33
    .line 34
    if-nez p2, :cond_0

    .line 35
    const/4 p2, 0x0

    .line 36
    goto :goto_0

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 40
    move-result-object p2

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    .line 45
    iget p2, p0, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionQuantityStrings:I

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    .line 50
    iget-object p2, p0, Lcom/google/android/material/badge/BadgeState$State;->badgeGravity:Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 54
    .line 55
    iget-object p2, p0, Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithoutText:Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 59
    .line 60
    iget-object p2, p0, Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithoutText:Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 64
    .line 65
    iget-object p2, p0, Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithText:Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 69
    .line 70
    iget-object p2, p0, Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithText:Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 74
    .line 75
    iget-object p2, p0, Lcom/google/android/material/badge/BadgeState$State;->additionalHorizontalOffset:Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 79
    .line 80
    iget-object p2, p0, Lcom/google/android/material/badge/BadgeState$State;->additionalVerticalOffset:Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 84
    .line 85
    iget-object p2, p0, Lcom/google/android/material/badge/BadgeState$State;->isVisible:Ljava/lang/Boolean;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 89
    .line 90
    iget-object p2, p0, Lcom/google/android/material/badge/BadgeState$State;->numberLocale:Ljava/util/Locale;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 94
    return-void
.end method
