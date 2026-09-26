.class public abstract Lcom/coloros/ocs/base/a$a;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/coloros/ocs/base/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/ocs/base/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/ocs/base/a$a$a;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.coloros.ocs.base.IAuthenticationListener"

.field static final TRANSACTION_onFail:I = 0x2

.field static final TRANSACTION_onSuccess:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    .line 5
    const-string v0, "com.coloros.ocs.base.IAuthenticationListener"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public static x1(Landroid/os/IBinder;)Lcom/coloros/ocs/base/a;
    .locals 2

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    .line 6
    :cond_0
    const-string v0, "com.coloros.ocs.base.IAuthenticationListener"

    .line 7
    .line 8
    .line 9
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    instance-of v1, v0, Lcom/coloros/ocs/base/a;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    check-cast v0, Lcom/coloros/ocs/base/a;

    .line 19
    return-object v0

    .line 20
    .line 21
    :cond_1
    new-instance v0, Lcom/coloros/ocs/base/a$a$a;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0}, Lcom/coloros/ocs/base/a$a$a;-><init>(Landroid/os/IBinder;)V

    .line 25
    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    const-string v1, "com.coloros.ocs.base.IAuthenticationListener"

    .line 4
    .line 5
    if-eq p1, v0, :cond_2

    .line 6
    const/4 v2, 0x2

    .line 7
    .line 8
    if-eq p1, v2, :cond_1

    .line 9
    .line 10
    .line 11
    const v2, 0x5f4e5446

    .line 12
    .line 13
    if-eq p1, v2, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 17
    move-result p1

    .line 18
    return p1

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    return v0

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 29
    move-result p1

    .line 30
    .line 31
    .line 32
    invoke-interface {p0, p1}, Lcom/coloros/ocs/base/a;->r(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 36
    return v0

    .line 37
    .line 38
    .line 39
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 43
    move-result p1

    .line 44
    .line 45
    if-eqz p1, :cond_3

    .line 46
    .line 47
    sget-object p1, Lcom/coloros/ocs/base/common/CapabilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 48
    .line 49
    .line 50
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    check-cast p1, Lcom/coloros/ocs/base/common/CapabilityInfo;

    .line 54
    goto :goto_0

    .line 55
    :cond_3
    const/4 p1, 0x0

    .line 56
    .line 57
    .line 58
    :goto_0
    invoke-interface {p0, p1}, Lcom/coloros/ocs/base/a;->H0(Lcom/coloros/ocs/base/common/CapabilityInfo;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    return v0
.end method
