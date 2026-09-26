.class Landroidx/core/location/GnssStatusWrapper;
.super Landroidx/core/location/GnssStatusCompat;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/location/GnssStatusWrapper$Api30Impl;,
        Landroidx/core/location/GnssStatusWrapper$Api26Impl;
    }
.end annotation


# instance fields
.field private final mWrapped:Landroid/location/GnssStatus;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/core/location/GnssStatusCompat;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroidx/core/location/b;->a(Ljava/lang/Object;)Landroid/location/GnssStatus;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Landroidx/core/util/Preconditions;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Landroidx/core/location/b;->a(Ljava/lang/Object;)Landroid/location/GnssStatus;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    iput-object p1, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    .line 18
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    .line 6
    :cond_0
    instance-of v0, p1, Landroidx/core/location/GnssStatusWrapper;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    .line 12
    :cond_1
    check-cast p1, Landroidx/core/location/GnssStatusWrapper;

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    .line 15
    .line 16
    iget-object p1, p1, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    .line 17
    .line 18
    .line 19
    invoke-static {v0, p1}, Landroidx/core/location/c;->a(Landroid/location/GnssStatus;Ljava/lang/Object;)Z

    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/core/location/a;->a(Landroid/location/GnssStatus;)I

    .line 6
    move-result v0

    .line 7
    return v0
.end method
