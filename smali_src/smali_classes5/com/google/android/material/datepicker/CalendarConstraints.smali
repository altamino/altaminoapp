.class public final Lcom/google/android/material/datepicker/CalendarConstraints;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/datepicker/CalendarConstraints$b;,
        Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/material/datepicker/CalendarConstraints;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final end:Lcom/google/android/material/datepicker/Month;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final monthSpan:I

.field private openAt:Lcom/google/android/material/datepicker/Month;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final start:Lcom/google/android/material/datepicker/Month;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final validator:Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final yearSpan:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/material/datepicker/CalendarConstraints$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/android/material/datepicker/CalendarConstraints$a;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/google/android/material/datepicker/CalendarConstraints;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method private constructor <init>(Lcom/google/android/material/datepicker/Month;Lcom/google/android/material/datepicker/Month;Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;Lcom/google/android/material/datepicker/Month;)V
    .locals 0
    .param p1    # Lcom/google/android/material/datepicker/Month;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/material/datepicker/Month;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/material/datepicker/Month;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->start:Lcom/google/android/material/datepicker/Month;

    iput-object p2, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->end:Lcom/google/android/material/datepicker/Month;

    iput-object p4, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->openAt:Lcom/google/android/material/datepicker/Month;

    iput-object p3, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->validator:Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    if-eqz p4, :cond_1

    .line 3
    invoke-virtual {p1, p4}, Lcom/google/android/material/datepicker/Month;->a(Lcom/google/android/material/datepicker/Month;)I

    move-result p3

    if-gtz p3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "start Month cannot be after current Month"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p4, :cond_3

    .line 5
    invoke-virtual {p4, p2}, Lcom/google/android/material/datepicker/Month;->a(Lcom/google/android/material/datepicker/Month;)I

    move-result p3

    if-gtz p3, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "current Month cannot be after end Month"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_3
    :goto_1
    invoke-virtual {p1, p2}, Lcom/google/android/material/datepicker/Month;->s(Lcom/google/android/material/datepicker/Month;)I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->monthSpan:I

    .line 8
    iget p2, p2, Lcom/google/android/material/datepicker/Month;->year:I

    iget p1, p1, Lcom/google/android/material/datepicker/Month;->year:I

    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->yearSpan:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/datepicker/Month;Lcom/google/android/material/datepicker/Month;Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;Lcom/google/android/material/datepicker/Month;Lcom/google/android/material/datepicker/CalendarConstraints$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/datepicker/CalendarConstraints;-><init>(Lcom/google/android/material/datepicker/Month;Lcom/google/android/material/datepicker/Month;Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;Lcom/google/android/material/datepicker/Month;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/datepicker/CalendarConstraints;)Lcom/google/android/material/datepicker/Month;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->start:Lcom/google/android/material/datepicker/Month;

    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/google/android/material/datepicker/CalendarConstraints;)Lcom/google/android/material/datepicker/Month;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->end:Lcom/google/android/material/datepicker/Month;

    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/google/android/material/datepicker/CalendarConstraints;)Lcom/google/android/material/datepicker/Month;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->openAt:Lcom/google/android/material/datepicker/Month;

    .line 3
    return-object p0
.end method

.method static synthetic g(Lcom/google/android/material/datepicker/CalendarConstraints;)Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->validator:Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    .line 3
    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    instance-of v1, p1, Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    return v2

    .line 11
    .line 12
    :cond_1
    check-cast p1, Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->start:Lcom/google/android/material/datepicker/Month;

    .line 15
    .line 16
    iget-object v3, p1, Lcom/google/android/material/datepicker/CalendarConstraints;->start:Lcom/google/android/material/datepicker/Month;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v3}, Lcom/google/android/material/datepicker/Month;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    iget-object v1, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->end:Lcom/google/android/material/datepicker/Month;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/google/android/material/datepicker/CalendarConstraints;->end:Lcom/google/android/material/datepicker/Month;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v3}, Lcom/google/android/material/datepicker/Month;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result v1

    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    iget-object v1, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->openAt:Lcom/google/android/material/datepicker/Month;

    .line 35
    .line 36
    iget-object v3, p1, Lcom/google/android/material/datepicker/CalendarConstraints;->openAt:Lcom/google/android/material/datepicker/Month;

    .line 37
    .line 38
    .line 39
    invoke-static {v1, v3}, Landroidx/core/util/ObjectsCompat;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    move-result v1

    .line 41
    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    iget-object v1, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->validator:Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    .line 45
    .line 46
    iget-object p1, p1, Lcom/google/android/material/datepicker/CalendarConstraints;->validator:Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 50
    move-result p1

    .line 51
    .line 52
    if-eqz p1, :cond_2

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    move v0, v2

    .line 55
    :goto_0
    return v0
.end method

.method h(Lcom/google/android/material/datepicker/Month;)Lcom/google/android/material/datepicker/Month;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->start:Lcom/google/android/material/datepicker/Month;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/Month;->a(Lcom/google/android/material/datepicker/Month;)I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-gez v0, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->start:Lcom/google/android/material/datepicker/Month;

    .line 11
    return-object p1

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->end:Lcom/google/android/material/datepicker/Month;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/Month;->a(Lcom/google/android/material/datepicker/Month;)I

    .line 17
    move-result v0

    .line 18
    .line 19
    if-lez v0, :cond_1

    .line 20
    .line 21
    iget-object p1, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->end:Lcom/google/android/material/datepicker/Month;

    .line 22
    :cond_1
    return-object p1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    .line 3
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    .line 6
    iget-object v2, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->start:Lcom/google/android/material/datepicker/Month;

    .line 7
    .line 8
    aput-object v2, v0, v1

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    iget-object v2, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->end:Lcom/google/android/material/datepicker/Month;

    .line 12
    .line 13
    aput-object v2, v0, v1

    .line 14
    const/4 v1, 0x2

    .line 15
    .line 16
    iget-object v2, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->openAt:Lcom/google/android/material/datepicker/Month;

    .line 17
    .line 18
    aput-object v2, v0, v1

    .line 19
    const/4 v1, 0x3

    .line 20
    .line 21
    iget-object v2, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->validator:Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    .line 22
    .line 23
    aput-object v2, v0, v1

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 27
    move-result v0

    .line 28
    return v0
.end method

.method public i()Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->validator:Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    return-object v0
.end method

.method k()Lcom/google/android/material/datepicker/Month;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->end:Lcom/google/android/material/datepicker/Month;

    return-object v0
.end method

.method l()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->monthSpan:I

    return v0
.end method

.method m()Lcom/google/android/material/datepicker/Month;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->openAt:Lcom/google/android/material/datepicker/Month;

    return-object v0
.end method

.method n()Lcom/google/android/material/datepicker/Month;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->start:Lcom/google/android/material/datepicker/Month;

    return-object v0
.end method

.method o()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->yearSpan:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    .line 2
    iget-object p2, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->start:Lcom/google/android/material/datepicker/Month;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 7
    .line 8
    iget-object p2, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->end:Lcom/google/android/material/datepicker/Month;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 12
    .line 13
    iget-object p2, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->openAt:Lcom/google/android/material/datepicker/Month;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 17
    .line 18
    iget-object p2, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->validator:Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 22
    return-void
.end method
